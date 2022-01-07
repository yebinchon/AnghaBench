; ModuleID = '/home/carl/AnghaBench/freebsd/stand/mips/beri/common/extr_sdcard.c_altera_sdcard_get_present.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/mips/beri/common/extr_sdcard.c_altera_sdcard_get_present.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ALTERA_SDCARD_CSD_SIZE = common dso_local global i32 0, align 4
@ALTERA_SDCARD_ASR_CARDPRESENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"SD Card: not present\0A\00", align 1
@ALTERA_SDCARD_CSD_STRUCTURE_BYTE = common dso_local global i64 0, align 8
@ALTERA_SDCARD_CSD_STRUCTURE_MASK = common dso_local global i32 0, align 4
@ALTERA_SDCARD_CSD_STRUCTURE_RSHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"SD Card: unrecognised csd %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @altera_sdcard_get_present() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i32, i32* @ALTERA_SDCARD_CSD_SIZE, align 4
  %8 = sext i32 %7 to i64
  %9 = udiv i64 %8, 4
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %2, align 8
  %11 = alloca i32, i64 %9, align 16
  store i64 %9, i64* %3, align 8
  store i32* %11, i32** %4, align 8
  %12 = call i32 (...) @altera_sdcard_read_asr()
  %13 = load i32, i32* @ALTERA_SDCARD_ASR_CARDPRESENT, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %0
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  store i32 1, i32* %6, align 4
  br label %36

18:                                               ; preds = %0
  %19 = call i32 @altera_sdcard_read_csd(i32* %11)
  %20 = load i32*, i32** %4, align 8
  %21 = load i64, i64* @ALTERA_SDCARD_CSD_STRUCTURE_BYTE, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* @ALTERA_SDCARD_CSD_STRUCTURE_MASK, align 4
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* @ALTERA_SDCARD_CSD_STRUCTURE_RSHIFT, align 4
  %28 = load i32, i32* %5, align 4
  %29 = ashr i32 %28, %27
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %18
  %33 = load i32, i32* %5, align 4
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  store i32 0, i32* %1, align 4
  store i32 1, i32* %6, align 4
  br label %36

35:                                               ; preds = %18
  store i32 1, i32* %1, align 4
  store i32 1, i32* %6, align 4
  br label %36

36:                                               ; preds = %35, %32, %16
  %37 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %37)
  %38 = load i32, i32* %1, align 4
  ret i32 %38
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @altera_sdcard_read_asr(...) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @altera_sdcard_read_csd(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

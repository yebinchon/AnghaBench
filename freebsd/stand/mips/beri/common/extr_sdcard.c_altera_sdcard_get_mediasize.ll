; ModuleID = '/home/carl/AnghaBench/freebsd/stand/mips/beri/common/extr_sdcard.c_altera_sdcard_get_mediasize.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/mips/beri/common/extr_sdcard.c_altera_sdcard_get_mediasize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ALTERA_SDCARD_CSD_SIZE = common dso_local global i32 0, align 4
@ALTERA_SDCARD_CSD_READ_BL_LEN_BYTE = common dso_local global i64 0, align 8
@ALTERA_SDCARD_CSD_READ_BL_LEN_MASK = common dso_local global i32 0, align 4
@ALTERA_SDCARD_CSD_C_SIZE_BYTE0 = common dso_local global i64 0, align 8
@ALTERA_SDCARD_CSD_C_SIZE_MASK0 = common dso_local global i32 0, align 4
@ALTERA_SDCARD_CSD_C_SIZE_BYTE1 = common dso_local global i64 0, align 8
@ALTERA_SDCARD_CSD_C_SIZE_BYTE2 = common dso_local global i64 0, align 8
@ALTERA_SDCARD_CSD_C_SIZE_MASK2 = common dso_local global i32 0, align 4
@ALTERA_SDCARD_CSD_C_SIZE_RSHIFT0 = common dso_local global i32 0, align 4
@ALTERA_SDCARD_CSD_C_SIZE_LSHIFT1 = common dso_local global i32 0, align 4
@ALTERA_SDCARD_CSD_C_SIZE_LSHIFT2 = common dso_local global i32 0, align 4
@ALTERA_SDCARD_CSD_C_SIZE_MULT_BYTE0 = common dso_local global i64 0, align 8
@ALTERA_SDCARD_CSD_C_SIZE_MULT_MASK0 = common dso_local global i32 0, align 4
@ALTERA_SDCARD_CSD_C_SIZE_MULT_BYTE1 = common dso_local global i64 0, align 8
@ALTERA_SDCARD_CSD_C_SIZE_MULT_MASK1 = common dso_local global i32 0, align 4
@ALTERA_SDCARD_CSD_C_SIZE_MULT_RSHIFT0 = common dso_local global i32 0, align 4
@ALTERA_SDCARD_CSD_C_SIZE_MULT_LSHIFT1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @altera_sdcard_get_mediasize() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = load i32, i32* @ALTERA_SDCARD_CSD_SIZE, align 4
  %12 = sext i32 %11 to i64
  %13 = udiv i64 %12, 4
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %5, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %6, align 8
  store i32* %15, i32** %7, align 8
  %16 = call i32 @altera_sdcard_read_csd(i32* %15)
  %17 = load i32*, i32** %7, align 8
  %18 = load i64, i64* @ALTERA_SDCARD_CSD_READ_BL_LEN_BYTE, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* @ALTERA_SDCARD_CSD_READ_BL_LEN_MASK, align 4
  %22 = load i32, i32* %4, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %4, align 4
  %24 = load i32*, i32** %7, align 8
  %25 = load i64, i64* @ALTERA_SDCARD_CSD_C_SIZE_BYTE0, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* @ALTERA_SDCARD_CSD_C_SIZE_MASK0, align 4
  %29 = load i32, i32* %8, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %8, align 4
  %31 = load i32*, i32** %7, align 8
  %32 = load i64, i64* @ALTERA_SDCARD_CSD_C_SIZE_BYTE1, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %9, align 4
  %35 = load i32*, i32** %7, align 8
  %36 = load i64, i64* @ALTERA_SDCARD_CSD_C_SIZE_BYTE2, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* @ALTERA_SDCARD_CSD_C_SIZE_MASK2, align 4
  %40 = load i32, i32* %10, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @ALTERA_SDCARD_CSD_C_SIZE_RSHIFT0, align 4
  %44 = ashr i32 %42, %43
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @ALTERA_SDCARD_CSD_C_SIZE_LSHIFT1, align 4
  %47 = shl i32 %45, %46
  %48 = or i32 %44, %47
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @ALTERA_SDCARD_CSD_C_SIZE_LSHIFT2, align 4
  %51 = shl i32 %49, %50
  %52 = or i32 %48, %51
  store i32 %52, i32* %2, align 4
  %53 = load i32*, i32** %7, align 8
  %54 = load i64, i64* @ALTERA_SDCARD_CSD_C_SIZE_MULT_BYTE0, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* @ALTERA_SDCARD_CSD_C_SIZE_MULT_MASK0, align 4
  %58 = load i32, i32* %8, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %8, align 4
  %60 = load i32*, i32** %7, align 8
  %61 = load i64, i64* @ALTERA_SDCARD_CSD_C_SIZE_MULT_BYTE1, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* @ALTERA_SDCARD_CSD_C_SIZE_MULT_MASK1, align 4
  %65 = load i32, i32* %9, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @ALTERA_SDCARD_CSD_C_SIZE_MULT_RSHIFT0, align 4
  %69 = ashr i32 %67, %68
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @ALTERA_SDCARD_CSD_C_SIZE_MULT_LSHIFT1, align 4
  %72 = shl i32 %70, %71
  %73 = or i32 %69, %72
  store i32 %73, i32* %3, align 4
  %74 = load i32, i32* %2, align 4
  %75 = add nsw i32 %74, 1
  %76 = load i32, i32* %3, align 4
  %77 = add nsw i32 %76, 2
  %78 = shl i32 1, %77
  %79 = mul nsw i32 %75, %78
  %80 = load i32, i32* %4, align 4
  %81 = shl i32 1, %80
  %82 = mul nsw i32 %79, %81
  store i32 %82, i32* %1, align 4
  %83 = load i32, i32* %1, align 4
  %84 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %84)
  ret i32 %83
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

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

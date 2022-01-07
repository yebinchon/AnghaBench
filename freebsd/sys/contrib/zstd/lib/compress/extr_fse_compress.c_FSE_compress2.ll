; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/compress/extr_fse_compress.c_FSE_compress2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/compress/extr_fse_compress.c_FSE_compress2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FSE_MAX_TABLELOG = common dso_local global i32 0, align 4
@FSE_MAX_SYMBOL_VALUE = common dso_local global i32 0, align 4
@tableLog_tooLarge = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @FSE_compress2(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i64 %1, i64* %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %15 = load i32, i32* @FSE_MAX_TABLELOG, align 4
  %16 = load i32, i32* @FSE_MAX_SYMBOL_VALUE, align 4
  %17 = call i32 @FSE_WKSP_SIZE_U32(i32 %15, i32 %16)
  %18 = sext i32 %17 to i64
  %19 = icmp uge i64 4, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @DEBUG_STATIC_ASSERT(i32 %20)
  %22 = load i32, i32* %13, align 4
  %23 = load i32, i32* @FSE_MAX_TABLELOG, align 4
  %24 = icmp ugt i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %6
  %26 = load i32, i32* @tableLog_tooLarge, align 4
  %27 = call i64 @ERROR(i32 %26)
  store i64 %27, i64* %7, align 8
  br label %36

28:                                               ; preds = %6
  %29 = load i8*, i8** %8, align 8
  %30 = load i64, i64* %9, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = load i64, i64* %11, align 8
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* %13, align 4
  %35 = call i64 @FSE_compress_wksp(i8* %29, i64 %30, i8* %31, i64 %32, i32 %33, i32 %34, i32* %14, i32 4)
  store i64 %35, i64* %7, align 8
  br label %36

36:                                               ; preds = %28, %25
  %37 = load i64, i64* %7, align 8
  ret i64 %37
}

declare dso_local i32 @DEBUG_STATIC_ASSERT(i32) #1

declare dso_local i32 @FSE_WKSP_SIZE_U32(i32, i32) #1

declare dso_local i64 @ERROR(i32) #1

declare dso_local i64 @FSE_compress_wksp(i8*, i64, i8*, i64, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/legacy/extr_zstd_v02.c_FSE_decompress.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/legacy/extr_zstd_v02.c_FSE_decompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FSE_MAX_SYMBOL_VALUE = common dso_local global i32 0, align 4
@srcSize_wrong = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i8*, i64)* @FSE_decompress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @FSE_decompress(i8* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = bitcast i8* %19 to i32*
  store i32* %20, i32** %10, align 8
  %21 = load i32*, i32** %10, align 8
  store i32* %21, i32** %11, align 8
  %22 = load i32, i32* @FSE_MAX_SYMBOL_VALUE, align 4
  %23 = add nsw i32 %22, 1
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %12, align 8
  %26 = alloca i16, i64 %24, align 16
  store i64 %24, i64* %13, align 8
  %27 = load i32, i32* @FSE_MAX_SYMBOL_VALUE, align 4
  store i32 %27, i32* %16, align 4
  %28 = load i64, i64* %9, align 8
  %29 = icmp ult i64 %28, 2
  br i1 %29, label %30, label %33

30:                                               ; preds = %4
  %31 = load i32, i32* @srcSize_wrong, align 4
  %32 = call i64 @ERROR(i32 %31)
  store i64 %32, i64* %5, align 8
  store i32 1, i32* %18, align 4
  br label %72

33:                                               ; preds = %4
  %34 = load i32*, i32** %10, align 8
  %35 = load i64, i64* %9, align 8
  %36 = call i64 @FSE_readNCount(i16* %26, i32* %16, i32* %15, i32* %34, i64 %35)
  store i64 %36, i64* %17, align 8
  %37 = load i64, i64* %17, align 8
  %38 = call i64 @FSE_isError(i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i64, i64* %17, align 8
  store i64 %41, i64* %5, align 8
  store i32 1, i32* %18, align 4
  br label %72

42:                                               ; preds = %33
  %43 = load i64, i64* %17, align 8
  %44 = load i64, i64* %9, align 8
  %45 = icmp uge i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i32, i32* @srcSize_wrong, align 4
  %48 = call i64 @ERROR(i32 %47)
  store i64 %48, i64* %5, align 8
  store i32 1, i32* %18, align 4
  br label %72

49:                                               ; preds = %42
  %50 = load i64, i64* %17, align 8
  %51 = load i32*, i32** %11, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 %50
  store i32* %52, i32** %11, align 8
  %53 = load i64, i64* %17, align 8
  %54 = load i64, i64* %9, align 8
  %55 = sub i64 %54, %53
  store i64 %55, i64* %9, align 8
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* %16, align 4
  %58 = load i32, i32* %15, align 4
  %59 = call i64 @FSE_buildDTable(i32 %56, i16* %26, i32 %57, i32 %58)
  store i64 %59, i64* %17, align 8
  %60 = load i64, i64* %17, align 8
  %61 = call i64 @FSE_isError(i64 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %49
  %64 = load i64, i64* %17, align 8
  store i64 %64, i64* %5, align 8
  store i32 1, i32* %18, align 4
  br label %72

65:                                               ; preds = %49
  %66 = load i8*, i8** %6, align 8
  %67 = load i64, i64* %7, align 8
  %68 = load i32*, i32** %11, align 8
  %69 = load i64, i64* %9, align 8
  %70 = load i32, i32* %14, align 4
  %71 = call i64 @FSE_decompress_usingDTable(i8* %66, i64 %67, i32* %68, i64 %69, i32 %70)
  store i64 %71, i64* %5, align 8
  store i32 1, i32* %18, align 4
  br label %72

72:                                               ; preds = %65, %63, %46, %40, %30
  %73 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %73)
  %74 = load i64, i64* %5, align 8
  ret i64 %74
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @ERROR(i32) #2

declare dso_local i64 @FSE_readNCount(i16*, i32*, i32*, i32*, i64) #2

declare dso_local i64 @FSE_isError(i64) #2

declare dso_local i64 @FSE_buildDTable(i32, i16*, i32, i32) #2

declare dso_local i64 @FSE_decompress_usingDTable(i8*, i64, i32*, i64, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

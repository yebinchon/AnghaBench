; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/legacy/extr_zstd_v07.c_FSEv07_decompress.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/legacy/extr_zstd_v07.c_FSEv07_decompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FSEv07_MAX_SYMBOL_VALUE = common dso_local global i32 0, align 4
@srcSize_wrong = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @FSEv07_decompress(i8* %0, i64 %1, i8* %2, i64 %3) #0 {
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
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = bitcast i8* %20 to i32*
  store i32* %21, i32** %10, align 8
  %22 = load i32*, i32** %10, align 8
  store i32* %22, i32** %11, align 8
  %23 = load i32, i32* @FSEv07_MAX_SYMBOL_VALUE, align 4
  %24 = add nsw i32 %23, 1
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %12, align 8
  %27 = alloca i16, i64 %25, align 16
  store i64 %25, i64* %13, align 8
  %28 = load i32, i32* @FSEv07_MAX_SYMBOL_VALUE, align 4
  store i32 %28, i32* %16, align 4
  %29 = load i64, i64* %9, align 8
  %30 = icmp ult i64 %29, 2
  br i1 %30, label %31, label %34

31:                                               ; preds = %4
  %32 = load i32, i32* @srcSize_wrong, align 4
  %33 = call i64 @ERROR(i32 %32)
  store i64 %33, i64* %5, align 8
  store i32 1, i32* %17, align 4
  br label %73

34:                                               ; preds = %4
  %35 = load i32*, i32** %10, align 8
  %36 = load i64, i64* %9, align 8
  %37 = call i64 @FSEv07_readNCount(i16* %27, i32* %16, i32* %15, i32* %35, i64 %36)
  store i64 %37, i64* %18, align 8
  %38 = load i64, i64* %18, align 8
  %39 = call i64 @FSEv07_isError(i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i64, i64* %18, align 8
  store i64 %42, i64* %5, align 8
  store i32 1, i32* %17, align 4
  br label %73

43:                                               ; preds = %34
  %44 = load i64, i64* %18, align 8
  %45 = load i64, i64* %9, align 8
  %46 = icmp uge i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i32, i32* @srcSize_wrong, align 4
  %49 = call i64 @ERROR(i32 %48)
  store i64 %49, i64* %5, align 8
  store i32 1, i32* %17, align 4
  br label %73

50:                                               ; preds = %43
  %51 = load i64, i64* %18, align 8
  %52 = load i32*, i32** %11, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 %51
  store i32* %53, i32** %11, align 8
  %54 = load i64, i64* %18, align 8
  %55 = load i64, i64* %9, align 8
  %56 = sub i64 %55, %54
  store i64 %56, i64* %9, align 8
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* %16, align 4
  %59 = load i32, i32* %15, align 4
  %60 = call i64 @FSEv07_buildDTable(i32 %57, i16* %27, i32 %58, i32 %59)
  store i64 %60, i64* %19, align 8
  %61 = load i64, i64* %19, align 8
  %62 = call i64 @FSEv07_isError(i64 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %50
  %65 = load i64, i64* %19, align 8
  store i64 %65, i64* %5, align 8
  store i32 1, i32* %17, align 4
  br label %73

66:                                               ; preds = %50
  %67 = load i8*, i8** %6, align 8
  %68 = load i64, i64* %7, align 8
  %69 = load i32*, i32** %11, align 8
  %70 = load i64, i64* %9, align 8
  %71 = load i32, i32* %14, align 4
  %72 = call i64 @FSEv07_decompress_usingDTable(i8* %67, i64 %68, i32* %69, i64 %70, i32 %71)
  store i64 %72, i64* %5, align 8
  store i32 1, i32* %17, align 4
  br label %73

73:                                               ; preds = %66, %64, %47, %41, %31
  %74 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %74)
  %75 = load i64, i64* %5, align 8
  ret i64 %75
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @ERROR(i32) #2

declare dso_local i64 @FSEv07_readNCount(i16*, i32*, i32*, i32*, i64) #2

declare dso_local i64 @FSEv07_isError(i64) #2

declare dso_local i64 @FSEv07_buildDTable(i32, i16*, i32, i32) #2

declare dso_local i64 @FSEv07_decompress_usingDTable(i8*, i64, i32*, i64, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

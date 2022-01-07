; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/compress/extr_huf_compress.c_HUF_compressCTable_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/compress/extr_huf_compress.c_HUF_compressCTable_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HUF_singleStream = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, i32*, i8*, i64, i64, i32*, i32)* @HUF_compressCTable_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @HUF_compressCTable_internal(i32* %0, i32* %1, i32* %2, i8* %3, i64 %4, i64 %5, i32* %6, i32 %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i8* %3, i8** %13, align 8
  store i64 %4, i64* %14, align 8
  store i64 %5, i64* %15, align 8
  store i32* %6, i32** %16, align 8
  store i32 %7, i32* %17, align 4
  %19 = load i64, i64* %15, align 8
  %20 = load i64, i64* @HUF_singleStream, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %8
  %23 = load i32*, i32** %11, align 8
  %24 = load i32*, i32** %12, align 8
  %25 = load i32*, i32** %11, align 8
  %26 = ptrtoint i32* %24 to i64
  %27 = ptrtoint i32* %25 to i64
  %28 = sub i64 %26, %27
  %29 = sdiv exact i64 %28, 4
  %30 = trunc i64 %29 to i32
  %31 = load i8*, i8** %13, align 8
  %32 = load i64, i64* %14, align 8
  %33 = load i32*, i32** %16, align 8
  %34 = load i32, i32* %17, align 4
  %35 = call i64 @HUF_compress1X_usingCTable_internal(i32* %23, i32 %30, i8* %31, i64 %32, i32* %33, i32 %34)
  br label %50

36:                                               ; preds = %8
  %37 = load i32*, i32** %11, align 8
  %38 = load i32*, i32** %12, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = ptrtoint i32* %38 to i64
  %41 = ptrtoint i32* %39 to i64
  %42 = sub i64 %40, %41
  %43 = sdiv exact i64 %42, 4
  %44 = trunc i64 %43 to i32
  %45 = load i8*, i8** %13, align 8
  %46 = load i64, i64* %14, align 8
  %47 = load i32*, i32** %16, align 8
  %48 = load i32, i32* %17, align 4
  %49 = call i64 @HUF_compress4X_usingCTable_internal(i32* %37, i32 %44, i8* %45, i64 %46, i32* %47, i32 %48)
  br label %50

50:                                               ; preds = %36, %22
  %51 = phi i64 [ %35, %22 ], [ %49, %36 ]
  store i64 %51, i64* %18, align 8
  %52 = load i64, i64* %18, align 8
  %53 = call i64 @HUF_isError(i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i64, i64* %18, align 8
  store i64 %56, i64* %9, align 8
  br label %82

57:                                               ; preds = %50
  %58 = load i64, i64* %18, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  store i64 0, i64* %9, align 8
  br label %82

61:                                               ; preds = %57
  %62 = load i64, i64* %18, align 8
  %63 = load i32*, i32** %11, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 %62
  store i32* %64, i32** %11, align 8
  %65 = load i32*, i32** %11, align 8
  %66 = load i32*, i32** %10, align 8
  %67 = ptrtoint i32* %65 to i64
  %68 = ptrtoint i32* %66 to i64
  %69 = sub i64 %67, %68
  %70 = sdiv exact i64 %69, 4
  %71 = load i64, i64* %14, align 8
  %72 = sub i64 %71, 1
  %73 = icmp uge i64 %70, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %61
  store i64 0, i64* %9, align 8
  br label %82

75:                                               ; preds = %61
  %76 = load i32*, i32** %11, align 8
  %77 = load i32*, i32** %10, align 8
  %78 = ptrtoint i32* %76 to i64
  %79 = ptrtoint i32* %77 to i64
  %80 = sub i64 %78, %79
  %81 = sdiv exact i64 %80, 4
  store i64 %81, i64* %9, align 8
  br label %82

82:                                               ; preds = %75, %74, %60, %55
  %83 = load i64, i64* %9, align 8
  ret i64 %83
}

declare dso_local i64 @HUF_compress1X_usingCTable_internal(i32*, i32, i8*, i64, i32*, i32) #1

declare dso_local i64 @HUF_compress4X_usingCTable_internal(i32*, i32, i8*, i64, i32*, i32) #1

declare dso_local i64 @HUF_isError(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

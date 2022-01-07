; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/legacy/extr_zstd_v02.c_HUF_decodeStreamX6.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/legacy/extr_zstd_v02.c_HUF_decodeStreamX6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BIT_DStream_unfinished = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, i32*, i32*, i32)* @HUF_decodeStreamX6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @HUF_decodeStreamX6(i32* %0, i32* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %16 = load i32*, i32** %9, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  %18 = bitcast i32* %17 to i8*
  store i8* %18, i8** %11, align 8
  %19 = load i8*, i8** %11, align 8
  %20 = bitcast i8* %19 to i32*
  store i32* %20, i32** %12, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load i32, i32* %10, align 4
  %24 = sub nsw i32 %23, 1
  %25 = zext i32 %24 to i64
  %26 = shl i64 1, %25
  %27 = getelementptr inbounds i32, i32* %22, i64 %26
  %28 = bitcast i32* %27 to i8*
  store i8* %28, i8** %13, align 8
  %29 = load i8*, i8** %13, align 8
  %30 = bitcast i8* %29 to i32*
  store i32* %30, i32** %14, align 8
  %31 = load i32*, i32** %6, align 8
  store i32* %31, i32** %15, align 8
  br label %32

32:                                               ; preds = %44, %5
  %33 = load i32*, i32** %7, align 8
  %34 = call i64 @BIT_reloadDStream(i32* %33)
  %35 = load i64, i64* @BIT_DStream_unfinished, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load i32*, i32** %6, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 -16
  %41 = icmp ule i32* %38, %40
  br label %42

42:                                               ; preds = %37, %32
  %43 = phi i1 [ false, %32 ], [ %41, %37 ]
  br i1 %43, label %44, label %57

44:                                               ; preds = %42
  %45 = load i32*, i32** %6, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = call i32 @HUF_DECODE_SYMBOLX6_2(i32* %45, i32* %46)
  %48 = load i32*, i32** %6, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = call i32 @HUF_DECODE_SYMBOLX6_1(i32* %48, i32* %49)
  %51 = load i32*, i32** %6, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = call i32 @HUF_DECODE_SYMBOLX6_2(i32* %51, i32* %52)
  %54 = load i32*, i32** %6, align 8
  %55 = load i32*, i32** %7, align 8
  %56 = call i32 @HUF_DECODE_SYMBOLX6_0(i32* %54, i32* %55)
  br label %32

57:                                               ; preds = %42
  br label %58

58:                                               ; preds = %70, %57
  %59 = load i32*, i32** %7, align 8
  %60 = call i64 @BIT_reloadDStream(i32* %59)
  %61 = load i64, i64* @BIT_DStream_unfinished, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load i32*, i32** %6, align 8
  %65 = load i32*, i32** %8, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 -4
  %67 = icmp ule i32* %64, %66
  br label %68

68:                                               ; preds = %63, %58
  %69 = phi i1 [ false, %58 ], [ %67, %63 ]
  br i1 %69, label %70, label %74

70:                                               ; preds = %68
  %71 = load i32*, i32** %6, align 8
  %72 = load i32*, i32** %7, align 8
  %73 = call i32 @HUF_DECODE_SYMBOLX6_0(i32* %71, i32* %72)
  br label %58

74:                                               ; preds = %68
  br label %75

75:                                               ; preds = %80, %74
  %76 = load i32*, i32** %6, align 8
  %77 = load i32*, i32** %8, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 -4
  %79 = icmp ule i32* %76, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = load i32*, i32** %6, align 8
  %82 = load i32*, i32** %7, align 8
  %83 = call i32 @HUF_DECODE_SYMBOLX6_0(i32* %81, i32* %82)
  br label %75

84:                                               ; preds = %75
  br label %85

85:                                               ; preds = %89, %84
  %86 = load i32*, i32** %6, align 8
  %87 = load i32*, i32** %8, align 8
  %88 = icmp ult i32* %86, %87
  br i1 %88, label %89, label %106

89:                                               ; preds = %85
  %90 = load i32*, i32** %6, align 8
  %91 = load i32*, i32** %8, align 8
  %92 = load i32*, i32** %6, align 8
  %93 = ptrtoint i32* %91 to i64
  %94 = ptrtoint i32* %92 to i64
  %95 = sub i64 %93, %94
  %96 = sdiv exact i64 %95, 4
  %97 = trunc i64 %96 to i32
  %98 = load i32*, i32** %7, align 8
  %99 = load i32*, i32** %12, align 8
  %100 = load i32*, i32** %14, align 8
  %101 = load i32, i32* %10, align 4
  %102 = call i32 @HUF_decodeLastSymbolsX6(i32* %90, i32 %97, i32* %98, i32* %99, i32* %100, i32 %101)
  %103 = load i32*, i32** %6, align 8
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  store i32* %105, i32** %6, align 8
  br label %85

106:                                              ; preds = %85
  %107 = load i32*, i32** %6, align 8
  %108 = load i32*, i32** %15, align 8
  %109 = ptrtoint i32* %107 to i64
  %110 = ptrtoint i32* %108 to i64
  %111 = sub i64 %109, %110
  %112 = sdiv exact i64 %111, 4
  ret i64 %112
}

declare dso_local i64 @BIT_reloadDStream(i32*) #1

declare dso_local i32 @HUF_DECODE_SYMBOLX6_2(i32*, i32*) #1

declare dso_local i32 @HUF_DECODE_SYMBOLX6_1(i32*, i32*) #1

declare dso_local i32 @HUF_DECODE_SYMBOLX6_0(i32*, i32*) #1

declare dso_local i32 @HUF_decodeLastSymbolsX6(i32*, i32, i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

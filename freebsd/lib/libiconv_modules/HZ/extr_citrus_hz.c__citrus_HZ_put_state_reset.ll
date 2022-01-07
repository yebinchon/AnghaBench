; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libiconv_modules/HZ/extr_citrus_hz.c__citrus_HZ_put_state_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libiconv_modules/HZ/extr_citrus_hz.c__citrus_HZ_put_state_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32*, i32* }

@EINVAL = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@ESCAPE_CHAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i64, %struct.TYPE_4__*, i64*)* @_citrus_HZ_put_state_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_citrus_HZ_put_state_reset(i32* noalias %0, i8* noalias %1, i64 %2, %struct.TYPE_4__* noalias %3, i64* noalias %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %10, align 8
  store i64* %4, i64** %11, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %5
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %17, %5
  %23 = load i32, i32* @EINVAL, align 4
  store i32 %23, i32* %6, align 4
  br label %86

24:                                               ; preds = %17
  %25 = load i32*, i32** %7, align 8
  %26 = call i32* @INIT0(i32* %25)
  store i32* %26, i32** %12, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = load i32*, i32** %12, align 8
  %31 = icmp ne i32* %29, %30
  br i1 %31, label %32, label %59

32:                                               ; preds = %24
  %33 = load i64, i64* %9, align 8
  %34 = icmp ult i64 %33, 2
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32, i32* @E2BIG, align 4
  store i32 %36, i32* %6, align 4
  br label %86

37:                                               ; preds = %32
  %38 = load i64, i64* %9, align 8
  %39 = sub i64 %38, 2
  store i64 %39, i64* %9, align 8
  %40 = load i32, i32* @ESCAPE_CHAR, align 4
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, 1
  store i64 %47, i64* %45, align 8
  %48 = getelementptr inbounds i32, i32* %43, i64 %46
  store i32 %40, i32* %48, align 4
  %49 = load i32*, i32** %12, align 8
  %50 = call i32 @ESC(i32* %49)
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %56, 1
  store i64 %57, i64* %55, align 8
  %58 = getelementptr inbounds i32, i32* %53, i64 %56
  store i32 %50, i32* %58, align 4
  br label %59

59:                                               ; preds = %37, %24
  %60 = load i64, i64* %9, align 8
  %61 = icmp ult i64 %60, 1
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = load i32, i32* @E2BIG, align 4
  store i32 %63, i32* %6, align 4
  br label %86

64:                                               ; preds = %59
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp sgt i64 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %64
  %70 = load i8*, i8** %8, align 8
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @memcpy(i8* %70, i32* %73, i64 %76)
  br label %78

78:                                               ; preds = %69, %64
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64*, i64** %11, align 8
  store i64 %81, i64* %82, align 8
  %83 = load i32*, i32** %7, align 8
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %85 = call i32 @_citrus_HZ_init_state(i32* %83, %struct.TYPE_4__* %84)
  store i32 0, i32* %6, align 4
  br label %86

86:                                               ; preds = %78, %62, %35, %22
  %87 = load i32, i32* %6, align 4
  ret i32 %87
}

declare dso_local i32* @INIT0(i32*) #1

declare dso_local i32 @ESC(i32*) #1

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

declare dso_local i32 @_citrus_HZ_init_state(i32*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_search.c_v_search.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_search.c_v_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }

@SEARCH_MSG = common dso_local global i32 0, align 4
@SEARCH_EOL = common dso_local global i32 0, align 4
@SEARCH_WMSG = common dso_local global i32 0, align 4
@M_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"189|No previous search pattern\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_5__*, i32*, i64, i32, i32)* @v_search to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v_search(i32* %0, %struct.TYPE_5__* %1, i32* %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %9, align 8
  store i32* %2, i32** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %14 = load i32, i32* @SEARCH_MSG, align 4
  %15 = call i32 @LF_SET(i32 %14)
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %17 = call i64 @ISMOTION(%struct.TYPE_5__* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %6
  %20 = load i32, i32* @SEARCH_EOL, align 4
  %21 = call i32 @LF_SET(i32 %20)
  br label %22

22:                                               ; preds = %19, %6
  %23 = load i32*, i32** %8, align 8
  %24 = call i32 @KEYS_WAITING(i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* @SEARCH_WMSG, align 4
  %28 = call i32 @LF_SET(i32 %27)
  br label %29

29:                                               ; preds = %26, %22
  %30 = load i32, i32* %13, align 4
  switch i32 %30, label %61 [
    i32 130, label %31
    i32 129, label %44
    i32 128, label %57
  ]

31:                                               ; preds = %29
  %32 = load i32*, i32** %8, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32*, i32** %10, align 8
  %38 = load i64, i64* %11, align 8
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @b_search(i32* %32, i32* %34, i32* %36, i32* %37, i64 %38, i32* null, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  store i32 1, i32* %7, align 4
  br label %81

43:                                               ; preds = %31
  br label %63

44:                                               ; preds = %29
  %45 = load i32*, i32** %8, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32*, i32** %10, align 8
  %51 = load i64, i64* %11, align 8
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @f_search(i32* %45, i32* %47, i32* %49, i32* %50, i64 %51, i32* null, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %44
  store i32 1, i32* %7, align 4
  br label %81

56:                                               ; preds = %44
  br label %63

57:                                               ; preds = %29
  %58 = load i32*, i32** %8, align 8
  %59 = load i32, i32* @M_ERR, align 4
  %60 = call i32 @msgq(i32* %58, i32 %59, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %7, align 4
  br label %81

61:                                               ; preds = %29
  %62 = call i32 (...) @abort() #3
  unreachable

63:                                               ; preds = %56, %43
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %65 = call i64 @ISMOTION(%struct.TYPE_5__* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %63
  %68 = load i32*, i32** %8, align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %70 = call i64 @v_correct(i32* %68, %struct.TYPE_5__* %69, i32 0)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  store i32 1, i32* %7, align 4
  br label %81

73:                                               ; preds = %67
  br label %80

74:                                               ; preds = %63
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  br label %80

80:                                               ; preds = %74, %73
  store i32 0, i32* %7, align 4
  br label %81

81:                                               ; preds = %80, %72, %57, %55, %42
  %82 = load i32, i32* %7, align 4
  ret i32 %82
}

declare dso_local i32 @LF_SET(i32) #1

declare dso_local i64 @ISMOTION(%struct.TYPE_5__*) #1

declare dso_local i32 @KEYS_WAITING(i32*) #1

declare dso_local i32 @b_search(i32*, i32*, i32*, i32*, i64, i32*, i32) #1

declare dso_local i32 @f_search(i32*, i32*, i32*, i32*, i64, i32*, i32) #1

declare dso_local i32 @msgq(i32*, i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i64 @v_correct(i32*, %struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

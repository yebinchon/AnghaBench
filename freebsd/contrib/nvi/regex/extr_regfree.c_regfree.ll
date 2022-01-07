; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/regex/extr_regfree.c_regfree.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/regex/extr_regfree.c_regfree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, %struct.re_guts* }
%struct.re_guts = type { i64, i8*, i32*, i32*, i32*, i32* }

@MAGIC1 = common dso_local global i64 0, align 8
@MAGIC2 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @regfree(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca %struct.re_guts*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @MAGIC1, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %85

10:                                               ; preds = %1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load %struct.re_guts*, %struct.re_guts** %12, align 8
  store %struct.re_guts* %13, %struct.re_guts** %3, align 8
  %14 = load %struct.re_guts*, %struct.re_guts** %3, align 8
  %15 = icmp eq %struct.re_guts* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %10
  %17 = load %struct.re_guts*, %struct.re_guts** %3, align 8
  %18 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @MAGIC2, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16, %10
  br label %85

23:                                               ; preds = %16
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  %26 = load %struct.re_guts*, %struct.re_guts** %3, align 8
  %27 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  %28 = load %struct.re_guts*, %struct.re_guts** %3, align 8
  %29 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %28, i32 0, i32 5
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %23
  %33 = load %struct.re_guts*, %struct.re_guts** %3, align 8
  %34 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %33, i32 0, i32 5
  %35 = load i32*, i32** %34, align 8
  %36 = bitcast i32* %35 to i8*
  %37 = call i32 @free(i8* %36)
  br label %38

38:                                               ; preds = %32, %23
  %39 = load %struct.re_guts*, %struct.re_guts** %3, align 8
  %40 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %39, i32 0, i32 4
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load %struct.re_guts*, %struct.re_guts** %3, align 8
  %45 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %44, i32 0, i32 4
  %46 = load i32*, i32** %45, align 8
  %47 = bitcast i32* %46 to i8*
  %48 = call i32 @free(i8* %47)
  br label %49

49:                                               ; preds = %43, %38
  %50 = load %struct.re_guts*, %struct.re_guts** %3, align 8
  %51 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %50, i32 0, i32 3
  %52 = load i32*, i32** %51, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load %struct.re_guts*, %struct.re_guts** %3, align 8
  %56 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %55, i32 0, i32 3
  %57 = load i32*, i32** %56, align 8
  %58 = bitcast i32* %57 to i8*
  %59 = call i32 @free(i8* %58)
  br label %60

60:                                               ; preds = %54, %49
  %61 = load %struct.re_guts*, %struct.re_guts** %3, align 8
  %62 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load %struct.re_guts*, %struct.re_guts** %3, align 8
  %67 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = bitcast i32* %68 to i8*
  %70 = call i32 @free(i8* %69)
  br label %71

71:                                               ; preds = %65, %60
  %72 = load %struct.re_guts*, %struct.re_guts** %3, align 8
  %73 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load %struct.re_guts*, %struct.re_guts** %3, align 8
  %78 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %77, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @free(i8* %79)
  br label %81

81:                                               ; preds = %76, %71
  %82 = load %struct.re_guts*, %struct.re_guts** %3, align 8
  %83 = bitcast %struct.re_guts* %82 to i8*
  %84 = call i32 @free(i8* %83)
  br label %85

85:                                               ; preds = %81, %22, %9
  ret void
}

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

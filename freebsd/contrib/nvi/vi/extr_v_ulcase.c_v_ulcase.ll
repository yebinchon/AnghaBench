; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_ulcase.c_v_ulcase.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_ulcase.c_v_ulcase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_6__ = type { i32, i64 }

@VC_C1SET = common dso_local global i32 0, align 4
@VIM_EMPTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v_ulcase(i32* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %6, align 4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %7, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %21 = load i32, i32* @VC_C1SET, align 4
  %22 = call i64 @F_ISSET(%struct.TYPE_8__* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  br label %29

28:                                               ; preds = %2
  br label %29

29:                                               ; preds = %28, %24
  %30 = phi i32 [ %27, %24 ], [ 1, %28 ]
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %10, align 8
  br label %32

32:                                               ; preds = %105, %29
  %33 = load i64, i64* %10, align 8
  %34 = icmp ugt i64 %33, 0
  br i1 %34, label %35, label %106

35:                                               ; preds = %32
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i64 @db_get(i32* %36, i32 %37, i32 0, i32** %11, i64* %9)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %35
  %41 = load i32, i32* %6, align 4
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load i32*, i32** %4, align 8
  %45 = load i32, i32* @VIM_EMPTY, align 4
  %46 = call i32 @v_emsg(i32* %44, i32* null, i32 %45)
  store i32 1, i32* %3, align 4
  br label %111

47:                                               ; preds = %40
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %6, align 4
  br label %106

50:                                               ; preds = %35
  %51 = load i64, i64* %9, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load i64, i64* %10, align 8
  %55 = add i64 %54, -1
  store i64 %55, i64* %10, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  store i64 0, i64* %58, align 8
  br label %105

59:                                               ; preds = %50
  %60 = load i64, i64* %7, align 8
  %61 = load i64, i64* %10, align 8
  %62 = add i64 %60, %61
  %63 = load i64, i64* %9, align 8
  %64 = icmp uge i64 %62, %63
  br i1 %64, label %65, label %78

65:                                               ; preds = %59
  %66 = load i64, i64* %9, align 8
  %67 = sub i64 %66, 1
  store i64 %67, i64* %8, align 8
  %68 = load i64, i64* %9, align 8
  %69 = load i64, i64* %7, align 8
  %70 = sub i64 %68, %69
  %71 = load i64, i64* %10, align 8
  %72 = sub i64 %71, %70
  store i64 %72, i64* %10, align 8
  %73 = load i64, i64* %9, align 8
  %74 = sub i64 %73, 1
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  store i64 %74, i64* %77, align 8
  br label %88

78:                                               ; preds = %59
  %79 = load i64, i64* %7, align 8
  %80 = load i64, i64* %10, align 8
  %81 = add i64 %79, %80
  %82 = sub i64 %81, 1
  store i64 %82, i64* %8, align 8
  store i64 0, i64* %10, align 8
  %83 = load i64, i64* %8, align 8
  %84 = add i64 %83, 1
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  store i64 %84, i64* %87, align 8
  br label %88

88:                                               ; preds = %78, %65
  %89 = load i32*, i32** %4, align 8
  %90 = load i32, i32* %6, align 4
  %91 = load i32*, i32** %11, align 8
  %92 = load i64, i64* %9, align 8
  %93 = load i64, i64* %7, align 8
  %94 = load i64, i64* %8, align 8
  %95 = call i64 @ulcase(i32* %89, i32 %90, i32* %91, i64 %92, i64 %93, i64 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %88
  store i32 1, i32* %3, align 4
  br label %111

98:                                               ; preds = %88
  %99 = load i64, i64* %10, align 8
  %100 = icmp ugt i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load i32, i32* %6, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %6, align 4
  br label %104

104:                                              ; preds = %101, %98
  br label %105

105:                                              ; preds = %104, %53
  store i64 0, i64* %7, align 8
  br label %32

106:                                              ; preds = %47, %32
  %107 = load i32, i32* %6, align 4
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  store i32 %107, i32* %110, align 8
  store i32 0, i32* %3, align 4
  br label %111

111:                                              ; preds = %106, %97, %43
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i64 @F_ISSET(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @db_get(i32*, i32, i32, i32**, i64*) #1

declare dso_local i32 @v_emsg(i32*, i32*, i32) #1

declare dso_local i64 @ulcase(i32*, i32, i32*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

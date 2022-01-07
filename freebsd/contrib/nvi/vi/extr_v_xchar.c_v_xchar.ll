; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_xchar.c_v_xchar.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_xchar.c_v_xchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_12__, %struct.TYPE_11__, i32, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }

@M_BERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"206|No characters to delete\00", align 1
@VC_C1SET = common dso_local global i32 0, align 4
@VC_BUFFER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v_xchar(i32* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @db_eget(i32* %8, i32 %12, i32* null, i64* %6, i32* %7)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  br label %24

19:                                               ; preds = %15
  store i32 1, i32* %3, align 4
  br label %109

20:                                               ; preds = %2
  %21 = load i64, i64* %6, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  br label %24

24:                                               ; preds = %23, %18
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* @M_BERR, align 4
  %27 = call i32 @msgq(i32* %25, i32 %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %109

28:                                               ; preds = %20
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %30 = load i32, i32* @VC_C1SET, align 4
  %31 = call i64 @F_ISSET(%struct.TYPE_10__* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %28
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add i64 %42, %38
  store i64 %43, i64* %41, align 8
  br label %44

44:                                               ; preds = %33, %28
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %6, align 8
  %50 = sub i64 %49, 1
  %51 = icmp uge i64 %48, %50
  br i1 %51, label %52, label %75

52:                                               ; preds = %44
  %53 = load i64, i64* %6, align 8
  %54 = sub i64 %53, 1
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  store i64 %54, i64* %57, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %52
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sub nsw i32 %67, 1
  br label %70

69:                                               ; preds = %52
  br label %70

70:                                               ; preds = %69, %63
  %71 = phi i32 [ %68, %63 ], [ 0, %69 ]
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 4
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  store i32 %71, i32* %74, align 4
  br label %83

75:                                               ; preds = %44
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  store i32 %79, i32* %82, align 4
  br label %83

83:                                               ; preds = %75, %70
  %84 = load i32*, i32** %4, align 8
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %86 = load i32, i32* @VC_BUFFER, align 4
  %87 = call i64 @F_ISSET(%struct.TYPE_10__* %85, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %83
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 3
  br label %93

92:                                               ; preds = %83
  br label %93

93:                                               ; preds = %92, %89
  %94 = phi i32* [ %91, %89 ], [ null, %92 ]
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 2
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 1
  %99 = call i64 @cut(i32* %84, i32* %94, %struct.TYPE_11__* %96, %struct.TYPE_12__* %98, i32 0)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %93
  store i32 1, i32* %3, align 4
  br label %109

102:                                              ; preds = %93
  %103 = load i32*, i32** %4, align 8
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 2
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 1
  %108 = call i32 @del(i32* %103, %struct.TYPE_11__* %105, %struct.TYPE_12__* %107, i32 0)
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %102, %101, %24, %19
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i64 @db_eget(i32*, i32, i32*, i64*, i32*) #1

declare dso_local i32 @msgq(i32*, i32, i8*) #1

declare dso_local i64 @F_ISSET(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @cut(i32*, i32*, %struct.TYPE_11__*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @del(i32*, %struct.TYPE_11__*, %struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libedit/extr_vi.c_cv_action.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libedit/extr_vi.c_cv_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_10__ = type { i64, i64, i64 }
%struct.TYPE_9__ = type { i32, i32 }

@NOP = common dso_local global i32 0, align 4
@CC_ERROR = common dso_local global i32 0, align 4
@YANK = common dso_local global i32 0, align 4
@INSERT = common dso_local global i32 0, align 4
@CC_REFRESH = common dso_local global i32 0, align 4
@CC_ARGHACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32)* @cv_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cv_action(%struct.TYPE_13__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @NOP, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %91

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %14, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %13
  %22 = load i32, i32* @CC_ERROR, align 4
  store i32 %22, i32* %3, align 4
  br label %106

23:                                               ; preds = %13
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @YANK, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %30 = call i32 @cv_undo(%struct.TYPE_13__* %29)
  br label %31

31:                                               ; preds = %28, %23
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = sub nsw i64 %40, %44
  %46 = trunc i64 %45 to i32
  %47 = call i32 @cv_yank(%struct.TYPE_13__* %32, i64 %36, i32 %46)
  %48 = load i32, i32* @NOP, align 4
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  store i32 %48, i32* %52, align 8
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 1
  store i64 0, i64* %56, align 8
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @YANK, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %76, label %61

61:                                               ; preds = %31
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 2
  store i64 %65, i64* %68, align 8
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  store i64 %72, i64* %75, align 8
  br label %76

76:                                               ; preds = %61, %31
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @INSERT, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %76
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 1
  store i32 %85, i32* %88, align 4
  br label %89

89:                                               ; preds = %81, %76
  %90 = load i32, i32* @CC_REFRESH, align 4
  store i32 %90, i32* %3, align 4
  br label %106

91:                                               ; preds = %2
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 1
  store i64 %95, i64* %99, align 8
  %100 = load i32, i32* %5, align 4
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  store i32 %100, i32* %104, align 8
  %105 = load i32, i32* @CC_ARGHACK, align 4
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %91, %89, %21
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @cv_undo(%struct.TYPE_13__*) #1

declare dso_local i32 @cv_yank(%struct.TYPE_13__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

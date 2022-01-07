; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/respip/extr_respip.c_respip_views_apply_cfg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/respip/extr_respip.c_respip_views_apply_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.views = type { i32 }
%struct.config_file = type { %struct.config_view* }
%struct.config_view = type { i32*, i32*, i32, %struct.config_view* }
%struct.view = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [31 x i8] c"view '%s' unexpectedly missing\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"Error while applying respip configuration for view '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @respip_views_apply_cfg(%struct.views* %0, %struct.config_file* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.views*, align 8
  %6 = alloca %struct.config_file*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.config_view*, align 8
  %9 = alloca %struct.view*, align 8
  %10 = alloca i32, align 4
  store %struct.views* %0, %struct.views** %5, align 8
  store %struct.config_file* %1, %struct.config_file** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.config_file*, %struct.config_file** %6, align 8
  %12 = getelementptr inbounds %struct.config_file, %struct.config_file* %11, i32 0, i32 0
  %13 = load %struct.config_view*, %struct.config_view** %12, align 8
  store %struct.config_view* %13, %struct.config_view** %8, align 8
  br label %14

14:                                               ; preds = %100, %3
  %15 = load %struct.config_view*, %struct.config_view** %8, align 8
  %16 = icmp ne %struct.config_view* %15, null
  br i1 %16, label %17, label %104

17:                                               ; preds = %14
  %18 = load %struct.config_view*, %struct.config_view** %8, align 8
  %19 = getelementptr inbounds %struct.config_view, %struct.config_view* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %17
  %23 = load %struct.config_view*, %struct.config_view** %8, align 8
  %24 = getelementptr inbounds %struct.config_view, %struct.config_view* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  br label %100

28:                                               ; preds = %22, %17
  %29 = load %struct.views*, %struct.views** %5, align 8
  %30 = load %struct.config_view*, %struct.config_view** %8, align 8
  %31 = getelementptr inbounds %struct.config_view, %struct.config_view* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call %struct.view* @views_find_view(%struct.views* %29, i32 %32, i32 1)
  store %struct.view* %33, %struct.view** %9, align 8
  %34 = icmp ne %struct.view* %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %28
  %36 = load %struct.config_view*, %struct.config_view** %8, align 8
  %37 = getelementptr inbounds %struct.config_view, %struct.config_view* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %38)
  store i32 0, i32* %4, align 4
  br label %105

40:                                               ; preds = %28
  %41 = load %struct.view*, %struct.view** %9, align 8
  %42 = getelementptr inbounds %struct.view, %struct.view* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = icmp ne %struct.TYPE_5__* %43, null
  br i1 %44, label %59, label %45

45:                                               ; preds = %40
  %46 = call %struct.TYPE_5__* (...) @respip_set_create()
  %47 = load %struct.view*, %struct.view** %9, align 8
  %48 = getelementptr inbounds %struct.view, %struct.view* %47, i32 0, i32 0
  store %struct.TYPE_5__* %46, %struct.TYPE_5__** %48, align 8
  %49 = load %struct.view*, %struct.view** %9, align 8
  %50 = getelementptr inbounds %struct.view, %struct.view* %49, i32 0, i32 0
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = icmp ne %struct.TYPE_5__* %51, null
  br i1 %52, label %58, label %53

53:                                               ; preds = %45
  %54 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %55 = load %struct.view*, %struct.view** %9, align 8
  %56 = getelementptr inbounds %struct.view, %struct.view* %55, i32 0, i32 1
  %57 = call i32 @lock_rw_unlock(i32* %56)
  store i32 0, i32* %4, align 4
  br label %105

58:                                               ; preds = %45
  br label %59

59:                                               ; preds = %58, %40
  %60 = load %struct.view*, %struct.view** %9, align 8
  %61 = getelementptr inbounds %struct.view, %struct.view* %60, i32 0, i32 0
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = load %struct.config_view*, %struct.config_view** %8, align 8
  %64 = getelementptr inbounds %struct.config_view, %struct.config_view* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load %struct.config_view*, %struct.config_view** %8, align 8
  %67 = getelementptr inbounds %struct.config_view, %struct.config_view* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @respip_set_apply_cfg(%struct.TYPE_5__* %62, i32* null, i32 0, i32* null, i32* %65, i32* %68)
  store i32 %69, i32* %10, align 4
  %70 = load %struct.view*, %struct.view** %9, align 8
  %71 = getelementptr inbounds %struct.view, %struct.view* %70, i32 0, i32 1
  %72 = call i32 @lock_rw_unlock(i32* %71)
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %59
  %76 = load %struct.config_view*, %struct.config_view** %8, align 8
  %77 = getelementptr inbounds %struct.config_view, %struct.config_view* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %78)
  store i32 0, i32* %4, align 4
  br label %105

80:                                               ; preds = %59
  %81 = load i32*, i32** %7, align 8
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %92, label %84

84:                                               ; preds = %80
  %85 = load %struct.view*, %struct.view** %9, align 8
  %86 = getelementptr inbounds %struct.view, %struct.view* %85, i32 0, i32 0
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br label %92

92:                                               ; preds = %84, %80
  %93 = phi i1 [ true, %80 ], [ %91, %84 ]
  %94 = zext i1 %93 to i32
  %95 = load i32*, i32** %7, align 8
  store i32 %94, i32* %95, align 4
  %96 = load %struct.config_view*, %struct.config_view** %8, align 8
  %97 = getelementptr inbounds %struct.config_view, %struct.config_view* %96, i32 0, i32 1
  store i32* null, i32** %97, align 8
  %98 = load %struct.config_view*, %struct.config_view** %8, align 8
  %99 = getelementptr inbounds %struct.config_view, %struct.config_view* %98, i32 0, i32 0
  store i32* null, i32** %99, align 8
  br label %100

100:                                              ; preds = %92, %27
  %101 = load %struct.config_view*, %struct.config_view** %8, align 8
  %102 = getelementptr inbounds %struct.config_view, %struct.config_view* %101, i32 0, i32 3
  %103 = load %struct.config_view*, %struct.config_view** %102, align 8
  store %struct.config_view* %103, %struct.config_view** %8, align 8
  br label %14

104:                                              ; preds = %14
  store i32 1, i32* %4, align 4
  br label %105

105:                                              ; preds = %104, %75, %53, %35
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local %struct.view* @views_find_view(%struct.views*, i32, i32) #1

declare dso_local i32 @log_err(i8*, ...) #1

declare dso_local %struct.TYPE_5__* @respip_set_create(...) #1

declare dso_local i32 @lock_rw_unlock(i32*) #1

declare dso_local i32 @respip_set_apply_cfg(%struct.TYPE_5__*, i32*, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

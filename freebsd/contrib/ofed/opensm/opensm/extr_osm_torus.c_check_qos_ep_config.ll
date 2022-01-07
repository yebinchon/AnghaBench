; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_torus.c_check_qos_ep_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_torus.c_check_qos_ep_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8*, i8*, i64 }

@OSM_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [85 x i8] c"Warning: full torus-2QoS functionality not available for configured %s_max_vls = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"qos\00", align 1
@OSM_DEFAULT_QOS_VLARB_HIGH = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"high\00", align 1
@OSM_DEFAULT_QOS_VLARB_LOW = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"low\00", align 1
@.str.4 = private unnamed_addr constant [88 x i8] c"Warning: torus-2QoS must override configured %s_sl2vl to generate deadlock-free routes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, %struct.TYPE_4__*, i8*, i32*)* @check_qos_ep_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_qos_ep_config(%struct.TYPE_4__* %0, %struct.TYPE_4__* %1, i8* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %12, align 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ugt i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %12, align 4
  br label %24

24:                                               ; preds = %20, %4
  %25 = load i32, i32* %12, align 4
  %26 = icmp ugt i32 %25, 0
  br i1 %26, label %27, label %46

27:                                               ; preds = %24
  %28 = load i32, i32* %12, align 4
  %29 = icmp ult i32 %28, 2
  br i1 %29, label %30, label %46

30:                                               ; preds = %27
  %31 = load i32*, i32** %8, align 8
  %32 = load i32, i32* @OSM_LOG_INFO, align 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ugt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i8*, i8** %7, align 8
  br label %40

39:                                               ; preds = %30
  br label %40

40:                                               ; preds = %39, %37
  %41 = phi i8* [ %38, %37 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), %39 ]
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 (i32*, i32, i8*, i8*, ...) @OSM_LOG(i32* %31, i32 %32, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i64 0, i64 0), i8* %41, i32 %44)
  br label %46

46:                                               ; preds = %40, %27, %24
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  store i8* %49, i8** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 1, i32* %11, align 4
  %50 = load i8*, i8** %9, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %56, label %52

52:                                               ; preds = %46
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  store i8* %55, i8** %9, align 8
  store i32 0, i32* %11, align 4
  br label %56

56:                                               ; preds = %52, %46
  %57 = load i8*, i8** %9, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %56
  %60 = load i8*, i8** @OSM_DEFAULT_QOS_VLARB_HIGH, align 8
  store i8* %60, i8** %9, align 8
  store i32 1, i32* %10, align 4
  br label %61

61:                                               ; preds = %59, %56
  %62 = load i8*, i8** %9, align 8
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load i8*, i8** %7, align 8
  %66 = load i32*, i32** %8, align 8
  %67 = call i32 @check_ep_vlarb_config(i8* %62, i32 %63, i32 %64, i8* %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* %66)
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  %70 = load i8*, i8** %69, align 8
  store i8* %70, i8** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 1, i32* %11, align 4
  %71 = load i8*, i8** %9, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %77, label %73

73:                                               ; preds = %61
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 2
  %76 = load i8*, i8** %75, align 8
  store i8* %76, i8** %9, align 8
  store i32 0, i32* %11, align 4
  br label %77

77:                                               ; preds = %73, %61
  %78 = load i8*, i8** %9, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %82, label %80

80:                                               ; preds = %77
  %81 = load i8*, i8** @OSM_DEFAULT_QOS_VLARB_LOW, align 8
  store i8* %81, i8** %9, align 8
  store i32 1, i32* %10, align 4
  br label %82

82:                                               ; preds = %80, %77
  %83 = load i8*, i8** %9, align 8
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %11, align 4
  %86 = load i8*, i8** %7, align 8
  %87 = load i32*, i32** %8, align 8
  %88 = call i32 @check_ep_vlarb_config(i8* %83, i32 %84, i32 %85, i8* %86, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32* %87)
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %82
  %94 = load i32*, i32** %8, align 8
  %95 = load i32, i32* @OSM_LOG_INFO, align 4
  %96 = load i8*, i8** %7, align 8
  %97 = call i32 (i32*, i32, i8*, i8*, ...) @OSM_LOG(i32* %94, i32 %95, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.4, i64 0, i64 0), i8* %96)
  br label %98

98:                                               ; preds = %93, %82
  ret void
}

declare dso_local i32 @OSM_LOG(i32*, i32, i8*, i8*, ...) #1

declare dso_local i32 @check_ep_vlarb_config(i8*, i32, i32, i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

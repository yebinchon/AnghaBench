; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_ucast_mgr.c_ucast_mgr_build_lfts.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_ucast_mgr.c_ucast_mgr_build_lfts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64 }

@OSM_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Fetching guid routing order file '%s'\0A\00", align 1
@add_guid_to_order_list = common dso_local global i32 0, align 4
@OSM_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"ERR 3A0D: cannot parse guid routing order file '%s'\0A\00", align 1
@clear_prof_ignore_flag = common dso_local global i32 0, align 4
@mark_ignored_port = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"ERR 3A0E: cannot parse port prof ignore file '%s'\0A\00", align 1
@add_port_to_order_list = common dso_local global i32 0, align 4
@ucast_mgr_process_tbl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*)* @ucast_mgr_build_lfts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucast_mgr_build_lfts(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %3 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  %5 = call i32 @cl_qlist_init(i32* %4)
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %48

13:                                               ; preds = %1
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @OSM_LOG_DEBUG, align 4
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @OSM_LOG(i32 %16, i32 %17, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %23)
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* @add_guid_to_order_list, align 4
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %33 = call i64 @parse_node_map(i64 %30, i32 %31, %struct.TYPE_10__* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %13
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @OSM_LOG_ERROR, align 4
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @OSM_LOG(i32 %38, i32 %39, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i64 %45)
  br label %47

47:                                               ; preds = %35, %13
  br label %48

48:                                               ; preds = %47, %1
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %50 = call i32 @sort_ports_by_switch_load(%struct.TYPE_10__* %49)
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %88

58:                                               ; preds = %48
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i32, i32* @clear_prof_ignore_flag, align 4
  %64 = call i32 @cl_qmap_apply_func(i32* %62, i32 %63, %struct.TYPE_10__* null)
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* @mark_ignored_port, align 4
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %73 = call i64 @parse_node_map(i64 %70, i32 %71, %struct.TYPE_10__* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %87

75:                                               ; preds = %58
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @OSM_LOG_ERROR, align 4
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @OSM_LOG(i32 %78, i32 %79, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i64 %85)
  br label %87

87:                                               ; preds = %75, %58
  br label %88

88:                                               ; preds = %87, %48
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 1
  %93 = load i32, i32* @add_port_to_order_list, align 4
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %95 = call i32 @cl_qmap_apply_func(i32* %92, i32 %93, %struct.TYPE_10__* %94)
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = load i32, i32* @ucast_mgr_process_tbl, align 4
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %102 = call i32 @cl_qmap_apply_func(i32* %99, i32 %100, %struct.TYPE_10__* %101)
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = call i32 @cl_qlist_remove_all(i32* %104)
  ret i32 0
}

declare dso_local i32 @cl_qlist_init(i32*) #1

declare dso_local i32 @OSM_LOG(i32, i32, i8*, i64) #1

declare dso_local i64 @parse_node_map(i64, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @sort_ports_by_switch_load(%struct.TYPE_10__*) #1

declare dso_local i32 @cl_qmap_apply_func(i32*, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @cl_qlist_remove_all(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

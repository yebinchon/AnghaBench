; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers_p2p.c_wpas_dbus_getter_p2p_peer_groups.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers_p2p.c_wpas_dbus_getter_p2p_peer_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_dbus_property_desc = type { i32 }
%struct.peer_handler_args = type { %struct.wpa_supplicant*, i32 }
%struct.wpa_supplicant = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, %struct.wpa_supplicant* }
%struct.p2p_peer_info = type { i32 }
%struct.peer_group_data = type { i32, i32*, i64, %struct.p2p_peer_info*, %struct.wpa_supplicant* }

@FALSE = common dso_local global i32 0, align 4
@DBUS_ERROR_FAILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"failed to find peer\00", align 1
@match_group_where_peer_is_client = common dso_local global i32 0, align 4
@DBUS_TYPE_OBJECT_PATH = common dso_local global i32 0, align 4
@DBUS_ERROR_NO_MEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"no memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpas_dbus_getter_p2p_peer_groups(%struct.wpa_dbus_property_desc* %0, i32* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wpa_dbus_property_desc*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.peer_handler_args*, align 8
  %11 = alloca %struct.p2p_peer_info*, align 8
  %12 = alloca %struct.peer_group_data, align 8
  %13 = alloca %struct.wpa_supplicant*, align 8
  %14 = alloca %struct.wpa_supplicant*, align 8
  %15 = alloca i32, align 4
  store %struct.wpa_dbus_property_desc* %0, %struct.wpa_dbus_property_desc** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = bitcast i8* %16 to %struct.peer_handler_args*
  store %struct.peer_handler_args* %17, %struct.peer_handler_args** %10, align 8
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %15, align 4
  %19 = load %struct.peer_handler_args*, %struct.peer_handler_args** %10, align 8
  %20 = getelementptr inbounds %struct.peer_handler_args, %struct.peer_handler_args* %19, i32 0, i32 0
  %21 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %20, align 8
  %22 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.peer_handler_args*, %struct.peer_handler_args** %10, align 8
  %27 = getelementptr inbounds %struct.peer_handler_args, %struct.peer_handler_args* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call %struct.p2p_peer_info* @p2p_get_peer_found(i32 %25, i32 %28, i32 0)
  store %struct.p2p_peer_info* %29, %struct.p2p_peer_info** %11, align 8
  %30 = load %struct.p2p_peer_info*, %struct.p2p_peer_info** %11, align 8
  %31 = icmp eq %struct.p2p_peer_info* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %4
  %33 = load i32*, i32** %8, align 8
  %34 = load i32, i32* @DBUS_ERROR_FAILED, align 4
  %35 = call i32 @dbus_set_error(i32* %33, i32 %34, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @FALSE, align 4
  store i32 %36, i32* %5, align 4
  br label %116

37:                                               ; preds = %4
  %38 = call i32 @os_memset(%struct.peer_group_data* %12, i32 0, i32 40)
  %39 = load %struct.peer_handler_args*, %struct.peer_handler_args** %10, align 8
  %40 = getelementptr inbounds %struct.peer_handler_args, %struct.peer_handler_args* %39, i32 0, i32 0
  %41 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %40, align 8
  store %struct.wpa_supplicant* %41, %struct.wpa_supplicant** %13, align 8
  %42 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %13, align 8
  %43 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %45, align 8
  store %struct.wpa_supplicant* %46, %struct.wpa_supplicant** %13, align 8
  %47 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %13, align 8
  %48 = load %struct.p2p_peer_info*, %struct.p2p_peer_info** %11, align 8
  %49 = getelementptr inbounds %struct.p2p_peer_info, %struct.p2p_peer_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call %struct.wpa_supplicant* @wpas_get_p2p_client_iface(%struct.wpa_supplicant* %47, i32 %50)
  store %struct.wpa_supplicant* %51, %struct.wpa_supplicant** %14, align 8
  %52 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %14, align 8
  %53 = icmp ne %struct.wpa_supplicant* %52, null
  br i1 %53, label %54, label %69

54:                                               ; preds = %37
  %55 = call i32* @os_calloc(i32 1, i32 8)
  %56 = getelementptr inbounds %struct.peer_group_data, %struct.peer_group_data* %12, i32 0, i32 1
  store i32* %55, i32** %56, align 8
  %57 = getelementptr inbounds %struct.peer_group_data, %struct.peer_group_data* %12, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  br label %107

61:                                               ; preds = %54
  %62 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %14, align 8
  %63 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = getelementptr inbounds %struct.peer_group_data, %struct.peer_group_data* %12, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  store i32 %64, i32* %67, align 4
  %68 = getelementptr inbounds %struct.peer_group_data, %struct.peer_group_data* %12, i32 0, i32 0
  store i32 1, i32* %68, align 8
  br label %69

69:                                               ; preds = %61, %37
  %70 = load %struct.peer_handler_args*, %struct.peer_handler_args** %10, align 8
  %71 = getelementptr inbounds %struct.peer_handler_args, %struct.peer_handler_args* %70, i32 0, i32 0
  %72 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %71, align 8
  %73 = getelementptr inbounds %struct.peer_group_data, %struct.peer_group_data* %12, i32 0, i32 4
  store %struct.wpa_supplicant* %72, %struct.wpa_supplicant** %73, align 8
  %74 = load %struct.p2p_peer_info*, %struct.p2p_peer_info** %11, align 8
  %75 = getelementptr inbounds %struct.peer_group_data, %struct.peer_group_data* %12, i32 0, i32 3
  store %struct.p2p_peer_info* %74, %struct.p2p_peer_info** %75, align 8
  %76 = load %struct.peer_handler_args*, %struct.peer_handler_args** %10, align 8
  %77 = getelementptr inbounds %struct.peer_handler_args, %struct.peer_handler_args* %76, i32 0, i32 0
  %78 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %77, align 8
  %79 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @match_group_where_peer_is_client, align 4
  %84 = call i32 @p2p_loop_on_all_groups(i32 %82, i32 %83, %struct.peer_group_data* %12)
  %85 = getelementptr inbounds %struct.peer_group_data, %struct.peer_group_data* %12, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %69
  br label %107

89:                                               ; preds = %69
  %90 = getelementptr inbounds %struct.peer_group_data, %struct.peer_group_data* %12, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = icmp eq i32* %91, null
  br i1 %92, label %93, label %98

93:                                               ; preds = %89
  %94 = load i32*, i32** %7, align 8
  %95 = load i32, i32* @DBUS_TYPE_OBJECT_PATH, align 4
  %96 = load i32*, i32** %8, align 8
  %97 = call i32 @wpas_dbus_simple_array_property_getter(i32* %94, i32 %95, i32* null, i32 0, i32* %96)
  store i32 %97, i32* %5, align 4
  br label %116

98:                                               ; preds = %89
  %99 = load i32*, i32** %7, align 8
  %100 = load i32, i32* @DBUS_TYPE_OBJECT_PATH, align 4
  %101 = getelementptr inbounds %struct.peer_group_data, %struct.peer_group_data* %12, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds %struct.peer_group_data, %struct.peer_group_data* %12, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32*, i32** %8, align 8
  %106 = call i32 @wpas_dbus_simple_array_property_getter(i32* %99, i32 %100, i32* %102, i32 %104, i32* %105)
  store i32 %106, i32* %15, align 4
  br label %111

107:                                              ; preds = %88, %60
  %108 = load i32*, i32** %8, align 8
  %109 = load i32, i32* @DBUS_ERROR_NO_MEMORY, align 4
  %110 = call i32 @dbus_set_error_const(i32* %108, i32 %109, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %111

111:                                              ; preds = %107, %98
  %112 = getelementptr inbounds %struct.peer_group_data, %struct.peer_group_data* %12, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = call i32 @os_free(i32* %113)
  %115 = load i32, i32* %15, align 4
  store i32 %115, i32* %5, align 4
  br label %116

116:                                              ; preds = %111, %93, %32
  %117 = load i32, i32* %5, align 4
  ret i32 %117
}

declare dso_local %struct.p2p_peer_info* @p2p_get_peer_found(i32, i32, i32) #1

declare dso_local i32 @dbus_set_error(i32*, i32, i8*) #1

declare dso_local i32 @os_memset(%struct.peer_group_data*, i32, i32) #1

declare dso_local %struct.wpa_supplicant* @wpas_get_p2p_client_iface(%struct.wpa_supplicant*, i32) #1

declare dso_local i32* @os_calloc(i32, i32) #1

declare dso_local i32 @p2p_loop_on_all_groups(i32, i32, %struct.peer_group_data*) #1

declare dso_local i32 @wpas_dbus_simple_array_property_getter(i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @dbus_set_error_const(i32*, i32, i8*) #1

declare dso_local i32 @os_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

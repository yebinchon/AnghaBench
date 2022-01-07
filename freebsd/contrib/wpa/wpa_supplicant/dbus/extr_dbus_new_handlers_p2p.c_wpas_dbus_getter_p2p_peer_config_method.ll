; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers_p2p.c_wpas_dbus_getter_p2p_peer_config_method.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers_p2p.c_wpas_dbus_getter_p2p_peer_config_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_dbus_property_desc = type { i32 }
%struct.peer_handler_args = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.p2p_peer_info = type { i32 }

@DBUS_ERROR_FAILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"failed to find peer\00", align 1
@FALSE = common dso_local global i32 0, align 4
@DBUS_TYPE_UINT16 = common dso_local global i32 0, align 4
@DBUS_ERROR_NO_MEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"no memory\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpas_dbus_getter_p2p_peer_config_method(%struct.wpa_dbus_property_desc* %0, i32* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wpa_dbus_property_desc*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.peer_handler_args*, align 8
  %11 = alloca %struct.p2p_peer_info*, align 8
  store %struct.wpa_dbus_property_desc* %0, %struct.wpa_dbus_property_desc** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load i8*, i8** %9, align 8
  %13 = bitcast i8* %12 to %struct.peer_handler_args*
  store %struct.peer_handler_args* %13, %struct.peer_handler_args** %10, align 8
  %14 = load %struct.peer_handler_args*, %struct.peer_handler_args** %10, align 8
  %15 = getelementptr inbounds %struct.peer_handler_args, %struct.peer_handler_args* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.peer_handler_args*, %struct.peer_handler_args** %10, align 8
  %22 = getelementptr inbounds %struct.peer_handler_args, %struct.peer_handler_args* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.p2p_peer_info* @p2p_get_peer_found(i32 %20, i32 %23, i32 0)
  store %struct.p2p_peer_info* %24, %struct.p2p_peer_info** %11, align 8
  %25 = load %struct.p2p_peer_info*, %struct.p2p_peer_info** %11, align 8
  %26 = icmp eq %struct.p2p_peer_info* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %4
  %28 = load i32*, i32** %8, align 8
  %29 = load i32, i32* @DBUS_ERROR_FAILED, align 4
  %30 = call i32 @dbus_set_error(i32* %28, i32 %29, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @FALSE, align 4
  store i32 %31, i32* %5, align 4
  br label %47

32:                                               ; preds = %4
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* @DBUS_TYPE_UINT16, align 4
  %35 = load %struct.p2p_peer_info*, %struct.p2p_peer_info** %11, align 8
  %36 = getelementptr inbounds %struct.p2p_peer_info, %struct.p2p_peer_info* %35, i32 0, i32 0
  %37 = load i32*, i32** %8, align 8
  %38 = call i32 @wpas_dbus_simple_property_getter(i32* %33, i32 %34, i32* %36, i32* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %32
  %41 = load i32*, i32** %8, align 8
  %42 = load i32, i32* @DBUS_ERROR_NO_MEMORY, align 4
  %43 = call i32 @dbus_set_error_const(i32* %41, i32 %42, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* @FALSE, align 4
  store i32 %44, i32* %5, align 4
  br label %47

45:                                               ; preds = %32
  %46 = load i32, i32* @TRUE, align 4
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %45, %40, %27
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local %struct.p2p_peer_info* @p2p_get_peer_found(i32, i32, i32) #1

declare dso_local i32 @dbus_set_error(i32*, i32, i8*) #1

declare dso_local i32 @wpas_dbus_simple_property_getter(i32*, i32, i32*, i32*) #1

declare dso_local i32 @dbus_set_error_const(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

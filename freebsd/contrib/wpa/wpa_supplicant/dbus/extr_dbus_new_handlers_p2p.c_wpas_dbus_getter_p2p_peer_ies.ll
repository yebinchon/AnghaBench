; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers_p2p.c_wpas_dbus_getter_p2p_peer_ies.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers_p2p.c_wpas_dbus_getter_p2p_peer_ies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_dbus_property_desc = type { i32 }
%struct.peer_handler_args = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.p2p_peer_info = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64 }

@DBUS_ERROR_FAILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"failed to find peer\00", align 1
@FALSE = common dso_local global i32 0, align 4
@DBUS_TYPE_BYTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpas_dbus_getter_p2p_peer_ies(%struct.wpa_dbus_property_desc* %0, i32* %1, i32* %2, i8* %3) #0 {
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
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
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
  br label %58

32:                                               ; preds = %4
  %33 = load %struct.p2p_peer_info*, %struct.p2p_peer_info** %11, align 8
  %34 = getelementptr inbounds %struct.p2p_peer_info, %struct.p2p_peer_info* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = icmp eq %struct.TYPE_4__* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* @DBUS_TYPE_BYTE, align 4
  %40 = load i32*, i32** %8, align 8
  %41 = call i32 @wpas_dbus_simple_array_property_getter(i32* %38, i32 %39, i8* null, i32 0, i32* %40)
  store i32 %41, i32* %5, align 4
  br label %58

42:                                               ; preds = %32
  %43 = load i32*, i32** %7, align 8
  %44 = load i32, i32* @DBUS_TYPE_BYTE, align 4
  %45 = load %struct.p2p_peer_info*, %struct.p2p_peer_info** %11, align 8
  %46 = getelementptr inbounds %struct.p2p_peer_info, %struct.p2p_peer_info* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to i8*
  %51 = load %struct.p2p_peer_info*, %struct.p2p_peer_info** %11, align 8
  %52 = getelementptr inbounds %struct.p2p_peer_info, %struct.p2p_peer_info* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = call i32 @wpas_dbus_simple_array_property_getter(i32* %43, i32 %44, i8* %50, i32 %55, i32* %56)
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %42, %37, %27
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local %struct.p2p_peer_info* @p2p_get_peer_found(i32, i32, i32) #1

declare dso_local i32 @dbus_set_error(i32*, i32, i8*) #1

declare dso_local i32 @wpas_dbus_simple_array_property_getter(i32*, i32, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

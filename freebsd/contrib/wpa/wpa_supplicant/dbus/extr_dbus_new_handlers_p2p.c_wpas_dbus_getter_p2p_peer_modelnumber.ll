; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers_p2p.c_wpas_dbus_getter_p2p_peer_modelnumber.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers_p2p.c_wpas_dbus_getter_p2p_peer_modelnumber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_dbus_property_desc = type { i32 }
%struct.peer_handler_args = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.p2p_peer_info = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@DBUS_ERROR_FAILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"failed to find peer\00", align 1
@DBUS_ERROR_NO_MEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"no memory\00", align 1
@DBUS_TYPE_STRING = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpas_dbus_getter_p2p_peer_modelnumber(%struct.wpa_dbus_property_desc* %0, i32* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wpa_dbus_property_desc*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.peer_handler_args*, align 8
  %11 = alloca %struct.p2p_peer_info*, align 8
  %12 = alloca i8*, align 8
  store %struct.wpa_dbus_property_desc* %0, %struct.wpa_dbus_property_desc** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = bitcast i8* %13 to %struct.peer_handler_args*
  store %struct.peer_handler_args* %14, %struct.peer_handler_args** %10, align 8
  %15 = load %struct.peer_handler_args*, %struct.peer_handler_args** %10, align 8
  %16 = getelementptr inbounds %struct.peer_handler_args, %struct.peer_handler_args* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = call i32 @wpa_dbus_p2p_check_enabled(%struct.TYPE_4__* %17, i32* null, i32* null, i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @FALSE, align 4
  store i32 %22, i32* %5, align 4
  br label %71

23:                                               ; preds = %4
  %24 = load %struct.peer_handler_args*, %struct.peer_handler_args** %10, align 8
  %25 = getelementptr inbounds %struct.peer_handler_args, %struct.peer_handler_args* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.peer_handler_args*, %struct.peer_handler_args** %10, align 8
  %32 = getelementptr inbounds %struct.peer_handler_args, %struct.peer_handler_args* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call %struct.p2p_peer_info* @p2p_get_peer_found(i32 %30, i32 %33, i32 0)
  store %struct.p2p_peer_info* %34, %struct.p2p_peer_info** %11, align 8
  %35 = load %struct.p2p_peer_info*, %struct.p2p_peer_info** %11, align 8
  %36 = icmp eq %struct.p2p_peer_info* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %23
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* @DBUS_ERROR_FAILED, align 4
  %40 = call i32 @dbus_set_error(i32* %38, i32 %39, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @FALSE, align 4
  store i32 %41, i32* %5, align 4
  br label %71

42:                                               ; preds = %23
  %43 = load %struct.p2p_peer_info*, %struct.p2p_peer_info** %11, align 8
  %44 = getelementptr inbounds %struct.p2p_peer_info, %struct.p2p_peer_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @os_strdup(i32 %45)
  store i8* %46, i8** %12, align 8
  %47 = load i8*, i8** %12, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %54, label %49

49:                                               ; preds = %42
  %50 = load i32*, i32** %8, align 8
  %51 = load i32, i32* @DBUS_ERROR_NO_MEMORY, align 4
  %52 = call i32 @dbus_set_error_const(i32* %50, i32 %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* @FALSE, align 4
  store i32 %53, i32* %5, align 4
  br label %71

54:                                               ; preds = %42
  %55 = load i32*, i32** %7, align 8
  %56 = load i32, i32* @DBUS_TYPE_STRING, align 4
  %57 = load i32*, i32** %8, align 8
  %58 = call i32 @wpas_dbus_simple_property_getter(i32* %55, i32 %56, i8** %12, i32* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %67, label %60

60:                                               ; preds = %54
  %61 = load i32*, i32** %8, align 8
  %62 = load i32, i32* @DBUS_ERROR_NO_MEMORY, align 4
  %63 = call i32 @dbus_set_error_const(i32* %61, i32 %62, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i8*, i8** %12, align 8
  %65 = call i32 @os_free(i8* %64)
  %66 = load i32, i32* @FALSE, align 4
  store i32 %66, i32* %5, align 4
  br label %71

67:                                               ; preds = %54
  %68 = load i8*, i8** %12, align 8
  %69 = call i32 @os_free(i8* %68)
  %70 = load i32, i32* @TRUE, align 4
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %67, %60, %49, %37, %21
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i32 @wpa_dbus_p2p_check_enabled(%struct.TYPE_4__*, i32*, i32*, i32*) #1

declare dso_local %struct.p2p_peer_info* @p2p_get_peer_found(i32, i32, i32) #1

declare dso_local i32 @dbus_set_error(i32*, i32, i8*) #1

declare dso_local i8* @os_strdup(i32) #1

declare dso_local i32 @dbus_set_error_const(i32*, i32, i8*) #1

declare dso_local i32 @wpas_dbus_simple_property_getter(i32*, i32, i8**, i32*) #1

declare dso_local i32 @os_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

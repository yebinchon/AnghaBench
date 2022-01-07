; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers_p2p.c_wpas_dbus_getter_p2p_peer_vendor_extension.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers_p2p.c_wpas_dbus_getter_p2p_peer_vendor_extension.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_dbus_property_desc = type { i32 }
%struct.peer_handler_args = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.p2p_peer_info = type { %struct.wpabuf** }
%struct.wpabuf = type { i32 }

@P2P_MAX_WPS_VENDOR_EXT = common dso_local global i32 0, align 4
@DBUS_ERROR_FAILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"failed to find peer\00", align 1
@FALSE = common dso_local global i32 0, align 4
@DBUS_TYPE_BYTE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpas_dbus_getter_p2p_peer_vendor_extension(%struct.wpa_dbus_property_desc* %0, i32* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wpa_dbus_property_desc*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.peer_handler_args*, align 8
  %15 = alloca %struct.p2p_peer_info*, align 8
  %16 = alloca i32, align 4
  store %struct.wpa_dbus_property_desc* %0, %struct.wpa_dbus_property_desc** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %17 = load i32, i32* @P2P_MAX_WPS_VENDOR_EXT, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %10, align 8
  %20 = alloca %struct.wpabuf*, i64 %18, align 16
  store i64 %18, i64* %11, align 8
  store i32 0, i32* %13, align 4
  %21 = load i8*, i8** %9, align 8
  %22 = bitcast i8* %21 to %struct.peer_handler_args*
  store %struct.peer_handler_args* %22, %struct.peer_handler_args** %14, align 8
  %23 = load %struct.peer_handler_args*, %struct.peer_handler_args** %14, align 8
  %24 = getelementptr inbounds %struct.peer_handler_args, %struct.peer_handler_args* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.peer_handler_args*, %struct.peer_handler_args** %14, align 8
  %31 = getelementptr inbounds %struct.peer_handler_args, %struct.peer_handler_args* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call %struct.p2p_peer_info* @p2p_get_peer_found(i32 %29, i32 %32, i32 0)
  store %struct.p2p_peer_info* %33, %struct.p2p_peer_info** %15, align 8
  %34 = load %struct.p2p_peer_info*, %struct.p2p_peer_info** %15, align 8
  %35 = icmp eq %struct.p2p_peer_info* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %4
  %37 = load i32*, i32** %8, align 8
  %38 = load i32, i32* @DBUS_ERROR_FAILED, align 4
  %39 = call i32 @dbus_set_error(i32* %37, i32 %38, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @FALSE, align 4
  store i32 %40, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %86

41:                                               ; preds = %4
  %42 = mul nuw i64 8, %18
  %43 = trunc i64 %42 to i32
  %44 = call i32 @os_memset(%struct.wpabuf** %20, i32 0, i32 %43)
  store i32 0, i32* %12, align 4
  br label %45

45:                                               ; preds = %72, %41
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* @P2P_MAX_WPS_VENDOR_EXT, align 4
  %48 = icmp ult i32 %46, %47
  br i1 %48, label %49, label %75

49:                                               ; preds = %45
  %50 = load %struct.p2p_peer_info*, %struct.p2p_peer_info** %15, align 8
  %51 = getelementptr inbounds %struct.p2p_peer_info, %struct.p2p_peer_info* %50, i32 0, i32 0
  %52 = load %struct.wpabuf**, %struct.wpabuf*** %51, align 8
  %53 = load i32, i32* %12, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.wpabuf*, %struct.wpabuf** %52, i64 %54
  %56 = load %struct.wpabuf*, %struct.wpabuf** %55, align 8
  %57 = icmp eq %struct.wpabuf* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %49
  br label %72

59:                                               ; preds = %49
  %60 = load %struct.p2p_peer_info*, %struct.p2p_peer_info** %15, align 8
  %61 = getelementptr inbounds %struct.p2p_peer_info, %struct.p2p_peer_info* %60, i32 0, i32 0
  %62 = load %struct.wpabuf**, %struct.wpabuf*** %61, align 8
  %63 = load i32, i32* %12, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.wpabuf*, %struct.wpabuf** %62, i64 %64
  %66 = load %struct.wpabuf*, %struct.wpabuf** %65, align 8
  %67 = load i32, i32* %13, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.wpabuf*, %struct.wpabuf** %20, i64 %68
  store %struct.wpabuf* %66, %struct.wpabuf** %69, align 8
  %70 = load i32, i32* %13, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %13, align 4
  br label %72

72:                                               ; preds = %59, %58
  %73 = load i32, i32* %12, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %12, align 4
  br label %45

75:                                               ; preds = %45
  %76 = load i32*, i32** %7, align 8
  %77 = load i32, i32* @DBUS_TYPE_BYTE, align 4
  %78 = load i32, i32* %13, align 4
  %79 = load i32*, i32** %8, align 8
  %80 = call i32 @wpas_dbus_simple_array_array_property_getter(i32* %76, i32 %77, %struct.wpabuf** %20, i32 %78, i32* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %75
  %83 = load i32, i32* @FALSE, align 4
  store i32 %83, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %86

84:                                               ; preds = %75
  %85 = load i32, i32* @TRUE, align 4
  store i32 %85, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %86

86:                                               ; preds = %84, %82, %36
  %87 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %87)
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.p2p_peer_info* @p2p_get_peer_found(i32, i32, i32) #2

declare dso_local i32 @dbus_set_error(i32*, i32, i8*) #2

declare dso_local i32 @os_memset(%struct.wpabuf**, i32, i32) #2

declare dso_local i32 @wpas_dbus_simple_array_array_property_getter(i32*, i32, %struct.wpabuf**, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

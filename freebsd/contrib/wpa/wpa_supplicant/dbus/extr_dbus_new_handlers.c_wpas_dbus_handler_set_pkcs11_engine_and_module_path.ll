; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers.c_wpas_dbus_handler_set_pkcs11_engine_and_module_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers.c_wpas_dbus_handler_set_pkcs11_engine_and_module_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@DBUS_ERROR_INVALID_ARGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Invalid pkcs11_engine_path argument\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Invalid pkcs11_module_path argument\00", align 1
@DBUS_ERROR_FAILED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [87 x i8] c"Reinit of the EAPOL state machine with the new PKCS #11 engine and module path failed.\00", align 1
@WPAS_DBUS_NEW_IFACE_INTERFACE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"PKCS11EnginePath\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"PKCS11ModulePath\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @wpas_dbus_handler_set_pkcs11_engine_and_module_path(i32* %0, %struct.wpa_supplicant* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.wpa_supplicant*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.wpa_supplicant* %1, %struct.wpa_supplicant** %5, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @dbus_message_iter_init(i32* %10, i32* %6)
  %12 = call i32 @dbus_message_iter_get_basic(i32* %6, i8** %7)
  %13 = load i8*, i8** %7, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* @DBUS_ERROR_INVALID_ARGS, align 4
  %18 = call i32* @dbus_message_new_error(i32* %16, i32 %17, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32* %18, i32** %3, align 8
  br label %79

19:                                               ; preds = %2
  %20 = load i8*, i8** %7, align 8
  %21 = call i64 @os_strlen(i8* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i8*, i8** %7, align 8
  store i8* %24, i8** %8, align 8
  br label %25

25:                                               ; preds = %23, %19
  %26 = call i32 @dbus_message_iter_next(i32* %6)
  %27 = call i32 @dbus_message_iter_get_basic(i32* %6, i8** %7)
  %28 = load i8*, i8** %7, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load i8*, i8** %8, align 8
  %32 = call i32 @os_free(i8* %31)
  %33 = load i32*, i32** %4, align 8
  %34 = load i32, i32* @DBUS_ERROR_INVALID_ARGS, align 4
  %35 = call i32* @dbus_message_new_error(i32* %33, i32 %34, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  store i32* %35, i32** %3, align 8
  br label %79

36:                                               ; preds = %25
  %37 = load i8*, i8** %7, align 8
  %38 = call i64 @os_strlen(i8* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i8*, i8** %7, align 8
  store i8* %41, i8** %9, align 8
  br label %42

42:                                               ; preds = %40, %36
  %43 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = call i64 @wpas_set_pkcs11_engine_and_module_path(%struct.wpa_supplicant* %43, i8* %44, i8* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load i32*, i32** %4, align 8
  %50 = load i32, i32* @DBUS_ERROR_FAILED, align 4
  %51 = call i32* @dbus_message_new_error(i32* %49, i32 %50, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.2, i64 0, i64 0))
  store i32* %51, i32** %3, align 8
  br label %79

52:                                               ; preds = %42
  %53 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %54 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %78

57:                                               ; preds = %52
  %58 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %59 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %64 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* @WPAS_DBUS_NEW_IFACE_INTERFACE, align 4
  %67 = call i32 @wpa_dbus_mark_property_changed(i32 %62, i64 %65, i32 %66, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %68 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %69 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %68, i32 0, i32 1
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %74 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* @WPAS_DBUS_NEW_IFACE_INTERFACE, align 4
  %77 = call i32 @wpa_dbus_mark_property_changed(i32 %72, i64 %75, i32 %76, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  br label %78

78:                                               ; preds = %57, %52
  store i32* null, i32** %3, align 8
  br label %79

79:                                               ; preds = %78, %48, %30, %15
  %80 = load i32*, i32** %3, align 8
  ret i32* %80
}

declare dso_local i32 @dbus_message_iter_init(i32*, i32*) #1

declare dso_local i32 @dbus_message_iter_get_basic(i32*, i8**) #1

declare dso_local i32* @dbus_message_new_error(i32*, i32, i8*) #1

declare dso_local i64 @os_strlen(i8*) #1

declare dso_local i32 @dbus_message_iter_next(i32*) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local i64 @wpas_set_pkcs11_engine_and_module_path(%struct.wpa_supplicant*, i8*, i8*) #1

declare dso_local i32 @wpa_dbus_mark_property_changed(i32, i64, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

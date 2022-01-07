; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers.c_wpas_dbus_handler_add_blob.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers.c_wpas_dbus_handler_add_blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32 }
%struct.wpa_config_blob = type { i32, %struct.wpa_config_blob*, %struct.wpa_config_blob* }

@WPAS_DBUS_ERROR_BLOB_EXISTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @wpas_dbus_handler_add_blob(i32* %0, %struct.wpa_supplicant* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.wpa_supplicant*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.wpa_config_blob*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.wpa_supplicant* %1, %struct.wpa_supplicant** %5, align 8
  store i32* null, i32** %6, align 8
  store %struct.wpa_config_blob* null, %struct.wpa_config_blob** %12, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @dbus_message_iter_init(i32* %13, i32* %7)
  %15 = call i32 @dbus_message_iter_get_basic(i32* %7, i8** %9)
  %16 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %17 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i8*, i8** %9, align 8
  %20 = call i64 @wpa_config_get_blob(i32 %18, i8* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* @WPAS_DBUS_ERROR_BLOB_EXISTS, align 4
  %25 = call i32* @dbus_message_new_error(i32* %23, i32 %24, i32* null)
  store i32* %25, i32** %3, align 8
  br label %89

26:                                               ; preds = %2
  %27 = call i32 @dbus_message_iter_next(i32* %7)
  %28 = call i32 @dbus_message_iter_recurse(i32* %7, i32* %8)
  %29 = call i32 @dbus_message_iter_get_fixed_array(i32* %8, i32** %10, i32* %11)
  %30 = call %struct.wpa_config_blob* @os_zalloc(i32 24)
  store %struct.wpa_config_blob* %30, %struct.wpa_config_blob** %12, align 8
  %31 = load %struct.wpa_config_blob*, %struct.wpa_config_blob** %12, align 8
  %32 = icmp ne %struct.wpa_config_blob* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %26
  %34 = load i32*, i32** %4, align 8
  %35 = call i32* @wpas_dbus_error_no_memory(i32* %34)
  store i32* %35, i32** %6, align 8
  br label %73

36:                                               ; preds = %26
  %37 = load i32*, i32** %10, align 8
  %38 = load i32, i32* %11, align 4
  %39 = call %struct.wpa_config_blob* @os_memdup(i32* %37, i32 %38)
  %40 = load %struct.wpa_config_blob*, %struct.wpa_config_blob** %12, align 8
  %41 = getelementptr inbounds %struct.wpa_config_blob, %struct.wpa_config_blob* %40, i32 0, i32 1
  store %struct.wpa_config_blob* %39, %struct.wpa_config_blob** %41, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = call %struct.wpa_config_blob* @os_strdup(i8* %42)
  %44 = load %struct.wpa_config_blob*, %struct.wpa_config_blob** %12, align 8
  %45 = getelementptr inbounds %struct.wpa_config_blob, %struct.wpa_config_blob* %44, i32 0, i32 2
  store %struct.wpa_config_blob* %43, %struct.wpa_config_blob** %45, align 8
  %46 = load %struct.wpa_config_blob*, %struct.wpa_config_blob** %12, align 8
  %47 = getelementptr inbounds %struct.wpa_config_blob, %struct.wpa_config_blob* %46, i32 0, i32 1
  %48 = load %struct.wpa_config_blob*, %struct.wpa_config_blob** %47, align 8
  %49 = icmp ne %struct.wpa_config_blob* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %36
  %51 = load %struct.wpa_config_blob*, %struct.wpa_config_blob** %12, align 8
  %52 = getelementptr inbounds %struct.wpa_config_blob, %struct.wpa_config_blob* %51, i32 0, i32 2
  %53 = load %struct.wpa_config_blob*, %struct.wpa_config_blob** %52, align 8
  %54 = icmp ne %struct.wpa_config_blob* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %50, %36
  %56 = load i32*, i32** %4, align 8
  %57 = call i32* @wpas_dbus_error_no_memory(i32* %56)
  store i32* %57, i32** %6, align 8
  br label %73

58:                                               ; preds = %50
  %59 = load i32, i32* %11, align 4
  %60 = load %struct.wpa_config_blob*, %struct.wpa_config_blob** %12, align 8
  %61 = getelementptr inbounds %struct.wpa_config_blob, %struct.wpa_config_blob* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %63 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.wpa_config_blob*, %struct.wpa_config_blob** %12, align 8
  %66 = call i32 @wpa_config_set_blob(i32 %64, %struct.wpa_config_blob* %65)
  %67 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %68 = load %struct.wpa_config_blob*, %struct.wpa_config_blob** %12, align 8
  %69 = getelementptr inbounds %struct.wpa_config_blob, %struct.wpa_config_blob* %68, i32 0, i32 2
  %70 = load %struct.wpa_config_blob*, %struct.wpa_config_blob** %69, align 8
  %71 = call i32 @wpas_notify_blob_added(%struct.wpa_supplicant* %67, %struct.wpa_config_blob* %70)
  %72 = load i32*, i32** %6, align 8
  store i32* %72, i32** %3, align 8
  br label %89

73:                                               ; preds = %55, %33
  %74 = load %struct.wpa_config_blob*, %struct.wpa_config_blob** %12, align 8
  %75 = icmp ne %struct.wpa_config_blob* %74, null
  br i1 %75, label %76, label %87

76:                                               ; preds = %73
  %77 = load %struct.wpa_config_blob*, %struct.wpa_config_blob** %12, align 8
  %78 = getelementptr inbounds %struct.wpa_config_blob, %struct.wpa_config_blob* %77, i32 0, i32 2
  %79 = load %struct.wpa_config_blob*, %struct.wpa_config_blob** %78, align 8
  %80 = call i32 @os_free(%struct.wpa_config_blob* %79)
  %81 = load %struct.wpa_config_blob*, %struct.wpa_config_blob** %12, align 8
  %82 = getelementptr inbounds %struct.wpa_config_blob, %struct.wpa_config_blob* %81, i32 0, i32 1
  %83 = load %struct.wpa_config_blob*, %struct.wpa_config_blob** %82, align 8
  %84 = call i32 @os_free(%struct.wpa_config_blob* %83)
  %85 = load %struct.wpa_config_blob*, %struct.wpa_config_blob** %12, align 8
  %86 = call i32 @os_free(%struct.wpa_config_blob* %85)
  br label %87

87:                                               ; preds = %76, %73
  %88 = load i32*, i32** %6, align 8
  store i32* %88, i32** %3, align 8
  br label %89

89:                                               ; preds = %87, %58, %22
  %90 = load i32*, i32** %3, align 8
  ret i32* %90
}

declare dso_local i32 @dbus_message_iter_init(i32*, i32*) #1

declare dso_local i32 @dbus_message_iter_get_basic(i32*, i8**) #1

declare dso_local i64 @wpa_config_get_blob(i32, i8*) #1

declare dso_local i32* @dbus_message_new_error(i32*, i32, i32*) #1

declare dso_local i32 @dbus_message_iter_next(i32*) #1

declare dso_local i32 @dbus_message_iter_recurse(i32*, i32*) #1

declare dso_local i32 @dbus_message_iter_get_fixed_array(i32*, i32**, i32*) #1

declare dso_local %struct.wpa_config_blob* @os_zalloc(i32) #1

declare dso_local i32* @wpas_dbus_error_no_memory(i32*) #1

declare dso_local %struct.wpa_config_blob* @os_memdup(i32*, i32) #1

declare dso_local %struct.wpa_config_blob* @os_strdup(i8*) #1

declare dso_local i32 @wpa_config_set_blob(i32, %struct.wpa_config_blob*) #1

declare dso_local i32 @wpas_notify_blob_added(%struct.wpa_supplicant*, %struct.wpa_config_blob*) #1

declare dso_local i32 @os_free(%struct.wpa_config_blob*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

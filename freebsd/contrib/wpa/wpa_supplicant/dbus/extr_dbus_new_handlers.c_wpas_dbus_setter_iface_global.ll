; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers.c_wpas_dbus_setter_iface_global.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers.c_wpas_dbus_setter_iface_global.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_dbus_property_desc = type { i8*, i32 }
%struct.wpa_supplicant = type { i32 }

@DBUS_TYPE_STRING = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@DBUS_ERROR_INVALID_ARGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Interface property %s value too large\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s=%s\00", align 1
@WPAS_DBUS_ERROR_UNKNOWN_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"Failed to construct new interface property %s\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Failed to set interface property %s\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpas_dbus_setter_iface_global(%struct.wpa_dbus_property_desc* %0, i32* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wpa_dbus_property_desc*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.wpa_supplicant*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca [250 x i8], align 16
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.wpa_dbus_property_desc* %0, %struct.wpa_dbus_property_desc** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = bitcast i8* %15 to %struct.wpa_supplicant*
  store %struct.wpa_supplicant* %16, %struct.wpa_supplicant** %10, align 8
  store i8* null, i8** %11, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = load i32, i32* @DBUS_TYPE_STRING, align 4
  %20 = call i32 @wpas_dbus_simple_property_setter(i32* %17, i32* %18, i32 %19, i8** %11)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* @FALSE, align 4
  store i32 %23, i32* %5, align 4
  br label %89

24:                                               ; preds = %4
  %25 = load %struct.wpa_dbus_property_desc*, %struct.wpa_dbus_property_desc** %6, align 8
  %26 = getelementptr inbounds %struct.wpa_dbus_property_desc, %struct.wpa_dbus_property_desc* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @os_strlen(i8* %27)
  %29 = load i8*, i8** %11, align 8
  %30 = call i32 @os_strlen(i8* %29)
  %31 = add nsw i32 %28, %30
  %32 = add nsw i32 %31, 3
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %13, align 8
  %34 = load i64, i64* %13, align 8
  %35 = icmp uge i64 %34, 250
  br i1 %35, label %36, label %44

36:                                               ; preds = %24
  %37 = load i32*, i32** %8, align 8
  %38 = load i32, i32* @DBUS_ERROR_INVALID_ARGS, align 4
  %39 = load %struct.wpa_dbus_property_desc*, %struct.wpa_dbus_property_desc** %6, align 8
  %40 = getelementptr inbounds %struct.wpa_dbus_property_desc, %struct.wpa_dbus_property_desc* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @dbus_set_error(i32* %37, i32 %38, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* @FALSE, align 4
  store i32 %43, i32* %5, align 4
  br label %89

44:                                               ; preds = %24
  %45 = load i8*, i8** %11, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  %47 = load i8, i8* %46, align 1
  %48 = icmp ne i8 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %44
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 8
  br label %50

50:                                               ; preds = %49, %44
  %51 = getelementptr inbounds [250 x i8], [250 x i8]* %12, i64 0, i64 0
  %52 = load i64, i64* %13, align 8
  %53 = load %struct.wpa_dbus_property_desc*, %struct.wpa_dbus_property_desc** %6, align 8
  %54 = getelementptr inbounds %struct.wpa_dbus_property_desc, %struct.wpa_dbus_property_desc* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = load i8*, i8** %11, align 8
  %57 = call i32 @os_snprintf(i8* %51, i64 %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %55, i8* %56)
  store i32 %57, i32* %14, align 4
  %58 = load i64, i64* %13, align 8
  %59 = load i32, i32* %14, align 4
  %60 = call i64 @os_snprintf_error(i64 %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %50
  %63 = load i32*, i32** %8, align 8
  %64 = load i32, i32* @WPAS_DBUS_ERROR_UNKNOWN_ERROR, align 4
  %65 = load %struct.wpa_dbus_property_desc*, %struct.wpa_dbus_property_desc** %6, align 8
  %66 = getelementptr inbounds %struct.wpa_dbus_property_desc, %struct.wpa_dbus_property_desc* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @dbus_set_error(i32* %63, i32 %64, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* @FALSE, align 4
  store i32 %69, i32* %5, align 4
  br label %89

70:                                               ; preds = %50
  %71 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %72 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds [250 x i8], [250 x i8]* %12, i64 0, i64 0
  %75 = call i64 @wpa_config_process_global(i32 %73, i8* %74, i32 -1)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %70
  %78 = load i32*, i32** %8, align 8
  %79 = load i32, i32* @DBUS_ERROR_INVALID_ARGS, align 4
  %80 = load %struct.wpa_dbus_property_desc*, %struct.wpa_dbus_property_desc** %6, align 8
  %81 = getelementptr inbounds %struct.wpa_dbus_property_desc, %struct.wpa_dbus_property_desc* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @dbus_set_error(i32* %78, i32 %79, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* @FALSE, align 4
  store i32 %84, i32* %5, align 4
  br label %89

85:                                               ; preds = %70
  %86 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %87 = call i32 @wpa_supplicant_update_config(%struct.wpa_supplicant* %86)
  %88 = load i32, i32* @TRUE, align 4
  store i32 %88, i32* %5, align 4
  br label %89

89:                                               ; preds = %85, %77, %62, %36, %22
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local i32 @wpas_dbus_simple_property_setter(i32*, i32*, i32, i8**) #1

declare dso_local i32 @os_strlen(i8*) #1

declare dso_local i32 @dbus_set_error(i32*, i32, i8*, i32) #1

declare dso_local i32 @os_snprintf(i8*, i64, i8*, i8*, i8*) #1

declare dso_local i64 @os_snprintf_error(i64, i32) #1

declare dso_local i64 @wpa_config_process_global(i32, i8*, i32) #1

declare dso_local i32 @wpa_supplicant_update_config(%struct.wpa_supplicant*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

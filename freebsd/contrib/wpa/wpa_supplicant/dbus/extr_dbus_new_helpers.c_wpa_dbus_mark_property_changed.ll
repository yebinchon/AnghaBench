; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_helpers.c_wpa_dbus_mark_property_changed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_helpers.c_wpa_dbus_mark_property_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpas_dbus_priv = type { i32 }
%struct.wpa_dbus_object_desc = type { i32*, %struct.wpa_dbus_property_desc* }
%struct.wpa_dbus_property_desc = type { i64, i64 }

@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"dbus: wpa_dbus_property_changed: could not obtain object's private data: %s\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"dbus: wpa_dbus_property_changed: no property %s in object %s\00", align 1
@flush_object_timeout_handler = common dso_local global i32 0, align 4
@WPA_DBUS_SEND_PROP_CHANGED_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpa_dbus_mark_property_changed(%struct.wpas_dbus_priv* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.wpas_dbus_priv*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.wpa_dbus_object_desc*, align 8
  %10 = alloca %struct.wpa_dbus_property_desc*, align 8
  %11 = alloca i32, align 4
  store %struct.wpas_dbus_priv* %0, %struct.wpas_dbus_priv** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  store %struct.wpa_dbus_object_desc* null, %struct.wpa_dbus_object_desc** %9, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.wpas_dbus_priv*, %struct.wpas_dbus_priv** %5, align 8
  %13 = icmp eq %struct.wpas_dbus_priv* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  br label %104

15:                                               ; preds = %4
  %16 = load %struct.wpas_dbus_priv*, %struct.wpas_dbus_priv** %5, align 8
  %17 = getelementptr inbounds %struct.wpas_dbus_priv, %struct.wpas_dbus_priv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i8*, i8** %6, align 8
  %20 = bitcast %struct.wpa_dbus_object_desc** %9 to i8**
  %21 = call i32 @dbus_connection_get_object_path_data(i32 %18, i8* %19, i8** %20)
  %22 = load %struct.wpa_dbus_object_desc*, %struct.wpa_dbus_object_desc** %9, align 8
  %23 = icmp ne %struct.wpa_dbus_object_desc* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %15
  %25 = load i32, i32* @MSG_ERROR, align 4
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 (i32, i8*, i8*, ...) @wpa_printf(i32 %25, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), i8* %26)
  br label %104

28:                                               ; preds = %15
  %29 = load %struct.wpa_dbus_object_desc*, %struct.wpa_dbus_object_desc** %9, align 8
  %30 = getelementptr inbounds %struct.wpa_dbus_object_desc, %struct.wpa_dbus_object_desc* %29, i32 0, i32 1
  %31 = load %struct.wpa_dbus_property_desc*, %struct.wpa_dbus_property_desc** %30, align 8
  store %struct.wpa_dbus_property_desc* %31, %struct.wpa_dbus_property_desc** %10, align 8
  br label %32

32:                                               ; preds = %70, %28
  %33 = load %struct.wpa_dbus_property_desc*, %struct.wpa_dbus_property_desc** %10, align 8
  %34 = icmp ne %struct.wpa_dbus_property_desc* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load %struct.wpa_dbus_property_desc*, %struct.wpa_dbus_property_desc** %10, align 8
  %37 = getelementptr inbounds %struct.wpa_dbus_property_desc, %struct.wpa_dbus_property_desc* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br label %40

40:                                               ; preds = %35, %32
  %41 = phi i1 [ false, %32 ], [ %39, %35 ]
  br i1 %41, label %42, label %75

42:                                               ; preds = %40
  %43 = load i8*, i8** %8, align 8
  %44 = load %struct.wpa_dbus_property_desc*, %struct.wpa_dbus_property_desc** %10, align 8
  %45 = getelementptr inbounds %struct.wpa_dbus_property_desc, %struct.wpa_dbus_property_desc* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i64 @os_strcmp(i8* %43, i64 %46)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %69

49:                                               ; preds = %42
  %50 = load i8*, i8** %7, align 8
  %51 = load %struct.wpa_dbus_property_desc*, %struct.wpa_dbus_property_desc** %10, align 8
  %52 = getelementptr inbounds %struct.wpa_dbus_property_desc, %struct.wpa_dbus_property_desc* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = call i64 @os_strcmp(i8* %50, i64 %53)
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %49
  %57 = load %struct.wpa_dbus_object_desc*, %struct.wpa_dbus_object_desc** %9, align 8
  %58 = getelementptr inbounds %struct.wpa_dbus_object_desc, %struct.wpa_dbus_object_desc* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %68

61:                                               ; preds = %56
  %62 = load %struct.wpa_dbus_object_desc*, %struct.wpa_dbus_object_desc** %9, align 8
  %63 = getelementptr inbounds %struct.wpa_dbus_object_desc, %struct.wpa_dbus_object_desc* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  store i32 1, i32* %67, align 4
  br label %68

68:                                               ; preds = %61, %56
  br label %75

69:                                               ; preds = %49, %42
  br label %70

70:                                               ; preds = %69
  %71 = load %struct.wpa_dbus_property_desc*, %struct.wpa_dbus_property_desc** %10, align 8
  %72 = getelementptr inbounds %struct.wpa_dbus_property_desc, %struct.wpa_dbus_property_desc* %71, i32 1
  store %struct.wpa_dbus_property_desc* %72, %struct.wpa_dbus_property_desc** %10, align 8
  %73 = load i32, i32* %11, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %11, align 4
  br label %32

75:                                               ; preds = %68, %40
  %76 = load %struct.wpa_dbus_property_desc*, %struct.wpa_dbus_property_desc** %10, align 8
  %77 = icmp ne %struct.wpa_dbus_property_desc* %76, null
  br i1 %77, label %78, label %83

78:                                               ; preds = %75
  %79 = load %struct.wpa_dbus_property_desc*, %struct.wpa_dbus_property_desc** %10, align 8
  %80 = getelementptr inbounds %struct.wpa_dbus_property_desc, %struct.wpa_dbus_property_desc* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %78, %75
  %84 = load i32, i32* @MSG_ERROR, align 4
  %85 = load i8*, i8** %8, align 8
  %86 = load i8*, i8** %6, align 8
  %87 = call i32 (i32, i8*, i8*, ...) @wpa_printf(i32 %84, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i8* %85, i8* %86)
  br label %104

88:                                               ; preds = %78
  %89 = load i32, i32* @flush_object_timeout_handler, align 4
  %90 = load %struct.wpas_dbus_priv*, %struct.wpas_dbus_priv** %5, align 8
  %91 = getelementptr inbounds %struct.wpas_dbus_priv, %struct.wpas_dbus_priv* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.wpa_dbus_object_desc*, %struct.wpa_dbus_object_desc** %9, align 8
  %94 = call i32 @eloop_is_timeout_registered(i32 %89, i32 %92, %struct.wpa_dbus_object_desc* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %104, label %96

96:                                               ; preds = %88
  %97 = load i32, i32* @WPA_DBUS_SEND_PROP_CHANGED_TIMEOUT, align 4
  %98 = load i32, i32* @flush_object_timeout_handler, align 4
  %99 = load %struct.wpas_dbus_priv*, %struct.wpas_dbus_priv** %5, align 8
  %100 = getelementptr inbounds %struct.wpas_dbus_priv, %struct.wpas_dbus_priv* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.wpa_dbus_object_desc*, %struct.wpa_dbus_object_desc** %9, align 8
  %103 = call i32 @eloop_register_timeout(i32 0, i32 %97, i32 %98, i32 %101, %struct.wpa_dbus_object_desc* %102)
  br label %104

104:                                              ; preds = %14, %24, %83, %96, %88
  ret void
}

declare dso_local i32 @dbus_connection_get_object_path_data(i32, i8*, i8**) #1

declare dso_local i32 @wpa_printf(i32, i8*, i8*, ...) #1

declare dso_local i64 @os_strcmp(i8*, i64) #1

declare dso_local i32 @eloop_is_timeout_registered(i32, i32, %struct.wpa_dbus_object_desc*) #1

declare dso_local i32 @eloop_register_timeout(i32, i32, i32, i32, %struct.wpa_dbus_object_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

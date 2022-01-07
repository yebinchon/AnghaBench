; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers.c_wpas_dbus_setter_country.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers.c_wpas_dbus_setter_country.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_dbus_property_desc = type { i32 }
%struct.wpa_supplicant = type { %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i8* }

@DBUS_TYPE_STRING = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@DBUS_ERROR_FAILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"invalid country code\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Failed to set country\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"failed to set country code\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpas_dbus_setter_country(%struct.wpa_dbus_property_desc* %0, i32* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wpa_dbus_property_desc*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.wpa_supplicant*, align 8
  %11 = alloca i8*, align 8
  store %struct.wpa_dbus_property_desc* %0, %struct.wpa_dbus_property_desc** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load i8*, i8** %9, align 8
  %13 = bitcast i8* %12 to %struct.wpa_supplicant*
  store %struct.wpa_supplicant* %13, %struct.wpa_supplicant** %10, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = load i32, i32* @DBUS_TYPE_STRING, align 4
  %17 = call i32 @wpas_dbus_simple_property_setter(i32* %14, i32* %15, i32 %16, i8** %11)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @FALSE, align 4
  store i32 %20, i32* %5, align 4
  br label %73

21:                                               ; preds = %4
  %22 = load i8*, i8** %11, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = icmp ne i8 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load i8*, i8** %11, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  %29 = load i8, i8* %28, align 1
  %30 = icmp ne i8 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %26, %21
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* @DBUS_ERROR_FAILED, align 4
  %34 = call i32 @dbus_set_error_const(i32* %32, i32 %33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @FALSE, align 4
  store i32 %35, i32* %5, align 4
  br label %73

36:                                               ; preds = %26
  %37 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %38 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %53

41:                                               ; preds = %36
  %42 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %43 = load i8*, i8** %11, align 8
  %44 = call i64 @wpa_drv_set_country(%struct.wpa_supplicant* %42, i8* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load i32, i32* @MSG_DEBUG, align 4
  %48 = call i32 @wpa_printf(i32 %47, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32*, i32** %8, align 8
  %50 = load i32, i32* @DBUS_ERROR_FAILED, align 4
  %51 = call i32 @dbus_set_error_const(i32* %49, i32 %50, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %52 = load i32, i32* @FALSE, align 4
  store i32 %52, i32* %5, align 4
  br label %73

53:                                               ; preds = %41, %36
  %54 = load i8*, i8** %11, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 0
  %56 = load i8, i8* %55, align 1
  %57 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %58 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 0
  store i8 %56, i8* %62, align 1
  %63 = load i8*, i8** %11, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 1
  %65 = load i8, i8* %64, align 1
  %66 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %67 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 1
  store i8 %65, i8* %71, align 1
  %72 = load i32, i32* @TRUE, align 4
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %53, %46, %31, %19
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local i32 @wpas_dbus_simple_property_setter(i32*, i32*, i32, i8**) #1

declare dso_local i32 @dbus_set_error_const(i32*, i32, i8*) #1

declare dso_local i64 @wpa_drv_set_country(%struct.wpa_supplicant*, i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers.c_wpas_dbus_getter_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers.c_wpas_dbus_getter_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_dbus_property_desc = type { i32 }
%struct.wpa_supplicant = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@DBUS_ERROR_NO_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"no memory\00", align 1
@DBUS_TYPE_STRING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpas_dbus_getter_state(%struct.wpa_dbus_property_desc* %0, i32* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wpa_dbus_property_desc*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.wpa_supplicant*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.wpa_dbus_property_desc* %0, %struct.wpa_dbus_property_desc** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = bitcast i8* %15 to %struct.wpa_supplicant*
  store %struct.wpa_supplicant* %16, %struct.wpa_supplicant** %10, align 8
  %17 = load i32, i32* @FALSE, align 4
  store i32 %17, i32* %14, align 4
  %18 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %19 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i8* @wpa_supplicant_state_txt(i32 %20)
  store i8* %21, i8** %11, align 8
  %22 = load i8*, i8** %11, align 8
  %23 = call i8* @os_strdup(i8* %22)
  store i8* %23, i8** %13, align 8
  store i8* %23, i8** %12, align 8
  %24 = load i8*, i8** %13, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %4
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* @DBUS_ERROR_NO_MEMORY, align 4
  %29 = call i32 @dbus_set_error_const(i32* %27, i32 %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @FALSE, align 4
  store i32 %30, i32* %5, align 4
  br label %51

31:                                               ; preds = %4
  br label %32

32:                                               ; preds = %36, %31
  %33 = load i8*, i8** %13, align 8
  %34 = load i8, i8* %33, align 1
  %35 = icmp ne i8 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %32
  %37 = load i8*, i8** %13, align 8
  %38 = load i8, i8* %37, align 1
  %39 = call signext i8 @tolower(i8 signext %38)
  %40 = load i8*, i8** %13, align 8
  store i8 %39, i8* %40, align 1
  %41 = load i8*, i8** %13, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %13, align 8
  br label %32

43:                                               ; preds = %32
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* @DBUS_TYPE_STRING, align 4
  %46 = load i32*, i32** %8, align 8
  %47 = call i32 @wpas_dbus_simple_property_getter(i32* %44, i32 %45, i8** %12, i32* %46)
  store i32 %47, i32* %14, align 4
  %48 = load i8*, i8** %12, align 8
  %49 = call i32 @os_free(i8* %48)
  %50 = load i32, i32* %14, align 4
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %43, %26
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i8* @wpa_supplicant_state_txt(i32) #1

declare dso_local i8* @os_strdup(i8*) #1

declare dso_local i32 @dbus_set_error_const(i32*, i32, i8*) #1

declare dso_local signext i8 @tolower(i8 signext) #1

declare dso_local i32 @wpas_dbus_simple_property_getter(i32*, i32, i8**, i32*) #1

declare dso_local i32 @os_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

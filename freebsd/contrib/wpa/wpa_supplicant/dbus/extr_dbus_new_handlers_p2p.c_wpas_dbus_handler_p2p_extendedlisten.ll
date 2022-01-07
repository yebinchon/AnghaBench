; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers_p2p.c_wpas_dbus_handler_p2p_extendedlisten.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers_p2p.c_wpas_dbus_handler_p2p_extendedlisten.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.wpa_supplicant* }
%struct.wpa_dbus_dict_entry = type { i64, i32, i32* }

@.str = private unnamed_addr constant [7 x i8] c"period\00", align 1
@DBUS_TYPE_INT32 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"interval\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"failed to initiate a p2p_ext_listen.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @wpas_dbus_handler_p2p_extendedlisten(i32* %0, %struct.wpa_supplicant* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.wpa_supplicant*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.wpa_dbus_dict_entry, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.wpa_supplicant* %1, %struct.wpa_supplicant** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @dbus_message_iter_init(i32* %11, i32* %9)
  %13 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %8, i32 0, i32 2
  store i32* null, i32** %13, align 8
  %14 = call i32 @wpa_dbus_dict_open_read(i32* %9, i32* %10, i32* null)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %72

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %53, %17
  %19 = call i64 @wpa_dbus_dict_has_dict_entry(i32* %10)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %55

21:                                               ; preds = %18
  %22 = call i32 @wpa_dbus_dict_get_entry(i32* %10, %struct.wpa_dbus_dict_entry* %8)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  br label %72

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %8, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = call i64 @os_strcmp(i32* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %8, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @DBUS_TYPE_INT32, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %8, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %6, align 4
  br label %53

38:                                               ; preds = %30, %25
  %39 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %8, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = call i64 @os_strcmp(i32* %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %8, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @DBUS_TYPE_INT32, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %8, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %7, align 4
  br label %52

51:                                               ; preds = %43, %38
  br label %70

52:                                               ; preds = %48
  br label %53

53:                                               ; preds = %52, %35
  %54 = call i32 @wpa_dbus_dict_entry_clear(%struct.wpa_dbus_dict_entry* %8)
  br label %18

55:                                               ; preds = %18
  %56 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %57 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %59, align 8
  store %struct.wpa_supplicant* %60, %struct.wpa_supplicant** %5, align 8
  %61 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i64 @wpas_p2p_ext_listen(%struct.wpa_supplicant* %61, i32 %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %55
  %67 = load i32*, i32** %4, align 8
  %68 = call i32* @wpas_dbus_error_unknown_error(i32* %67, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  store i32* %68, i32** %3, align 8
  br label %77

69:                                               ; preds = %55
  store i32* null, i32** %3, align 8
  br label %77

70:                                               ; preds = %51
  %71 = call i32 @wpa_dbus_dict_entry_clear(%struct.wpa_dbus_dict_entry* %8)
  br label %72

72:                                               ; preds = %70, %24, %16
  %73 = load i32*, i32** %4, align 8
  %74 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %8, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = call i32* @wpas_dbus_error_invalid_args(i32* %73, i32* %75)
  store i32* %76, i32** %3, align 8
  br label %77

77:                                               ; preds = %72, %69, %66
  %78 = load i32*, i32** %3, align 8
  ret i32* %78
}

declare dso_local i32 @dbus_message_iter_init(i32*, i32*) #1

declare dso_local i32 @wpa_dbus_dict_open_read(i32*, i32*, i32*) #1

declare dso_local i64 @wpa_dbus_dict_has_dict_entry(i32*) #1

declare dso_local i32 @wpa_dbus_dict_get_entry(i32*, %struct.wpa_dbus_dict_entry*) #1

declare dso_local i64 @os_strcmp(i32*, i8*) #1

declare dso_local i32 @wpa_dbus_dict_entry_clear(%struct.wpa_dbus_dict_entry*) #1

declare dso_local i64 @wpas_p2p_ext_listen(%struct.wpa_supplicant*, i32, i32) #1

declare dso_local i32* @wpas_dbus_error_unknown_error(i32*, i8*) #1

declare dso_local i32* @wpas_dbus_error_invalid_args(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

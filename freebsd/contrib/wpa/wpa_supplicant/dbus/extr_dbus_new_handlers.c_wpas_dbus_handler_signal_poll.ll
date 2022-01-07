; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers.c_wpas_dbus_handler_signal_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers.c_wpas_dbus_handler_signal_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32 }
%struct.wpa_signal_info = type { i32, i32, i32, i64, i32, i32, i32, i32 }

@DBUS_ERROR_FAILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Failed to read signal\00", align 1
@DBUS_TYPE_VARIANT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"a{sv}\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"rssi\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"linkspeed\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"noise\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"frequency\00", align 1
@CHAN_WIDTH_UNKNOWN = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"center-frq1\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"center-frq2\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"avg-rssi\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @wpas_dbus_handler_signal_poll(i32* %0, %struct.wpa_supplicant* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.wpa_supplicant*, align 8
  %6 = alloca %struct.wpa_signal_info, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.wpa_supplicant* %1, %struct.wpa_supplicant** %5, align 8
  store i32* null, i32** %7, align 8
  %12 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %13 = call i32 @wpa_drv_signal_poll(%struct.wpa_supplicant* %12, %struct.wpa_signal_info* %6)
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %11, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* @DBUS_ERROR_FAILED, align 4
  %19 = call i32* @dbus_message_new_error(i32* %17, i32 %18, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32* %19, i32** %3, align 8
  br label %112

20:                                               ; preds = %2
  %21 = load i32*, i32** %4, align 8
  %22 = call i32* @dbus_message_new_method_return(i32* %21)
  store i32* %22, i32** %7, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %103

26:                                               ; preds = %20
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @dbus_message_iter_init_append(i32* %27, i32* %8)
  %29 = load i32, i32* @DBUS_TYPE_VARIANT, align 4
  %30 = call i32 @dbus_message_iter_open_container(i32* %8, i32 %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* %10)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %100

32:                                               ; preds = %26
  %33 = call i32 @wpa_dbus_dict_open_write(i32* %10, i32* %9)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %100

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.wpa_signal_info, %struct.wpa_signal_info* %6, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @wpa_dbus_dict_append_int32(i32* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %100

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.wpa_signal_info, %struct.wpa_signal_info* %6, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = sdiv i32 %42, 1000
  %44 = call i32 @wpa_dbus_dict_append_int32(i32* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %100

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.wpa_signal_info, %struct.wpa_signal_info* %6, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @wpa_dbus_dict_append_int32(i32* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %100

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.wpa_signal_info, %struct.wpa_signal_info* %6, i32 0, i32 7
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @wpa_dbus_dict_append_uint32(i32* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %100

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.wpa_signal_info, %struct.wpa_signal_info* %6, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @CHAN_WIDTH_UNKNOWN, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.wpa_signal_info, %struct.wpa_signal_info* %6, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @channel_width_to_string(i64 %63)
  %65 = call i32 @wpa_dbus_dict_append_string(i32* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %100

67:                                               ; preds = %61, %56
  %68 = getelementptr inbounds %struct.wpa_signal_info, %struct.wpa_signal_info* %6, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %85

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.wpa_signal_info, %struct.wpa_signal_info* %6, i32 0, i32 5
  %73 = load i32, i32* %72, align 4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.wpa_signal_info, %struct.wpa_signal_info* %6, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @wpa_dbus_dict_append_int32(i32* %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %100

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.wpa_signal_info, %struct.wpa_signal_info* %6, i32 0, i32 5
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @wpa_dbus_dict_append_int32(i32* %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %100

85:                                               ; preds = %80, %71, %67
  %86 = getelementptr inbounds %struct.wpa_signal_info, %struct.wpa_signal_info* %6, i32 0, i32 6
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.wpa_signal_info, %struct.wpa_signal_info* %6, i32 0, i32 6
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @wpa_dbus_dict_append_int32(i32* %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %89, %85
  %95 = call i32 @wpa_dbus_dict_close_write(i32* %10, i32* %9)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = call i32 @dbus_message_iter_close_container(i32* %8, i32* %10)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %97, %94, %89, %80, %75, %61, %51, %46, %40, %35, %32, %26
  br label %103

101:                                              ; preds = %97
  %102 = load i32*, i32** %7, align 8
  store i32* %102, i32** %3, align 8
  br label %112

103:                                              ; preds = %100, %25
  %104 = load i32*, i32** %7, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  %107 = load i32*, i32** %7, align 8
  %108 = call i32 @dbus_message_unref(i32* %107)
  br label %109

109:                                              ; preds = %106, %103
  %110 = load i32*, i32** %4, align 8
  %111 = call i32* @wpas_dbus_error_no_memory(i32* %110)
  store i32* %111, i32** %3, align 8
  br label %112

112:                                              ; preds = %109, %101, %16
  %113 = load i32*, i32** %3, align 8
  ret i32* %113
}

declare dso_local i32 @wpa_drv_signal_poll(%struct.wpa_supplicant*, %struct.wpa_signal_info*) #1

declare dso_local i32* @dbus_message_new_error(i32*, i32, i8*) #1

declare dso_local i32* @dbus_message_new_method_return(i32*) #1

declare dso_local i32 @dbus_message_iter_init_append(i32*, i32*) #1

declare dso_local i32 @dbus_message_iter_open_container(i32*, i32, i8*, i32*) #1

declare dso_local i32 @wpa_dbus_dict_open_write(i32*, i32*) #1

declare dso_local i32 @wpa_dbus_dict_append_int32(i32*, i8*, i32) #1

declare dso_local i32 @wpa_dbus_dict_append_uint32(i32*, i8*, i32) #1

declare dso_local i32 @wpa_dbus_dict_append_string(i32*, i8*, i32) #1

declare dso_local i32 @channel_width_to_string(i64) #1

declare dso_local i32 @wpa_dbus_dict_close_write(i32*, i32*) #1

declare dso_local i32 @dbus_message_iter_close_container(i32*, i32*) #1

declare dso_local i32 @dbus_message_unref(i32*) #1

declare dso_local i32* @wpas_dbus_error_no_memory(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

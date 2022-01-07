; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers_p2p.c_wpas_dbus_handler_p2p_presence_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers_p2p.c_wpas_dbus_handler_p2p_presence_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32 }
%struct.wpa_dbus_dict_entry = type { i64, i32, i32* }

@.str = private unnamed_addr constant [10 x i8] c"duration1\00", align 1
@DBUS_TYPE_INT32 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"interval1\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"duration2\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"interval2\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Failed to invoke presence request.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @wpas_dbus_handler_p2p_presence_request(i32* %0, %struct.wpa_supplicant* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.wpa_supplicant*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.wpa_dbus_dict_entry, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.wpa_supplicant* %1, %struct.wpa_supplicant** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @dbus_message_iter_init(i32* %13, i32* %11)
  %15 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %10, i32 0, i32 2
  store i32* null, i32** %15, align 8
  %16 = call i32 @wpa_dbus_dict_open_read(i32* %11, i32* %12, i32* null)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %99

19:                                               ; preds = %2
  br label %20

20:                                               ; preds = %83, %19
  %21 = call i64 @wpa_dbus_dict_has_dict_entry(i32* %12)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %85

23:                                               ; preds = %20
  %24 = call i32 @wpa_dbus_dict_get_entry(i32* %12, %struct.wpa_dbus_dict_entry* %10)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  br label %99

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %10, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = call i64 @os_strcmp(i32* %29, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %10, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @DBUS_TYPE_INT32, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %10, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %6, align 4
  br label %83

40:                                               ; preds = %32, %27
  %41 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %10, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = call i64 @os_strcmp(i32* %42, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %10, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @DBUS_TYPE_INT32, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %10, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %7, align 4
  br label %82

53:                                               ; preds = %45, %40
  %54 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %10, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = call i64 @os_strcmp(i32* %55, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %10, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @DBUS_TYPE_INT32, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %10, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %8, align 4
  br label %81

66:                                               ; preds = %58, %53
  %67 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %10, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = call i64 @os_strcmp(i32* %68, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %10, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @DBUS_TYPE_INT32, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %10, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  store i32 %78, i32* %9, align 4
  br label %80

79:                                               ; preds = %71, %66
  br label %97

80:                                               ; preds = %76
  br label %81

81:                                               ; preds = %80, %63
  br label %82

82:                                               ; preds = %81, %50
  br label %83

83:                                               ; preds = %82, %37
  %84 = call i32 @wpa_dbus_dict_entry_clear(%struct.wpa_dbus_dict_entry* %10)
  br label %20

85:                                               ; preds = %20
  %86 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* %9, align 4
  %91 = call i64 @wpas_p2p_presence_req(%struct.wpa_supplicant* %86, i32 %87, i32 %88, i32 %89, i32 %90)
  %92 = icmp slt i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %85
  %94 = load i32*, i32** %4, align 8
  %95 = call i32* @wpas_dbus_error_unknown_error(i32* %94, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  store i32* %95, i32** %3, align 8
  br label %104

96:                                               ; preds = %85
  store i32* null, i32** %3, align 8
  br label %104

97:                                               ; preds = %79
  %98 = call i32 @wpa_dbus_dict_entry_clear(%struct.wpa_dbus_dict_entry* %10)
  br label %99

99:                                               ; preds = %97, %26, %18
  %100 = load i32*, i32** %4, align 8
  %101 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %10, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = call i32* @wpas_dbus_error_invalid_args(i32* %100, i32* %102)
  store i32* %103, i32** %3, align 8
  br label %104

104:                                              ; preds = %99, %96, %93
  %105 = load i32*, i32** %3, align 8
  ret i32* %105
}

declare dso_local i32 @dbus_message_iter_init(i32*, i32*) #1

declare dso_local i32 @wpa_dbus_dict_open_read(i32*, i32*, i32*) #1

declare dso_local i64 @wpa_dbus_dict_has_dict_entry(i32*) #1

declare dso_local i32 @wpa_dbus_dict_get_entry(i32*, %struct.wpa_dbus_dict_entry*) #1

declare dso_local i64 @os_strcmp(i32*, i8*) #1

declare dso_local i32 @wpa_dbus_dict_entry_clear(%struct.wpa_dbus_dict_entry*) #1

declare dso_local i64 @wpas_p2p_presence_req(%struct.wpa_supplicant*, i32, i32, i32, i32) #1

declare dso_local i32* @wpas_dbus_error_unknown_error(i32*, i8*) #1

declare dso_local i32* @wpas_dbus_error_invalid_args(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

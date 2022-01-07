; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers_wps.c_wpas_dbus_handler_wps_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers_wps.c_wpas_dbus_handler_wps_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i64 }
%struct.wps_start_params = type { i32, i32, i32, i32*, i32 }

@DBUS_TYPE_DICT_ENTRY = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"dbus: WPS.Start - Role not specified\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Role not specified\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"dbus: WPS.Start - Pin required for registrar role\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Pin required for registrar role.\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"dbus: WPS.Start - Type not specified\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Type not specified\00", align 1
@DEV_PW_DEFAULT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"%08d\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"invalid PIN\00", align 1
@.str.8 = private unnamed_addr constant [54 x i8] c"dbus: WPS.Start wpas_wps_failed in role %s and key %s\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"enrollee\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"registrar\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"pin\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"pbc\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"WPS start failed\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"Pin\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @wpas_dbus_handler_wps_start(i32* %0, %struct.wpa_supplicant* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.wpa_supplicant*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.wps_start_params, align 8
  %11 = alloca i8*, align 8
  %12 = alloca [9 x i8], align 1
  %13 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.wpa_supplicant* %1, %struct.wpa_supplicant** %5, align 8
  store i32* null, i32** %6, align 8
  %14 = bitcast [9 x i8]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %14, i8 0, i64 9, i1 false)
  %15 = call i32 @os_memset(%struct.wps_start_params* %10, i32 0, i32 32)
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @dbus_message_iter_init(i32* %16, i32* %7)
  %18 = call i32 @dbus_message_iter_recurse(i32* %7, i32* %8)
  br label %19

19:                                               ; preds = %33, %2
  %20 = call i64 @dbus_message_iter_get_arg_type(i32* %8)
  %21 = load i64, i64* @DBUS_TYPE_DICT_ENTRY, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %19
  %24 = call i32 @dbus_message_iter_recurse(i32* %8, i32* %9)
  %25 = call i32 @dbus_message_iter_get_basic(i32* %9, i8** %11)
  %26 = call i32 @dbus_message_iter_next(i32* %9)
  %27 = load i32*, i32** %4, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = call i64 @wpas_dbus_handler_wps_start_entry(i32* %27, i8* %28, i32* %9, %struct.wps_start_params* %10, i32** %6)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i32*, i32** %6, align 8
  store i32* %32, i32** %3, align 8
  br label %163

33:                                               ; preds = %23
  %34 = call i32 @dbus_message_iter_next(i32* %8)
  br label %19

35:                                               ; preds = %19
  %36 = getelementptr inbounds %struct.wps_start_params, %struct.wps_start_params* %10, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load i32, i32* @MSG_DEBUG, align 4
  %41 = call i32 (i32, i8*, ...) @wpa_printf(i32 %40, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %42 = load i32*, i32** %4, align 8
  %43 = call i32* @wpas_dbus_error_invalid_args(i32* %42, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32* %43, i32** %3, align 8
  br label %163

44:                                               ; preds = %35
  %45 = getelementptr inbounds %struct.wps_start_params, %struct.wps_start_params* %10, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 2
  br i1 %47, label %48, label %64

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.wps_start_params, %struct.wps_start_params* %10, i32 0, i32 3
  %50 = load i32*, i32** %49, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  %53 = load i32, i32* @MSG_DEBUG, align 4
  %54 = call i32 (i32, i8*, ...) @wpa_printf(i32 %53, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  %55 = load i32*, i32** %4, align 8
  %56 = call i32* @wpas_dbus_error_invalid_args(i32* %55, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  store i32* %56, i32** %3, align 8
  br label %163

57:                                               ; preds = %48
  %58 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %59 = getelementptr inbounds %struct.wps_start_params, %struct.wps_start_params* %10, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = getelementptr inbounds %struct.wps_start_params, %struct.wps_start_params* %10, i32 0, i32 3
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @wpas_wps_start_reg(%struct.wpa_supplicant* %58, i32 %60, i32* %62, i32* null)
  store i32 %63, i32* %13, align 4
  br label %106

64:                                               ; preds = %44
  %65 = getelementptr inbounds %struct.wps_start_params, %struct.wps_start_params* %10, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %64
  %69 = load i32, i32* @MSG_DEBUG, align 4
  %70 = call i32 (i32, i8*, ...) @wpa_printf(i32 %69, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %71 = load i32*, i32** %4, align 8
  %72 = call i32* @wpas_dbus_error_invalid_args(i32* %71, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  store i32* %72, i32** %3, align 8
  br label %163

73:                                               ; preds = %64
  %74 = getelementptr inbounds %struct.wps_start_params, %struct.wps_start_params* %10, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %77, label %99

77:                                               ; preds = %73
  %78 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %79 = getelementptr inbounds %struct.wps_start_params, %struct.wps_start_params* %10, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = getelementptr inbounds %struct.wps_start_params, %struct.wps_start_params* %10, i32 0, i32 3
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* @DEV_PW_DEFAULT, align 4
  %84 = call i32 @wpas_wps_start_pin(%struct.wpa_supplicant* %78, i32 %80, i32* %82, i32 0, i32 %83)
  store i32 %84, i32* %13, align 4
  %85 = load i32, i32* %13, align 4
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %98

87:                                               ; preds = %77
  %88 = getelementptr inbounds [9 x i8], [9 x i8]* %12, i64 0, i64 0
  %89 = load i32, i32* %13, align 4
  %90 = call i32 @os_snprintf(i8* %88, i32 9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %89)
  store i32 %90, i32* %13, align 4
  %91 = load i32, i32* %13, align 4
  %92 = call i64 @os_snprintf_error(i32 9, i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %87
  %95 = load i32*, i32** %4, align 8
  %96 = call i32* @wpas_dbus_error_unknown_error(i32* %95, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  store i32* %96, i32** %3, align 8
  br label %163

97:                                               ; preds = %87
  br label %98

98:                                               ; preds = %97, %77
  br label %104

99:                                               ; preds = %73
  %100 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %101 = getelementptr inbounds %struct.wps_start_params, %struct.wps_start_params* %10, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @wpas_wps_start_pbc(%struct.wpa_supplicant* %100, i32 %102, i32 0, i32 0)
  store i32 %103, i32* %13, align 4
  br label %104

104:                                              ; preds = %99, %98
  br label %105

105:                                              ; preds = %104
  br label %106

106:                                              ; preds = %105, %57
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %13, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %132

110:                                              ; preds = %107
  %111 = load i32, i32* @MSG_DEBUG, align 4
  %112 = getelementptr inbounds %struct.wps_start_params, %struct.wps_start_params* %10, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = icmp eq i32 %113, 1
  %115 = zext i1 %114 to i64
  %116 = select i1 %114, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0)
  %117 = getelementptr inbounds %struct.wps_start_params, %struct.wps_start_params* %10, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %110
  br label %127

121:                                              ; preds = %110
  %122 = getelementptr inbounds %struct.wps_start_params, %struct.wps_start_params* %10, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp eq i32 %123, 1
  %125 = zext i1 %124 to i64
  %126 = select i1 %124, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0)
  br label %127

127:                                              ; preds = %121, %120
  %128 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), %120 ], [ %126, %121 ]
  %129 = call i32 (i32, i8*, ...) @wpa_printf(i32 %111, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i64 0, i64 0), i8* %116, i8* %128)
  %130 = load i32*, i32** %4, align 8
  %131 = call i32* @wpas_dbus_error_unknown_error(i32* %130, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0))
  store i32* %131, i32** %3, align 8
  br label %163

132:                                              ; preds = %107
  %133 = load i32*, i32** %4, align 8
  %134 = call i32* @dbus_message_new_method_return(i32* %133)
  store i32* %134, i32** %6, align 8
  %135 = load i32*, i32** %6, align 8
  %136 = icmp ne i32* %135, null
  br i1 %136, label %140, label %137

137:                                              ; preds = %132
  %138 = load i32*, i32** %4, align 8
  %139 = call i32* @wpas_dbus_error_no_memory(i32* %138)
  store i32* %139, i32** %3, align 8
  br label %163

140:                                              ; preds = %132
  %141 = load i32*, i32** %6, align 8
  %142 = call i32 @dbus_message_iter_init_append(i32* %141, i32* %7)
  %143 = call i32 @wpa_dbus_dict_open_write(i32* %7, i32* %8)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %156

145:                                              ; preds = %140
  %146 = getelementptr inbounds [9 x i8], [9 x i8]* %12, i64 0, i64 0
  %147 = call i64 @os_strlen(i8* %146)
  %148 = icmp sgt i64 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %145
  %150 = getelementptr inbounds [9 x i8], [9 x i8]* %12, i64 0, i64 0
  %151 = call i32 @wpa_dbus_dict_append_string(i32* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8* %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %149, %145
  %154 = call i32 @wpa_dbus_dict_close_write(i32* %7, i32* %8)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %161, label %156

156:                                              ; preds = %153, %149, %140
  %157 = load i32*, i32** %6, align 8
  %158 = call i32 @dbus_message_unref(i32* %157)
  %159 = load i32*, i32** %4, align 8
  %160 = call i32* @wpas_dbus_error_no_memory(i32* %159)
  store i32* %160, i32** %3, align 8
  br label %163

161:                                              ; preds = %153
  %162 = load i32*, i32** %6, align 8
  store i32* %162, i32** %3, align 8
  br label %163

163:                                              ; preds = %161, %156, %137, %127, %94, %68, %52, %39, %31
  %164 = load i32*, i32** %3, align 8
  ret i32* %164
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @os_memset(%struct.wps_start_params*, i32, i32) #2

declare dso_local i32 @dbus_message_iter_init(i32*, i32*) #2

declare dso_local i32 @dbus_message_iter_recurse(i32*, i32*) #2

declare dso_local i64 @dbus_message_iter_get_arg_type(i32*) #2

declare dso_local i32 @dbus_message_iter_get_basic(i32*, i8**) #2

declare dso_local i32 @dbus_message_iter_next(i32*) #2

declare dso_local i64 @wpas_dbus_handler_wps_start_entry(i32*, i8*, i32*, %struct.wps_start_params*, i32**) #2

declare dso_local i32 @wpa_printf(i32, i8*, ...) #2

declare dso_local i32* @wpas_dbus_error_invalid_args(i32*, i8*) #2

declare dso_local i32 @wpas_wps_start_reg(%struct.wpa_supplicant*, i32, i32*, i32*) #2

declare dso_local i32 @wpas_wps_start_pin(%struct.wpa_supplicant*, i32, i32*, i32, i32) #2

declare dso_local i32 @os_snprintf(i8*, i32, i8*, i32) #2

declare dso_local i64 @os_snprintf_error(i32, i32) #2

declare dso_local i32* @wpas_dbus_error_unknown_error(i32*, i8*) #2

declare dso_local i32 @wpas_wps_start_pbc(%struct.wpa_supplicant*, i32, i32, i32) #2

declare dso_local i32* @dbus_message_new_method_return(i32*) #2

declare dso_local i32* @wpas_dbus_error_no_memory(i32*) #2

declare dso_local i32 @dbus_message_iter_init_append(i32*, i32*) #2

declare dso_local i32 @wpa_dbus_dict_open_write(i32*, i32*) #2

declare dso_local i64 @os_strlen(i8*) #2

declare dso_local i32 @wpa_dbus_dict_append_string(i32*, i8*, i8*) #2

declare dso_local i32 @wpa_dbus_dict_close_write(i32*, i32*) #2

declare dso_local i32 @dbus_message_unref(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers_p2p.c_wpas_dbus_handler_p2p_delete_service.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers_p2p.c_wpas_dbus_handler_p2p_delete_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32 }
%struct.wpa_dbus_dict_entry = type { i64, i64, i64, i32, i32, i32, i32 }
%struct.wpabuf = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"service_type\00", align 1
@DBUS_TYPE_STRING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"upnp\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"bonjour\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@DBUS_TYPE_INT32 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"service\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"query\00", align 1
@DBUS_TYPE_ARRAY = common dso_local global i64 0, align 8
@DBUS_TYPE_BYTE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @wpas_dbus_handler_p2p_delete_service(i32* %0, %struct.wpa_supplicant* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.wpa_supplicant*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.wpa_dbus_dict_entry, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.wpabuf*, align 8
  %15 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.wpa_supplicant* %1, %struct.wpa_supplicant** %5, align 8
  store i32* null, i32** %7, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i8* null, i8** %13, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %14, align 8
  store i64 0, i64* %15, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @dbus_message_iter_init(i32* %16, i32* %8)
  %18 = call i32 @wpa_dbus_dict_open_read(i32* %8, i32* %6, i32* null)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  br label %157

21:                                               ; preds = %2
  br label %22

22:                                               ; preds = %111, %21
  %23 = call i64 @wpa_dbus_dict_has_dict_entry(i32* %6)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %113

25:                                               ; preds = %22
  %26 = call i32 @wpa_dbus_dict_get_entry(i32* %6, %struct.wpa_dbus_dict_entry* %9)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  br label %157

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %9, i32 0, i32 5
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @os_strcmp(i32 %31, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %54

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %9, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @DBUS_TYPE_STRING, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %54

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %9, i32 0, i32 6
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @os_strcmp(i32 %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store i32 1, i32* %10, align 4
  br label %53

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %9, i32 0, i32 6
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @os_strcmp(i32 %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store i32 1, i32* %11, align 4
  br label %52

51:                                               ; preds = %45
  br label %155

52:                                               ; preds = %50
  br label %53

53:                                               ; preds = %52, %44
  br label %111

54:                                               ; preds = %34, %29
  %55 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %9, i32 0, i32 5
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @os_strcmp(i32 %56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %9, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @DBUS_TYPE_INT32, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %9, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %15, align 8
  br label %110

67:                                               ; preds = %59, %54
  %68 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %9, i32 0, i32 5
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @os_strcmp(i32 %69, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %9, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @DBUS_TYPE_STRING, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %72
  %78 = load i8*, i8** %13, align 8
  %79 = call i32 @os_free(i8* %78)
  %80 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %9, i32 0, i32 6
  %81 = load i32, i32* %80, align 4
  %82 = call i8* @os_strdup(i32 %81)
  store i8* %82, i8** %13, align 8
  br label %109

83:                                               ; preds = %72, %67
  %84 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %9, i32 0, i32 5
  %85 = load i32, i32* %84, align 8
  %86 = call i64 @os_strcmp(i32 %85, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %107

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %9, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @DBUS_TYPE_ARRAY, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %98, label %93

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %9, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @DBUS_TYPE_BYTE, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %93, %88
  br label %155

99:                                               ; preds = %93
  %100 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %101 = call i32 @wpabuf_free(%struct.wpabuf* %100)
  %102 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %9, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  %104 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %9, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = call %struct.wpabuf* @wpabuf_alloc_copy(i32 %103, i32 %105)
  store %struct.wpabuf* %106, %struct.wpabuf** %14, align 8
  br label %108

107:                                              ; preds = %83
  br label %155

108:                                              ; preds = %99
  br label %109

109:                                              ; preds = %108, %77
  br label %110

110:                                              ; preds = %109, %64
  br label %111

111:                                              ; preds = %110, %53
  %112 = call i32 @wpa_dbus_dict_entry_clear(%struct.wpa_dbus_dict_entry* %9)
  br label %22

113:                                              ; preds = %22
  %114 = load i32, i32* %10, align 4
  %115 = icmp eq i32 %114, 1
  br i1 %115, label %116, label %132

116:                                              ; preds = %113
  %117 = load i64, i64* %15, align 8
  %118 = icmp sle i64 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %116
  %120 = load i8*, i8** %13, align 8
  %121 = icmp eq i8* %120, null
  br i1 %121, label %122, label %123

122:                                              ; preds = %119, %116
  br label %157

123:                                              ; preds = %119
  %124 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %125 = load i64, i64* %15, align 8
  %126 = load i8*, i8** %13, align 8
  %127 = call i32 @wpas_p2p_service_del_upnp(%struct.wpa_supplicant* %124, i64 %125, i8* %126)
  store i32 %127, i32* %12, align 4
  %128 = load i32, i32* %12, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %123
  br label %157

131:                                              ; preds = %123
  br label %149

132:                                              ; preds = %113
  %133 = load i32, i32* %11, align 4
  %134 = icmp eq i32 %133, 1
  br i1 %134, label %135, label %147

135:                                              ; preds = %132
  %136 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %137 = icmp eq %struct.wpabuf* %136, null
  br i1 %137, label %138, label %139

138:                                              ; preds = %135
  br label %157

139:                                              ; preds = %135
  %140 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %141 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %142 = call i32 @wpas_p2p_service_del_bonjour(%struct.wpa_supplicant* %140, %struct.wpabuf* %141)
  store i32 %142, i32* %12, align 4
  %143 = load i32, i32* %12, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %139
  br label %157

146:                                              ; preds = %139
  br label %148

147:                                              ; preds = %132
  br label %157

148:                                              ; preds = %146
  br label %149

149:                                              ; preds = %148, %131
  %150 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %151 = call i32 @wpabuf_free(%struct.wpabuf* %150)
  %152 = load i8*, i8** %13, align 8
  %153 = call i32 @os_free(i8* %152)
  %154 = load i32*, i32** %7, align 8
  store i32* %154, i32** %3, align 8
  br label %164

155:                                              ; preds = %107, %98, %51
  %156 = call i32 @wpa_dbus_dict_entry_clear(%struct.wpa_dbus_dict_entry* %9)
  br label %157

157:                                              ; preds = %155, %147, %145, %138, %130, %122, %28, %20
  %158 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %159 = call i32 @wpabuf_free(%struct.wpabuf* %158)
  %160 = load i8*, i8** %13, align 8
  %161 = call i32 @os_free(i8* %160)
  %162 = load i32*, i32** %4, align 8
  %163 = call i32* @wpas_dbus_error_invalid_args(i32* %162, i32* null)
  store i32* %163, i32** %3, align 8
  br label %164

164:                                              ; preds = %157, %149
  %165 = load i32*, i32** %3, align 8
  ret i32* %165
}

declare dso_local i32 @dbus_message_iter_init(i32*, i32*) #1

declare dso_local i32 @wpa_dbus_dict_open_read(i32*, i32*, i32*) #1

declare dso_local i64 @wpa_dbus_dict_has_dict_entry(i32*) #1

declare dso_local i32 @wpa_dbus_dict_get_entry(i32*, %struct.wpa_dbus_dict_entry*) #1

declare dso_local i64 @os_strcmp(i32, i8*) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local i8* @os_strdup(i32) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc_copy(i32, i32) #1

declare dso_local i32 @wpa_dbus_dict_entry_clear(%struct.wpa_dbus_dict_entry*) #1

declare dso_local i32 @wpas_p2p_service_del_upnp(%struct.wpa_supplicant*, i64, i8*) #1

declare dso_local i32 @wpas_p2p_service_del_bonjour(%struct.wpa_supplicant*, %struct.wpabuf*) #1

declare dso_local i32* @wpas_dbus_error_invalid_args(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

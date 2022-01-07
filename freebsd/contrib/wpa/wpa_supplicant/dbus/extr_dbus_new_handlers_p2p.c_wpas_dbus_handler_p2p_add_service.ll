; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers_p2p.c_wpas_dbus_handler_p2p_add_service.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers_p2p.c_wpas_dbus_handler_p2p_add_service.c"
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
@.str.6 = private unnamed_addr constant [9 x i8] c"response\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @wpas_dbus_handler_p2p_add_service(i32* %0, %struct.wpa_supplicant* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.wpa_supplicant*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.wpa_dbus_dict_entry, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.wpabuf*, align 8
  %14 = alloca %struct.wpabuf*, align 8
  %15 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.wpa_supplicant* %1, %struct.wpa_supplicant** %5, align 8
  store i32* null, i32** %7, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i8* null, i8** %12, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %13, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %14, align 8
  store i64 0, i64* %15, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @dbus_message_iter_init(i32* %16, i32* %8)
  %18 = call i32 @wpa_dbus_dict_open_read(i32* %8, i32* %6, i32* null)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  br label %177

21:                                               ; preds = %2
  br label %22

22:                                               ; preds = %131, %21
  %23 = call i64 @wpa_dbus_dict_has_dict_entry(i32* %6)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %133

25:                                               ; preds = %22
  %26 = call i32 @wpa_dbus_dict_get_entry(i32* %6, %struct.wpa_dbus_dict_entry* %9)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  br label %177

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
  br label %175

52:                                               ; preds = %50
  br label %53

53:                                               ; preds = %52, %44
  br label %131

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
  br label %130

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
  %78 = load i8*, i8** %12, align 8
  %79 = call i32 @os_free(i8* %78)
  %80 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %9, i32 0, i32 6
  %81 = load i32, i32* %80, align 4
  %82 = call i8* @os_strdup(i32 %81)
  store i8* %82, i8** %12, align 8
  br label %129

83:                                               ; preds = %72, %67
  %84 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %9, i32 0, i32 5
  %85 = load i32, i32* %84, align 8
  %86 = call i64 @os_strcmp(i32 %85, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %105

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
  br label %175

99:                                               ; preds = %93
  %100 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %9, i32 0, i32 4
  %101 = load i32, i32* %100, align 4
  %102 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %9, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = call %struct.wpabuf* @wpabuf_alloc_copy(i32 %101, i32 %103)
  store %struct.wpabuf* %104, %struct.wpabuf** %13, align 8
  br label %128

105:                                              ; preds = %83
  %106 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %9, i32 0, i32 5
  %107 = load i32, i32* %106, align 8
  %108 = call i64 @os_strcmp(i32 %107, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %127

110:                                              ; preds = %105
  %111 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %9, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @DBUS_TYPE_ARRAY, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %120, label %115

115:                                              ; preds = %110
  %116 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %9, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @DBUS_TYPE_BYTE, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %115, %110
  br label %175

121:                                              ; preds = %115
  %122 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %9, i32 0, i32 4
  %123 = load i32, i32* %122, align 4
  %124 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %9, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = call %struct.wpabuf* @wpabuf_alloc_copy(i32 %123, i32 %125)
  store %struct.wpabuf* %126, %struct.wpabuf** %14, align 8
  br label %127

127:                                              ; preds = %121, %105
  br label %128

128:                                              ; preds = %127, %99
  br label %129

129:                                              ; preds = %128, %77
  br label %130

130:                                              ; preds = %129, %64
  br label %131

131:                                              ; preds = %130, %53
  %132 = call i32 @wpa_dbus_dict_entry_clear(%struct.wpa_dbus_dict_entry* %9)
  br label %22

133:                                              ; preds = %22
  %134 = load i32, i32* %10, align 4
  %135 = icmp eq i32 %134, 1
  br i1 %135, label %136, label %151

136:                                              ; preds = %133
  %137 = load i64, i64* %15, align 8
  %138 = icmp sle i64 %137, 0
  br i1 %138, label %142, label %139

139:                                              ; preds = %136
  %140 = load i8*, i8** %12, align 8
  %141 = icmp eq i8* %140, null
  br i1 %141, label %142, label %143

142:                                              ; preds = %139, %136
  br label %177

143:                                              ; preds = %139
  %144 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %145 = load i64, i64* %15, align 8
  %146 = load i8*, i8** %12, align 8
  %147 = call i64 @wpas_p2p_service_add_upnp(%struct.wpa_supplicant* %144, i64 %145, i8* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %143
  br label %177

150:                                              ; preds = %143
  br label %171

151:                                              ; preds = %133
  %152 = load i32, i32* %11, align 4
  %153 = icmp eq i32 %152, 1
  br i1 %153, label %154, label %169

154:                                              ; preds = %151
  %155 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %156 = icmp eq %struct.wpabuf* %155, null
  br i1 %156, label %160, label %157

157:                                              ; preds = %154
  %158 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %159 = icmp eq %struct.wpabuf* %158, null
  br i1 %159, label %160, label %161

160:                                              ; preds = %157, %154
  br label %177

161:                                              ; preds = %157
  %162 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %163 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %164 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %165 = call i64 @wpas_p2p_service_add_bonjour(%struct.wpa_supplicant* %162, %struct.wpabuf* %163, %struct.wpabuf* %164)
  %166 = icmp slt i64 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %161
  br label %177

168:                                              ; preds = %161
  store %struct.wpabuf* null, %struct.wpabuf** %13, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %14, align 8
  br label %170

169:                                              ; preds = %151
  br label %177

170:                                              ; preds = %168
  br label %171

171:                                              ; preds = %170, %150
  %172 = load i8*, i8** %12, align 8
  %173 = call i32 @os_free(i8* %172)
  %174 = load i32*, i32** %7, align 8
  store i32* %174, i32** %3, align 8
  br label %186

175:                                              ; preds = %120, %98, %51
  %176 = call i32 @wpa_dbus_dict_entry_clear(%struct.wpa_dbus_dict_entry* %9)
  br label %177

177:                                              ; preds = %175, %169, %167, %160, %149, %142, %28, %20
  %178 = load i8*, i8** %12, align 8
  %179 = call i32 @os_free(i8* %178)
  %180 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %181 = call i32 @wpabuf_free(%struct.wpabuf* %180)
  %182 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %183 = call i32 @wpabuf_free(%struct.wpabuf* %182)
  %184 = load i32*, i32** %4, align 8
  %185 = call i32* @wpas_dbus_error_invalid_args(i32* %184, i32* null)
  store i32* %185, i32** %3, align 8
  br label %186

186:                                              ; preds = %177, %171
  %187 = load i32*, i32** %3, align 8
  ret i32* %187
}

declare dso_local i32 @dbus_message_iter_init(i32*, i32*) #1

declare dso_local i32 @wpa_dbus_dict_open_read(i32*, i32*, i32*) #1

declare dso_local i64 @wpa_dbus_dict_has_dict_entry(i32*) #1

declare dso_local i32 @wpa_dbus_dict_get_entry(i32*, %struct.wpa_dbus_dict_entry*) #1

declare dso_local i64 @os_strcmp(i32, i8*) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local i8* @os_strdup(i32) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc_copy(i32, i32) #1

declare dso_local i32 @wpa_dbus_dict_entry_clear(%struct.wpa_dbus_dict_entry*) #1

declare dso_local i64 @wpas_p2p_service_add_upnp(%struct.wpa_supplicant*, i64, i8*) #1

declare dso_local i64 @wpas_p2p_service_add_bonjour(%struct.wpa_supplicant*, %struct.wpabuf*, %struct.wpabuf*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i32* @wpas_dbus_error_invalid_args(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

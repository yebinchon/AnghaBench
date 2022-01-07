; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers_p2p.c_wpas_dbus_handler_p2p_service_sd_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers_p2p.c_wpas_dbus_handler_p2p_service_sd_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.wpa_dbus_dict_entry = type { i64, i64, i64, i32, i32, i32, i32 }
%struct.wpabuf = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"peer_object\00", align 1
@DBUS_TYPE_OBJECT_PATH = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"service_type\00", align 1
@DBUS_TYPE_STRING = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"upnp\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@DBUS_TYPE_INT32 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"service\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"tlv\00", align 1
@DBUS_TYPE_ARRAY = common dso_local global i64 0, align 8
@DBUS_TYPE_BYTE = common dso_local global i64 0, align 8
@DBUS_TYPE_UINT64 = common dso_local global i32 0, align 4
@DBUS_TYPE_INVALID = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"Unable to send SD request\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @wpas_dbus_handler_p2p_service_sd_req(i32* %0, %struct.wpa_supplicant* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wpa_dbus_dict_entry, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.wpabuf*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.wpa_supplicant* %1, %struct.wpa_supplicant** %4, align 8
  store i32* null, i32** %6, align 8
  store i32 0, i32* %9, align 4
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  %18 = load i32, i32* @ETH_ALEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %15, align 8
  %21 = alloca i64, i64 %19, align 16
  store i64 %19, i64* %16, align 8
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @dbus_message_iter_init(i32* %22, i32* %7)
  %24 = call i32 @wpa_dbus_dict_open_read(i32* %7, i32* %5, i32* null)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %2
  br label %191

27:                                               ; preds = %2
  br label %28

28:                                               ; preds = %121, %27
  %29 = call i64 @wpa_dbus_dict_has_dict_entry(i32* %5)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %123

31:                                               ; preds = %28
  %32 = call i32 @wpa_dbus_dict_get_entry(i32* %5, %struct.wpa_dbus_dict_entry* %8)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  br label %191

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %8, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @os_strcmp(i32 %37, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %8, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @DBUS_TYPE_OBJECT_PATH, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %8, i32 0, i32 6
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @os_strdup(i32 %47)
  store i8* %48, i8** %11, align 8
  br label %121

49:                                               ; preds = %40, %35
  %50 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %8, i32 0, i32 5
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @os_strcmp(i32 %51, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %8, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @DBUS_TYPE_STRING, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %8, i32 0, i32 6
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @os_strcmp(i32 %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  store i32 1, i32* %9, align 4
  br label %66

65:                                               ; preds = %59
  br label %189

66:                                               ; preds = %64
  br label %120

67:                                               ; preds = %54, %49
  %68 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %8, i32 0, i32 5
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @os_strcmp(i32 %69, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %8, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @DBUS_TYPE_INT32, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %8, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %13, align 8
  br label %119

80:                                               ; preds = %72, %67
  %81 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %8, i32 0, i32 5
  %82 = load i32, i32* %81, align 8
  %83 = call i64 @os_strcmp(i32 %82, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %8, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @DBUS_TYPE_STRING, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %8, i32 0, i32 6
  %92 = load i32, i32* %91, align 4
  %93 = call i8* @os_strdup(i32 %92)
  store i8* %93, i8** %10, align 8
  br label %118

94:                                               ; preds = %85, %80
  %95 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %8, i32 0, i32 5
  %96 = load i32, i32* %95, align 8
  %97 = call i64 @os_strcmp(i32 %96, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %116

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %8, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @DBUS_TYPE_ARRAY, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %109, label %104

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %8, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @DBUS_TYPE_BYTE, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %104, %99
  br label %189

110:                                              ; preds = %104
  %111 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %8, i32 0, i32 4
  %112 = load i32, i32* %111, align 4
  %113 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %8, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = call %struct.wpabuf* @wpabuf_alloc_copy(i32 %112, i32 %114)
  store %struct.wpabuf* %115, %struct.wpabuf** %12, align 8
  br label %117

116:                                              ; preds = %94
  br label %189

117:                                              ; preds = %110
  br label %118

118:                                              ; preds = %117, %90
  br label %119

119:                                              ; preds = %118, %77
  br label %120

120:                                              ; preds = %119, %66
  br label %121

121:                                              ; preds = %120, %45
  %122 = call i32 @wpa_dbus_dict_entry_clear(%struct.wpa_dbus_dict_entry* %8)
  br label %28

123:                                              ; preds = %28
  %124 = load i8*, i8** %11, align 8
  %125 = icmp ne i8* %124, null
  br i1 %125, label %127, label %126

126:                                              ; preds = %123
  store i64* null, i64** %17, align 8
  br label %141

127:                                              ; preds = %123
  %128 = load i8*, i8** %11, align 8
  %129 = call i64 @parse_peer_object_path(i8* %128, i64* %21)
  %130 = icmp slt i64 %129, 0
  br i1 %130, label %139, label %131

131:                                              ; preds = %127
  %132 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %133 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %132, i32 0, i32 0
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @p2p_peer_known(i32 %136, i64* %21)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %131, %127
  br label %191

140:                                              ; preds = %131
  store i64* %21, i64** %17, align 8
  br label %141

141:                                              ; preds = %140, %126
  %142 = load i32, i32* %9, align 4
  %143 = icmp eq i32 %142, 1
  br i1 %143, label %144, label %157

144:                                              ; preds = %141
  %145 = load i64, i64* %13, align 8
  %146 = icmp sle i64 %145, 0
  br i1 %146, label %150, label %147

147:                                              ; preds = %144
  %148 = load i8*, i8** %10, align 8
  %149 = icmp eq i8* %148, null
  br i1 %149, label %150, label %151

150:                                              ; preds = %147, %144
  br label %191

151:                                              ; preds = %147
  %152 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %153 = load i64*, i64** %17, align 8
  %154 = load i64, i64* %13, align 8
  %155 = load i8*, i8** %10, align 8
  %156 = call i64 @wpas_p2p_sd_request_upnp(%struct.wpa_supplicant* %152, i64* %153, i64 %154, i8* %155)
  store i64 %156, i64* %14, align 8
  br label %168

157:                                              ; preds = %141
  %158 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %159 = icmp eq %struct.wpabuf* %158, null
  br i1 %159, label %160, label %161

160:                                              ; preds = %157
  br label %191

161:                                              ; preds = %157
  %162 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %163 = load i64*, i64** %17, align 8
  %164 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %165 = call i64 @wpas_p2p_sd_request(%struct.wpa_supplicant* %162, i64* %163, %struct.wpabuf* %164)
  store i64 %165, i64* %14, align 8
  %166 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %167 = call i32 @wpabuf_free(%struct.wpabuf* %166)
  br label %168

168:                                              ; preds = %161, %151
  %169 = load i64, i64* %14, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %178

171:                                              ; preds = %168
  %172 = load i32*, i32** %3, align 8
  %173 = call i32* @dbus_message_new_method_return(i32* %172)
  store i32* %173, i32** %6, align 8
  %174 = load i32*, i32** %6, align 8
  %175 = load i32, i32* @DBUS_TYPE_UINT64, align 4
  %176 = load i32, i32* @DBUS_TYPE_INVALID, align 4
  %177 = call i32 @dbus_message_append_args(i32* %174, i32 %175, i64* %14, i32 %176)
  br label %181

178:                                              ; preds = %168
  %179 = load i32*, i32** %3, align 8
  %180 = call i32* @wpas_dbus_error_unknown_error(i32* %179, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  store i32* %180, i32** %6, align 8
  br label %181

181:                                              ; preds = %178, %171
  br label %182

182:                                              ; preds = %197, %181
  %183 = load i8*, i8** %10, align 8
  %184 = call i32 @os_free(i8* %183)
  %185 = load i8*, i8** %11, align 8
  %186 = call i32 @os_free(i8* %185)
  %187 = load i32*, i32** %6, align 8
  %188 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %188)
  ret i32* %187

189:                                              ; preds = %116, %109, %65
  %190 = call i32 @wpa_dbus_dict_entry_clear(%struct.wpa_dbus_dict_entry* %8)
  br label %191

191:                                              ; preds = %189, %160, %150, %139, %34, %26
  %192 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %193 = icmp ne %struct.wpabuf* %192, null
  br i1 %193, label %194, label %197

194:                                              ; preds = %191
  %195 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %196 = call i32 @wpabuf_free(%struct.wpabuf* %195)
  br label %197

197:                                              ; preds = %194, %191
  %198 = load i32*, i32** %3, align 8
  %199 = call i32* @wpas_dbus_error_invalid_args(i32* %198, i32* null)
  store i32* %199, i32** %6, align 8
  br label %182
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dbus_message_iter_init(i32*, i32*) #2

declare dso_local i32 @wpa_dbus_dict_open_read(i32*, i32*, i32*) #2

declare dso_local i64 @wpa_dbus_dict_has_dict_entry(i32*) #2

declare dso_local i32 @wpa_dbus_dict_get_entry(i32*, %struct.wpa_dbus_dict_entry*) #2

declare dso_local i64 @os_strcmp(i32, i8*) #2

declare dso_local i8* @os_strdup(i32) #2

declare dso_local %struct.wpabuf* @wpabuf_alloc_copy(i32, i32) #2

declare dso_local i32 @wpa_dbus_dict_entry_clear(%struct.wpa_dbus_dict_entry*) #2

declare dso_local i64 @parse_peer_object_path(i8*, i64*) #2

declare dso_local i32 @p2p_peer_known(i32, i64*) #2

declare dso_local i64 @wpas_p2p_sd_request_upnp(%struct.wpa_supplicant*, i64*, i64, i8*) #2

declare dso_local i64 @wpas_p2p_sd_request(%struct.wpa_supplicant*, i64*, %struct.wpabuf*) #2

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #2

declare dso_local i32* @dbus_message_new_method_return(i32*) #2

declare dso_local i32 @dbus_message_append_args(i32*, i32, i64*, i32) #2

declare dso_local i32* @wpas_dbus_error_unknown_error(i32*, i8*) #2

declare dso_local i32 @os_free(i8*) #2

declare dso_local i32* @wpas_dbus_error_invalid_args(i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

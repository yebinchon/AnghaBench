; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers_p2p.c_wpas_dbus_handler_p2p_invite.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers_p2p.c_wpas_dbus_handler_p2p_invite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { %struct.wpa_supplicant*, i32 }
%struct.wpa_dbus_dict_entry = type { i8*, i64, i32 }
%struct.wpa_ssid = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"peer\00", align 1
@DBUS_TYPE_OBJECT_PATH = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"persistent_group_object\00", align 1
@WPAS_DBUS_NEW_PERSISTENT_GROUPS_PART = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"Failed to reinvoke a persistent group\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Failed to join to an active group\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @wpas_dbus_handler_p2p_invite(i32* %0, %struct.wpa_supplicant* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.wpa_supplicant*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.wpa_dbus_dict_entry, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.wpa_ssid*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.wpa_supplicant* %1, %struct.wpa_supplicant** %5, align 8
  store i32* null, i32** %7, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  %20 = load i32, i32* @ETH_ALEN, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %13, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %14, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %24 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @wpa_dbus_p2p_check_enabled(%struct.wpa_supplicant* %24, i32* %25, i32** %7, i32* null)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %2
  %29 = load i32*, i32** %7, align 8
  store i32* %29, i32** %3, align 8
  store i32 1, i32* %18, align 4
  br label %184

30:                                               ; preds = %2
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @dbus_message_iter_init(i32* %31, i32* %8)
  %33 = call i32 @wpa_dbus_dict_open_read(i32* %8, i32* %6, i32* null)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  br label %181

36:                                               ; preds = %30
  br label %37

37:                                               ; preds = %77, %36
  %38 = call i64 @wpa_dbus_dict_has_dict_entry(i32* %6)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %78

40:                                               ; preds = %37
  %41 = call i32 @wpa_dbus_dict_get_entry(i32* %6, %struct.wpa_dbus_dict_entry* %9)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %40
  br label %181

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %9, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i64 @os_strcmp(i8* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %9, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @DBUS_TYPE_OBJECT_PATH, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %9, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i8* @os_strdup(i32 %56)
  store i8* %57, i8** %10, align 8
  %58 = call i32 @wpa_dbus_dict_entry_clear(%struct.wpa_dbus_dict_entry* %9)
  br label %77

59:                                               ; preds = %49, %44
  %60 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %9, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i64 @os_strcmp(i8* %61, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %9, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @DBUS_TYPE_OBJECT_PATH, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %9, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i8* @os_strdup(i32 %71)
  store i8* %72, i8** %11, align 8
  store i32 1, i32* %16, align 4
  %73 = call i32 @wpa_dbus_dict_entry_clear(%struct.wpa_dbus_dict_entry* %9)
  br label %76

74:                                               ; preds = %64, %59
  %75 = call i32 @wpa_dbus_dict_entry_clear(%struct.wpa_dbus_dict_entry* %9)
  br label %181

76:                                               ; preds = %69
  br label %77

77:                                               ; preds = %76, %54
  br label %37

78:                                               ; preds = %37
  %79 = load i8*, i8** %10, align 8
  %80 = call i64 @parse_peer_object_path(i8* %79, i32* %23)
  %81 = icmp slt i64 %80, 0
  br i1 %81, label %90, label %82

82:                                               ; preds = %78
  %83 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %84 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %83, i32 0, i32 3
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @p2p_peer_known(i32 %87, i32* %23)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %82, %78
  br label %181

91:                                               ; preds = %82
  %92 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %93 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %92, i32 0, i32 3
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %95, align 8
  store %struct.wpa_supplicant* %96, %struct.wpa_supplicant** %5, align 8
  %97 = load i32, i32* %16, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %161

99:                                               ; preds = %91
  %100 = load i8*, i8** %11, align 8
  %101 = load i32, i32* @WPAS_DBUS_NEW_PERSISTENT_GROUPS_PART, align 4
  %102 = call i8* @wpas_dbus_new_decompose_object_path(i8* %100, i32 %101, i8** %19)
  store i8* %102, i8** %12, align 8
  %103 = load i8*, i8** %12, align 8
  %104 = icmp eq i8* %103, null
  br i1 %104, label %124, label %105

105:                                              ; preds = %99
  %106 = load i8*, i8** %19, align 8
  %107 = icmp eq i8* %106, null
  br i1 %107, label %124, label %108

108:                                              ; preds = %105
  %109 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %110 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %109, i32 0, i32 2
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %115, label %124

115:                                              ; preds = %108
  %116 = load i8*, i8** %12, align 8
  %117 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %118 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %117, i32 0, i32 2
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  %122 = call i64 @os_strcmp(i8* %116, i8* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %115, %108, %105, %99
  %125 = load i32*, i32** %4, align 8
  %126 = load i8*, i8** %11, align 8
  %127 = call i32* @wpas_dbus_error_invalid_args(i32* %125, i8* %126)
  store i32* %127, i32** %7, align 8
  br label %173

128:                                              ; preds = %115
  %129 = load i8*, i8** %19, align 8
  %130 = call i32 @strtoul(i8* %129, i32* null, i32 10)
  store i32 %130, i32* %15, align 4
  %131 = load i64, i64* @errno, align 8
  %132 = load i64, i64* @EINVAL, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %138

134:                                              ; preds = %128
  %135 = load i32*, i32** %4, align 8
  %136 = load i8*, i8** %11, align 8
  %137 = call i32* @wpas_dbus_error_invalid_args(i32* %135, i8* %136)
  store i32* %137, i32** %7, align 8
  br label %173

138:                                              ; preds = %128
  %139 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %140 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %15, align 4
  %143 = call %struct.wpa_ssid* @wpa_config_get_network(i32 %141, i32 %142)
  store %struct.wpa_ssid* %143, %struct.wpa_ssid** %17, align 8
  %144 = load %struct.wpa_ssid*, %struct.wpa_ssid** %17, align 8
  %145 = icmp eq %struct.wpa_ssid* %144, null
  br i1 %145, label %151, label %146

146:                                              ; preds = %138
  %147 = load %struct.wpa_ssid*, %struct.wpa_ssid** %17, align 8
  %148 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = icmp ne i32 %149, 2
  br i1 %150, label %151, label %152

151:                                              ; preds = %146, %138
  br label %181

152:                                              ; preds = %146
  %153 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %154 = load %struct.wpa_ssid*, %struct.wpa_ssid** %17, align 8
  %155 = call i64 @wpas_p2p_invite(%struct.wpa_supplicant* %153, i32* %23, %struct.wpa_ssid* %154, i32* null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  %156 = icmp slt i64 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %152
  %158 = load i32*, i32** %4, align 8
  %159 = call i32* @wpas_dbus_error_unknown_error(i32* %158, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  store i32* %159, i32** %7, align 8
  br label %173

160:                                              ; preds = %152
  br label %172

161:                                              ; preds = %91
  %162 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %163 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %164 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = call i64 @wpas_p2p_invite_group(%struct.wpa_supplicant* %162, i32 %165, i32* %23, i32* null)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %161
  %169 = load i32*, i32** %4, align 8
  %170 = call i32* @wpas_dbus_error_unknown_error(i32* %169, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  store i32* %170, i32** %7, align 8
  br label %173

171:                                              ; preds = %161
  br label %172

172:                                              ; preds = %171, %160
  br label %173

173:                                              ; preds = %181, %172, %168, %157, %134, %124
  %174 = load i8*, i8** %12, align 8
  %175 = call i32 @os_free(i8* %174)
  %176 = load i8*, i8** %11, align 8
  %177 = call i32 @os_free(i8* %176)
  %178 = load i8*, i8** %10, align 8
  %179 = call i32 @os_free(i8* %178)
  %180 = load i32*, i32** %7, align 8
  store i32* %180, i32** %3, align 8
  store i32 1, i32* %18, align 4
  br label %184

181:                                              ; preds = %151, %90, %74, %43, %35
  %182 = load i32*, i32** %4, align 8
  %183 = call i32* @wpas_dbus_error_invalid_args(i32* %182, i8* null)
  store i32* %183, i32** %7, align 8
  br label %173

184:                                              ; preds = %173, %28
  %185 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %185)
  %186 = load i32*, i32** %3, align 8
  ret i32* %186
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @wpa_dbus_p2p_check_enabled(%struct.wpa_supplicant*, i32*, i32**, i32*) #2

declare dso_local i32 @dbus_message_iter_init(i32*, i32*) #2

declare dso_local i32 @wpa_dbus_dict_open_read(i32*, i32*, i32*) #2

declare dso_local i64 @wpa_dbus_dict_has_dict_entry(i32*) #2

declare dso_local i32 @wpa_dbus_dict_get_entry(i32*, %struct.wpa_dbus_dict_entry*) #2

declare dso_local i64 @os_strcmp(i8*, i8*) #2

declare dso_local i8* @os_strdup(i32) #2

declare dso_local i32 @wpa_dbus_dict_entry_clear(%struct.wpa_dbus_dict_entry*) #2

declare dso_local i64 @parse_peer_object_path(i8*, i32*) #2

declare dso_local i32 @p2p_peer_known(i32, i32*) #2

declare dso_local i8* @wpas_dbus_new_decompose_object_path(i8*, i32, i8**) #2

declare dso_local i32* @wpas_dbus_error_invalid_args(i32*, i8*) #2

declare dso_local i32 @strtoul(i8*, i32*, i32) #2

declare dso_local %struct.wpa_ssid* @wpa_config_get_network(i32, i32) #2

declare dso_local i64 @wpas_p2p_invite(%struct.wpa_supplicant*, i32*, %struct.wpa_ssid*, i32*, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32* @wpas_dbus_error_unknown_error(i32*, i8*) #2

declare dso_local i64 @wpas_p2p_invite_group(%struct.wpa_supplicant*, i32, i32*, i32*) #2

declare dso_local i32 @os_free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

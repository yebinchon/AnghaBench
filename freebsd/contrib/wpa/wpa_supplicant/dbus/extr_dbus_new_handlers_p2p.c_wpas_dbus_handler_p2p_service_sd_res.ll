; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers_p2p.c_wpas_dbus_handler_p2p_service_sd_res.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers_p2p.c_wpas_dbus_handler_p2p_service_sd_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.wpa_dbus_dict_entry = type { i64, i32, i64, i32, i32, i32, i32 }
%struct.wpabuf = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"peer_object\00", align 1
@DBUS_TYPE_OBJECT_PATH = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"frequency\00", align 1
@DBUS_TYPE_INT32 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"dialog_token\00", align 1
@DBUS_TYPE_UINT32 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"tlvs\00", align 1
@DBUS_TYPE_ARRAY = common dso_local global i64 0, align 8
@DBUS_TYPE_BYTE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @wpas_dbus_handler_p2p_service_sd_res(i32* %0, %struct.wpa_supplicant* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wpa_dbus_dict_entry, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.wpabuf*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store %struct.wpa_supplicant* %1, %struct.wpa_supplicant** %4, align 8
  store i32* null, i32** %6, align 8
  store i8* null, i8** %9, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %15 = load i32, i32* @ETH_ALEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %13, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %14, align 8
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @dbus_message_iter_init(i32* %19, i32* %7)
  %21 = call i32 @wpa_dbus_dict_open_read(i32* %7, i32* %5, i32* null)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  br label %136

24:                                               ; preds = %2
  br label %25

25:                                               ; preds = %103, %24
  %26 = call i64 @wpa_dbus_dict_has_dict_entry(i32* %5)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %105

28:                                               ; preds = %25
  %29 = call i32 @wpa_dbus_dict_get_entry(i32* %5, %struct.wpa_dbus_dict_entry* %8)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  br label %136

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %8, i32 0, i32 5
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @os_strcmp(i32 %34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %8, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @DBUS_TYPE_OBJECT_PATH, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %8, i32 0, i32 6
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @os_strdup(i32 %44)
  store i8* %45, i8** %9, align 8
  br label %103

46:                                               ; preds = %37, %32
  %47 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %8, i32 0, i32 5
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @os_strcmp(i32 %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %8, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @DBUS_TYPE_INT32, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %8, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %11, align 4
  br label %102

59:                                               ; preds = %51, %46
  %60 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %8, i32 0, i32 5
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @os_strcmp(i32 %61, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %8, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @DBUS_TYPE_UINT32, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %74, label %69

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %8, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @DBUS_TYPE_INT32, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %69, %64
  %75 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %8, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  store i32 %76, i32* %12, align 4
  br label %101

77:                                               ; preds = %69, %59
  %78 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %8, i32 0, i32 5
  %79 = load i32, i32* %78, align 8
  %80 = call i64 @os_strcmp(i32 %79, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %99

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %8, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @DBUS_TYPE_ARRAY, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %92, label %87

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %8, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @DBUS_TYPE_BYTE, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %87, %82
  br label %134

93:                                               ; preds = %87
  %94 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %8, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %8, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = call %struct.wpabuf* @wpabuf_alloc_copy(i32 %95, i32 %97)
  store %struct.wpabuf* %98, %struct.wpabuf** %10, align 8
  br label %100

99:                                               ; preds = %77
  br label %134

100:                                              ; preds = %93
  br label %101

101:                                              ; preds = %100, %74
  br label %102

102:                                              ; preds = %101, %56
  br label %103

103:                                              ; preds = %102, %42
  %104 = call i32 @wpa_dbus_dict_entry_clear(%struct.wpa_dbus_dict_entry* %8)
  br label %25

105:                                              ; preds = %25
  %106 = load i8*, i8** %9, align 8
  %107 = call i64 @parse_peer_object_path(i8* %106, i32* %18)
  %108 = icmp slt i64 %107, 0
  br i1 %108, label %120, label %109

109:                                              ; preds = %105
  %110 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %111 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %110, i32 0, i32 0
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @p2p_peer_known(i32 %114, i32* %18)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %109
  %118 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %119 = icmp eq %struct.wpabuf* %118, null
  br i1 %119, label %120, label %121

120:                                              ; preds = %117, %109, %105
  br label %136

121:                                              ; preds = %117
  %122 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %123 = load i32, i32* %11, align 4
  %124 = load i32, i32* %12, align 4
  %125 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %126 = call i32 @wpas_p2p_sd_response(%struct.wpa_supplicant* %122, i32 %123, i32* %18, i32 %124, %struct.wpabuf* %125)
  %127 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %128 = call i32 @wpabuf_free(%struct.wpabuf* %127)
  br label %129

129:                                              ; preds = %136, %121
  %130 = load i8*, i8** %9, align 8
  %131 = call i32 @os_free(i8* %130)
  %132 = load i32*, i32** %6, align 8
  %133 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %133)
  ret i32* %132

134:                                              ; preds = %99, %92
  %135 = call i32 @wpa_dbus_dict_entry_clear(%struct.wpa_dbus_dict_entry* %8)
  br label %136

136:                                              ; preds = %134, %120, %31, %23
  %137 = load i32*, i32** %3, align 8
  %138 = call i32* @wpas_dbus_error_invalid_args(i32* %137, i32* null)
  store i32* %138, i32** %6, align 8
  br label %129
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

declare dso_local i64 @parse_peer_object_path(i8*, i32*) #2

declare dso_local i32 @p2p_peer_known(i32, i32*) #2

declare dso_local i32 @wpas_p2p_sd_response(%struct.wpa_supplicant*, i32, i32*, i32, %struct.wpabuf*) #2

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #2

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

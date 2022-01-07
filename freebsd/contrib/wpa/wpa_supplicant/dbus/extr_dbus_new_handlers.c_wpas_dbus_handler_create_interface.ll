; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers.c_wpas_dbus_handler_create_interface.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers.c_wpas_dbus_handler_create_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_global = type { i32 }
%struct.wpa_dbus_dict_entry = type { i64, i32, i32 }
%struct.wpa_supplicant = type { i8* }
%struct.wpa_interface = type { i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [7 x i8] c"Driver\00", align 1
@DBUS_TYPE_STRING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"Ifname\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"ConfigFile\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"BridgeIfname\00", align 1
@WPAS_DBUS_ERROR_IFACE_EXISTS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [48 x i8] c"wpa_supplicant already controls this interface.\00", align 1
@DBUS_TYPE_OBJECT_PATH = common dso_local global i32 0, align 4
@DBUS_TYPE_INVALID = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [45 x i8] c"wpa_supplicant couldn't grab this interface.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @wpas_dbus_handler_create_interface(i32* %0, %struct.wpa_global* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.wpa_global*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wpa_dbus_dict_entry, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.wpa_supplicant*, align 8
  %14 = alloca %struct.wpa_interface, align 8
  %15 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.wpa_global* %1, %struct.wpa_global** %4, align 8
  store i32* null, i32** %6, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @dbus_message_iter_init(i32* %16, i32* %7)
  %18 = call i32 @wpa_dbus_dict_open_read(i32* %7, i32* %5, i32* null)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  br label %176

21:                                               ; preds = %2
  br label %22

22:                                               ; preds = %118, %21
  %23 = call i64 @wpa_dbus_dict_has_dict_entry(i32* %5)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %119

25:                                               ; preds = %22
  %26 = call i32 @wpa_dbus_dict_get_entry(i32* %5, %struct.wpa_dbus_dict_entry* %8)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  br label %176

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %8, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @os_strcmp(i32 %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %8, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @DBUS_TYPE_STRING, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %34
  %40 = load i8*, i8** %9, align 8
  %41 = call i32 @os_free(i8* %40)
  %42 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %8, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i8* @os_strdup(i32 %43)
  store i8* %44, i8** %9, align 8
  %45 = call i32 @wpa_dbus_dict_entry_clear(%struct.wpa_dbus_dict_entry* %8)
  %46 = load i8*, i8** %9, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  br label %179

49:                                               ; preds = %39
  br label %118

50:                                               ; preds = %34, %29
  %51 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %8, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @os_strcmp(i32 %52, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %71

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %8, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @DBUS_TYPE_STRING, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %71

60:                                               ; preds = %55
  %61 = load i8*, i8** %10, align 8
  %62 = call i32 @os_free(i8* %61)
  %63 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %8, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i8* @os_strdup(i32 %64)
  store i8* %65, i8** %10, align 8
  %66 = call i32 @wpa_dbus_dict_entry_clear(%struct.wpa_dbus_dict_entry* %8)
  %67 = load i8*, i8** %10, align 8
  %68 = icmp eq i8* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %60
  br label %179

70:                                               ; preds = %60
  br label %117

71:                                               ; preds = %55, %50
  %72 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %8, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @os_strcmp(i32 %73, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %92

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %8, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @DBUS_TYPE_STRING, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %92

81:                                               ; preds = %76
  %82 = load i8*, i8** %11, align 8
  %83 = call i32 @os_free(i8* %82)
  %84 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %8, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i8* @os_strdup(i32 %85)
  store i8* %86, i8** %11, align 8
  %87 = call i32 @wpa_dbus_dict_entry_clear(%struct.wpa_dbus_dict_entry* %8)
  %88 = load i8*, i8** %11, align 8
  %89 = icmp eq i8* %88, null
  br i1 %89, label %90, label %91

90:                                               ; preds = %81
  br label %179

91:                                               ; preds = %81
  br label %116

92:                                               ; preds = %76, %71
  %93 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %8, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = call i64 @os_strcmp(i32 %94, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %113

97:                                               ; preds = %92
  %98 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %8, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @DBUS_TYPE_STRING, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %113

102:                                              ; preds = %97
  %103 = load i8*, i8** %12, align 8
  %104 = call i32 @os_free(i8* %103)
  %105 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %8, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = call i8* @os_strdup(i32 %106)
  store i8* %107, i8** %12, align 8
  %108 = call i32 @wpa_dbus_dict_entry_clear(%struct.wpa_dbus_dict_entry* %8)
  %109 = load i8*, i8** %12, align 8
  %110 = icmp eq i8* %109, null
  br i1 %110, label %111, label %112

111:                                              ; preds = %102
  br label %179

112:                                              ; preds = %102
  br label %115

113:                                              ; preds = %97, %92
  %114 = call i32 @wpa_dbus_dict_entry_clear(%struct.wpa_dbus_dict_entry* %8)
  br label %176

115:                                              ; preds = %112
  br label %116

116:                                              ; preds = %115, %91
  br label %117

117:                                              ; preds = %116, %70
  br label %118

118:                                              ; preds = %117, %49
  br label %22

119:                                              ; preds = %22
  %120 = load i8*, i8** %10, align 8
  %121 = icmp eq i8* %120, null
  br i1 %121, label %122, label %123

122:                                              ; preds = %119
  br label %176

123:                                              ; preds = %119
  %124 = load %struct.wpa_global*, %struct.wpa_global** %4, align 8
  %125 = load i8*, i8** %10, align 8
  %126 = call i32* @wpa_supplicant_get_iface(%struct.wpa_global* %124, i8* %125)
  %127 = icmp ne i32* %126, null
  br i1 %127, label %128, label %132

128:                                              ; preds = %123
  %129 = load i32*, i32** %3, align 8
  %130 = load i32, i32* @WPAS_DBUS_ERROR_IFACE_EXISTS, align 4
  %131 = call i32* @dbus_message_new_error(i32* %129, i32 %130, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  store i32* %131, i32** %6, align 8
  br label %165

132:                                              ; preds = %123
  %133 = call i32 @os_memset(%struct.wpa_interface* %14, i32 0, i32 32)
  %134 = load i8*, i8** %9, align 8
  %135 = getelementptr inbounds %struct.wpa_interface, %struct.wpa_interface* %14, i32 0, i32 0
  store i8* %134, i8** %135, align 8
  %136 = load i8*, i8** %10, align 8
  %137 = getelementptr inbounds %struct.wpa_interface, %struct.wpa_interface* %14, i32 0, i32 1
  store i8* %136, i8** %137, align 8
  %138 = load i8*, i8** %11, align 8
  %139 = getelementptr inbounds %struct.wpa_interface, %struct.wpa_interface* %14, i32 0, i32 2
  store i8* %138, i8** %139, align 8
  %140 = load i8*, i8** %12, align 8
  %141 = getelementptr inbounds %struct.wpa_interface, %struct.wpa_interface* %14, i32 0, i32 3
  store i8* %140, i8** %141, align 8
  %142 = load %struct.wpa_global*, %struct.wpa_global** %4, align 8
  %143 = call %struct.wpa_supplicant* @wpa_supplicant_add_iface(%struct.wpa_global* %142, %struct.wpa_interface* %14, i32* null)
  store %struct.wpa_supplicant* %143, %struct.wpa_supplicant** %13, align 8
  %144 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %13, align 8
  %145 = icmp ne %struct.wpa_supplicant* %144, null
  br i1 %145, label %146, label %161

146:                                              ; preds = %132
  %147 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %13, align 8
  %148 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %147, i32 0, i32 0
  %149 = load i8*, i8** %148, align 8
  %150 = icmp ne i8* %149, null
  br i1 %150, label %151, label %161

151:                                              ; preds = %146
  %152 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %13, align 8
  %153 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %152, i32 0, i32 0
  %154 = load i8*, i8** %153, align 8
  store i8* %154, i8** %15, align 8
  %155 = load i32*, i32** %3, align 8
  %156 = call i32* @dbus_message_new_method_return(i32* %155)
  store i32* %156, i32** %6, align 8
  %157 = load i32*, i32** %6, align 8
  %158 = load i32, i32* @DBUS_TYPE_OBJECT_PATH, align 4
  %159 = load i32, i32* @DBUS_TYPE_INVALID, align 4
  %160 = call i32 @dbus_message_append_args(i32* %157, i32 %158, i8** %15, i32 %159)
  br label %164

161:                                              ; preds = %146, %132
  %162 = load i32*, i32** %3, align 8
  %163 = call i32* @wpas_dbus_error_unknown_error(i32* %162, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0))
  store i32* %163, i32** %6, align 8
  br label %164

164:                                              ; preds = %161, %151
  br label %165

165:                                              ; preds = %164, %128
  br label %166

166:                                              ; preds = %179, %176, %165
  %167 = load i8*, i8** %9, align 8
  %168 = call i32 @os_free(i8* %167)
  %169 = load i8*, i8** %10, align 8
  %170 = call i32 @os_free(i8* %169)
  %171 = load i8*, i8** %11, align 8
  %172 = call i32 @os_free(i8* %171)
  %173 = load i8*, i8** %12, align 8
  %174 = call i32 @os_free(i8* %173)
  %175 = load i32*, i32** %6, align 8
  ret i32* %175

176:                                              ; preds = %122, %113, %28, %20
  %177 = load i32*, i32** %3, align 8
  %178 = call i32* @wpas_dbus_error_invalid_args(i32* %177, i32* null)
  store i32* %178, i32** %6, align 8
  br label %166

179:                                              ; preds = %111, %90, %69, %48
  %180 = load i32*, i32** %3, align 8
  %181 = call i32* @wpas_dbus_error_no_memory(i32* %180)
  store i32* %181, i32** %6, align 8
  br label %166
}

declare dso_local i32 @dbus_message_iter_init(i32*, i32*) #1

declare dso_local i32 @wpa_dbus_dict_open_read(i32*, i32*, i32*) #1

declare dso_local i64 @wpa_dbus_dict_has_dict_entry(i32*) #1

declare dso_local i32 @wpa_dbus_dict_get_entry(i32*, %struct.wpa_dbus_dict_entry*) #1

declare dso_local i64 @os_strcmp(i32, i8*) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local i8* @os_strdup(i32) #1

declare dso_local i32 @wpa_dbus_dict_entry_clear(%struct.wpa_dbus_dict_entry*) #1

declare dso_local i32* @wpa_supplicant_get_iface(%struct.wpa_global*, i8*) #1

declare dso_local i32* @dbus_message_new_error(i32*, i32, i8*) #1

declare dso_local i32 @os_memset(%struct.wpa_interface*, i32, i32) #1

declare dso_local %struct.wpa_supplicant* @wpa_supplicant_add_iface(%struct.wpa_global*, %struct.wpa_interface*, i32*) #1

declare dso_local i32* @dbus_message_new_method_return(i32*) #1

declare dso_local i32 @dbus_message_append_args(i32*, i32, i8**, i32) #1

declare dso_local i32* @wpas_dbus_error_unknown_error(i32*, i8*) #1

declare dso_local i32* @wpas_dbus_error_invalid_args(i32*, i32*) #1

declare dso_local i32* @wpas_dbus_error_no_memory(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

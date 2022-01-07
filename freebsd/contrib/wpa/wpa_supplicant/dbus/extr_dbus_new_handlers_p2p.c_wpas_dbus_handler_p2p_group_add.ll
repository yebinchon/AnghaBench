; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers_p2p.c_wpas_dbus_handler_p2p_group_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers_p2p.c_wpas_dbus_handler_p2p_group_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { %struct.wpa_supplicant* }
%struct.wpa_dbus_dict_entry = type { i8*, i64, i32, i32, i32 }
%struct.wpa_ssid = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"persistent\00", align 1
@DBUS_TYPE_BOOLEAN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"frequency\00", align 1
@DBUS_TYPE_INT32 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"persistent_group_object\00", align 1
@DBUS_TYPE_OBJECT_PATH = common dso_local global i64 0, align 8
@WPAS_DBUS_NEW_PERSISTENT_GROUPS_PART = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"Failed to reinvoke a persistent group\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @wpas_dbus_handler_p2p_group_add(i32* %0, %struct.wpa_supplicant* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wpa_dbus_dict_entry, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.wpa_ssid*, align 8
  %15 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.wpa_supplicant* %1, %struct.wpa_supplicant** %4, align 8
  store i32* null, i32** %6, align 8
  store i8* null, i8** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i8* null, i8** %12, align 8
  store i32 0, i32* %13, align 4
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @dbus_message_iter_init(i32* %16, i32* %7)
  %18 = call i32 @wpa_dbus_dict_open_read(i32* %7, i32* %5, i32* null)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  br label %166

21:                                               ; preds = %2
  br label %22

22:                                               ; preds = %76, %21
  %23 = call i64 @wpa_dbus_dict_has_dict_entry(i32* %5)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %78

25:                                               ; preds = %22
  %26 = call i32 @wpa_dbus_dict_get_entry(i32* %5, %struct.wpa_dbus_dict_entry* %8)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  br label %166

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %8, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i64 @os_strcmp(i8* %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %8, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @DBUS_TYPE_BOOLEAN, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %8, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %10, align 4
  br label %76

42:                                               ; preds = %34, %29
  %43 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %8, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i64 @os_strcmp(i8* %44, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %8, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @DBUS_TYPE_INT32, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %8, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp sle i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %164

58:                                               ; preds = %52
  br label %75

59:                                               ; preds = %47, %42
  %60 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %8, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i64 @os_strcmp(i8* %61, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %8, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @DBUS_TYPE_OBJECT_PATH, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %8, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = call i8* @os_strdup(i32 %71)
  store i8* %72, i8** %9, align 8
  br label %74

73:                                               ; preds = %64, %59
  br label %164

74:                                               ; preds = %69
  br label %75

75:                                               ; preds = %74, %58
  br label %76

76:                                               ; preds = %75, %39
  %77 = call i32 @wpa_dbus_dict_entry_clear(%struct.wpa_dbus_dict_entry* %8)
  br label %22

78:                                               ; preds = %22
  %79 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %80 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %79, i32 0, i32 2
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %82, align 8
  store %struct.wpa_supplicant* %83, %struct.wpa_supplicant** %4, align 8
  %84 = load i8*, i8** %9, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %149

86:                                               ; preds = %78
  %87 = load i8*, i8** %9, align 8
  %88 = load i32, i32* @WPAS_DBUS_NEW_PERSISTENT_GROUPS_PART, align 4
  %89 = call i8* @wpas_dbus_new_decompose_object_path(i8* %87, i32 %88, i8** %15)
  store i8* %89, i8** %12, align 8
  %90 = load i8*, i8** %12, align 8
  %91 = icmp eq i8* %90, null
  br i1 %91, label %111, label %92

92:                                               ; preds = %86
  %93 = load i8*, i8** %15, align 8
  %94 = icmp eq i8* %93, null
  br i1 %94, label %111, label %95

95:                                               ; preds = %92
  %96 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %97 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %96, i32 0, i32 1
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %111

102:                                              ; preds = %95
  %103 = load i8*, i8** %12, align 8
  %104 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %105 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %104, i32 0, i32 1
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = call i64 @os_strcmp(i8* %103, i8* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %102, %95, %92, %86
  %112 = load i32*, i32** %3, align 8
  %113 = load i8*, i8** %9, align 8
  %114 = call i32* @wpas_dbus_error_invalid_args(i32* %112, i8* %113)
  store i32* %114, i32** %6, align 8
  br label %158

115:                                              ; preds = %102
  %116 = load i8*, i8** %15, align 8
  %117 = call i32 @strtoul(i8* %116, i32* null, i32 10)
  store i32 %117, i32* %13, align 4
  %118 = load i64, i64* @errno, align 8
  %119 = load i64, i64* @EINVAL, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %115
  %122 = load i32*, i32** %3, align 8
  %123 = load i8*, i8** %9, align 8
  %124 = call i32* @wpas_dbus_error_invalid_args(i32* %122, i8* %123)
  store i32* %124, i32** %6, align 8
  br label %158

125:                                              ; preds = %115
  %126 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %127 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* %13, align 4
  %130 = call %struct.wpa_ssid* @wpa_config_get_network(i32 %128, i32 %129)
  store %struct.wpa_ssid* %130, %struct.wpa_ssid** %14, align 8
  %131 = load %struct.wpa_ssid*, %struct.wpa_ssid** %14, align 8
  %132 = icmp eq %struct.wpa_ssid* %131, null
  br i1 %132, label %138, label %133

133:                                              ; preds = %125
  %134 = load %struct.wpa_ssid*, %struct.wpa_ssid** %14, align 8
  %135 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = icmp ne i32 %136, 2
  br i1 %137, label %138, label %139

138:                                              ; preds = %133, %125
  br label %166

139:                                              ; preds = %133
  %140 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %141 = load %struct.wpa_ssid*, %struct.wpa_ssid** %14, align 8
  %142 = load i32, i32* %11, align 4
  %143 = call i64 @wpas_p2p_group_add_persistent(%struct.wpa_supplicant* %140, %struct.wpa_ssid* %141, i32 0, i32 %142, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32* null, i32 0, i32 0)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %139
  %146 = load i32*, i32** %3, align 8
  %147 = call i32* @wpas_dbus_error_unknown_error(i32* %146, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  store i32* %147, i32** %6, align 8
  br label %158

148:                                              ; preds = %139
  br label %157

149:                                              ; preds = %78
  %150 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %151 = load i32, i32* %10, align 4
  %152 = load i32, i32* %11, align 4
  %153 = call i64 @wpas_p2p_group_add(%struct.wpa_supplicant* %150, i32 %151, i32 %152, i32 0, i32 0, i32 0, i32 0, i32 0)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %149
  br label %166

156:                                              ; preds = %149
  br label %157

157:                                              ; preds = %156, %148
  br label %158

158:                                              ; preds = %166, %157, %145, %121, %111
  %159 = load i8*, i8** %9, align 8
  %160 = call i32 @os_free(i8* %159)
  %161 = load i8*, i8** %12, align 8
  %162 = call i32 @os_free(i8* %161)
  %163 = load i32*, i32** %6, align 8
  ret i32* %163

164:                                              ; preds = %73, %57
  %165 = call i32 @wpa_dbus_dict_entry_clear(%struct.wpa_dbus_dict_entry* %8)
  br label %166

166:                                              ; preds = %164, %155, %138, %28, %20
  %167 = load i32*, i32** %3, align 8
  %168 = call i32* @wpas_dbus_error_invalid_args(i32* %167, i8* null)
  store i32* %168, i32** %6, align 8
  br label %158
}

declare dso_local i32 @dbus_message_iter_init(i32*, i32*) #1

declare dso_local i32 @wpa_dbus_dict_open_read(i32*, i32*, i32*) #1

declare dso_local i64 @wpa_dbus_dict_has_dict_entry(i32*) #1

declare dso_local i32 @wpa_dbus_dict_get_entry(i32*, %struct.wpa_dbus_dict_entry*) #1

declare dso_local i64 @os_strcmp(i8*, i8*) #1

declare dso_local i8* @os_strdup(i32) #1

declare dso_local i32 @wpa_dbus_dict_entry_clear(%struct.wpa_dbus_dict_entry*) #1

declare dso_local i8* @wpas_dbus_new_decompose_object_path(i8*, i32, i8**) #1

declare dso_local i32* @wpas_dbus_error_invalid_args(i32*, i8*) #1

declare dso_local i32 @strtoul(i8*, i32*, i32) #1

declare dso_local %struct.wpa_ssid* @wpa_config_get_network(i32, i32) #1

declare dso_local i64 @wpas_p2p_group_add_persistent(%struct.wpa_supplicant*, %struct.wpa_ssid*, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32* @wpas_dbus_error_unknown_error(i32*, i8*) #1

declare dso_local i64 @wpas_p2p_group_add(%struct.wpa_supplicant*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @os_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

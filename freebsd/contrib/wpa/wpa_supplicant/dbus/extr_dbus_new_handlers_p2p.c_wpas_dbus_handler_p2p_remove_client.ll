; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers_p2p.c_wpas_dbus_handler_p2p_remove_client.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers_p2p.c_wpas_dbus_handler_p2p_remove_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.wpa_dbus_dict_entry = type { i64, i32, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"peer\00", align 1
@DBUS_TYPE_OBJECT_PATH = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"iface\00", align 1
@DBUS_TYPE_STRING = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"Invalid address format\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @wpas_dbus_handler_p2p_remove_client(i32* %0, %struct.wpa_supplicant* %1) #0 {
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
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.wpa_supplicant* %1, %struct.wpa_supplicant** %5, align 8
  store i32* null, i32** %7, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  %15 = load i32, i32* @ETH_ALEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %12, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %13, align 8
  %19 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @wpa_dbus_p2p_check_enabled(%struct.wpa_supplicant* %19, i32* %20, i32** %7, i32* null)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %2
  %24 = load i32*, i32** %7, align 8
  store i32* %24, i32** %3, align 8
  store i32 1, i32* %14, align 4
  br label %121

25:                                               ; preds = %2
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @dbus_message_iter_init(i32* %26, i32* %8)
  %28 = call i32 @wpa_dbus_dict_open_read(i32* %8, i32* %6, i32* null)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  br label %118

31:                                               ; preds = %25
  br label %32

32:                                               ; preds = %76, %31
  %33 = call i64 @wpa_dbus_dict_has_dict_entry(i32* %6)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %77

35:                                               ; preds = %32
  %36 = call i32 @wpa_dbus_dict_get_entry(i32* %6, %struct.wpa_dbus_dict_entry* %9)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  br label %118

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %9, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @os_strcmp(i32 %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %9, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @DBUS_TYPE_OBJECT_PATH, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %44
  %50 = load i8*, i8** %10, align 8
  %51 = call i32 @os_free(i8* %50)
  %52 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %9, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i8* @os_strdup(i32 %53)
  store i8* %54, i8** %10, align 8
  %55 = call i32 @wpa_dbus_dict_entry_clear(%struct.wpa_dbus_dict_entry* %9)
  br label %76

56:                                               ; preds = %44, %39
  %57 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %9, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @os_strcmp(i32 %58, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %9, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @DBUS_TYPE_STRING, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %61
  %67 = load i8*, i8** %11, align 8
  %68 = call i32 @os_free(i8* %67)
  %69 = getelementptr inbounds %struct.wpa_dbus_dict_entry, %struct.wpa_dbus_dict_entry* %9, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i8* @os_strdup(i32 %70)
  store i8* %71, i8** %11, align 8
  %72 = call i32 @wpa_dbus_dict_entry_clear(%struct.wpa_dbus_dict_entry* %9)
  br label %75

73:                                               ; preds = %61, %56
  %74 = call i32 @wpa_dbus_dict_entry_clear(%struct.wpa_dbus_dict_entry* %9)
  br label %118

75:                                               ; preds = %66
  br label %76

76:                                               ; preds = %75, %49
  br label %32

77:                                               ; preds = %32
  %78 = load i8*, i8** %10, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %77
  %81 = load i8*, i8** %11, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %105

83:                                               ; preds = %80, %77
  %84 = load i8*, i8** %10, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %98

86:                                               ; preds = %83
  %87 = load i8*, i8** %10, align 8
  %88 = call i64 @parse_peer_object_path(i8* %87, i32* %18)
  %89 = icmp slt i64 %88, 0
  br i1 %89, label %105, label %90

90:                                               ; preds = %86
  %91 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %92 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %91, i32 0, i32 0
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @p2p_peer_known(i32 %95, i32* %18)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %90, %83
  %99 = load i8*, i8** %11, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %106

101:                                              ; preds = %98
  %102 = load i8*, i8** %11, align 8
  %103 = call i64 @hwaddr_aton(i8* %102, i32* %18)
  %104 = icmp slt i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %101, %90, %86, %80
  br label %118

106:                                              ; preds = %101, %98
  %107 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %108 = load i8*, i8** %11, align 8
  %109 = icmp ne i8* %108, null
  %110 = zext i1 %109 to i32
  %111 = call i32 @wpas_p2p_remove_client(%struct.wpa_supplicant* %107, i32* %18, i32 %110)
  store i32* null, i32** %7, align 8
  br label %112

112:                                              ; preds = %118, %106
  %113 = load i8*, i8** %10, align 8
  %114 = call i32 @os_free(i8* %113)
  %115 = load i8*, i8** %11, align 8
  %116 = call i32 @os_free(i8* %115)
  %117 = load i32*, i32** %7, align 8
  store i32* %117, i32** %3, align 8
  store i32 1, i32* %14, align 4
  br label %121

118:                                              ; preds = %105, %73, %38, %30
  %119 = load i32*, i32** %4, align 8
  %120 = call i32* @wpas_dbus_error_invalid_args(i32* %119, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  store i32* %120, i32** %7, align 8
  br label %112

121:                                              ; preds = %112, %23
  %122 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %122)
  %123 = load i32*, i32** %3, align 8
  ret i32* %123
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @wpa_dbus_p2p_check_enabled(%struct.wpa_supplicant*, i32*, i32**, i32*) #2

declare dso_local i32 @dbus_message_iter_init(i32*, i32*) #2

declare dso_local i32 @wpa_dbus_dict_open_read(i32*, i32*, i32*) #2

declare dso_local i64 @wpa_dbus_dict_has_dict_entry(i32*) #2

declare dso_local i32 @wpa_dbus_dict_get_entry(i32*, %struct.wpa_dbus_dict_entry*) #2

declare dso_local i64 @os_strcmp(i32, i8*) #2

declare dso_local i32 @os_free(i8*) #2

declare dso_local i8* @os_strdup(i32) #2

declare dso_local i32 @wpa_dbus_dict_entry_clear(%struct.wpa_dbus_dict_entry*) #2

declare dso_local i64 @parse_peer_object_path(i8*, i32*) #2

declare dso_local i32 @p2p_peer_known(i32, i32*) #2

declare dso_local i64 @hwaddr_aton(i8*, i32*) #2

declare dso_local i32 @wpas_p2p_remove_client(%struct.wpa_supplicant*, i32*, i32) #2

declare dso_local i32* @wpas_dbus_error_invalid_args(i32*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

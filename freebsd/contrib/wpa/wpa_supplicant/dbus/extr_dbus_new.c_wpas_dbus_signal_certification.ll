; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new.c_wpas_dbus_signal_certification.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new.c_wpas_dbus_signal_certification.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.wpas_dbus_priv* }
%struct.wpas_dbus_priv = type { i32 }
%struct.wpabuf = type { i32 }

@WPAS_DBUS_NEW_IFACE_INTERFACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Certification\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"depth\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"subject\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"altsubject\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"cert_hash\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"cert\00", align 1
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"dbus: Failed to construct signal\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpas_dbus_signal_certification(%struct.wpa_supplicant* %0, i32 %1, i8* %2, i8** %3, i32 %4, i8* %5, %struct.wpabuf* %6) #0 {
  %8 = alloca %struct.wpa_supplicant*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.wpabuf*, align 8
  %15 = alloca %struct.wpas_dbus_priv*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i8** %3, i8*** %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store %struct.wpabuf* %6, %struct.wpabuf** %14, align 8
  %19 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %20 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.wpas_dbus_priv*, %struct.wpas_dbus_priv** %22, align 8
  store %struct.wpas_dbus_priv* %23, %struct.wpas_dbus_priv** %15, align 8
  %24 = load %struct.wpas_dbus_priv*, %struct.wpas_dbus_priv** %15, align 8
  %25 = icmp eq %struct.wpas_dbus_priv* %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %7
  %27 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %28 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26, %7
  br label %97

32:                                               ; preds = %26
  %33 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %34 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @WPAS_DBUS_NEW_IFACE_INTERFACE, align 4
  %37 = call i32* @dbus_message_new_signal(i32 %35, i32 %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32* %37, i32** %16, align 8
  %38 = load i32*, i32** %16, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %97

41:                                               ; preds = %32
  %42 = load i32*, i32** %16, align 8
  %43 = call i32 @dbus_message_iter_init_append(i32* %42, i32* %17)
  %44 = call i32 @wpa_dbus_dict_open_write(i32* %17, i32* %18)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %85

46:                                               ; preds = %41
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @wpa_dbus_dict_append_uint32(i32* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %85

50:                                               ; preds = %46
  %51 = load i8*, i8** %10, align 8
  %52 = call i32 @wpa_dbus_dict_append_string(i32* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %85

54:                                               ; preds = %50
  %55 = load i8**, i8*** %11, align 8
  %56 = icmp ne i8** %55, null
  br i1 %56, label %57, label %65

57:                                               ; preds = %54
  %58 = load i32, i32* %12, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = load i8**, i8*** %11, align 8
  %62 = load i32, i32* %12, align 4
  %63 = call i32 @wpa_dbus_dict_append_string_array(i32* %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8** %61, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %85

65:                                               ; preds = %60, %57, %54
  %66 = load i8*, i8** %13, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load i8*, i8** %13, align 8
  %70 = call i32 @wpa_dbus_dict_append_string(i32* %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %85

72:                                               ; preds = %68, %65
  %73 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %74 = icmp ne %struct.wpabuf* %73, null
  br i1 %74, label %75, label %82

75:                                               ; preds = %72
  %76 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %77 = call i32 @wpabuf_head(%struct.wpabuf* %76)
  %78 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %79 = call i32 @wpabuf_len(%struct.wpabuf* %78)
  %80 = call i32 @wpa_dbus_dict_append_byte_array(i32* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %77, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %75, %72
  %83 = call i32 @wpa_dbus_dict_close_write(i32* %17, i32* %18)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %82, %75, %68, %60, %50, %46, %41
  %86 = load i32, i32* @MSG_ERROR, align 4
  %87 = call i32 @wpa_printf(i32 %86, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  br label %94

88:                                               ; preds = %82
  %89 = load %struct.wpas_dbus_priv*, %struct.wpas_dbus_priv** %15, align 8
  %90 = getelementptr inbounds %struct.wpas_dbus_priv, %struct.wpas_dbus_priv* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32*, i32** %16, align 8
  %93 = call i32 @dbus_connection_send(i32 %91, i32* %92, i32* null)
  br label %94

94:                                               ; preds = %88, %85
  %95 = load i32*, i32** %16, align 8
  %96 = call i32 @dbus_message_unref(i32* %95)
  br label %97

97:                                               ; preds = %94, %40, %31
  ret void
}

declare dso_local i32* @dbus_message_new_signal(i32, i32, i8*) #1

declare dso_local i32 @dbus_message_iter_init_append(i32*, i32*) #1

declare dso_local i32 @wpa_dbus_dict_open_write(i32*, i32*) #1

declare dso_local i32 @wpa_dbus_dict_append_uint32(i32*, i8*, i32) #1

declare dso_local i32 @wpa_dbus_dict_append_string(i32*, i8*, i8*) #1

declare dso_local i32 @wpa_dbus_dict_append_string_array(i32*, i8*, i8**, i32) #1

declare dso_local i32 @wpa_dbus_dict_append_byte_array(i32*, i8*, i32, i32) #1

declare dso_local i32 @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @wpa_dbus_dict_close_write(i32*, i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @dbus_connection_send(i32, i32*, i32*) #1

declare dso_local i32 @dbus_message_unref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

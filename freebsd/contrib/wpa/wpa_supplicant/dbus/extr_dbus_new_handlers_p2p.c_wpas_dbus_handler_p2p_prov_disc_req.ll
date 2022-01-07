; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers_p2p.c_wpas_dbus_handler_p2p_prov_disc_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers_p2p.c_wpas_dbus_handler_p2p_prov_disc_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.wpa_supplicant* }

@ETH_ALEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"display\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"keypad\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"pbc\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"pushbutton\00", align 1
@WPAS_P2P_PD_FOR_GO_NEG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"Failed to send provision discovery request\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @wpas_dbus_handler_p2p_prov_disc_req(i32* %0, %struct.wpa_supplicant* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.wpa_supplicant*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.wpa_supplicant* %1, %struct.wpa_supplicant** %5, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  %12 = load i32, i32* @ETH_ALEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %9, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %10, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @dbus_message_iter_init(i32* %16, i32* %6)
  %18 = call i32 @dbus_message_iter_get_basic(i32* %6, i8** %7)
  %19 = load i8*, i8** %7, align 8
  %20 = call i64 @parse_peer_object_path(i8* %19, i32* %15)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32*, i32** %4, align 8
  %24 = call i32* @wpas_dbus_error_invalid_args(i32* %23, i32* null)
  store i32* %24, i32** %3, align 8
  store i32 1, i32* %11, align 4
  br label %61

25:                                               ; preds = %2
  %26 = call i32 @dbus_message_iter_next(i32* %6)
  %27 = call i32 @dbus_message_iter_get_basic(i32* %6, i8** %8)
  %28 = load i8*, i8** %8, align 8
  %29 = call i64 @os_strcmp(i8* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %25
  %32 = load i8*, i8** %8, align 8
  %33 = call i64 @os_strcmp(i8* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %31
  %36 = load i8*, i8** %8, align 8
  %37 = call i64 @os_strcmp(i8* %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %35
  %40 = load i8*, i8** %8, align 8
  %41 = call i64 @os_strcmp(i8* %40, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i32*, i32** %4, align 8
  %45 = call i32* @wpas_dbus_error_invalid_args(i32* %44, i32* null)
  store i32* %45, i32** %3, align 8
  store i32 1, i32* %11, align 4
  br label %61

46:                                               ; preds = %39, %35, %31, %25
  %47 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %48 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %50, align 8
  store %struct.wpa_supplicant* %51, %struct.wpa_supplicant** %5, align 8
  %52 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = load i32, i32* @WPAS_P2P_PD_FOR_GO_NEG, align 4
  %55 = call i64 @wpas_p2p_prov_disc(%struct.wpa_supplicant* %52, i32* %15, i8* %53, i32 %54, i32* null)
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %46
  %58 = load i32*, i32** %4, align 8
  %59 = call i32* @wpas_dbus_error_unknown_error(i32* %58, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  store i32* %59, i32** %3, align 8
  store i32 1, i32* %11, align 4
  br label %61

60:                                               ; preds = %46
  store i32* null, i32** %3, align 8
  store i32 1, i32* %11, align 4
  br label %61

61:                                               ; preds = %60, %57, %43, %22
  %62 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %62)
  %63 = load i32*, i32** %3, align 8
  ret i32* %63
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dbus_message_iter_init(i32*, i32*) #2

declare dso_local i32 @dbus_message_iter_get_basic(i32*, i8**) #2

declare dso_local i64 @parse_peer_object_path(i8*, i32*) #2

declare dso_local i32* @wpas_dbus_error_invalid_args(i32*, i32*) #2

declare dso_local i32 @dbus_message_iter_next(i32*) #2

declare dso_local i64 @os_strcmp(i8*, i8*) #2

declare dso_local i64 @wpas_p2p_prov_disc(%struct.wpa_supplicant*, i32*, i8*, i32, i32*) #2

declare dso_local i32* @wpas_dbus_error_unknown_error(i32*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

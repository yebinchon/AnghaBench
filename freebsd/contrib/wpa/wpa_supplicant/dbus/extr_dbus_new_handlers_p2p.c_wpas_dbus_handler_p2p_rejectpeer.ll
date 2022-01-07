; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers_p2p.c_wpas_dbus_handler_p2p_rejectpeer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers_p2p.c_wpas_dbus_handler_p2p_rejectpeer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.wpa_supplicant* }

@ETH_ALEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Failed to call wpas_p2p_reject method.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @wpas_dbus_handler_p2p_rejectpeer(i32* %0, %struct.wpa_supplicant* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.wpa_supplicant*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.wpa_supplicant* %1, %struct.wpa_supplicant** %5, align 8
  store i8* null, i8** %7, align 8
  %11 = load i32, i32* @ETH_ALEN, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %8, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %9, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @dbus_message_iter_init(i32* %15, i32* %6)
  %17 = call i32 @dbus_message_iter_get_basic(i32* %6, i8** %7)
  %18 = load i8*, i8** %7, align 8
  %19 = call i64 @parse_peer_object_path(i8* %18, i32* %14)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32*, i32** %4, align 8
  %23 = call i32* @wpas_dbus_error_invalid_args(i32* %22, i32* null)
  store i32* %23, i32** %3, align 8
  store i32 1, i32* %10, align 4
  br label %37

24:                                               ; preds = %2
  %25 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %26 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %28, align 8
  store %struct.wpa_supplicant* %29, %struct.wpa_supplicant** %5, align 8
  %30 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %31 = call i64 @wpas_p2p_reject(%struct.wpa_supplicant* %30, i32* %14)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %24
  %34 = load i32*, i32** %4, align 8
  %35 = call i32* @wpas_dbus_error_unknown_error(i32* %34, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32* %35, i32** %3, align 8
  store i32 1, i32* %10, align 4
  br label %37

36:                                               ; preds = %24
  store i32* null, i32** %3, align 8
  store i32 1, i32* %10, align 4
  br label %37

37:                                               ; preds = %36, %33, %21
  %38 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %38)
  %39 = load i32*, i32** %3, align 8
  ret i32* %39
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dbus_message_iter_init(i32*, i32*) #2

declare dso_local i32 @dbus_message_iter_get_basic(i32*, i8**) #2

declare dso_local i64 @parse_peer_object_path(i8*, i32*) #2

declare dso_local i32* @wpas_dbus_error_invalid_args(i32*, i32*) #2

declare dso_local i64 @wpas_p2p_reject(%struct.wpa_supplicant*, i32*) #2

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

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_send_action.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_send_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [87 x i8] c"P2P: Schedule new radio work for Action frame TX (listen_freq=%d send_freq=%d freq=%u)\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"P2P: Use ongoing radio work for Action frame TX\00", align 1
@wpas_p2p_send_action_tx_status = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32*, i32*, i32*, i32*, i64, i32, i32*)* @wpas_send_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpas_send_action(i8* %0, i32 %1, i32* %2, i32* %3, i32* %4, i32* %5, i64 %6, i32 %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca %struct.wpa_supplicant*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i8* %0, i8** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32* %2, i32** %13, align 8
  store i32* %3, i32** %14, align 8
  store i32* %4, i32** %15, align 8
  store i32* %5, i32** %16, align 8
  store i64 %6, i64* %17, align 8
  store i32 %7, i32* %18, align 4
  store i32* %8, i32** %19, align 8
  %24 = load i8*, i8** %11, align 8
  %25 = bitcast i8* %24 to %struct.wpa_supplicant*
  store %struct.wpa_supplicant* %25, %struct.wpa_supplicant** %20, align 8
  store i32 -1, i32* %21, align 4
  store i32 -1, i32* %22, align 4
  %26 = load i32*, i32** %19, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %9
  %29 = load i32*, i32** %19, align 8
  store i32 0, i32* %29, align 4
  br label %30

30:                                               ; preds = %28, %9
  %31 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %20, align 8
  %32 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %31, i32 0, i32 1
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = icmp ne %struct.TYPE_3__* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %20, align 8
  %37 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %36, i32 0, i32 1
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %21, align 4
  br label %41

41:                                               ; preds = %35, %30
  %42 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %20, align 8
  %43 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = icmp ne %struct.TYPE_4__* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %20, align 8
  %48 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %22, align 4
  br label %52

52:                                               ; preds = %46, %41
  %53 = load i32, i32* %21, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %84

56:                                               ; preds = %52
  %57 = load i32, i32* %22, align 4
  %58 = load i32, i32* %12, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %84

60:                                               ; preds = %56
  %61 = load i32, i32* @MSG_DEBUG, align 4
  %62 = load i32, i32* %21, align 4
  %63 = load i32, i32* %22, align 4
  %64 = load i32, i32* %12, align 4
  %65 = call i32 (i32, i8*, ...) @wpa_printf(i32 %61, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %63, i32 %64)
  %66 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %20, align 8
  %67 = load i32, i32* %12, align 4
  %68 = load i32*, i32** %13, align 8
  %69 = load i32*, i32** %14, align 8
  %70 = load i32*, i32** %15, align 8
  %71 = load i32*, i32** %16, align 8
  %72 = load i64, i64* %17, align 8
  %73 = load i32, i32* %18, align 4
  %74 = call i32 @wpas_send_action_work(%struct.wpa_supplicant* %66, i32 %67, i32* %68, i32* %69, i32* %70, i32* %71, i64 %72, i32 %73)
  store i32 %74, i32* %23, align 4
  %75 = load i32, i32* %23, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %60
  %78 = load i32*, i32** %19, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = load i32*, i32** %19, align 8
  store i32 1, i32* %81, align 4
  br label %82

82:                                               ; preds = %80, %77, %60
  %83 = load i32, i32* %23, align 4
  store i32 %83, i32* %10, align 4
  br label %97

84:                                               ; preds = %56, %52
  %85 = load i32, i32* @MSG_DEBUG, align 4
  %86 = call i32 (i32, i8*, ...) @wpa_printf(i32 %85, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %87 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %20, align 8
  %88 = load i32, i32* %12, align 4
  %89 = load i32*, i32** %13, align 8
  %90 = load i32*, i32** %14, align 8
  %91 = load i32*, i32** %15, align 8
  %92 = load i32*, i32** %16, align 8
  %93 = load i64, i64* %17, align 8
  %94 = load i32, i32* %18, align 4
  %95 = load i32, i32* @wpas_p2p_send_action_tx_status, align 4
  %96 = call i32 @offchannel_send_action(%struct.wpa_supplicant* %87, i32 %88, i32* %89, i32* %90, i32* %91, i32* %92, i64 %93, i32 %94, i32 %95, i32 1)
  store i32 %96, i32* %10, align 4
  br label %97

97:                                               ; preds = %84, %82
  %98 = load i32, i32* %10, align 4
  ret i32 %98
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @wpas_send_action_work(%struct.wpa_supplicant*, i32, i32*, i32*, i32*, i32*, i64, i32) #1

declare dso_local i32 @offchannel_send_action(%struct.wpa_supplicant*, i32, i32*, i32*, i32*, i32*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

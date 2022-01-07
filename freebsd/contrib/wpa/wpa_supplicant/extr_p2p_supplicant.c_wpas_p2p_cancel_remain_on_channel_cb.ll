; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_cancel_remain_on_channel_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_cancel_remain_on_channel_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, i64 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [84 x i8] c"P2P: Cancel remain-on-channel callback (p2p_long_listen=%d ms pending_action_tx=%p)\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"P2P: Continuing long Listen state\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpas_p2p_cancel_remain_on_channel_cb(%struct.wpa_supplicant* %0, i32 %1) #0 {
  %3 = alloca %struct.wpa_supplicant*, align 8
  %4 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @MSG_DEBUG, align 4
  %6 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %7 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %10 = call i64 @offchannel_pending_action_tx(%struct.wpa_supplicant* %9)
  %11 = call i32 (i32, i8*, ...) @wpa_printf(i32 %5, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0), i64 %8, i64 %10)
  %12 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %13 = call i32 @wpas_p2p_listen_work_done(%struct.wpa_supplicant* %12)
  %14 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %15 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %2
  %21 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %22 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %20, %2
  br label %76

28:                                               ; preds = %20
  %29 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %30 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp sgt i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %35 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %38 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = sub nsw i64 %39, %36
  store i64 %40, i64* %38, align 8
  br label %41

41:                                               ; preds = %33, %28
  %42 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %43 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %42, i32 0, i32 2
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = call i64 @p2p_listen_end(i32* %46, i32 %47)
  %49 = icmp sgt i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  br label %76

51:                                               ; preds = %41
  %52 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %53 = call i64 @offchannel_pending_action_tx(%struct.wpa_supplicant* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  br label %76

56:                                               ; preds = %51
  %57 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %58 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp sgt i64 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %56
  %62 = load i32, i32* @MSG_DEBUG, align 4
  %63 = call i32 (i32, i8*, ...) @wpa_printf(i32 %62, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %64 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %65 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %66 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @wpas_p2p_listen_start(%struct.wpa_supplicant* %64, i64 %67)
  br label %76

69:                                               ; preds = %56
  %70 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %71 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %70, i32 0, i32 2
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @p2p_stop_listen(i32* %74)
  br label %76

76:                                               ; preds = %27, %50, %55, %69, %61
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @offchannel_pending_action_tx(%struct.wpa_supplicant*) #1

declare dso_local i32 @wpas_p2p_listen_work_done(%struct.wpa_supplicant*) #1

declare dso_local i64 @p2p_listen_end(i32*, i32) #1

declare dso_local i32 @wpas_p2p_listen_start(%struct.wpa_supplicant*, i64) #1

declare dso_local i32 @p2p_stop_listen(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

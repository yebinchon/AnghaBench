; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_remain_on_channel_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_remain_on_channel_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i64, i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32*, i64 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [121 x i8] c"P2P: remain-on-channel callback (off_channel_freq=%u pending_listen_freq=%d roc_waiting_drv_freq=%d freq=%u duration=%u)\00", align 1
@.str.1 = private unnamed_addr constant [104 x i8] c"P2P: Ignore remain-on-channel callback (off_channel_freq=%u pending_listen_freq=%d freq=%u duration=%u)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpas_p2p_remain_on_channel_cb(%struct.wpa_supplicant* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %8 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %7, i32 0, i32 3
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %3
  %14 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %15 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %14, i32 0, i32 3
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %13, %3
  br label %73

21:                                               ; preds = %13
  %22 = load i32, i32* @MSG_DEBUG, align 4
  %23 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %24 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %27 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %30 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 (i32, i8*, i64, i64, i32, i32, ...) @wpa_printf(i32 %22, i8* getelementptr inbounds ([121 x i8], [121 x i8]* @.str, i64 0, i64 0), i64 %25, i64 %28, i32 %31, i32 %32, i32 %33)
  %35 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %36 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %62

39:                                               ; preds = %21
  %40 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %41 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %44 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %42, %45
  br i1 %46, label %47, label %62

47:                                               ; preds = %39
  %48 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %49 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %48, i32 0, i32 3
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %54 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %57 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @p2p_listen_cb(i32* %52, i64 %55, i32 %58)
  %60 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %61 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %60, i32 0, i32 1
  store i64 0, i64* %61, align 8
  br label %73

62:                                               ; preds = %39, %21
  %63 = load i32, i32* @MSG_DEBUG, align 4
  %64 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %65 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %68 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* %6, align 4
  %72 = call i32 (i32, i8*, i64, i64, i32, i32, ...) @wpa_printf(i32 %63, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.1, i64 0, i64 0), i64 %66, i64 %69, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %20, %62, %47
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, i64, i64, i32, i32, ...) #1

declare dso_local i32 @p2p_listen_cb(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_group_idle_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_group_idle_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"P2P: Ignore group idle timeout - disabled\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"P2P: Group idle timeout reached - terminate group\00", align 1
@P2P_GROUP_REMOVAL_IDLE_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @wpas_p2p_group_idle_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpas_p2p_group_idle_timeout(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wpa_supplicant*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.wpa_supplicant*
  store %struct.wpa_supplicant* %7, %struct.wpa_supplicant** %5, align 8
  %8 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %9 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %16 = call i32 @wpas_p2p_is_client(%struct.wpa_supplicant* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* @MSG_DEBUG, align 4
  %20 = call i32 @wpa_printf(i32 %19, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %27

21:                                               ; preds = %14, %2
  %22 = load i32, i32* @MSG_DEBUG, align 4
  %23 = call i32 @wpa_printf(i32 %22, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %25 = load i32, i32* @P2P_GROUP_REMOVAL_IDLE_TIMEOUT, align 4
  %26 = call i32 @wpas_p2p_group_delete(%struct.wpa_supplicant* %24, i32 %25)
  br label %27

27:                                               ; preds = %21, %18
  ret void
}

declare dso_local i32 @wpas_p2p_is_client(%struct.wpa_supplicant*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wpas_p2p_group_delete(%struct.wpa_supplicant*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

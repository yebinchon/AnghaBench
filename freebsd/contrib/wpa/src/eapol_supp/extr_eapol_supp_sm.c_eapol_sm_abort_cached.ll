; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eapol_supp/extr_eapol_supp_sm.c_eapol_sm_abort_cached.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eapol_supp/extr_eapol_supp_sm.c_eapol_sm_abort_cached.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eapol_sm = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 (i32)* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"RSN: Authenticator did not accept PMKID, doing full EAP authentication\00", align 1
@FALSE = common dso_local global i32 0, align 4
@SUPP_PAE_CONNECTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eapol_sm*)* @eapol_sm_abort_cached to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eapol_sm_abort_cached(%struct.eapol_sm* %0) #0 {
  %2 = alloca %struct.eapol_sm*, align 8
  store %struct.eapol_sm* %0, %struct.eapol_sm** %2, align 8
  %3 = load i32, i32* @MSG_DEBUG, align 4
  %4 = call i32 @wpa_printf(i32 %3, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.eapol_sm*, %struct.eapol_sm** %2, align 8
  %6 = icmp eq %struct.eapol_sm* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %39

8:                                                ; preds = %1
  %9 = load i32, i32* @FALSE, align 4
  %10 = load %struct.eapol_sm*, %struct.eapol_sm** %2, align 8
  %11 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %10, i32 0, i32 3
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @SUPP_PAE_CONNECTING, align 4
  %13 = load %struct.eapol_sm*, %struct.eapol_sm** %2, align 8
  %14 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 8
  %15 = load %struct.eapol_sm*, %struct.eapol_sm** %2, align 8
  %16 = call i32 @eapol_sm_set_port_unauthorized(%struct.eapol_sm* %15)
  %17 = load %struct.eapol_sm*, %struct.eapol_sm** %2, align 8
  %18 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %17, i32 0, i32 0
  store i32 3, i32* %18, align 8
  %19 = load %struct.eapol_sm*, %struct.eapol_sm** %2, align 8
  %20 = call i32 @eapol_enable_timer_tick(%struct.eapol_sm* %19)
  %21 = load %struct.eapol_sm*, %struct.eapol_sm** %2, align 8
  %22 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32 (i32)*, i32 (i32)** %24, align 8
  %26 = icmp ne i32 (i32)* %25, null
  br i1 %26, label %27, label %39

27:                                               ; preds = %8
  %28 = load %struct.eapol_sm*, %struct.eapol_sm** %2, align 8
  %29 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32 (i32)*, i32 (i32)** %31, align 8
  %33 = load %struct.eapol_sm*, %struct.eapol_sm** %2, align 8
  %34 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 %32(i32 %37)
  br label %39

39:                                               ; preds = %7, %27, %8
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @eapol_sm_set_port_unauthorized(%struct.eapol_sm*) #1

declare dso_local i32 @eapol_enable_timer_tick(%struct.eapol_sm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

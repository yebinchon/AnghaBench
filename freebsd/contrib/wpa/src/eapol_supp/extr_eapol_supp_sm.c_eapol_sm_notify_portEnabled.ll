; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eapol_supp/extr_eapol_supp_sm.c_eapol_sm_notify_portEnabled.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eapol_supp/extr_eapol_supp_sm.c_eapol_sm_notify_portEnabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eapol_sm = type { i64, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"EAPOL: External notification - portEnabled=%d\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @eapol_sm_notify_portEnabled(%struct.eapol_sm* %0, i64 %1) #0 {
  %3 = alloca %struct.eapol_sm*, align 8
  %4 = alloca i64, align 8
  store %struct.eapol_sm* %0, %struct.eapol_sm** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.eapol_sm*, %struct.eapol_sm** %3, align 8
  %6 = icmp eq %struct.eapol_sm* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %27

8:                                                ; preds = %2
  %9 = load i32, i32* @MSG_DEBUG, align 4
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @wpa_printf(i32 %9, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %10)
  %12 = load %struct.eapol_sm*, %struct.eapol_sm** %3, align 8
  %13 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* %4, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %8
  %18 = load i32, i32* @TRUE, align 4
  %19 = load %struct.eapol_sm*, %struct.eapol_sm** %3, align 8
  %20 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 8
  br label %21

21:                                               ; preds = %17, %8
  %22 = load i64, i64* %4, align 8
  %23 = load %struct.eapol_sm*, %struct.eapol_sm** %3, align 8
  %24 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load %struct.eapol_sm*, %struct.eapol_sm** %3, align 8
  %26 = call i32 @eapol_sm_step(%struct.eapol_sm* %25)
  br label %27

27:                                               ; preds = %21, %7
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, i64) #1

declare dso_local i32 @eapol_sm_step(%struct.eapol_sm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eapol_supp/extr_eapol_supp_sm.c_eapol_sm_notify_ctrl_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eapol_supp/extr_eapol_supp_sm.c_eapol_sm_notify_ctrl_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eapol_sm = type { i8*, i8*, i64 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [90 x i8] c"EAPOL: received control response (user input) notification - retrying pending EAP Request\00", align 1
@TRUE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @eapol_sm_notify_ctrl_response(%struct.eapol_sm* %0) #0 {
  %2 = alloca %struct.eapol_sm*, align 8
  store %struct.eapol_sm* %0, %struct.eapol_sm** %2, align 8
  %3 = load %struct.eapol_sm*, %struct.eapol_sm** %2, align 8
  %4 = icmp eq %struct.eapol_sm* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %27

6:                                                ; preds = %1
  %7 = load %struct.eapol_sm*, %struct.eapol_sm** %2, align 8
  %8 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %27

11:                                               ; preds = %6
  %12 = load %struct.eapol_sm*, %struct.eapol_sm** %2, align 8
  %13 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %27, label %16

16:                                               ; preds = %11
  %17 = load i32, i32* @MSG_DEBUG, align 4
  %18 = call i32 @wpa_printf(i32 %17, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str, i64 0, i64 0))
  %19 = load i8*, i8** @TRUE, align 8
  %20 = load %struct.eapol_sm*, %struct.eapol_sm** %2, align 8
  %21 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %20, i32 0, i32 1
  store i8* %19, i8** %21, align 8
  %22 = load i8*, i8** @TRUE, align 8
  %23 = load %struct.eapol_sm*, %struct.eapol_sm** %2, align 8
  %24 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %23, i32 0, i32 0
  store i8* %22, i8** %24, align 8
  %25 = load %struct.eapol_sm*, %struct.eapol_sm** %2, align 8
  %26 = call i32 @eapol_sm_step(%struct.eapol_sm* %25)
  br label %27

27:                                               ; preds = %5, %16, %11, %6
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @eapol_sm_step(%struct.eapol_sm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

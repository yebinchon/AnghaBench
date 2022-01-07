; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_sim.c_eap_sim_unexpected_subtype.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_sim.c_eap_sim_unexpected_subtype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sim_data = type { i32 }

@EAP_SIM_SUBTYPE_CLIENT_ERROR = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@EAP_SIM_SUBTYPE_START = common dso_local global i64 0, align 8
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"EAP-SIM: Unexpected response subtype %d\00", align 1
@TRUE = common dso_local global i32 0, align 4
@EAP_SIM_SUBTYPE_CHALLENGE = common dso_local global i64 0, align 8
@EAP_SIM_SUBTYPE_REAUTHENTICATION = common dso_local global i64 0, align 8
@EAP_SIM_SUBTYPE_NOTIFICATION = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [57 x i8] c"EAP-SIM: Unexpected state (%d) for processing a response\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_sim_data*, i64)* @eap_sim_unexpected_subtype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_sim_unexpected_subtype(%struct.eap_sim_data* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.eap_sim_data*, align 8
  %5 = alloca i64, align 8
  store %struct.eap_sim_data* %0, %struct.eap_sim_data** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @EAP_SIM_SUBTYPE_CLIENT_ERROR, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* @FALSE, align 4
  store i32 %10, i32* %3, align 4
  br label %65

11:                                               ; preds = %2
  %12 = load %struct.eap_sim_data*, %struct.eap_sim_data** %4, align 8
  %13 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %55 [
    i32 128, label %15
    i32 131, label %25
    i32 129, label %35
    i32 130, label %45
  ]

15:                                               ; preds = %11
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @EAP_SIM_SUBTYPE_START, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = load i32, i32* @MSG_INFO, align 4
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @wpa_printf(i32 %20, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %21)
  %23 = load i32, i32* @TRUE, align 4
  store i32 %23, i32* %3, align 4
  br label %65

24:                                               ; preds = %15
  br label %63

25:                                               ; preds = %11
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* @EAP_SIM_SUBTYPE_CHALLENGE, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load i32, i32* @MSG_INFO, align 4
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @wpa_printf(i32 %30, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %31)
  %33 = load i32, i32* @TRUE, align 4
  store i32 %33, i32* %3, align 4
  br label %65

34:                                               ; preds = %25
  br label %63

35:                                               ; preds = %11
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* @EAP_SIM_SUBTYPE_REAUTHENTICATION, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load i32, i32* @MSG_INFO, align 4
  %41 = load i64, i64* %5, align 8
  %42 = call i32 @wpa_printf(i32 %40, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %41)
  %43 = load i32, i32* @TRUE, align 4
  store i32 %43, i32* %3, align 4
  br label %65

44:                                               ; preds = %35
  br label %63

45:                                               ; preds = %11
  %46 = load i64, i64* %5, align 8
  %47 = load i64, i64* @EAP_SIM_SUBTYPE_NOTIFICATION, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = load i32, i32* @MSG_INFO, align 4
  %51 = load i64, i64* %5, align 8
  %52 = call i32 @wpa_printf(i32 %50, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %51)
  %53 = load i32, i32* @TRUE, align 4
  store i32 %53, i32* %3, align 4
  br label %65

54:                                               ; preds = %45
  br label %63

55:                                               ; preds = %11
  %56 = load i32, i32* @MSG_INFO, align 4
  %57 = load %struct.eap_sim_data*, %struct.eap_sim_data** %4, align 8
  %58 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = call i32 @wpa_printf(i32 %56, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i64 %60)
  %62 = load i32, i32* @TRUE, align 4
  store i32 %62, i32* %3, align 4
  br label %65

63:                                               ; preds = %54, %44, %34, %24
  %64 = load i32, i32* @FALSE, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %63, %55, %49, %39, %29, %19, %9
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @wpa_printf(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

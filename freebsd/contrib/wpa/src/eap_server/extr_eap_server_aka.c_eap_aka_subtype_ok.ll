; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_aka.c_eap_aka_subtype_ok.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_aka.c_eap_aka_subtype_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_aka_data = type { i32 }

@EAP_AKA_SUBTYPE_CLIENT_ERROR = common dso_local global i64 0, align 8
@EAP_AKA_SUBTYPE_AUTHENTICATION_REJECT = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@EAP_AKA_SUBTYPE_IDENTITY = common dso_local global i64 0, align 8
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"EAP-AKA: Unexpected response subtype %d\00", align 1
@TRUE = common dso_local global i32 0, align 4
@EAP_AKA_SUBTYPE_CHALLENGE = common dso_local global i64 0, align 8
@EAP_AKA_SUBTYPE_SYNCHRONIZATION_FAILURE = common dso_local global i64 0, align 8
@EAP_AKA_SUBTYPE_REAUTHENTICATION = common dso_local global i64 0, align 8
@EAP_AKA_SUBTYPE_NOTIFICATION = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [57 x i8] c"EAP-AKA: Unexpected state (%d) for processing a response\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_aka_data*, i64)* @eap_aka_subtype_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_aka_subtype_ok(%struct.eap_aka_data* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.eap_aka_data*, align 8
  %5 = alloca i64, align 8
  store %struct.eap_aka_data* %0, %struct.eap_aka_data** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @EAP_AKA_SUBTYPE_CLIENT_ERROR, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @EAP_AKA_SUBTYPE_AUTHENTICATION_REJECT, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %9, %2
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %3, align 4
  br label %73

15:                                               ; preds = %9
  %16 = load %struct.eap_aka_data*, %struct.eap_aka_data** %4, align 8
  %17 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %63 [
    i32 130, label %19
    i32 131, label %29
    i32 128, label %43
    i32 129, label %53
  ]

19:                                               ; preds = %15
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* @EAP_AKA_SUBTYPE_IDENTITY, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load i32, i32* @MSG_INFO, align 4
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @wpa_printf(i32 %24, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %25)
  %27 = load i32, i32* @TRUE, align 4
  store i32 %27, i32* %3, align 4
  br label %73

28:                                               ; preds = %19
  br label %71

29:                                               ; preds = %15
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* @EAP_AKA_SUBTYPE_CHALLENGE, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %29
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* @EAP_AKA_SUBTYPE_SYNCHRONIZATION_FAILURE, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load i32, i32* @MSG_INFO, align 4
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @wpa_printf(i32 %38, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %39)
  %41 = load i32, i32* @TRUE, align 4
  store i32 %41, i32* %3, align 4
  br label %73

42:                                               ; preds = %33, %29
  br label %71

43:                                               ; preds = %15
  %44 = load i64, i64* %5, align 8
  %45 = load i64, i64* @EAP_AKA_SUBTYPE_REAUTHENTICATION, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = load i32, i32* @MSG_INFO, align 4
  %49 = load i64, i64* %5, align 8
  %50 = call i32 @wpa_printf(i32 %48, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %49)
  %51 = load i32, i32* @TRUE, align 4
  store i32 %51, i32* %3, align 4
  br label %73

52:                                               ; preds = %43
  br label %71

53:                                               ; preds = %15
  %54 = load i64, i64* %5, align 8
  %55 = load i64, i64* @EAP_AKA_SUBTYPE_NOTIFICATION, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %53
  %58 = load i32, i32* @MSG_INFO, align 4
  %59 = load i64, i64* %5, align 8
  %60 = call i32 @wpa_printf(i32 %58, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %59)
  %61 = load i32, i32* @TRUE, align 4
  store i32 %61, i32* %3, align 4
  br label %73

62:                                               ; preds = %53
  br label %71

63:                                               ; preds = %15
  %64 = load i32, i32* @MSG_INFO, align 4
  %65 = load %struct.eap_aka_data*, %struct.eap_aka_data** %4, align 8
  %66 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = call i32 @wpa_printf(i32 %64, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i64 %68)
  %70 = load i32, i32* @TRUE, align 4
  store i32 %70, i32* %3, align 4
  br label %73

71:                                               ; preds = %62, %52, %42, %28
  %72 = load i32, i32* @FALSE, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %71, %63, %57, %47, %37, %23, %13
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @wpa_printf(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

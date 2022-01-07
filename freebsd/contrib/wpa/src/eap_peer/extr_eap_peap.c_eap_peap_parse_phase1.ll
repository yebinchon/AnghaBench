; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_peap.c_eap_peap_parse_phase1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_peap.c_eap_peap_parse_phase1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_peap_data = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"peapver=\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"EAP-PEAP: Forced PEAP version %d\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"peaplabel=1\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"EAP-PEAP: Force new label for key derivation\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"peap_outer_success=0\00", align 1
@.str.5 = private unnamed_addr constant [59 x i8] c"EAP-PEAP: terminate authentication on tunneled EAP-Success\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"peap_outer_success=1\00", align 1
@.str.7 = private unnamed_addr constant [73 x i8] c"EAP-PEAP: send tunneled EAP-Success after receiving tunneled EAP-Success\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"peap_outer_success=2\00", align 1
@.str.9 = private unnamed_addr constant [65 x i8] c"EAP-PEAP: send PEAP/TLS ACK after receiving tunneled EAP-Success\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"crypto_binding=0\00", align 1
@NO_BINDING = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [35 x i8] c"EAP-PEAP: Do not use cryptobinding\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"crypto_binding=1\00", align 1
@OPTIONAL_BINDING = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [33 x i8] c"EAP-PEAP: Optional cryptobinding\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"crypto_binding=2\00", align 1
@REQUIRE_BINDING = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [32 x i8] c"EAP-PEAP: Require cryptobinding\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_peap_data*, i8*)* @eap_peap_parse_phase1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_peap_parse_phase1(%struct.eap_peap_data* %0, i8* %1) #0 {
  %3 = alloca %struct.eap_peap_data*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.eap_peap_data* %0, %struct.eap_peap_data** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i8* @os_strstr(i8* %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i8* %7, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %26

10:                                               ; preds = %2
  %11 = load i8*, i8** %5, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 8
  %13 = call i32 @atoi(i8* %12)
  %14 = load %struct.eap_peap_data*, %struct.eap_peap_data** %3, align 8
  %15 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %14, i32 0, i32 4
  store i32 %13, i32* %15, align 4
  %16 = load %struct.eap_peap_data*, %struct.eap_peap_data** %3, align 8
  %17 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.eap_peap_data*, %struct.eap_peap_data** %3, align 8
  %20 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %19, i32 0, i32 5
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @MSG_DEBUG, align 4
  %22 = load %struct.eap_peap_data*, %struct.eap_peap_data** %3, align 8
  %23 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = call i32 (i32, i8*, ...) @wpa_printf(i32 %21, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %10, %2
  %27 = load i8*, i8** %4, align 8
  %28 = call i8* @os_strstr(i8* %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load %struct.eap_peap_data*, %struct.eap_peap_data** %3, align 8
  %32 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %31, i32 0, i32 0
  store i32 1, i32* %32, align 4
  %33 = load i32, i32* @MSG_DEBUG, align 4
  %34 = call i32 (i32, i8*, ...) @wpa_printf(i32 %33, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  br label %35

35:                                               ; preds = %30, %26
  %36 = load i8*, i8** %4, align 8
  %37 = call i8* @os_strstr(i8* %36, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load %struct.eap_peap_data*, %struct.eap_peap_data** %3, align 8
  %41 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %40, i32 0, i32 1
  store i32 0, i32* %41, align 4
  %42 = load i32, i32* @MSG_DEBUG, align 4
  %43 = call i32 (i32, i8*, ...) @wpa_printf(i32 %42, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i64 0, i64 0))
  br label %64

44:                                               ; preds = %35
  %45 = load i8*, i8** %4, align 8
  %46 = call i8* @os_strstr(i8* %45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load %struct.eap_peap_data*, %struct.eap_peap_data** %3, align 8
  %50 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %49, i32 0, i32 1
  store i32 1, i32* %50, align 4
  %51 = load i32, i32* @MSG_DEBUG, align 4
  %52 = call i32 (i32, i8*, ...) @wpa_printf(i32 %51, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.7, i64 0, i64 0))
  br label %63

53:                                               ; preds = %44
  %54 = load i8*, i8** %4, align 8
  %55 = call i8* @os_strstr(i8* %54, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %53
  %58 = load %struct.eap_peap_data*, %struct.eap_peap_data** %3, align 8
  %59 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %58, i32 0, i32 1
  store i32 2, i32* %59, align 4
  %60 = load i32, i32* @MSG_DEBUG, align 4
  %61 = call i32 (i32, i8*, ...) @wpa_printf(i32 %60, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.9, i64 0, i64 0))
  br label %62

62:                                               ; preds = %57, %53
  br label %63

63:                                               ; preds = %62, %48
  br label %64

64:                                               ; preds = %63, %39
  %65 = load i8*, i8** %4, align 8
  %66 = call i8* @os_strstr(i8* %65, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %74

68:                                               ; preds = %64
  %69 = load i32, i32* @NO_BINDING, align 4
  %70 = load %struct.eap_peap_data*, %struct.eap_peap_data** %3, align 8
  %71 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* @MSG_DEBUG, align 4
  %73 = call i32 (i32, i8*, ...) @wpa_printf(i32 %72, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0))
  br label %96

74:                                               ; preds = %64
  %75 = load i8*, i8** %4, align 8
  %76 = call i8* @os_strstr(i8* %75, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0))
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %84

78:                                               ; preds = %74
  %79 = load i32, i32* @OPTIONAL_BINDING, align 4
  %80 = load %struct.eap_peap_data*, %struct.eap_peap_data** %3, align 8
  %81 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* @MSG_DEBUG, align 4
  %83 = call i32 (i32, i8*, ...) @wpa_printf(i32 %82, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0))
  br label %95

84:                                               ; preds = %74
  %85 = load i8*, i8** %4, align 8
  %86 = call i8* @os_strstr(i8* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0))
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %94

88:                                               ; preds = %84
  %89 = load i32, i32* @REQUIRE_BINDING, align 4
  %90 = load %struct.eap_peap_data*, %struct.eap_peap_data** %3, align 8
  %91 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %90, i32 0, i32 3
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* @MSG_DEBUG, align 4
  %93 = call i32 (i32, i8*, ...) @wpa_printf(i32 %92, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i64 0, i64 0))
  br label %94

94:                                               ; preds = %88, %84
  br label %95

95:                                               ; preds = %94, %78
  br label %96

96:                                               ; preds = %95, %68
  ret void
}

declare dso_local i8* @os_strstr(i8*, i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

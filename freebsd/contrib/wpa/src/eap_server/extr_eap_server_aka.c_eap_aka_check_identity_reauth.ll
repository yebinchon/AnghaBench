; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_aka.c_eap_aka_check_identity_reauth.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_aka.c_eap_aka_check_identity_reauth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_aka_data = type { i64, %struct.TYPE_2__*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@EAP_TYPE_AKA_PRIME = common dso_local global i64 0, align 8
@EAP_AKA_PRIME_REAUTH_ID_PREFIX = common dso_local global i8 0, align 1
@EAP_TYPE_AKA = common dso_local global i64 0, align 8
@EAP_AKA_REAUTH_ID_PREFIX = common dso_local global i8 0, align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"EAP-AKA: Reauth username '%s'\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"EAP-AKA: Unknown reauth identity - request full auth identity\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"EAP-AKA: Using fast re-authentication\00", align 1
@EAP_SIM_K_ENCR_LEN = common dso_local global i32 0, align 4
@EAP_AKA_PRIME_K_AUT_LEN = common dso_local global i32 0, align 4
@EAP_AKA_PRIME_K_RE_LEN = common dso_local global i32 0, align 4
@EAP_SIM_MK_LEN = common dso_local global i32 0, align 4
@REAUTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_sm*, %struct.eap_aka_data*, i8*)* @eap_aka_check_identity_reauth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_aka_check_identity_reauth(%struct.eap_sm* %0, %struct.eap_aka_data* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca %struct.eap_aka_data*, align 8
  %7 = alloca i8*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store %struct.eap_aka_data* %1, %struct.eap_aka_data** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %9 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @EAP_TYPE_AKA_PRIME, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %3
  %14 = load i8*, i8** %7, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = load i8, i8* @EAP_AKA_PRIME_REAUTH_ID_PREFIX, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %17, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %125

22:                                               ; preds = %13, %3
  %23 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %24 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @EAP_TYPE_AKA, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %22
  %29 = load i8*, i8** %7, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = load i8, i8* @EAP_AKA_REAUTH_ID_PREFIX, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %32, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %125

37:                                               ; preds = %28, %22
  %38 = load i32, i32* @MSG_DEBUG, align 4
  %39 = load i8*, i8** %7, align 8
  %40 = call i32 (i32, i8*, ...) @wpa_printf(i32 %38, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %39)
  %41 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %42 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i8*, i8** %7, align 8
  %45 = call %struct.TYPE_2__* @eap_sim_db_get_reauth_entry(i32 %43, i8* %44)
  %46 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %47 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %46, i32 0, i32 1
  store %struct.TYPE_2__* %45, %struct.TYPE_2__** %47, align 8
  %48 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %49 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = icmp eq %struct.TYPE_2__* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %37
  %53 = load i32, i32* @MSG_DEBUG, align 4
  %54 = call i32 (i32, i8*, ...) @wpa_printf(i32 %53, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %125

55:                                               ; preds = %37
  %56 = load i32, i32* @MSG_DEBUG, align 4
  %57 = call i32 (i32, i8*, ...) @wpa_printf(i32 %56, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %58 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %59 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %58, i32 0, i32 7
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %62 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @os_strlcpy(i32 %60, i32 %65, i32 4)
  %67 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %68 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %73 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %72, i32 0, i32 6
  store i32 %71, i32* %73, align 8
  %74 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %75 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @EAP_TYPE_AKA_PRIME, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %110

79:                                               ; preds = %55
  %80 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %81 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %84 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %83, i32 0, i32 1
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @EAP_SIM_K_ENCR_LEN, align 4
  %89 = call i32 @os_memcpy(i32 %82, i32 %87, i32 %88)
  %90 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %91 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %94 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %93, i32 0, i32 1
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @EAP_AKA_PRIME_K_AUT_LEN, align 4
  %99 = call i32 @os_memcpy(i32 %92, i32 %97, i32 %98)
  %100 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %101 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %104 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %103, i32 0, i32 1
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @EAP_AKA_PRIME_K_RE_LEN, align 4
  %109 = call i32 @os_memcpy(i32 %102, i32 %107, i32 %108)
  br label %121

110:                                              ; preds = %55
  %111 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %112 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %115 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %114, i32 0, i32 1
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @EAP_SIM_MK_LEN, align 4
  %120 = call i32 @os_memcpy(i32 %113, i32 %118, i32 %119)
  br label %121

121:                                              ; preds = %110, %79
  %122 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %123 = load i32, i32* @REAUTH, align 4
  %124 = call i32 @eap_aka_state(%struct.eap_aka_data* %122, i32 %123)
  store i32 1, i32* %4, align 4
  br label %125

125:                                              ; preds = %121, %52, %36, %21
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local %struct.TYPE_2__* @eap_sim_db_get_reauth_entry(i32, i8*) #1

declare dso_local i32 @os_strlcpy(i32, i32, i32) #1

declare dso_local i32 @os_memcpy(i32, i32, i32) #1

declare dso_local i32 @eap_aka_state(%struct.eap_aka_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

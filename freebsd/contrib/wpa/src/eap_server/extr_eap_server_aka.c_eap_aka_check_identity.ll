; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_aka.c_eap_aka_check_identity.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_aka.c_eap_aka_check_identity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32, i32, i32 }
%struct.eap_aka_data = type { i64, i32 }

@EAP_TYPE_AKA_PRIME = common dso_local global i64 0, align 8
@EAP_AKA_PRIME_PSEUDONYM_PREFIX = common dso_local global i8 0, align 1
@EAP_TYPE_AKA = common dso_local global i64 0, align 8
@EAP_AKA_PSEUDONYM_PREFIX = common dso_local global i8 0, align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"EAP-AKA: Pseudonym username '%s'\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"EAP-AKA: Unknown pseudonym identity - request permanent identity\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, %struct.eap_aka_data*)* @eap_aka_check_identity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_aka_check_identity(%struct.eap_sm* %0, %struct.eap_aka_data* %1) #0 {
  %3 = alloca %struct.eap_sm*, align 8
  %4 = alloca %struct.eap_aka_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %3, align 8
  store %struct.eap_aka_data* %1, %struct.eap_aka_data** %4, align 8
  %7 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %8 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %11 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i8* @sim_get_username(i32 %9, i32 %12)
  store i8* %13, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %82

17:                                               ; preds = %2
  %18 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %19 = load %struct.eap_aka_data*, %struct.eap_aka_data** %4, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = call i64 @eap_aka_check_identity_reauth(%struct.eap_sm* %18, %struct.eap_aka_data* %19, i8* %20)
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @os_free(i8* %24)
  br label %82

26:                                               ; preds = %17
  %27 = load %struct.eap_aka_data*, %struct.eap_aka_data** %4, align 8
  %28 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @EAP_TYPE_AKA_PRIME, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %26
  %33 = load i8*, i8** %5, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = load i8, i8* @EAP_AKA_PRIME_PSEUDONYM_PREFIX, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %54, label %40

40:                                               ; preds = %32, %26
  %41 = load %struct.eap_aka_data*, %struct.eap_aka_data** %4, align 8
  %42 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @EAP_TYPE_AKA, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %79

46:                                               ; preds = %40
  %47 = load i8*, i8** %5, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 0
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = load i8, i8* @EAP_AKA_PSEUDONYM_PREFIX, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %54, label %79

54:                                               ; preds = %46, %32
  %55 = load i32, i32* @MSG_DEBUG, align 4
  %56 = load i8*, i8** %5, align 8
  %57 = call i32 (i32, i8*, ...) @wpa_printf(i32 %55, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %56)
  %58 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %59 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i8*, i8** %5, align 8
  %62 = call i8* @eap_sim_db_get_permanent(i32 %60, i8* %61)
  store i8* %62, i8** %6, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = icmp eq i8* %63, null
  br i1 %64, label %65, label %70

65:                                               ; preds = %54
  %66 = load i8*, i8** %5, align 8
  %67 = call i32 @os_free(i8* %66)
  %68 = load i32, i32* @MSG_DEBUG, align 4
  %69 = call i32 (i32, i8*, ...) @wpa_printf(i32 %68, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0))
  br label %82

70:                                               ; preds = %54
  %71 = load %struct.eap_aka_data*, %struct.eap_aka_data** %4, align 8
  %72 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i8*, i8** %6, align 8
  %75 = call i32 @os_strlcpy(i32 %73, i8* %74, i32 4)
  %76 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %77 = load %struct.eap_aka_data*, %struct.eap_aka_data** %4, align 8
  %78 = call i32 @eap_aka_fullauth(%struct.eap_sm* %76, %struct.eap_aka_data* %77)
  br label %79

79:                                               ; preds = %70, %46, %40
  %80 = load i8*, i8** %5, align 8
  %81 = call i32 @os_free(i8* %80)
  br label %82

82:                                               ; preds = %79, %65, %23, %16
  ret void
}

declare dso_local i8* @sim_get_username(i32, i32) #1

declare dso_local i64 @eap_aka_check_identity_reauth(%struct.eap_sm*, %struct.eap_aka_data*, i8*) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i8* @eap_sim_db_get_permanent(i32, i8*) #1

declare dso_local i32 @os_strlcpy(i32, i8*, i32) #1

declare dso_local i32 @eap_aka_fullauth(%struct.eap_sm*, %struct.eap_aka_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

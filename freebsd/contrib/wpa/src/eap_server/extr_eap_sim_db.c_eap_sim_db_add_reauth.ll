; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_sim_db.c_eap_sim_db_add_reauth.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_sim_db.c_eap_sim_db_add_reauth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sim_db_data = type { i64 }
%struct.eap_sim_reauth = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"EAP-SIM DB: Add reauth_id '%s' for permanent identity '%s'\00", align 1
@EAP_SIM_MK_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eap_sim_db_add_reauth(%struct.eap_sim_db_data* %0, i8* %1, i8* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.eap_sim_db_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.eap_sim_reauth*, align 8
  store %struct.eap_sim_db_data* %0, %struct.eap_sim_db_data** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %13 = load i32, i32* @MSG_DEBUG, align 4
  %14 = load i8*, i8** %9, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i32 @wpa_printf(i32 %13, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i8* %14, i8* %15)
  %17 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %7, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = load i32, i32* %10, align 4
  %21 = call %struct.eap_sim_reauth* @eap_sim_db_add_reauth_data(%struct.eap_sim_db_data* %17, i8* %18, i8* %19, i32 %20)
  store %struct.eap_sim_reauth* %21, %struct.eap_sim_reauth** %12, align 8
  %22 = load %struct.eap_sim_reauth*, %struct.eap_sim_reauth** %12, align 8
  %23 = icmp eq %struct.eap_sim_reauth* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %32

25:                                               ; preds = %5
  %26 = load %struct.eap_sim_reauth*, %struct.eap_sim_reauth** %12, align 8
  %27 = getelementptr inbounds %struct.eap_sim_reauth, %struct.eap_sim_reauth* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %11, align 8
  %30 = load i32, i32* @EAP_SIM_MK_LEN, align 4
  %31 = call i32 @os_memcpy(i32 %28, i32* %29, i32 %30)
  store i32 0, i32* %6, align 4
  br label %32

32:                                               ; preds = %25, %24
  %33 = load i32, i32* %6, align 4
  ret i32 %33
}

declare dso_local i32 @wpa_printf(i32, i8*, i8*, i8*) #1

declare dso_local %struct.eap_sim_reauth* @eap_sim_db_add_reauth_data(%struct.eap_sim_db_data*, i8*, i8*, i32) #1

declare dso_local i32 @os_memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

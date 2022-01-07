; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_sim.c_eap_sim_clear_identities.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_sim.c_eap_sim_clear_identities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_sim_data = type { i64, i32*, i64, i32*, i64, i64, i32* }

@CLEAR_PSEUDONYM = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"EAP-SIM: forgetting old pseudonym\00", align 1
@CLEAR_REAUTH_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"EAP-SIM: forgetting old reauth_id\00", align 1
@CLEAR_EAP_ID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"EAP-SIM: forgetting old eap_id\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, %struct.eap_sim_data*, i32)* @eap_sim_clear_identities to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_sim_clear_identities(%struct.eap_sm* %0, %struct.eap_sim_data* %1, i32 %2) #0 {
  %4 = alloca %struct.eap_sm*, align 8
  %5 = alloca %struct.eap_sim_data*, align 8
  %6 = alloca i32, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %4, align 8
  store %struct.eap_sim_data* %1, %struct.eap_sim_data** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @CLEAR_PSEUDONYM, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %35

11:                                               ; preds = %3
  %12 = load %struct.eap_sim_data*, %struct.eap_sim_data** %5, align 8
  %13 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %12, i32 0, i32 6
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %35

16:                                               ; preds = %11
  %17 = load i32, i32* @MSG_DEBUG, align 4
  %18 = call i32 @wpa_printf(i32 %17, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.eap_sim_data*, %struct.eap_sim_data** %5, align 8
  %20 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %19, i32 0, i32 6
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @os_free(i32* %21)
  %23 = load %struct.eap_sim_data*, %struct.eap_sim_data** %5, align 8
  %24 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %23, i32 0, i32 6
  store i32* null, i32** %24, align 8
  %25 = load %struct.eap_sim_data*, %struct.eap_sim_data** %5, align 8
  %26 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %25, i32 0, i32 5
  store i64 0, i64* %26, align 8
  %27 = load %struct.eap_sim_data*, %struct.eap_sim_data** %5, align 8
  %28 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %16
  %32 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %33 = call i32 @eap_set_anon_id(%struct.eap_sm* %32, i32* null, i32 0)
  br label %34

34:                                               ; preds = %31, %16
  br label %35

35:                                               ; preds = %34, %11, %3
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @CLEAR_REAUTH_ID, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %35
  %41 = load %struct.eap_sim_data*, %struct.eap_sim_data** %5, align 8
  %42 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %41, i32 0, i32 3
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %56

45:                                               ; preds = %40
  %46 = load i32, i32* @MSG_DEBUG, align 4
  %47 = call i32 @wpa_printf(i32 %46, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %48 = load %struct.eap_sim_data*, %struct.eap_sim_data** %5, align 8
  %49 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %48, i32 0, i32 3
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @os_free(i32* %50)
  %52 = load %struct.eap_sim_data*, %struct.eap_sim_data** %5, align 8
  %53 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %52, i32 0, i32 3
  store i32* null, i32** %53, align 8
  %54 = load %struct.eap_sim_data*, %struct.eap_sim_data** %5, align 8
  %55 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %54, i32 0, i32 2
  store i64 0, i64* %55, align 8
  br label %56

56:                                               ; preds = %45, %40, %35
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @CLEAR_EAP_ID, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %77

61:                                               ; preds = %56
  %62 = load %struct.eap_sim_data*, %struct.eap_sim_data** %5, align 8
  %63 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %77

66:                                               ; preds = %61
  %67 = load i32, i32* @MSG_DEBUG, align 4
  %68 = call i32 @wpa_printf(i32 %67, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %69 = load %struct.eap_sim_data*, %struct.eap_sim_data** %5, align 8
  %70 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @os_free(i32* %71)
  %73 = load %struct.eap_sim_data*, %struct.eap_sim_data** %5, align 8
  %74 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %73, i32 0, i32 1
  store i32* null, i32** %74, align 8
  %75 = load %struct.eap_sim_data*, %struct.eap_sim_data** %5, align 8
  %76 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %75, i32 0, i32 0
  store i64 0, i64* %76, align 8
  br label %77

77:                                               ; preds = %66, %61, %56
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @os_free(i32*) #1

declare dso_local i32 @eap_set_anon_id(%struct.eap_sm*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_sim.c_eap_sim_buildReq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_sim.c_eap_sim_buildReq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_sm = type { i32 }
%struct.eap_sim_data = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"EAP-SIM: Unknown state %d in buildReq\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, i8*, i32)* @eap_sim_buildReq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_sim_buildReq(%struct.eap_sm* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.eap_sim_data*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.eap_sim_data*
  store %struct.eap_sim_data* %10, %struct.eap_sim_data** %8, align 8
  %11 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %12 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %34 [
    i32 128, label %14
    i32 131, label %19
    i32 129, label %24
    i32 130, label %29
  ]

14:                                               ; preds = %3
  %15 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %16 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call %struct.wpabuf* @eap_sim_build_start(%struct.eap_sm* %15, %struct.eap_sim_data* %16, i32 %17)
  store %struct.wpabuf* %18, %struct.wpabuf** %4, align 8
  br label %41

19:                                               ; preds = %3
  %20 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %21 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call %struct.wpabuf* @eap_sim_build_challenge(%struct.eap_sm* %20, %struct.eap_sim_data* %21, i32 %22)
  store %struct.wpabuf* %23, %struct.wpabuf** %4, align 8
  br label %41

24:                                               ; preds = %3
  %25 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %26 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call %struct.wpabuf* @eap_sim_build_reauth(%struct.eap_sm* %25, %struct.eap_sim_data* %26, i32 %27)
  store %struct.wpabuf* %28, %struct.wpabuf** %4, align 8
  br label %41

29:                                               ; preds = %3
  %30 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %31 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call %struct.wpabuf* @eap_sim_build_notification(%struct.eap_sm* %30, %struct.eap_sim_data* %31, i32 %32)
  store %struct.wpabuf* %33, %struct.wpabuf** %4, align 8
  br label %41

34:                                               ; preds = %3
  %35 = load i32, i32* @MSG_DEBUG, align 4
  %36 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %37 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @wpa_printf(i32 %35, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %34
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %41

41:                                               ; preds = %40, %29, %24, %19, %14
  %42 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  ret %struct.wpabuf* %42
}

declare dso_local %struct.wpabuf* @eap_sim_build_start(%struct.eap_sm*, %struct.eap_sim_data*, i32) #1

declare dso_local %struct.wpabuf* @eap_sim_build_challenge(%struct.eap_sm*, %struct.eap_sim_data*, i32) #1

declare dso_local %struct.wpabuf* @eap_sim_build_reauth(%struct.eap_sm*, %struct.eap_sim_data*, i32) #1

declare dso_local %struct.wpabuf* @eap_sim_build_notification(%struct.eap_sm*, %struct.eap_sim_data*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

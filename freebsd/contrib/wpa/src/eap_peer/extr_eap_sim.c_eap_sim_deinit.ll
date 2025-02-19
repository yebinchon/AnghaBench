; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_sim.c_eap_sim_deinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_sim.c_eap_sim_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_sim_data = type { %struct.eap_sim_data*, %struct.eap_sim_data*, %struct.eap_sim_data*, %struct.eap_sim_data* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, i8*)* @eap_sim_deinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_sim_deinit(%struct.eap_sm* %0, i8* %1) #0 {
  %3 = alloca %struct.eap_sm*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.eap_sim_data*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.eap_sim_data*
  store %struct.eap_sim_data* %7, %struct.eap_sim_data** %5, align 8
  %8 = load %struct.eap_sim_data*, %struct.eap_sim_data** %5, align 8
  %9 = icmp ne %struct.eap_sim_data* %8, null
  br i1 %9, label %10, label %31

10:                                               ; preds = %2
  %11 = load %struct.eap_sim_data*, %struct.eap_sim_data** %5, align 8
  %12 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %11, i32 0, i32 3
  %13 = load %struct.eap_sim_data*, %struct.eap_sim_data** %12, align 8
  %14 = call i32 @os_free(%struct.eap_sim_data* %13)
  %15 = load %struct.eap_sim_data*, %struct.eap_sim_data** %5, align 8
  %16 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %15, i32 0, i32 2
  %17 = load %struct.eap_sim_data*, %struct.eap_sim_data** %16, align 8
  %18 = call i32 @os_free(%struct.eap_sim_data* %17)
  %19 = load %struct.eap_sim_data*, %struct.eap_sim_data** %5, align 8
  %20 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %19, i32 0, i32 1
  %21 = load %struct.eap_sim_data*, %struct.eap_sim_data** %20, align 8
  %22 = call i32 @os_free(%struct.eap_sim_data* %21)
  %23 = load %struct.eap_sim_data*, %struct.eap_sim_data** %5, align 8
  %24 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %23, i32 0, i32 0
  %25 = load %struct.eap_sim_data*, %struct.eap_sim_data** %24, align 8
  %26 = call i32 @os_free(%struct.eap_sim_data* %25)
  %27 = load %struct.eap_sim_data*, %struct.eap_sim_data** %5, align 8
  %28 = call i32 @eap_sim_clear_keys(%struct.eap_sim_data* %27, i32 0)
  %29 = load %struct.eap_sim_data*, %struct.eap_sim_data** %5, align 8
  %30 = call i32 @os_free(%struct.eap_sim_data* %29)
  br label %31

31:                                               ; preds = %10, %2
  ret void
}

declare dso_local i32 @os_free(%struct.eap_sim_data*) #1

declare dso_local i32 @eap_sim_clear_keys(%struct.eap_sim_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

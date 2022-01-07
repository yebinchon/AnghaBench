; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_sim.c_eap_sim_get_identity.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_sim.c_eap_sim_get_identity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_sim_data = type { i64, i64, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.eap_sm*, i8*, i64*)* @eap_sim_get_identity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @eap_sim_get_identity(%struct.eap_sm* %0, i8* %1, i64* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.eap_sim_data*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.eap_sim_data*
  store %struct.eap_sim_data* %10, %struct.eap_sim_data** %8, align 8
  %11 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %12 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %11, i32 0, i32 3
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %3
  %16 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %17 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64*, i64** %7, align 8
  store i64 %18, i64* %19, align 8
  %20 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %21 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %20, i32 0, i32 3
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %4, align 8
  br label %37

23:                                               ; preds = %3
  %24 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %25 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %30 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64*, i64** %7, align 8
  store i64 %31, i64* %32, align 8
  %33 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %34 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %4, align 8
  br label %37

36:                                               ; preds = %23
  store i32* null, i32** %4, align 8
  br label %37

37:                                               ; preds = %36, %28, %15
  %38 = load i32*, i32** %4, align 8
  ret i32* %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

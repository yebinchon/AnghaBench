; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_ttls.c_eap_ttls_phase2_eap_deinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_ttls.c_eap_ttls_phase2_eap_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_ttls_data = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.eap_sm*, i32*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, %struct.eap_ttls_data*)* @eap_ttls_phase2_eap_deinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_ttls_phase2_eap_deinit(%struct.eap_sm* %0, %struct.eap_ttls_data* %1) #0 {
  %3 = alloca %struct.eap_sm*, align 8
  %4 = alloca %struct.eap_ttls_data*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %3, align 8
  store %struct.eap_ttls_data* %1, %struct.eap_ttls_data** %4, align 8
  %5 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %4, align 8
  %6 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %29

9:                                                ; preds = %2
  %10 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %4, align 8
  %11 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, null
  br i1 %13, label %14, label %29

14:                                               ; preds = %9
  %15 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %4, align 8
  %16 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (%struct.eap_sm*, i32*)*, i32 (%struct.eap_sm*, i32*)** %18, align 8
  %20 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %21 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %4, align 8
  %22 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 %19(%struct.eap_sm* %20, i32* %23)
  %25 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %4, align 8
  %26 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %25, i32 0, i32 1
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %26, align 8
  %27 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %4, align 8
  %28 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %27, i32 0, i32 0
  store i32* null, i32** %28, align 8
  br label %29

29:                                               ; preds = %14, %9, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

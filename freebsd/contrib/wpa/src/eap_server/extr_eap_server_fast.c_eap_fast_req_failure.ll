; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_fast.c_eap_fast_req_failure.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_fast.c_eap_fast_req_failure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_fast_data = type { i32 }

@FAILURE = common dso_local global i32 0, align 4
@EAP_TYPE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_sm*, %struct.eap_fast_data*)* @eap_fast_req_failure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_fast_req_failure(%struct.eap_sm* %0, %struct.eap_fast_data* %1) #0 {
  %3 = alloca %struct.eap_sm*, align 8
  %4 = alloca %struct.eap_fast_data*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %3, align 8
  store %struct.eap_fast_data* %1, %struct.eap_fast_data** %4, align 8
  %5 = load %struct.eap_fast_data*, %struct.eap_fast_data** %4, align 8
  %6 = load i32, i32* @FAILURE, align 4
  %7 = call i32 @eap_fast_state(%struct.eap_fast_data* %5, i32 %6)
  %8 = load i32, i32* @EAP_TYPE_NONE, align 4
  ret i32 %8
}

declare dso_local i32 @eap_fast_state(%struct.eap_fast_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

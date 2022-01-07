; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_peap.c_eap_peap_free_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_peap.c_eap_peap_free_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_peap_data = type { i32* }

@EAP_TLS_KEY_LEN = common dso_local global i64 0, align 8
@EAP_EMSK_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_peap_data*)* @eap_peap_free_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_peap_free_key(%struct.eap_peap_data* %0) #0 {
  %2 = alloca %struct.eap_peap_data*, align 8
  store %struct.eap_peap_data* %0, %struct.eap_peap_data** %2, align 8
  %3 = load %struct.eap_peap_data*, %struct.eap_peap_data** %2, align 8
  %4 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %17

7:                                                ; preds = %1
  %8 = load %struct.eap_peap_data*, %struct.eap_peap_data** %2, align 8
  %9 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load i64, i64* @EAP_TLS_KEY_LEN, align 8
  %12 = load i64, i64* @EAP_EMSK_LEN, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @bin_clear_free(i32* %10, i64 %13)
  %15 = load %struct.eap_peap_data*, %struct.eap_peap_data** %2, align 8
  %16 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %15, i32 0, i32 0
  store i32* null, i32** %16, align 8
  br label %17

17:                                               ; preds = %7, %1
  ret void
}

declare dso_local i32 @bin_clear_free(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

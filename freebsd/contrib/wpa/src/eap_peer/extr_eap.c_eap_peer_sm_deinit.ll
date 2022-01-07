; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap.c_eap_peer_sm_deinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap.c_eap_peer_sm_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i64, i64 }

@.str = private unnamed_addr constant [11 x i8] c"EAP deinit\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @eap_peer_sm_deinit(%struct.eap_sm* %0) #0 {
  %2 = alloca %struct.eap_sm*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %2, align 8
  %3 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %4 = icmp eq %struct.eap_sm* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %29

6:                                                ; preds = %1
  %7 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %8 = call i32 @eap_deinit_prev_method(%struct.eap_sm* %7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %10 = call i32 @eap_sm_abort(%struct.eap_sm* %9)
  %11 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %12 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %6
  %16 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %17 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @tls_deinit(i64 %18)
  br label %20

20:                                               ; preds = %15, %6
  %21 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %22 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @tls_deinit(i64 %23)
  %25 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %26 = call i32 @eap_peer_erp_free_keys(%struct.eap_sm* %25)
  %27 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %28 = call i32 @os_free(%struct.eap_sm* %27)
  br label %29

29:                                               ; preds = %20, %5
  ret void
}

declare dso_local i32 @eap_deinit_prev_method(%struct.eap_sm*, i8*) #1

declare dso_local i32 @eap_sm_abort(%struct.eap_sm*) #1

declare dso_local i32 @tls_deinit(i64) #1

declare dso_local i32 @eap_peer_erp_free_keys(%struct.eap_sm*) #1

declare dso_local i32 @os_free(%struct.eap_sm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

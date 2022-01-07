; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_ikev2.c_ikev2_responder_build.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_ikev2.c_ikev2_responder_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.ikev2_responder_data = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wpabuf* @ikev2_responder_build(%struct.ikev2_responder_data* %0) #0 {
  %2 = alloca %struct.wpabuf*, align 8
  %3 = alloca %struct.ikev2_responder_data*, align 8
  store %struct.ikev2_responder_data* %0, %struct.ikev2_responder_data** %3, align 8
  %4 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %3, align 8
  %5 = getelementptr inbounds %struct.ikev2_responder_data, %struct.ikev2_responder_data* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %18 [
    i32 128, label %7
    i32 129, label %10
    i32 133, label %13
    i32 130, label %14
    i32 132, label %17
    i32 131, label %17
  ]

7:                                                ; preds = %1
  %8 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %3, align 8
  %9 = call %struct.wpabuf* @ikev2_build_sa_init(%struct.ikev2_responder_data* %8)
  store %struct.wpabuf* %9, %struct.wpabuf** %2, align 8
  br label %19

10:                                               ; preds = %1
  %11 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %3, align 8
  %12 = call %struct.wpabuf* @ikev2_build_sa_auth(%struct.ikev2_responder_data* %11)
  store %struct.wpabuf* %12, %struct.wpabuf** %2, align 8
  br label %19

13:                                               ; preds = %1
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %19

14:                                               ; preds = %1
  %15 = load %struct.ikev2_responder_data*, %struct.ikev2_responder_data** %3, align 8
  %16 = call %struct.wpabuf* @ikev2_build_notify(%struct.ikev2_responder_data* %15)
  store %struct.wpabuf* %16, %struct.wpabuf** %2, align 8
  br label %19

17:                                               ; preds = %1, %1
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %19

18:                                               ; preds = %1
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %19

19:                                               ; preds = %18, %17, %14, %13, %10, %7
  %20 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  ret %struct.wpabuf* %20
}

declare dso_local %struct.wpabuf* @ikev2_build_sa_init(%struct.ikev2_responder_data*) #1

declare dso_local %struct.wpabuf* @ikev2_build_sa_auth(%struct.ikev2_responder_data*) #1

declare dso_local %struct.wpabuf* @ikev2_build_notify(%struct.ikev2_responder_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

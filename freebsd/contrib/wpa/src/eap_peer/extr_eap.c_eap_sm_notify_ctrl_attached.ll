; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap.c_eap_sm_notify_ctrl_attached.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap.c_eap_sm_notify_ctrl_attached.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_peer_config = type { i64, i64, i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @eap_sm_notify_ctrl_attached(%struct.eap_sm* %0) #0 {
  %2 = alloca %struct.eap_sm*, align 8
  %3 = alloca %struct.eap_peer_config*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %2, align 8
  %4 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %5 = call %struct.eap_peer_config* @eap_get_config(%struct.eap_sm* %4)
  store %struct.eap_peer_config* %5, %struct.eap_peer_config** %3, align 8
  %6 = load %struct.eap_peer_config*, %struct.eap_peer_config** %3, align 8
  %7 = icmp eq %struct.eap_peer_config* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %57

9:                                                ; preds = %1
  %10 = load %struct.eap_peer_config*, %struct.eap_peer_config** %3, align 8
  %11 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %10, i32 0, i32 5
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %16 = call i32 @eap_sm_request_identity(%struct.eap_sm* %15)
  br label %17

17:                                               ; preds = %14, %9
  %18 = load %struct.eap_peer_config*, %struct.eap_peer_config** %3, align 8
  %19 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %24 = call i32 @eap_sm_request_password(%struct.eap_sm* %23)
  br label %25

25:                                               ; preds = %22, %17
  %26 = load %struct.eap_peer_config*, %struct.eap_peer_config** %3, align 8
  %27 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %32 = call i32 @eap_sm_request_new_password(%struct.eap_sm* %31)
  br label %33

33:                                               ; preds = %30, %25
  %34 = load %struct.eap_peer_config*, %struct.eap_peer_config** %3, align 8
  %35 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %40 = call i32 @eap_sm_request_otp(%struct.eap_sm* %39, i32* null, i32 0)
  br label %41

41:                                               ; preds = %38, %33
  %42 = load %struct.eap_peer_config*, %struct.eap_peer_config** %3, align 8
  %43 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %48 = call i32 @eap_sm_request_pin(%struct.eap_sm* %47)
  br label %49

49:                                               ; preds = %46, %41
  %50 = load %struct.eap_peer_config*, %struct.eap_peer_config** %3, align 8
  %51 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %56 = call i32 @eap_sm_request_passphrase(%struct.eap_sm* %55)
  br label %57

57:                                               ; preds = %8, %54, %49
  ret void
}

declare dso_local %struct.eap_peer_config* @eap_get_config(%struct.eap_sm*) #1

declare dso_local i32 @eap_sm_request_identity(%struct.eap_sm*) #1

declare dso_local i32 @eap_sm_request_password(%struct.eap_sm*) #1

declare dso_local i32 @eap_sm_request_new_password(%struct.eap_sm*) #1

declare dso_local i32 @eap_sm_request_otp(%struct.eap_sm*, i32*, i32) #1

declare dso_local i32 @eap_sm_request_pin(%struct.eap_sm*) #1

declare dso_local i32 @eap_sm_request_passphrase(%struct.eap_sm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

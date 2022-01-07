; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap.c_eap_clear_config_otp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap.c_eap_clear_config_otp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_peer_config = type { i64, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @eap_clear_config_otp(%struct.eap_sm* %0) #0 {
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
  br label %25

9:                                                ; preds = %1
  %10 = load %struct.eap_peer_config*, %struct.eap_peer_config** %3, align 8
  %11 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = load %struct.eap_peer_config*, %struct.eap_peer_config** %3, align 8
  %14 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @os_memset(i32* %12, i32 0, i64 %15)
  %17 = load %struct.eap_peer_config*, %struct.eap_peer_config** %3, align 8
  %18 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @os_free(i32* %19)
  %21 = load %struct.eap_peer_config*, %struct.eap_peer_config** %3, align 8
  %22 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %21, i32 0, i32 1
  store i32* null, i32** %22, align 8
  %23 = load %struct.eap_peer_config*, %struct.eap_peer_config** %3, align 8
  %24 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  br label %25

25:                                               ; preds = %9, %8
  ret void
}

declare dso_local %struct.eap_peer_config* @eap_get_config(%struct.eap_sm*) #1

declare dso_local i32 @os_memset(i32*, i32, i64) #1

declare dso_local i32 @os_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

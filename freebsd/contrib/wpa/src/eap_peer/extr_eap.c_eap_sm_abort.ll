; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap.c_eap_sm_abort.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap.c_eap_sm_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32*, i32*, i32* }

@EAPOL_eapSuccess = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @eap_sm_abort(%struct.eap_sm* %0) #0 {
  %2 = alloca %struct.eap_sm*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %2, align 8
  %3 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %4 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %3, i32 0, i32 2
  %5 = load i32*, i32** %4, align 8
  %6 = call i32 @wpabuf_free(i32* %5)
  %7 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %8 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %7, i32 0, i32 2
  store i32* null, i32** %8, align 8
  %9 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %10 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = call i32 @wpabuf_free(i32* %11)
  %13 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %14 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %13, i32 0, i32 1
  store i32* null, i32** %14, align 8
  %15 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %16 = call i32 @eap_sm_free_key(%struct.eap_sm* %15)
  %17 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %18 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @os_free(i32* %19)
  %21 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %22 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %21, i32 0, i32 0
  store i32* null, i32** %22, align 8
  %23 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %24 = load i32, i32* @EAPOL_eapSuccess, align 4
  %25 = load i32, i32* @FALSE, align 4
  %26 = call i32 @eapol_set_bool(%struct.eap_sm* %23, i32 %24, i32 %25)
  ret void
}

declare dso_local i32 @wpabuf_free(i32*) #1

declare dso_local i32 @eap_sm_free_key(%struct.eap_sm*) #1

declare dso_local i32 @os_free(i32*) #1

declare dso_local i32 @eapol_set_bool(%struct.eap_sm*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

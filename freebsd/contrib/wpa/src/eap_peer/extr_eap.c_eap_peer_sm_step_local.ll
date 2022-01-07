; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap.c_eap_peer_sm_step_local.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap.c_eap_peer_sm_step_local.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@EAP = common dso_local global i32 0, align 4
@IDLE = common dso_local global i32 0, align 4
@EAPOL_portEnabled = common dso_local global i32 0, align 4
@INITIALIZE = common dso_local global i32 0, align 4
@METHOD = common dso_local global i32 0, align 4
@SEND_RESPONSE = common dso_local global i32 0, align 4
@DISCARD = common dso_local global i32 0, align 4
@METHOD_DONE = common dso_local global i32 0, align 4
@DECISION_FAIL = common dso_local global i32 0, align 4
@FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*)* @eap_peer_sm_step_local to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_peer_sm_step_local(%struct.eap_sm* %0) #0 {
  %2 = alloca %struct.eap_sm*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %2, align 8
  %3 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %4 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %106 [
    i32 134, label %6
    i32 140, label %10
    i32 135, label %25
    i32 131, label %28
    i32 137, label %31
    i32 133, label %48
    i32 129, label %84
    i32 139, label %88
    i32 136, label %92
    i32 132, label %96
    i32 130, label %100
    i32 128, label %104
    i32 138, label %105
  ]

6:                                                ; preds = %1
  %7 = load i32, i32* @EAP, align 4
  %8 = load i32, i32* @IDLE, align 4
  %9 = call i32 @SM_ENTER(i32 %7, i32 %8)
  br label %106

10:                                               ; preds = %1
  %11 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %12 = load i32, i32* @EAPOL_portEnabled, align 4
  %13 = call i32 @eapol_get_bool(%struct.eap_sm* %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %10
  %16 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %17 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %16, i32 0, i32 7
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* @EAP, align 4
  %22 = load i32, i32* @INITIALIZE, align 4
  %23 = call i32 @SM_ENTER(i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %20, %15, %10
  br label %106

25:                                               ; preds = %1
  %26 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %27 = call i32 @eap_peer_sm_step_idle(%struct.eap_sm* %26)
  br label %106

28:                                               ; preds = %1
  %29 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %30 = call i32 @eap_peer_sm_step_received(%struct.eap_sm* %29)
  br label %106

31:                                               ; preds = %1
  %32 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %33 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %36 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %34, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %31
  %40 = load i32, i32* @EAP, align 4
  %41 = load i32, i32* @METHOD, align 4
  %42 = call i32 @SM_ENTER(i32 %40, i32 %41)
  br label %47

43:                                               ; preds = %31
  %44 = load i32, i32* @EAP, align 4
  %45 = load i32, i32* @SEND_RESPONSE, align 4
  %46 = call i32 @SM_ENTER(i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %43, %39
  br label %106

48:                                               ; preds = %1
  %49 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %50 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load i32, i32* @EAP, align 4
  %55 = load i32, i32* @DISCARD, align 4
  %56 = call i32 @SM_ENTER(i32 %54, i32 %55)
  br label %83

57:                                               ; preds = %48
  %58 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %59 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @METHOD_DONE, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %78

63:                                               ; preds = %57
  %64 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %65 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @DECISION_FAIL, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %63
  %70 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %71 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %69
  %75 = load i32, i32* @EAP, align 4
  %76 = load i32, i32* @FAILURE, align 4
  %77 = call i32 @SM_ENTER(i32 %75, i32 %76)
  br label %82

78:                                               ; preds = %69, %63, %57
  %79 = load i32, i32* @EAP, align 4
  %80 = load i32, i32* @SEND_RESPONSE, align 4
  %81 = call i32 @SM_ENTER(i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %78, %74
  br label %83

83:                                               ; preds = %82, %53
  br label %106

84:                                               ; preds = %1
  %85 = load i32, i32* @EAP, align 4
  %86 = load i32, i32* @IDLE, align 4
  %87 = call i32 @SM_ENTER(i32 %85, i32 %86)
  br label %106

88:                                               ; preds = %1
  %89 = load i32, i32* @EAP, align 4
  %90 = load i32, i32* @IDLE, align 4
  %91 = call i32 @SM_ENTER(i32 %89, i32 %90)
  br label %106

92:                                               ; preds = %1
  %93 = load i32, i32* @EAP, align 4
  %94 = load i32, i32* @SEND_RESPONSE, align 4
  %95 = call i32 @SM_ENTER(i32 %93, i32 %94)
  br label %106

96:                                               ; preds = %1
  %97 = load i32, i32* @EAP, align 4
  %98 = load i32, i32* @SEND_RESPONSE, align 4
  %99 = call i32 @SM_ENTER(i32 %97, i32 %98)
  br label %106

100:                                              ; preds = %1
  %101 = load i32, i32* @EAP, align 4
  %102 = load i32, i32* @SEND_RESPONSE, align 4
  %103 = call i32 @SM_ENTER(i32 %101, i32 %102)
  br label %106

104:                                              ; preds = %1
  br label %106

105:                                              ; preds = %1
  br label %106

106:                                              ; preds = %1, %105, %104, %100, %96, %92, %88, %84, %83, %47, %28, %25, %24, %6
  ret void
}

declare dso_local i32 @SM_ENTER(i32, i32) #1

declare dso_local i32 @eapol_get_bool(%struct.eap_sm*, i32) #1

declare dso_local i32 @eap_peer_sm_step_idle(%struct.eap_sm*) #1

declare dso_local i32 @eap_peer_sm_step_received(%struct.eap_sm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

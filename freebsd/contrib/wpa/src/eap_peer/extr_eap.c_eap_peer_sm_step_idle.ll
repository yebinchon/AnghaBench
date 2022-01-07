; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap.c_eap_peer_sm_step_idle.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap.c_eap_peer_sm_step_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i64, i64, i64, i64, i64 }

@EAPOL_eapReq = common dso_local global i32 0, align 4
@EAP = common dso_local global i32 0, align 4
@RECEIVED = common dso_local global i32 0, align 4
@EAPOL_altAccept = common dso_local global i32 0, align 4
@DECISION_FAIL = common dso_local global i64 0, align 8
@EAPOL_idleWhile = common dso_local global i32 0, align 4
@DECISION_UNCOND_SUCC = common dso_local global i64 0, align 8
@SUCCESS = common dso_local global i32 0, align 4
@EAPOL_altReject = common dso_local global i32 0, align 4
@METHOD_CONT = common dso_local global i64 0, align 8
@FAILURE = common dso_local global i32 0, align 4
@EAP_TYPE_LEAP = common dso_local global i64 0, align 8
@METHOD_DONE = common dso_local global i64 0, align 8
@EAP_TYPE_PEAP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*)* @eap_peer_sm_step_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_peer_sm_step_idle(%struct.eap_sm* %0) #0 {
  %2 = alloca %struct.eap_sm*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %2, align 8
  %3 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %4 = load i32, i32* @EAPOL_eapReq, align 4
  %5 = call i64 @eapol_get_bool(%struct.eap_sm* %3, i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load i32, i32* @EAP, align 4
  %9 = load i32, i32* @RECEIVED, align 4
  %10 = call i32 @SM_ENTER(i32 %8, i32 %9)
  br label %132

11:                                               ; preds = %1
  %12 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %13 = load i32, i32* @EAPOL_altAccept, align 4
  %14 = call i64 @eapol_get_bool(%struct.eap_sm* %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %18 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @DECISION_FAIL, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %33, label %22

22:                                               ; preds = %16, %11
  %23 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %24 = load i32, i32* @EAPOL_idleWhile, align 4
  %25 = call i64 @eapol_get_int(%struct.eap_sm* %23, i32 %24)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %22
  %28 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %29 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @DECISION_UNCOND_SUCC, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %27, %16
  %34 = load i32, i32* @EAP, align 4
  %35 = load i32, i32* @SUCCESS, align 4
  %36 = call i32 @SM_ENTER(i32 %34, i32 %35)
  br label %131

37:                                               ; preds = %27, %22
  %38 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %39 = load i32, i32* @EAPOL_altReject, align 4
  %40 = call i64 @eapol_get_bool(%struct.eap_sm* %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %70, label %42

42:                                               ; preds = %37
  %43 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %44 = load i32, i32* @EAPOL_idleWhile, align 4
  %45 = call i64 @eapol_get_int(%struct.eap_sm* %43, i32 %44)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %49 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @DECISION_UNCOND_SUCC, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %70, label %53

53:                                               ; preds = %47, %42
  %54 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %55 = load i32, i32* @EAPOL_altAccept, align 4
  %56 = call i64 @eapol_get_bool(%struct.eap_sm* %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %74

58:                                               ; preds = %53
  %59 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %60 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @METHOD_CONT, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %74

64:                                               ; preds = %58
  %65 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %66 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @DECISION_FAIL, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %64, %47, %37
  %71 = load i32, i32* @EAP, align 4
  %72 = load i32, i32* @FAILURE, align 4
  %73 = call i32 @SM_ENTER(i32 %71, i32 %72)
  br label %130

74:                                               ; preds = %64, %58, %53
  %75 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %76 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @EAP_TYPE_LEAP, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %101

80:                                               ; preds = %74
  %81 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %82 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %81, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %101

85:                                               ; preds = %80
  %86 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %87 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @DECISION_FAIL, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %101

91:                                               ; preds = %85
  %92 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %93 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @METHOD_DONE, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %91
  %98 = load i32, i32* @EAP, align 4
  %99 = load i32, i32* @SUCCESS, align 4
  %100 = call i32 @SM_ENTER(i32 %98, i32 %99)
  br label %129

101:                                              ; preds = %91, %85, %80, %74
  %102 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %103 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @EAP_TYPE_PEAP, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %128

107:                                              ; preds = %101
  %108 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %109 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %128

112:                                              ; preds = %107
  %113 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %114 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @DECISION_FAIL, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %118, label %128

118:                                              ; preds = %112
  %119 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %120 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @METHOD_DONE, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %128

124:                                              ; preds = %118
  %125 = load i32, i32* @EAP, align 4
  %126 = load i32, i32* @SUCCESS, align 4
  %127 = call i32 @SM_ENTER(i32 %125, i32 %126)
  br label %128

128:                                              ; preds = %124, %118, %112, %107, %101
  br label %129

129:                                              ; preds = %128, %97
  br label %130

130:                                              ; preds = %129, %70
  br label %131

131:                                              ; preds = %130, %33
  br label %132

132:                                              ; preds = %131, %7
  ret void
}

declare dso_local i64 @eapol_get_bool(%struct.eap_sm*, i32) #1

declare dso_local i32 @SM_ENTER(i32, i32) #1

declare dso_local i64 @eapol_get_int(%struct.eap_sm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

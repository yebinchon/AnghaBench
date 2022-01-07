; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eapol_supp/extr_eapol_supp_sm.c_eapol_sm_step.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eapol_supp/extr_eapol_supp_sm.c_eapol_sm_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eapol_sm = type { i64, %struct.TYPE_2__*, i32, i8*, i32, i64 }
%struct.TYPE_2__ = type { i32, i32 (%struct.eapol_sm*, i32, i32)* }

@FALSE = common dso_local global i8* null, align 8
@SUPP_PAE = common dso_local global i32 0, align 4
@KEY_RX = common dso_local global i32 0, align 4
@SUPP_BE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@eapol_sm_step_timeout = common dso_local global i32 0, align 4
@EAPOL_CB_IN_PROGRESS = common dso_local global i64 0, align 8
@EAPOL_CB_SUCCESS = common dso_local global i64 0, align 8
@EAPOL_SUPP_RESULT_SUCCESS = common dso_local global i32 0, align 4
@EAPOL_SUPP_RESULT_EXPECTED_FAILURE = common dso_local global i32 0, align 4
@EAPOL_SUPP_RESULT_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @eapol_sm_step(%struct.eapol_sm* %0) #0 {
  %2 = alloca %struct.eapol_sm*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.eapol_sm* %0, %struct.eapol_sm** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %34, %1
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 100
  br i1 %7, label %8, label %37

8:                                                ; preds = %5
  %9 = load i8*, i8** @FALSE, align 8
  %10 = load %struct.eapol_sm*, %struct.eapol_sm** %2, align 8
  %11 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %10, i32 0, i32 3
  store i8* %9, i8** %11, align 8
  %12 = load i32, i32* @SUPP_PAE, align 4
  %13 = call i32 @SM_STEP_RUN(i32 %12)
  %14 = load i32, i32* @KEY_RX, align 4
  %15 = call i32 @SM_STEP_RUN(i32 %14)
  %16 = load i32, i32* @SUPP_BE, align 4
  %17 = call i32 @SM_STEP_RUN(i32 %16)
  %18 = load %struct.eapol_sm*, %struct.eapol_sm** %2, align 8
  %19 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @eap_peer_sm_step(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %8
  %24 = load i8*, i8** @TRUE, align 8
  %25 = load %struct.eapol_sm*, %struct.eapol_sm** %2, align 8
  %26 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %25, i32 0, i32 3
  store i8* %24, i8** %26, align 8
  br label %27

27:                                               ; preds = %23, %8
  %28 = load %struct.eapol_sm*, %struct.eapol_sm** %2, align 8
  %29 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %28, i32 0, i32 3
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  br label %37

33:                                               ; preds = %27
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %5

37:                                               ; preds = %32, %5
  %38 = load %struct.eapol_sm*, %struct.eapol_sm** %2, align 8
  %39 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %38, i32 0, i32 3
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load i32, i32* @eapol_sm_step_timeout, align 4
  %44 = load %struct.eapol_sm*, %struct.eapol_sm** %2, align 8
  %45 = call i32 @eloop_cancel_timeout(i32 %43, i32* null, %struct.eapol_sm* %44)
  %46 = load i32, i32* @eapol_sm_step_timeout, align 4
  %47 = load %struct.eapol_sm*, %struct.eapol_sm** %2, align 8
  %48 = call i32 @eloop_register_timeout(i32 0, i32 0, i32 %46, i32* null, %struct.eapol_sm* %47)
  br label %49

49:                                               ; preds = %42, %37
  %50 = load %struct.eapol_sm*, %struct.eapol_sm** %2, align 8
  %51 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32 (%struct.eapol_sm*, i32, i32)*, i32 (%struct.eapol_sm*, i32, i32)** %53, align 8
  %55 = icmp ne i32 (%struct.eapol_sm*, i32, i32)* %54, null
  br i1 %55, label %56, label %98

56:                                               ; preds = %49
  %57 = load %struct.eapol_sm*, %struct.eapol_sm** %2, align 8
  %58 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @EAPOL_CB_IN_PROGRESS, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %98

62:                                               ; preds = %56
  %63 = load %struct.eapol_sm*, %struct.eapol_sm** %2, align 8
  %64 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @EAPOL_CB_SUCCESS, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = load i32, i32* @EAPOL_SUPP_RESULT_SUCCESS, align 4
  store i32 %69, i32* %4, align 4
  br label %81

70:                                               ; preds = %62
  %71 = load %struct.eapol_sm*, %struct.eapol_sm** %2, align 8
  %72 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @eap_peer_was_failure_expected(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = load i32, i32* @EAPOL_SUPP_RESULT_EXPECTED_FAILURE, align 4
  store i32 %77, i32* %4, align 4
  br label %80

78:                                               ; preds = %70
  %79 = load i32, i32* @EAPOL_SUPP_RESULT_FAILURE, align 4
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %78, %76
  br label %81

81:                                               ; preds = %80, %68
  %82 = load i64, i64* @EAPOL_CB_IN_PROGRESS, align 8
  %83 = load %struct.eapol_sm*, %struct.eapol_sm** %2, align 8
  %84 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %83, i32 0, i32 0
  store i64 %82, i64* %84, align 8
  %85 = load %struct.eapol_sm*, %struct.eapol_sm** %2, align 8
  %86 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %85, i32 0, i32 1
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i32 (%struct.eapol_sm*, i32, i32)*, i32 (%struct.eapol_sm*, i32, i32)** %88, align 8
  %90 = load %struct.eapol_sm*, %struct.eapol_sm** %2, align 8
  %91 = load i32, i32* %4, align 4
  %92 = load %struct.eapol_sm*, %struct.eapol_sm** %2, align 8
  %93 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %92, i32 0, i32 1
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 %89(%struct.eapol_sm* %90, i32 %91, i32 %96)
  br label %98

98:                                               ; preds = %81, %56, %49
  ret void
}

declare dso_local i32 @SM_STEP_RUN(i32) #1

declare dso_local i64 @eap_peer_sm_step(i32) #1

declare dso_local i32 @eloop_cancel_timeout(i32, i32*, %struct.eapol_sm*) #1

declare dso_local i32 @eloop_register_timeout(i32, i32, i32, i32*, %struct.eapol_sm*) #1

declare dso_local i64 @eap_peer_was_failure_expected(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

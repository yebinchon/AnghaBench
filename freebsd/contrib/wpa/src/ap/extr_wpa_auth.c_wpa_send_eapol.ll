; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth.c_wpa_send_eapol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth.c_wpa_send_eapol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_authenticator = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.wpa_state_machine = type { i32, i32, i32 }

@WPA_KEY_INFO_KEY_TYPE = common dso_local global i32 0, align 4
@eapol_key_timeout_first = common dso_local global i32 0, align 4
@eapol_key_timeout_first_group = common dso_local global i32 0, align 4
@eapol_key_timeout_subseq = common dso_local global i32 0, align 4
@WPA_KEY_INFO_MIC = common dso_local global i32 0, align 4
@eapol_key_timeout_no_retrans = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"WPA: Use EAPOL-Key timeout of %u ms (retry counter %u)\00", align 1
@wpa_send_eapol_timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_authenticator*, %struct.wpa_state_machine*, i32, i32*, i32*, i32*, i64, i32, i32)* @wpa_send_eapol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpa_send_eapol(%struct.wpa_authenticator* %0, %struct.wpa_state_machine* %1, i32 %2, i32* %3, i32* %4, i32* %5, i64 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.wpa_authenticator*, align 8
  %11 = alloca %struct.wpa_state_machine*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.wpa_authenticator* %0, %struct.wpa_authenticator** %10, align 8
  store %struct.wpa_state_machine* %1, %struct.wpa_state_machine** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i64 %6, i64* %16, align 8
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* @WPA_KEY_INFO_KEY_TYPE, align 4
  %24 = and i32 %22, %23
  store i32 %24, i32* %20, align 4
  %25 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %11, align 8
  %26 = icmp eq %struct.wpa_state_machine* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %9
  br label %114

28:                                               ; preds = %9
  %29 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %10, align 8
  %30 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %11, align 8
  %31 = load i32, i32* %12, align 4
  %32 = load i32*, i32** %13, align 8
  %33 = load i32*, i32** %14, align 8
  %34 = load i32*, i32** %15, align 8
  %35 = load i64, i64* %16, align 8
  %36 = load i32, i32* %17, align 4
  %37 = load i32, i32* %18, align 4
  %38 = call i32 @__wpa_send_eapol(%struct.wpa_authenticator* %29, %struct.wpa_state_machine* %30, i32 %31, i32* %32, i32* %33, i32* %34, i64 %35, i32 %36, i32 %37, i32 0)
  %39 = load i32, i32* %20, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %28
  %42 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %11, align 8
  %43 = getelementptr inbounds %struct.wpa_state_machine, %struct.wpa_state_machine* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  br label %49

45:                                               ; preds = %28
  %46 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %11, align 8
  %47 = getelementptr inbounds %struct.wpa_state_machine, %struct.wpa_state_machine* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  br label %49

49:                                               ; preds = %45, %41
  %50 = phi i32 [ %44, %41 ], [ %48, %45 ]
  store i32 %50, i32* %21, align 4
  %51 = load i32, i32* %21, align 4
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %53, label %68

53:                                               ; preds = %49
  %54 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %10, align 8
  %55 = getelementptr inbounds %struct.wpa_authenticator, %struct.wpa_authenticator* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %53
  %60 = load i32, i32* %20, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = load i32, i32* @eapol_key_timeout_first, align 4
  br label %66

64:                                               ; preds = %59
  %65 = load i32, i32* @eapol_key_timeout_first_group, align 4
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi i32 [ %63, %62 ], [ %65, %64 ]
  store i32 %67, i32* %19, align 4
  br label %70

68:                                               ; preds = %53, %49
  %69 = load i32, i32* @eapol_key_timeout_subseq, align 4
  store i32 %69, i32* %19, align 4
  br label %70

70:                                               ; preds = %68, %66
  %71 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %10, align 8
  %72 = getelementptr inbounds %struct.wpa_authenticator, %struct.wpa_authenticator* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %70
  %77 = load i32, i32* %20, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* @WPA_KEY_INFO_MIC, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %79, %76
  %85 = load i32, i32* @eapol_key_timeout_no_retrans, align 4
  store i32 %85, i32* %19, align 4
  br label %86

86:                                               ; preds = %84, %79, %70
  %87 = load i32, i32* %20, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %100

89:                                               ; preds = %86
  %90 = load i32, i32* %21, align 4
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %92, label %100

92:                                               ; preds = %89
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* @WPA_KEY_INFO_MIC, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %92
  %98 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %11, align 8
  %99 = getelementptr inbounds %struct.wpa_state_machine, %struct.wpa_state_machine* %98, i32 0, i32 2
  store i32 1, i32* %99, align 4
  br label %100

100:                                              ; preds = %97, %92, %89, %86
  %101 = load i32, i32* @MSG_DEBUG, align 4
  %102 = load i32, i32* %19, align 4
  %103 = load i32, i32* %21, align 4
  %104 = call i32 @wpa_printf(i32 %101, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %102, i32 %103)
  %105 = load i32, i32* %19, align 4
  %106 = sdiv i32 %105, 1000
  %107 = load i32, i32* %19, align 4
  %108 = srem i32 %107, 1000
  %109 = mul nsw i32 %108, 1000
  %110 = load i32, i32* @wpa_send_eapol_timeout, align 4
  %111 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %10, align 8
  %112 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %11, align 8
  %113 = call i32 @eloop_register_timeout(i32 %106, i32 %109, i32 %110, %struct.wpa_authenticator* %111, %struct.wpa_state_machine* %112)
  br label %114

114:                                              ; preds = %100, %27
  ret void
}

declare dso_local i32 @__wpa_send_eapol(%struct.wpa_authenticator*, %struct.wpa_state_machine*, i32, i32*, i32*, i32*, i64, i32, i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32, i32) #1

declare dso_local i32 @eloop_register_timeout(i32, i32, i32, %struct.wpa_authenticator*, %struct.wpa_state_machine*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

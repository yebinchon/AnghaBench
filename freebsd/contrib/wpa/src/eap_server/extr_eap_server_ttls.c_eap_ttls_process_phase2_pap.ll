; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_ttls.c_eap_ttls_process_phase2_pap.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_ttls.c_eap_ttls_process_phase2_pap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64, i32, i64 }
%struct.eap_ttls_data = type { i32 }

@EAP_TTLS_AUTH_PAP = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"EAP-TTLS/PAP: No plaintext user password configured\00", align 1
@FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"EAP-TTLS/PAP: Invalid user password\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"EAP-TTLS/PAP: Correct user password\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, %struct.eap_ttls_data*, i32*, i64)* @eap_ttls_process_phase2_pap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_ttls_process_phase2_pap(%struct.eap_sm* %0, %struct.eap_ttls_data* %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca %struct.eap_ttls_data*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store %struct.eap_ttls_data* %1, %struct.eap_ttls_data** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %10 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp ne %struct.TYPE_2__* %11, null
  br i1 %12, label %13, label %36

13:                                               ; preds = %4
  %14 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %15 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %13
  %21 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %22 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %20
  %28 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %29 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @EAP_TTLS_AUTH_PAP, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %27, %20, %13, %4
  %37 = load i32, i32* @MSG_DEBUG, align 4
  %38 = call i32 @wpa_printf(i32 %37, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %39 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %6, align 8
  %40 = load i32, i32* @FAILURE, align 4
  %41 = call i32 @eap_ttls_state(%struct.eap_ttls_data* %39, i32 %40)
  br label %75

42:                                               ; preds = %27
  %43 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %44 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %8, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %60, label %50

50:                                               ; preds = %42
  %51 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %52 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i32*, i32** %7, align 8
  %57 = load i64, i64* %8, align 8
  %58 = call i64 @os_memcmp_const(i32 %55, i32* %56, i64 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %50, %42
  %61 = load i32, i32* @MSG_DEBUG, align 4
  %62 = call i32 @wpa_printf(i32 %61, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %63 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %6, align 8
  %64 = load i32, i32* @FAILURE, align 4
  %65 = call i32 @eap_ttls_state(%struct.eap_ttls_data* %63, i32 %64)
  br label %75

66:                                               ; preds = %50
  %67 = load i32, i32* @MSG_DEBUG, align 4
  %68 = call i32 @wpa_printf(i32 %67, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %69 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %6, align 8
  %70 = load i32, i32* @SUCCESS, align 4
  %71 = call i32 @eap_ttls_state(%struct.eap_ttls_data* %69, i32 %70)
  %72 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %73 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %6, align 8
  %74 = call i32 @eap_ttls_valid_session(%struct.eap_sm* %72, %struct.eap_ttls_data* %73)
  br label %75

75:                                               ; preds = %66, %60, %36
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @eap_ttls_state(%struct.eap_ttls_data*, i32) #1

declare dso_local i64 @os_memcmp_const(i32, i32*, i64) #1

declare dso_local i32 @eap_ttls_valid_session(%struct.eap_sm*, %struct.eap_ttls_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

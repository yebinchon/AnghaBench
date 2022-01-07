; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_fast.c_eap_fast_process_phase2_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_fast.c_eap_fast_process_phase2_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32, i32, %struct.TYPE_4__*, i64, i32* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.eap_fast_data = type { i64, i32* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"EAP-FAST: Phase2 Identity not found in the user database\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"EAP-FAST: Identity already known - skip Phase 2 Identity Request\00", align 1
@PHASE2_METHOD = common dso_local global i32 0, align 4
@PHASE2_ID = common dso_local global i32 0, align 4
@EAP_TYPE_IDENTITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_sm*, %struct.eap_fast_data*)* @eap_fast_process_phase2_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_fast_process_phase2_start(%struct.eap_sm* %0, %struct.eap_fast_data* %1) #0 {
  %3 = alloca %struct.eap_sm*, align 8
  %4 = alloca %struct.eap_fast_data*, align 8
  %5 = alloca i32, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %3, align 8
  store %struct.eap_fast_data* %1, %struct.eap_fast_data** %4, align 8
  %6 = load %struct.eap_fast_data*, %struct.eap_fast_data** %4, align 8
  %7 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %6, i32 0, i32 1
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %69

10:                                               ; preds = %2
  %11 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %12 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %11, i32 0, i32 4
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @os_free(i32* %13)
  %15 = load %struct.eap_fast_data*, %struct.eap_fast_data** %4, align 8
  %16 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %19 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %18, i32 0, i32 4
  store i32* %17, i32** %19, align 8
  %20 = load %struct.eap_fast_data*, %struct.eap_fast_data** %4, align 8
  %21 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %20, i32 0, i32 1
  store i32* null, i32** %21, align 8
  %22 = load %struct.eap_fast_data*, %struct.eap_fast_data** %4, align 8
  %23 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %26 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %25, i32 0, i32 3
  store i64 %24, i64* %26, align 8
  %27 = load %struct.eap_fast_data*, %struct.eap_fast_data** %4, align 8
  %28 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  %29 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %30 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %32 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %33 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %32, i32 0, i32 4
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %36 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = call i64 @eap_user_get(%struct.eap_sm* %31, i32* %34, i64 %37, i32 1)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %10
  %41 = load i32, i32* @MSG_DEBUG, align 4
  %42 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %43 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %42, i32 0, i32 4
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %46 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @wpa_hexdump_ascii(i32 %41, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32* %44, i64 %47)
  %49 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %50 = load %struct.eap_fast_data*, %struct.eap_fast_data** %4, align 8
  %51 = call i32 @eap_fast_req_failure(%struct.eap_sm* %49, %struct.eap_fast_data* %50)
  store i32 %51, i32* %5, align 4
  br label %65

52:                                               ; preds = %10
  %53 = load i32, i32* @MSG_DEBUG, align 4
  %54 = call i32 @wpa_printf(i32 %53, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0))
  %55 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %56 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %55, i32 0, i32 2
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i64 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %5, align 4
  %63 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %64 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %63, i32 0, i32 1
  store i32 1, i32* %64, align 4
  br label %65

65:                                               ; preds = %52, %40
  %66 = load %struct.eap_fast_data*, %struct.eap_fast_data** %4, align 8
  %67 = load i32, i32* @PHASE2_METHOD, align 4
  %68 = call i32 @eap_fast_state(%struct.eap_fast_data* %66, i32 %67)
  br label %74

69:                                               ; preds = %2
  %70 = load %struct.eap_fast_data*, %struct.eap_fast_data** %4, align 8
  %71 = load i32, i32* @PHASE2_ID, align 4
  %72 = call i32 @eap_fast_state(%struct.eap_fast_data* %70, i32 %71)
  %73 = load i32, i32* @EAP_TYPE_IDENTITY, align 4
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %69, %65
  %75 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %76 = load %struct.eap_fast_data*, %struct.eap_fast_data** %4, align 8
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @eap_fast_phase2_init(%struct.eap_sm* %75, %struct.eap_fast_data* %76, i32 %77)
  ret i32 %78
}

declare dso_local i32 @os_free(i32*) #1

declare dso_local i64 @eap_user_get(%struct.eap_sm*, i32*, i64, i32) #1

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i32*, i64) #1

declare dso_local i32 @eap_fast_req_failure(%struct.eap_sm*, %struct.eap_fast_data*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @eap_fast_state(%struct.eap_fast_data*, i32) #1

declare dso_local i32 @eap_fast_phase2_init(%struct.eap_sm*, %struct.eap_fast_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

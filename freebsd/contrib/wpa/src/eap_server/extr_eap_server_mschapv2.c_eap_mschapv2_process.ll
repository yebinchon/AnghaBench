; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_mschapv2.c_eap_mschapv2_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_mschapv2.c_eap_mschapv2_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }
%struct.wpabuf = type { i32 }
%struct.eap_mschapv2_data = type { i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"EAP-MSCHAPV2: Password not configured\00", align 1
@FAILURE = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"EAP-MSCHAPV2: Unknown state %d in process\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, i8*, %struct.wpabuf*)* @eap_mschapv2_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_mschapv2_process(%struct.eap_sm* %0, i8* %1, %struct.wpabuf* %2) #0 {
  %4 = alloca %struct.eap_sm*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca %struct.eap_mschapv2_data*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.wpabuf* %2, %struct.wpabuf** %6, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.eap_mschapv2_data*
  store %struct.eap_mschapv2_data* %9, %struct.eap_mschapv2_data** %7, align 8
  %10 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %11 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp eq %struct.TYPE_2__* %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %3
  %15 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %16 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %14, %3
  %22 = load i32, i32* @MSG_INFO, align 4
  %23 = call i32 (i32, i8*, ...) @wpa_printf(i32 %22, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @FAILURE, align 4
  %25 = load %struct.eap_mschapv2_data*, %struct.eap_mschapv2_data** %7, align 8
  %26 = getelementptr inbounds %struct.eap_mschapv2_data, %struct.eap_mschapv2_data* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  br label %52

27:                                               ; preds = %14
  %28 = load %struct.eap_mschapv2_data*, %struct.eap_mschapv2_data** %7, align 8
  %29 = getelementptr inbounds %struct.eap_mschapv2_data, %struct.eap_mschapv2_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %46 [
    i32 130, label %31
    i32 128, label %36
    i32 129, label %41
  ]

31:                                               ; preds = %27
  %32 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %33 = load %struct.eap_mschapv2_data*, %struct.eap_mschapv2_data** %7, align 8
  %34 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %35 = call i32 @eap_mschapv2_process_response(%struct.eap_sm* %32, %struct.eap_mschapv2_data* %33, %struct.wpabuf* %34)
  br label %52

36:                                               ; preds = %27
  %37 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %38 = load %struct.eap_mschapv2_data*, %struct.eap_mschapv2_data** %7, align 8
  %39 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %40 = call i32 @eap_mschapv2_process_success_resp(%struct.eap_sm* %37, %struct.eap_mschapv2_data* %38, %struct.wpabuf* %39)
  br label %52

41:                                               ; preds = %27
  %42 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %43 = load %struct.eap_mschapv2_data*, %struct.eap_mschapv2_data** %7, align 8
  %44 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %45 = call i32 @eap_mschapv2_process_failure_resp(%struct.eap_sm* %42, %struct.eap_mschapv2_data* %43, %struct.wpabuf* %44)
  br label %52

46:                                               ; preds = %27
  %47 = load i32, i32* @MSG_DEBUG, align 4
  %48 = load %struct.eap_mschapv2_data*, %struct.eap_mschapv2_data** %7, align 8
  %49 = getelementptr inbounds %struct.eap_mschapv2_data, %struct.eap_mschapv2_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i32, i8*, ...) @wpa_printf(i32 %47, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %21, %46, %41, %36, %31
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @eap_mschapv2_process_response(%struct.eap_sm*, %struct.eap_mschapv2_data*, %struct.wpabuf*) #1

declare dso_local i32 @eap_mschapv2_process_success_resp(%struct.eap_sm*, %struct.eap_mschapv2_data*, %struct.wpabuf*) #1

declare dso_local i32 @eap_mschapv2_process_failure_resp(%struct.eap_sm*, %struct.eap_mschapv2_data*, %struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_frontend_iscsi.c_cfiscsi_pdu_handle_logout_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_frontend_iscsi.c_cfiscsi_pdu_handle_logout_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icl_pdu = type { i64 }
%struct.iscsi_bhs_logout_request = type { i32, i32 }
%struct.iscsi_bhs_logout_response = type { i32, i32, i32, i8* }
%struct.cfiscsi_session = type { i32 }

@M_NOWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to allocate memory\00", align 1
@ISCSI_BHS_OPCODE_LOGOUT_RESPONSE = common dso_local global i8* null, align 8
@BHSLR_RESPONSE_CLOSED_SUCCESSFULLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"failed to allocate memory; dropping connection\00", align 1
@BHSLR_RESPONSE_RECOVERY_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"invalid reason 0%x; dropping connection\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.icl_pdu*)* @cfiscsi_pdu_handle_logout_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfiscsi_pdu_handle_logout_request(%struct.icl_pdu* %0) #0 {
  %2 = alloca %struct.icl_pdu*, align 8
  %3 = alloca %struct.iscsi_bhs_logout_request*, align 8
  %4 = alloca %struct.iscsi_bhs_logout_response*, align 8
  %5 = alloca %struct.icl_pdu*, align 8
  %6 = alloca %struct.cfiscsi_session*, align 8
  store %struct.icl_pdu* %0, %struct.icl_pdu** %2, align 8
  %7 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %8 = call %struct.cfiscsi_session* @PDU_SESSION(%struct.icl_pdu* %7)
  store %struct.cfiscsi_session* %8, %struct.cfiscsi_session** %6, align 8
  %9 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %10 = getelementptr inbounds %struct.icl_pdu, %struct.icl_pdu* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.iscsi_bhs_logout_request*
  store %struct.iscsi_bhs_logout_request* %12, %struct.iscsi_bhs_logout_request** %3, align 8
  %13 = load %struct.iscsi_bhs_logout_request*, %struct.iscsi_bhs_logout_request** %3, align 8
  %14 = getelementptr inbounds %struct.iscsi_bhs_logout_request, %struct.iscsi_bhs_logout_request* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, 127
  switch i32 %16, label %89 [
    i32 129, label %17
    i32 130, label %17
    i32 128, label %54
  ]

17:                                               ; preds = %1, %1
  %18 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %19 = load i32, i32* @M_NOWAIT, align 4
  %20 = call %struct.icl_pdu* @cfiscsi_pdu_new_response(%struct.icl_pdu* %18, i32 %19)
  store %struct.icl_pdu* %20, %struct.icl_pdu** %5, align 8
  %21 = load %struct.icl_pdu*, %struct.icl_pdu** %5, align 8
  %22 = icmp eq %struct.icl_pdu* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %17
  %24 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %6, align 8
  %25 = call i32 @CFISCSI_SESSION_DEBUG(%struct.cfiscsi_session* %24, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %27 = call i32 @icl_pdu_free(%struct.icl_pdu* %26)
  %28 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %6, align 8
  %29 = call i32 @cfiscsi_session_terminate(%struct.cfiscsi_session* %28)
  br label %99

30:                                               ; preds = %17
  %31 = load %struct.icl_pdu*, %struct.icl_pdu** %5, align 8
  %32 = getelementptr inbounds %struct.icl_pdu, %struct.icl_pdu* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct.iscsi_bhs_logout_response*
  store %struct.iscsi_bhs_logout_response* %34, %struct.iscsi_bhs_logout_response** %4, align 8
  %35 = load i8*, i8** @ISCSI_BHS_OPCODE_LOGOUT_RESPONSE, align 8
  %36 = load %struct.iscsi_bhs_logout_response*, %struct.iscsi_bhs_logout_response** %4, align 8
  %37 = getelementptr inbounds %struct.iscsi_bhs_logout_response, %struct.iscsi_bhs_logout_response* %36, i32 0, i32 3
  store i8* %35, i8** %37, align 8
  %38 = load %struct.iscsi_bhs_logout_response*, %struct.iscsi_bhs_logout_response** %4, align 8
  %39 = getelementptr inbounds %struct.iscsi_bhs_logout_response, %struct.iscsi_bhs_logout_response* %38, i32 0, i32 0
  store i32 128, i32* %39, align 8
  %40 = load i32, i32* @BHSLR_RESPONSE_CLOSED_SUCCESSFULLY, align 4
  %41 = load %struct.iscsi_bhs_logout_response*, %struct.iscsi_bhs_logout_response** %4, align 8
  %42 = getelementptr inbounds %struct.iscsi_bhs_logout_response, %struct.iscsi_bhs_logout_response* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = load %struct.iscsi_bhs_logout_request*, %struct.iscsi_bhs_logout_request** %3, align 8
  %44 = getelementptr inbounds %struct.iscsi_bhs_logout_request, %struct.iscsi_bhs_logout_request* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.iscsi_bhs_logout_response*, %struct.iscsi_bhs_logout_response** %4, align 8
  %47 = getelementptr inbounds %struct.iscsi_bhs_logout_response, %struct.iscsi_bhs_logout_response* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %49 = call i32 @icl_pdu_free(%struct.icl_pdu* %48)
  %50 = load %struct.icl_pdu*, %struct.icl_pdu** %5, align 8
  %51 = call i32 @cfiscsi_pdu_queue(%struct.icl_pdu* %50)
  %52 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %6, align 8
  %53 = call i32 @cfiscsi_session_terminate(%struct.cfiscsi_session* %52)
  br label %99

54:                                               ; preds = %1
  %55 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %56 = load i32, i32* @M_NOWAIT, align 4
  %57 = call %struct.icl_pdu* @cfiscsi_pdu_new_response(%struct.icl_pdu* %55, i32 %56)
  store %struct.icl_pdu* %57, %struct.icl_pdu** %5, align 8
  %58 = load %struct.icl_pdu*, %struct.icl_pdu** %5, align 8
  %59 = icmp eq %struct.icl_pdu* %58, null
  br i1 %59, label %60, label %67

60:                                               ; preds = %54
  %61 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %6, align 8
  %62 = call i32 (%struct.cfiscsi_session*, i8*, ...) @CFISCSI_SESSION_WARN(%struct.cfiscsi_session* %61, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %63 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %64 = call i32 @icl_pdu_free(%struct.icl_pdu* %63)
  %65 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %6, align 8
  %66 = call i32 @cfiscsi_session_terminate(%struct.cfiscsi_session* %65)
  br label %99

67:                                               ; preds = %54
  %68 = load %struct.icl_pdu*, %struct.icl_pdu** %5, align 8
  %69 = getelementptr inbounds %struct.icl_pdu, %struct.icl_pdu* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to %struct.iscsi_bhs_logout_response*
  store %struct.iscsi_bhs_logout_response* %71, %struct.iscsi_bhs_logout_response** %4, align 8
  %72 = load i8*, i8** @ISCSI_BHS_OPCODE_LOGOUT_RESPONSE, align 8
  %73 = load %struct.iscsi_bhs_logout_response*, %struct.iscsi_bhs_logout_response** %4, align 8
  %74 = getelementptr inbounds %struct.iscsi_bhs_logout_response, %struct.iscsi_bhs_logout_response* %73, i32 0, i32 3
  store i8* %72, i8** %74, align 8
  %75 = load %struct.iscsi_bhs_logout_response*, %struct.iscsi_bhs_logout_response** %4, align 8
  %76 = getelementptr inbounds %struct.iscsi_bhs_logout_response, %struct.iscsi_bhs_logout_response* %75, i32 0, i32 0
  store i32 128, i32* %76, align 8
  %77 = load i32, i32* @BHSLR_RESPONSE_RECOVERY_NOT_SUPPORTED, align 4
  %78 = load %struct.iscsi_bhs_logout_response*, %struct.iscsi_bhs_logout_response** %4, align 8
  %79 = getelementptr inbounds %struct.iscsi_bhs_logout_response, %struct.iscsi_bhs_logout_response* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  %80 = load %struct.iscsi_bhs_logout_request*, %struct.iscsi_bhs_logout_request** %3, align 8
  %81 = getelementptr inbounds %struct.iscsi_bhs_logout_request, %struct.iscsi_bhs_logout_request* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.iscsi_bhs_logout_response*, %struct.iscsi_bhs_logout_response** %4, align 8
  %84 = getelementptr inbounds %struct.iscsi_bhs_logout_response, %struct.iscsi_bhs_logout_response* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %86 = call i32 @icl_pdu_free(%struct.icl_pdu* %85)
  %87 = load %struct.icl_pdu*, %struct.icl_pdu** %5, align 8
  %88 = call i32 @cfiscsi_pdu_queue(%struct.icl_pdu* %87)
  br label %99

89:                                               ; preds = %1
  %90 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %6, align 8
  %91 = load %struct.iscsi_bhs_logout_request*, %struct.iscsi_bhs_logout_request** %3, align 8
  %92 = getelementptr inbounds %struct.iscsi_bhs_logout_request, %struct.iscsi_bhs_logout_request* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 (%struct.cfiscsi_session*, i8*, ...) @CFISCSI_SESSION_WARN(%struct.cfiscsi_session* %90, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %93)
  %95 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %96 = call i32 @icl_pdu_free(%struct.icl_pdu* %95)
  %97 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %6, align 8
  %98 = call i32 @cfiscsi_session_terminate(%struct.cfiscsi_session* %97)
  br label %99

99:                                               ; preds = %23, %60, %89, %67, %30
  ret void
}

declare dso_local %struct.cfiscsi_session* @PDU_SESSION(%struct.icl_pdu*) #1

declare dso_local %struct.icl_pdu* @cfiscsi_pdu_new_response(%struct.icl_pdu*, i32) #1

declare dso_local i32 @CFISCSI_SESSION_DEBUG(%struct.cfiscsi_session*, i8*) #1

declare dso_local i32 @icl_pdu_free(%struct.icl_pdu*) #1

declare dso_local i32 @cfiscsi_session_terminate(%struct.cfiscsi_session*) #1

declare dso_local i32 @cfiscsi_pdu_queue(%struct.icl_pdu*) #1

declare dso_local i32 @CFISCSI_SESSION_WARN(%struct.cfiscsi_session*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

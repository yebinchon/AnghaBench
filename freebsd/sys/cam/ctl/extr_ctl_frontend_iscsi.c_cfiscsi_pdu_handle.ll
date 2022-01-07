; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_frontend_iscsi.c_cfiscsi_pdu_handle.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_frontend_iscsi.c_cfiscsi_pdu_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icl_pdu = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.cfiscsi_session = type { i32 }

@ISCSI_BHS_OPCODE_IMMEDIATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"received PDU with unsupported opcode 0x%x; dropping connection\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.icl_pdu*)* @cfiscsi_pdu_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfiscsi_pdu_handle(%struct.icl_pdu* %0) #0 {
  %2 = alloca %struct.icl_pdu*, align 8
  %3 = alloca %struct.cfiscsi_session*, align 8
  %4 = alloca i32, align 4
  store %struct.icl_pdu* %0, %struct.icl_pdu** %2, align 8
  %5 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %6 = call %struct.cfiscsi_session* @PDU_SESSION(%struct.icl_pdu* %5)
  store %struct.cfiscsi_session* %6, %struct.cfiscsi_session** %3, align 8
  %7 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %8 = call i32 @cfiscsi_pdu_update_cmdsn(%struct.icl_pdu* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %13 = call i32 @icl_pdu_free(%struct.icl_pdu* %12)
  br label %50

14:                                               ; preds = %1
  %15 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %16 = getelementptr inbounds %struct.icl_pdu, %struct.icl_pdu* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @ISCSI_BHS_OPCODE_IMMEDIATE, align 4
  %21 = xor i32 %20, -1
  %22 = and i32 %19, %21
  switch i32 %22, label %38 [
    i32 131, label %23
    i32 130, label %26
    i32 128, label %29
    i32 129, label %32
    i32 132, label %35
  ]

23:                                               ; preds = %14
  %24 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %25 = call i32 @cfiscsi_pdu_handle_nop_out(%struct.icl_pdu* %24)
  br label %50

26:                                               ; preds = %14
  %27 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %28 = call i32 @cfiscsi_pdu_handle_scsi_command(%struct.icl_pdu* %27)
  br label %50

29:                                               ; preds = %14
  %30 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %31 = call i32 @cfiscsi_pdu_handle_task_request(%struct.icl_pdu* %30)
  br label %50

32:                                               ; preds = %14
  %33 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %34 = call i32 @cfiscsi_pdu_handle_data_out(%struct.icl_pdu* %33)
  br label %50

35:                                               ; preds = %14
  %36 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %37 = call i32 @cfiscsi_pdu_handle_logout_request(%struct.icl_pdu* %36)
  br label %50

38:                                               ; preds = %14
  %39 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %3, align 8
  %40 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %41 = getelementptr inbounds %struct.icl_pdu, %struct.icl_pdu* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @CFISCSI_SESSION_WARN(%struct.cfiscsi_session* %39, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %47 = call i32 @icl_pdu_free(%struct.icl_pdu* %46)
  %48 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %3, align 8
  %49 = call i32 @cfiscsi_session_terminate(%struct.cfiscsi_session* %48)
  br label %50

50:                                               ; preds = %11, %38, %35, %32, %29, %26, %23
  ret void
}

declare dso_local %struct.cfiscsi_session* @PDU_SESSION(%struct.icl_pdu*) #1

declare dso_local i32 @cfiscsi_pdu_update_cmdsn(%struct.icl_pdu*) #1

declare dso_local i32 @icl_pdu_free(%struct.icl_pdu*) #1

declare dso_local i32 @cfiscsi_pdu_handle_nop_out(%struct.icl_pdu*) #1

declare dso_local i32 @cfiscsi_pdu_handle_scsi_command(%struct.icl_pdu*) #1

declare dso_local i32 @cfiscsi_pdu_handle_task_request(%struct.icl_pdu*) #1

declare dso_local i32 @cfiscsi_pdu_handle_data_out(%struct.icl_pdu*) #1

declare dso_local i32 @cfiscsi_pdu_handle_logout_request(%struct.icl_pdu*) #1

declare dso_local i32 @CFISCSI_SESSION_WARN(%struct.cfiscsi_session*, i8*, i32) #1

declare dso_local i32 @cfiscsi_session_terminate(%struct.cfiscsi_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

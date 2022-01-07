; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_frontend_iscsi.c_cfiscsi_callout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_frontend_iscsi.c_cfiscsi_callout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icl_pdu = type { i64 }
%struct.iscsi_bhs_nop_in = type { i32, i32, i32 }
%struct.cfiscsi_session = type { i64, i32, i64, i64, i32, i64 }

@hz = common dso_local global i32 0, align 4
@ping_timeout = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [62 x i8] c"no ping reply (NOP-Out) after %d seconds; dropping connection\00", align 1
@M_NOWAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to allocate memory\00", align 1
@ISCSI_BHS_OPCODE_NOP_IN = common dso_local global i32 0, align 4
@login_timeout = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @cfiscsi_callout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfiscsi_callout(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.icl_pdu*, align 8
  %4 = alloca %struct.iscsi_bhs_nop_in*, align 8
  %5 = alloca %struct.cfiscsi_session*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.cfiscsi_session*
  store %struct.cfiscsi_session* %7, %struct.cfiscsi_session** %5, align 8
  %8 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %5, align 8
  %9 = getelementptr inbounds %struct.cfiscsi_session, %struct.cfiscsi_session* %8, i32 0, i32 5
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %70

13:                                               ; preds = %1
  %14 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %5, align 8
  %15 = getelementptr inbounds %struct.cfiscsi_session, %struct.cfiscsi_session* %14, i32 0, i32 4
  %16 = load i32, i32* @hz, align 4
  %17 = mul nsw i32 1, %16
  %18 = call i32 @callout_schedule(i32* %15, i32 %17)
  %19 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %5, align 8
  %20 = getelementptr inbounds %struct.cfiscsi_session, %struct.cfiscsi_session* %19, i32 0, i32 0
  %21 = call i32 @atomic_add_int(i64* %20, i32 1)
  %22 = load i64, i64* @ping_timeout, align 8
  %23 = icmp sle i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %13
  %25 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %5, align 8
  %26 = getelementptr inbounds %struct.cfiscsi_session, %struct.cfiscsi_session* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  br label %70

27:                                               ; preds = %13
  %28 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %5, align 8
  %29 = getelementptr inbounds %struct.cfiscsi_session, %struct.cfiscsi_session* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @ping_timeout, align 8
  %32 = icmp sge i64 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %5, align 8
  %35 = load i64, i64* @ping_timeout, align 8
  %36 = call i32 (%struct.cfiscsi_session*, i8*, ...) @CFISCSI_SESSION_WARN(%struct.cfiscsi_session* %34, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i64 %35)
  %37 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %5, align 8
  %38 = call i32 @cfiscsi_session_terminate(%struct.cfiscsi_session* %37)
  br label %70

39:                                               ; preds = %27
  %40 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %5, align 8
  %41 = getelementptr inbounds %struct.cfiscsi_session, %struct.cfiscsi_session* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp slt i64 %42, 2
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %70

45:                                               ; preds = %39
  %46 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %5, align 8
  %47 = getelementptr inbounds %struct.cfiscsi_session, %struct.cfiscsi_session* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @M_NOWAIT, align 4
  %50 = call %struct.icl_pdu* @icl_pdu_new(i32 %48, i32 %49)
  store %struct.icl_pdu* %50, %struct.icl_pdu** %3, align 8
  %51 = load %struct.icl_pdu*, %struct.icl_pdu** %3, align 8
  %52 = icmp eq %struct.icl_pdu* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %45
  %54 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %5, align 8
  %55 = call i32 (%struct.cfiscsi_session*, i8*, ...) @CFISCSI_SESSION_WARN(%struct.cfiscsi_session* %54, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %70

56:                                               ; preds = %45
  %57 = load %struct.icl_pdu*, %struct.icl_pdu** %3, align 8
  %58 = getelementptr inbounds %struct.icl_pdu, %struct.icl_pdu* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to %struct.iscsi_bhs_nop_in*
  store %struct.iscsi_bhs_nop_in* %60, %struct.iscsi_bhs_nop_in** %4, align 8
  %61 = load i32, i32* @ISCSI_BHS_OPCODE_NOP_IN, align 4
  %62 = load %struct.iscsi_bhs_nop_in*, %struct.iscsi_bhs_nop_in** %4, align 8
  %63 = getelementptr inbounds %struct.iscsi_bhs_nop_in, %struct.iscsi_bhs_nop_in* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  %64 = load %struct.iscsi_bhs_nop_in*, %struct.iscsi_bhs_nop_in** %4, align 8
  %65 = getelementptr inbounds %struct.iscsi_bhs_nop_in, %struct.iscsi_bhs_nop_in* %64, i32 0, i32 0
  store i32 128, i32* %65, align 4
  %66 = load %struct.iscsi_bhs_nop_in*, %struct.iscsi_bhs_nop_in** %4, align 8
  %67 = getelementptr inbounds %struct.iscsi_bhs_nop_in, %struct.iscsi_bhs_nop_in* %66, i32 0, i32 1
  store i32 -1, i32* %67, align 4
  %68 = load %struct.icl_pdu*, %struct.icl_pdu** %3, align 8
  %69 = call i32 @cfiscsi_pdu_queue(%struct.icl_pdu* %68)
  br label %70

70:                                               ; preds = %56, %53, %44, %33, %24, %12
  ret void
}

declare dso_local i32 @callout_schedule(i32*, i32) #1

declare dso_local i32 @atomic_add_int(i64*, i32) #1

declare dso_local i32 @CFISCSI_SESSION_WARN(%struct.cfiscsi_session*, i8*, ...) #1

declare dso_local i32 @cfiscsi_session_terminate(%struct.cfiscsi_session*) #1

declare dso_local %struct.icl_pdu* @icl_pdu_new(i32, i32) #1

declare dso_local i32 @cfiscsi_pdu_queue(%struct.icl_pdu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

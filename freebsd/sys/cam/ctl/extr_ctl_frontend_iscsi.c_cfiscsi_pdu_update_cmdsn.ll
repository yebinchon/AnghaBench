; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_frontend_iscsi.c_cfiscsi_pdu_update_cmdsn.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_frontend_iscsi.c_cfiscsi_pdu_update_cmdsn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icl_pdu = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.iscsi_bhs_scsi_command = type { i32, i32 }
%struct.cfiscsi_session = type { i64, i32, i64 }

@ISCSI_BHS_OPCODE_IMMEDIATE = common dso_local global i32 0, align 4
@ISCSI_BHS_OPCODE_SCSI_DATA_OUT = common dso_local global i32 0, align 4
@maxtags = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"received PDU with CmdSN %u, while expected %u\00", align 1
@.str.1 = private unnamed_addr constant [67 x i8] c"received PDU with CmdSN %u, while expected %u; dropping connection\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.icl_pdu*)* @cfiscsi_pdu_update_cmdsn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfiscsi_pdu_update_cmdsn(%struct.icl_pdu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.icl_pdu*, align 8
  %4 = alloca %struct.iscsi_bhs_scsi_command*, align 8
  %5 = alloca %struct.cfiscsi_session*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.icl_pdu* %0, %struct.icl_pdu** %3, align 8
  %8 = load %struct.icl_pdu*, %struct.icl_pdu** %3, align 8
  %9 = call %struct.cfiscsi_session* @PDU_SESSION(%struct.icl_pdu* %8)
  store %struct.cfiscsi_session* %9, %struct.cfiscsi_session** %5, align 8
  %10 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %5, align 8
  %11 = getelementptr inbounds %struct.cfiscsi_session, %struct.cfiscsi_session* %10, i32 0, i32 2
  store i64 0, i64* %11, align 8
  %12 = load %struct.icl_pdu*, %struct.icl_pdu** %3, align 8
  %13 = getelementptr inbounds %struct.icl_pdu, %struct.icl_pdu* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @ISCSI_BHS_OPCODE_IMMEDIATE, align 4
  %18 = xor i32 %17, -1
  %19 = and i32 %16, %18
  %20 = load i32, i32* @ISCSI_BHS_OPCODE_SCSI_DATA_OUT, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %98

23:                                               ; preds = %1
  %24 = load %struct.icl_pdu*, %struct.icl_pdu** %3, align 8
  %25 = getelementptr inbounds %struct.icl_pdu, %struct.icl_pdu* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = bitcast %struct.TYPE_2__* %26 to %struct.iscsi_bhs_scsi_command*
  store %struct.iscsi_bhs_scsi_command* %27, %struct.iscsi_bhs_scsi_command** %4, align 8
  %28 = load %struct.iscsi_bhs_scsi_command*, %struct.iscsi_bhs_scsi_command** %4, align 8
  %29 = getelementptr inbounds %struct.iscsi_bhs_scsi_command, %struct.iscsi_bhs_scsi_command* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @ntohl(i32 %30)
  store i64 %31, i64* %6, align 8
  %32 = load %struct.iscsi_bhs_scsi_command*, %struct.iscsi_bhs_scsi_command** %4, align 8
  %33 = getelementptr inbounds %struct.iscsi_bhs_scsi_command, %struct.iscsi_bhs_scsi_command* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @ntohl(i32 %34)
  store i64 %35, i64* %7, align 8
  %36 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %5, align 8
  %37 = call i32 @CFISCSI_SESSION_LOCK(%struct.cfiscsi_session* %36)
  %38 = load %struct.icl_pdu*, %struct.icl_pdu** %3, align 8
  %39 = getelementptr inbounds %struct.icl_pdu, %struct.icl_pdu* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @ISCSI_BHS_OPCODE_IMMEDIATE, align 4
  %44 = and i32 %42, %43
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %95

46:                                               ; preds = %23
  %47 = load i64, i64* %6, align 8
  %48 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %5, align 8
  %49 = getelementptr inbounds %struct.cfiscsi_session, %struct.cfiscsi_session* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @ISCSI_SNLT(i64 %47, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %63, label %53

53:                                               ; preds = %46
  %54 = load i64, i64* %6, align 8
  %55 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %5, align 8
  %56 = getelementptr inbounds %struct.cfiscsi_session, %struct.cfiscsi_session* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = sub nsw i32 %57, 1
  %59 = load i32, i32* @maxtags, align 4
  %60 = add nsw i32 %58, %59
  %61 = call i64 @ISCSI_SNGT(i64 %54, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %53, %46
  %64 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %5, align 8
  %65 = call i32 @CFISCSI_SESSION_UNLOCK(%struct.cfiscsi_session* %64)
  %66 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %5, align 8
  %67 = load i64, i64* %6, align 8
  %68 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %5, align 8
  %69 = getelementptr inbounds %struct.cfiscsi_session, %struct.cfiscsi_session* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @CFISCSI_SESSION_WARN(%struct.cfiscsi_session* %66, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %67, i32 %70)
  store i32 1, i32* %2, align 4
  br label %98

72:                                               ; preds = %53
  %73 = load i64, i64* %6, align 8
  %74 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %5, align 8
  %75 = getelementptr inbounds %struct.cfiscsi_session, %struct.cfiscsi_session* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = sext i32 %76 to i64
  %78 = icmp ne i64 %73, %77
  br i1 %78, label %79, label %90

79:                                               ; preds = %72
  %80 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %5, align 8
  %81 = call i32 @CFISCSI_SESSION_UNLOCK(%struct.cfiscsi_session* %80)
  %82 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %5, align 8
  %83 = load i64, i64* %6, align 8
  %84 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %5, align 8
  %85 = getelementptr inbounds %struct.cfiscsi_session, %struct.cfiscsi_session* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @CFISCSI_SESSION_WARN(%struct.cfiscsi_session* %82, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i64 %83, i32 %86)
  %88 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %5, align 8
  %89 = call i32 @cfiscsi_session_terminate(%struct.cfiscsi_session* %88)
  store i32 1, i32* %2, align 4
  br label %98

90:                                               ; preds = %72
  %91 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %5, align 8
  %92 = getelementptr inbounds %struct.cfiscsi_session, %struct.cfiscsi_session* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 8
  br label %95

95:                                               ; preds = %90, %23
  %96 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %5, align 8
  %97 = call i32 @CFISCSI_SESSION_UNLOCK(%struct.cfiscsi_session* %96)
  store i32 0, i32* %2, align 4
  br label %98

98:                                               ; preds = %95, %79, %63, %22
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local %struct.cfiscsi_session* @PDU_SESSION(%struct.icl_pdu*) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @CFISCSI_SESSION_LOCK(%struct.cfiscsi_session*) #1

declare dso_local i64 @ISCSI_SNLT(i64, i32) #1

declare dso_local i64 @ISCSI_SNGT(i64, i32) #1

declare dso_local i32 @CFISCSI_SESSION_UNLOCK(%struct.cfiscsi_session*) #1

declare dso_local i32 @CFISCSI_SESSION_WARN(%struct.cfiscsi_session*, i8*, i64, i32) #1

declare dso_local i32 @cfiscsi_session_terminate(%struct.cfiscsi_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

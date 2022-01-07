; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_frontend_iscsi.c_cfiscsi_pdu_prepare.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_frontend_iscsi.c_cfiscsi_pdu_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icl_pdu = type { i64 }
%struct.cfiscsi_session = type { i32, i32, i64 }
%struct.iscsi_bhs_scsi_response = type { i64, i32, i32, i8*, i8*, i8* }

@ISCSI_BHS_OPCODE_R2T = common dso_local global i64 0, align 8
@ISCSI_BHS_OPCODE_NOP_IN = common dso_local global i64 0, align 8
@ISCSI_BHS_OPCODE_SCSI_DATA_IN = common dso_local global i64 0, align 8
@BHSDI_FLAGS_S = common dso_local global i32 0, align 4
@maxtags = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.icl_pdu*)* @cfiscsi_pdu_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfiscsi_pdu_prepare(%struct.icl_pdu* %0) #0 {
  %2 = alloca %struct.icl_pdu*, align 8
  %3 = alloca %struct.cfiscsi_session*, align 8
  %4 = alloca %struct.iscsi_bhs_scsi_response*, align 8
  %5 = alloca i32, align 4
  store %struct.icl_pdu* %0, %struct.icl_pdu** %2, align 8
  store i32 1, i32* %5, align 4
  %6 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %7 = call %struct.cfiscsi_session* @PDU_SESSION(%struct.icl_pdu* %6)
  store %struct.cfiscsi_session* %7, %struct.cfiscsi_session** %3, align 8
  %8 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %3, align 8
  %9 = call i32 @CFISCSI_SESSION_LOCK_ASSERT(%struct.cfiscsi_session* %8)
  %10 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %11 = getelementptr inbounds %struct.icl_pdu, %struct.icl_pdu* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.iscsi_bhs_scsi_response*
  store %struct.iscsi_bhs_scsi_response* %13, %struct.iscsi_bhs_scsi_response** %4, align 8
  %14 = load %struct.iscsi_bhs_scsi_response*, %struct.iscsi_bhs_scsi_response** %4, align 8
  %15 = getelementptr inbounds %struct.iscsi_bhs_scsi_response, %struct.iscsi_bhs_scsi_response* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @ISCSI_BHS_OPCODE_R2T, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %19, %1
  %21 = load %struct.iscsi_bhs_scsi_response*, %struct.iscsi_bhs_scsi_response** %4, align 8
  %22 = getelementptr inbounds %struct.iscsi_bhs_scsi_response, %struct.iscsi_bhs_scsi_response* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @ISCSI_BHS_OPCODE_NOP_IN, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = load %struct.iscsi_bhs_scsi_response*, %struct.iscsi_bhs_scsi_response** %4, align 8
  %28 = getelementptr inbounds %struct.iscsi_bhs_scsi_response, %struct.iscsi_bhs_scsi_response* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %31, %26, %20
  %33 = load %struct.iscsi_bhs_scsi_response*, %struct.iscsi_bhs_scsi_response** %4, align 8
  %34 = getelementptr inbounds %struct.iscsi_bhs_scsi_response, %struct.iscsi_bhs_scsi_response* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @ISCSI_BHS_OPCODE_SCSI_DATA_IN, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %32
  %39 = load %struct.iscsi_bhs_scsi_response*, %struct.iscsi_bhs_scsi_response** %4, align 8
  %40 = getelementptr inbounds %struct.iscsi_bhs_scsi_response, %struct.iscsi_bhs_scsi_response* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @BHSDI_FLAGS_S, align 4
  %43 = and i32 %41, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %45, %38, %32
  %47 = load %struct.iscsi_bhs_scsi_response*, %struct.iscsi_bhs_scsi_response** %4, align 8
  %48 = getelementptr inbounds %struct.iscsi_bhs_scsi_response, %struct.iscsi_bhs_scsi_response* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @ISCSI_BHS_OPCODE_SCSI_DATA_IN, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %59, label %52

52:                                               ; preds = %46
  %53 = load %struct.iscsi_bhs_scsi_response*, %struct.iscsi_bhs_scsi_response** %4, align 8
  %54 = getelementptr inbounds %struct.iscsi_bhs_scsi_response, %struct.iscsi_bhs_scsi_response* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @BHSDI_FLAGS_S, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %52, %46
  %60 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %3, align 8
  %61 = getelementptr inbounds %struct.cfiscsi_session, %struct.cfiscsi_session* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i8* @htonl(i32 %62)
  %64 = load %struct.iscsi_bhs_scsi_response*, %struct.iscsi_bhs_scsi_response** %4, align 8
  %65 = getelementptr inbounds %struct.iscsi_bhs_scsi_response, %struct.iscsi_bhs_scsi_response* %64, i32 0, i32 5
  store i8* %63, i8** %65, align 8
  br label %66

66:                                               ; preds = %59, %52
  %67 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %3, align 8
  %68 = getelementptr inbounds %struct.cfiscsi_session, %struct.cfiscsi_session* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i8* @htonl(i32 %69)
  %71 = load %struct.iscsi_bhs_scsi_response*, %struct.iscsi_bhs_scsi_response** %4, align 8
  %72 = getelementptr inbounds %struct.iscsi_bhs_scsi_response, %struct.iscsi_bhs_scsi_response* %71, i32 0, i32 4
  store i8* %70, i8** %72, align 8
  %73 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %3, align 8
  %74 = getelementptr inbounds %struct.cfiscsi_session, %struct.cfiscsi_session* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = sub nsw i32 %75, 1
  %77 = load i64, i64* @maxtags, align 8
  %78 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %3, align 8
  %79 = getelementptr inbounds %struct.cfiscsi_session, %struct.cfiscsi_session* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = sub nsw i64 %77, %80
  %82 = call i32 @imax(i32 0, i64 %81)
  %83 = add nsw i32 %76, %82
  %84 = call i8* @htonl(i32 %83)
  %85 = load %struct.iscsi_bhs_scsi_response*, %struct.iscsi_bhs_scsi_response** %4, align 8
  %86 = getelementptr inbounds %struct.iscsi_bhs_scsi_response, %struct.iscsi_bhs_scsi_response* %85, i32 0, i32 3
  store i8* %84, i8** %86, align 8
  %87 = load i32, i32* %5, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %66
  %90 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %3, align 8
  %91 = getelementptr inbounds %struct.cfiscsi_session, %struct.cfiscsi_session* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 8
  br label %94

94:                                               ; preds = %89, %66
  ret i32 0
}

declare dso_local %struct.cfiscsi_session* @PDU_SESSION(%struct.icl_pdu*) #1

declare dso_local i32 @CFISCSI_SESSION_LOCK_ASSERT(%struct.cfiscsi_session*) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @imax(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

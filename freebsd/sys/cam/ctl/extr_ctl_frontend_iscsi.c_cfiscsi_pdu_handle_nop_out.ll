; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_frontend_iscsi.c_cfiscsi_pdu_handle_nop_out.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_frontend_iscsi.c_cfiscsi_pdu_handle_nop_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icl_pdu = type { i64 }
%struct.cfiscsi_session = type { i32 }
%struct.iscsi_bhs_nop_out = type { i32 }
%struct.iscsi_bhs_nop_in = type { i32, i32, i32, i32 }

@M_CFISCSI = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"failed to allocate memory; dropping connection\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"failed to allocate memory; droppping connection\00", align 1
@ISCSI_BHS_OPCODE_NOP_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.icl_pdu*)* @cfiscsi_pdu_handle_nop_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfiscsi_pdu_handle_nop_out(%struct.icl_pdu* %0) #0 {
  %2 = alloca %struct.icl_pdu*, align 8
  %3 = alloca %struct.cfiscsi_session*, align 8
  %4 = alloca %struct.iscsi_bhs_nop_out*, align 8
  %5 = alloca %struct.iscsi_bhs_nop_in*, align 8
  %6 = alloca %struct.icl_pdu*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.icl_pdu* %0, %struct.icl_pdu** %2, align 8
  store i8* null, i8** %7, align 8
  %10 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %11 = call %struct.cfiscsi_session* @PDU_SESSION(%struct.icl_pdu* %10)
  store %struct.cfiscsi_session* %11, %struct.cfiscsi_session** %3, align 8
  %12 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %13 = getelementptr inbounds %struct.icl_pdu, %struct.icl_pdu* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.iscsi_bhs_nop_out*
  store %struct.iscsi_bhs_nop_out* %15, %struct.iscsi_bhs_nop_out** %4, align 8
  %16 = load %struct.iscsi_bhs_nop_out*, %struct.iscsi_bhs_nop_out** %4, align 8
  %17 = getelementptr inbounds %struct.iscsi_bhs_nop_out, %struct.iscsi_bhs_nop_out* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %22 = call i32 @icl_pdu_free(%struct.icl_pdu* %21)
  br label %113

23:                                               ; preds = %1
  %24 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %25 = call i64 @icl_pdu_data_segment_length(%struct.icl_pdu* %24)
  store i64 %25, i64* %8, align 8
  %26 = load i64, i64* %8, align 8
  %27 = icmp ugt i64 %26, 0
  br i1 %27, label %28, label %49

28:                                               ; preds = %23
  %29 = load i64, i64* %8, align 8
  %30 = load i32, i32* @M_CFISCSI, align 4
  %31 = load i32, i32* @M_NOWAIT, align 4
  %32 = load i32, i32* @M_ZERO, align 4
  %33 = or i32 %31, %32
  %34 = call i8* @malloc(i64 %29, i32 %30, i32 %33)
  store i8* %34, i8** %7, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %44

37:                                               ; preds = %28
  %38 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %3, align 8
  %39 = call i32 @CFISCSI_SESSION_WARN(%struct.cfiscsi_session* %38, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %41 = call i32 @icl_pdu_free(%struct.icl_pdu* %40)
  %42 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %3, align 8
  %43 = call i32 @cfiscsi_session_terminate(%struct.cfiscsi_session* %42)
  br label %113

44:                                               ; preds = %28
  %45 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = load i64, i64* %8, align 8
  %48 = call i32 @icl_pdu_get_data(%struct.icl_pdu* %45, i32 0, i8* %46, i64 %47)
  br label %49

49:                                               ; preds = %44, %23
  %50 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %51 = load i32, i32* @M_NOWAIT, align 4
  %52 = call %struct.icl_pdu* @cfiscsi_pdu_new_response(%struct.icl_pdu* %50, i32 %51)
  store %struct.icl_pdu* %52, %struct.icl_pdu** %6, align 8
  %53 = load %struct.icl_pdu*, %struct.icl_pdu** %6, align 8
  %54 = icmp eq %struct.icl_pdu* %53, null
  br i1 %54, label %55, label %65

55:                                               ; preds = %49
  %56 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %3, align 8
  %57 = call i32 @CFISCSI_SESSION_WARN(%struct.cfiscsi_session* %56, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i8*, i8** %7, align 8
  %59 = load i32, i32* @M_CFISCSI, align 4
  %60 = call i32 @free(i8* %58, i32 %59)
  %61 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %62 = call i32 @icl_pdu_free(%struct.icl_pdu* %61)
  %63 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %3, align 8
  %64 = call i32 @cfiscsi_session_terminate(%struct.cfiscsi_session* %63)
  br label %113

65:                                               ; preds = %49
  %66 = load %struct.icl_pdu*, %struct.icl_pdu** %6, align 8
  %67 = getelementptr inbounds %struct.icl_pdu, %struct.icl_pdu* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = inttoptr i64 %68 to %struct.iscsi_bhs_nop_in*
  store %struct.iscsi_bhs_nop_in* %69, %struct.iscsi_bhs_nop_in** %5, align 8
  %70 = load i32, i32* @ISCSI_BHS_OPCODE_NOP_IN, align 4
  %71 = load %struct.iscsi_bhs_nop_in*, %struct.iscsi_bhs_nop_in** %5, align 8
  %72 = getelementptr inbounds %struct.iscsi_bhs_nop_in, %struct.iscsi_bhs_nop_in* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 4
  %73 = load %struct.iscsi_bhs_nop_in*, %struct.iscsi_bhs_nop_in** %5, align 8
  %74 = getelementptr inbounds %struct.iscsi_bhs_nop_in, %struct.iscsi_bhs_nop_in* %73, i32 0, i32 0
  store i32 128, i32* %74, align 4
  %75 = load %struct.iscsi_bhs_nop_out*, %struct.iscsi_bhs_nop_out** %4, align 8
  %76 = getelementptr inbounds %struct.iscsi_bhs_nop_out, %struct.iscsi_bhs_nop_out* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.iscsi_bhs_nop_in*, %struct.iscsi_bhs_nop_in** %5, align 8
  %79 = getelementptr inbounds %struct.iscsi_bhs_nop_in, %struct.iscsi_bhs_nop_in* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load %struct.iscsi_bhs_nop_in*, %struct.iscsi_bhs_nop_in** %5, align 8
  %81 = getelementptr inbounds %struct.iscsi_bhs_nop_in, %struct.iscsi_bhs_nop_in* %80, i32 0, i32 2
  store i32 -1, i32* %81, align 4
  %82 = load i64, i64* %8, align 8
  %83 = icmp ugt i64 %82, 0
  br i1 %83, label %84, label %108

84:                                               ; preds = %65
  %85 = load %struct.icl_pdu*, %struct.icl_pdu** %6, align 8
  %86 = load i8*, i8** %7, align 8
  %87 = load i64, i64* %8, align 8
  %88 = load i32, i32* @M_NOWAIT, align 4
  %89 = call i32 @icl_pdu_append_data(%struct.icl_pdu* %85, i8* %86, i64 %87, i32 %88)
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %9, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %104

92:                                               ; preds = %84
  %93 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %3, align 8
  %94 = call i32 @CFISCSI_SESSION_WARN(%struct.cfiscsi_session* %93, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %95 = load i8*, i8** %7, align 8
  %96 = load i32, i32* @M_CFISCSI, align 4
  %97 = call i32 @free(i8* %95, i32 %96)
  %98 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %99 = call i32 @icl_pdu_free(%struct.icl_pdu* %98)
  %100 = load %struct.icl_pdu*, %struct.icl_pdu** %6, align 8
  %101 = call i32 @icl_pdu_free(%struct.icl_pdu* %100)
  %102 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %3, align 8
  %103 = call i32 @cfiscsi_session_terminate(%struct.cfiscsi_session* %102)
  br label %113

104:                                              ; preds = %84
  %105 = load i8*, i8** %7, align 8
  %106 = load i32, i32* @M_CFISCSI, align 4
  %107 = call i32 @free(i8* %105, i32 %106)
  br label %108

108:                                              ; preds = %104, %65
  %109 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %110 = call i32 @icl_pdu_free(%struct.icl_pdu* %109)
  %111 = load %struct.icl_pdu*, %struct.icl_pdu** %6, align 8
  %112 = call i32 @cfiscsi_pdu_queue(%struct.icl_pdu* %111)
  br label %113

113:                                              ; preds = %108, %92, %55, %37, %20
  ret void
}

declare dso_local %struct.cfiscsi_session* @PDU_SESSION(%struct.icl_pdu*) #1

declare dso_local i32 @icl_pdu_free(%struct.icl_pdu*) #1

declare dso_local i64 @icl_pdu_data_segment_length(%struct.icl_pdu*) #1

declare dso_local i8* @malloc(i64, i32, i32) #1

declare dso_local i32 @CFISCSI_SESSION_WARN(%struct.cfiscsi_session*, i8*) #1

declare dso_local i32 @cfiscsi_session_terminate(%struct.cfiscsi_session*) #1

declare dso_local i32 @icl_pdu_get_data(%struct.icl_pdu*, i32, i8*, i64) #1

declare dso_local %struct.icl_pdu* @cfiscsi_pdu_new_response(%struct.icl_pdu*, i32) #1

declare dso_local i32 @free(i8*, i32) #1

declare dso_local i32 @icl_pdu_append_data(%struct.icl_pdu*, i8*, i64, i32) #1

declare dso_local i32 @cfiscsi_pdu_queue(%struct.icl_pdu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

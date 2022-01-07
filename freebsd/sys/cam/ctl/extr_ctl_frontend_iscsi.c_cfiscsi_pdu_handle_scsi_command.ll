; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_frontend_iscsi.c_cfiscsi_pdu_handle_scsi_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_frontend_iscsi.c_cfiscsi_pdu_handle_scsi_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icl_pdu = type { i64, i64 }
%struct.iscsi_bhs_scsi_command = type { i32, i32, i32, i32 }
%struct.cfiscsi_session = type { i32, i32, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%union.ctl_io = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, i8*, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, i32, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.icl_pdu* }

@.str = private unnamed_addr constant [60 x i8] c"unsolicited data with ImmediateData=No; dropping connection\00", align 1
@CTL_PRIV_FRONTEND = common dso_local global i64 0, align 8
@CTL_IO_SCSI = common dso_local global i32 0, align 4
@BHSSC_FLAGS_ATTR = common dso_local global i32 0, align 4
@CTL_TAG_UNTAGGED = common dso_local global i8* null, align 8
@CTL_TAG_SIMPLE = common dso_local global i8* null, align 8
@CTL_TAG_ORDERED = common dso_local global i8* null, align 8
@CTL_TAG_HEAD_OF_QUEUE = common dso_local global i8* null, align 8
@CTL_TAG_ACA = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"unhandled tag type %d\00", align 1
@CTL_RETVAL_COMPLETE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"ctl_queue() failed; error %d; dropping connection\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.icl_pdu*)* @cfiscsi_pdu_handle_scsi_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfiscsi_pdu_handle_scsi_command(%struct.icl_pdu* %0) #0 {
  %2 = alloca %struct.icl_pdu*, align 8
  %3 = alloca %struct.iscsi_bhs_scsi_command*, align 8
  %4 = alloca %struct.cfiscsi_session*, align 8
  %5 = alloca %union.ctl_io*, align 8
  %6 = alloca i32, align 4
  store %struct.icl_pdu* %0, %struct.icl_pdu** %2, align 8
  %7 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %8 = call %struct.cfiscsi_session* @PDU_SESSION(%struct.icl_pdu* %7)
  store %struct.cfiscsi_session* %8, %struct.cfiscsi_session** %4, align 8
  %9 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %10 = getelementptr inbounds %struct.icl_pdu, %struct.icl_pdu* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.iscsi_bhs_scsi_command*
  store %struct.iscsi_bhs_scsi_command* %12, %struct.iscsi_bhs_scsi_command** %3, align 8
  %13 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %14 = getelementptr inbounds %struct.icl_pdu, %struct.icl_pdu* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %1
  %18 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %4, align 8
  %19 = getelementptr inbounds %struct.cfiscsi_session, %struct.cfiscsi_session* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %4, align 8
  %24 = call i32 (%struct.cfiscsi_session*, i8*, ...) @CFISCSI_SESSION_WARN(%struct.cfiscsi_session* %23, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %26 = call i32 @icl_pdu_free(%struct.icl_pdu* %25)
  %27 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %4, align 8
  %28 = call i32 @cfiscsi_session_terminate(%struct.cfiscsi_session* %27)
  br label %158

29:                                               ; preds = %17, %1
  %30 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %4, align 8
  %31 = getelementptr inbounds %struct.cfiscsi_session, %struct.cfiscsi_session* %30, i32 0, i32 2
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call %union.ctl_io* @ctl_alloc_io(i32 %35)
  store %union.ctl_io* %36, %union.ctl_io** %5, align 8
  %37 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %38 = call i32 @ctl_zero_io(%union.ctl_io* %37)
  %39 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %40 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %41 = bitcast %union.ctl_io* %40 to %struct.TYPE_11__*
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = load i64, i64* @CTL_PRIV_FRONTEND, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  store %struct.icl_pdu* %39, %struct.icl_pdu** %46, align 8
  %47 = load i32, i32* @CTL_IO_SCSI, align 4
  %48 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %49 = bitcast %union.ctl_io* %48 to %struct.TYPE_11__*
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 1
  store i32 %47, i32* %50, align 4
  %51 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %4, align 8
  %52 = getelementptr inbounds %struct.cfiscsi_session, %struct.cfiscsi_session* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %55 = bitcast %union.ctl_io* %54 to %struct.TYPE_11__*
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 2
  store i32 %53, i32* %57, align 8
  %58 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %4, align 8
  %59 = getelementptr inbounds %struct.cfiscsi_session, %struct.cfiscsi_session* %58, i32 0, i32 2
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %65 = bitcast %union.ctl_io* %64 to %struct.TYPE_11__*
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 1
  store i32 %63, i32* %67, align 4
  %68 = load %struct.iscsi_bhs_scsi_command*, %struct.iscsi_bhs_scsi_command** %3, align 8
  %69 = getelementptr inbounds %struct.iscsi_bhs_scsi_command, %struct.iscsi_bhs_scsi_command* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @be64toh(i32 %70)
  %72 = call i32 @ctl_decode_lun(i32 %71)
  %73 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %74 = bitcast %union.ctl_io* %73 to %struct.TYPE_11__*
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  store i32 %72, i32* %76, align 8
  %77 = load %struct.iscsi_bhs_scsi_command*, %struct.iscsi_bhs_scsi_command** %3, align 8
  %78 = getelementptr inbounds %struct.iscsi_bhs_scsi_command, %struct.iscsi_bhs_scsi_command* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %81 = bitcast %union.ctl_io* %80 to %struct.TYPE_12__*
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 3
  store i32 %79, i32* %82, align 8
  %83 = load %struct.iscsi_bhs_scsi_command*, %struct.iscsi_bhs_scsi_command** %3, align 8
  %84 = getelementptr inbounds %struct.iscsi_bhs_scsi_command, %struct.iscsi_bhs_scsi_command* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @BHSSC_FLAGS_ATTR, align 4
  %87 = and i32 %85, %86
  switch i32 %87, label %113 [
    i32 128, label %88
    i32 129, label %93
    i32 130, label %98
    i32 131, label %103
    i32 132, label %108
  ]

88:                                               ; preds = %29
  %89 = load i8*, i8** @CTL_TAG_UNTAGGED, align 8
  %90 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %91 = bitcast %union.ctl_io* %90 to %struct.TYPE_12__*
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 2
  store i8* %89, i8** %92, align 8
  br label %125

93:                                               ; preds = %29
  %94 = load i8*, i8** @CTL_TAG_SIMPLE, align 8
  %95 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %96 = bitcast %union.ctl_io* %95 to %struct.TYPE_12__*
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 2
  store i8* %94, i8** %97, align 8
  br label %125

98:                                               ; preds = %29
  %99 = load i8*, i8** @CTL_TAG_ORDERED, align 8
  %100 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %101 = bitcast %union.ctl_io* %100 to %struct.TYPE_12__*
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 2
  store i8* %99, i8** %102, align 8
  br label %125

103:                                              ; preds = %29
  %104 = load i8*, i8** @CTL_TAG_HEAD_OF_QUEUE, align 8
  %105 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %106 = bitcast %union.ctl_io* %105 to %struct.TYPE_12__*
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 2
  store i8* %104, i8** %107, align 8
  br label %125

108:                                              ; preds = %29
  %109 = load i8*, i8** @CTL_TAG_ACA, align 8
  %110 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %111 = bitcast %union.ctl_io* %110 to %struct.TYPE_12__*
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 2
  store i8* %109, i8** %112, align 8
  br label %125

113:                                              ; preds = %29
  %114 = load i8*, i8** @CTL_TAG_UNTAGGED, align 8
  %115 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %116 = bitcast %union.ctl_io* %115 to %struct.TYPE_12__*
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 2
  store i8* %114, i8** %117, align 8
  %118 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %4, align 8
  %119 = load %struct.iscsi_bhs_scsi_command*, %struct.iscsi_bhs_scsi_command** %3, align 8
  %120 = getelementptr inbounds %struct.iscsi_bhs_scsi_command, %struct.iscsi_bhs_scsi_command* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @BHSSC_FLAGS_ATTR, align 4
  %123 = and i32 %121, %122
  %124 = call i32 (%struct.cfiscsi_session*, i8*, ...) @CFISCSI_SESSION_WARN(%struct.cfiscsi_session* %118, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %123)
  br label %125

125:                                              ; preds = %113, %108, %103, %98, %93, %88
  %126 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %127 = bitcast %union.ctl_io* %126 to %struct.TYPE_12__*
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 0
  store i32 4, i32* %128, align 8
  %129 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %130 = bitcast %union.ctl_io* %129 to %struct.TYPE_12__*
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.iscsi_bhs_scsi_command*, %struct.iscsi_bhs_scsi_command** %3, align 8
  %134 = getelementptr inbounds %struct.iscsi_bhs_scsi_command, %struct.iscsi_bhs_scsi_command* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @memcpy(i32 %132, i32 %135, i32 4)
  %137 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %4, align 8
  %138 = getelementptr inbounds %struct.cfiscsi_session, %struct.cfiscsi_session* %137, i32 0, i32 1
  %139 = call i32 @refcount_acquire(i32* %138)
  %140 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %141 = call i32 @ctl_queue(%union.ctl_io* %140)
  store i32 %141, i32* %6, align 4
  %142 = load i32, i32* %6, align 4
  %143 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  %144 = icmp ne i32 %142, %143
  br i1 %144, label %145, label %158

145:                                              ; preds = %125
  %146 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %4, align 8
  %147 = load i32, i32* %6, align 4
  %148 = call i32 (%struct.cfiscsi_session*, i8*, ...) @CFISCSI_SESSION_WARN(%struct.cfiscsi_session* %146, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %147)
  %149 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %150 = call i32 @ctl_free_io(%union.ctl_io* %149)
  %151 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %4, align 8
  %152 = getelementptr inbounds %struct.cfiscsi_session, %struct.cfiscsi_session* %151, i32 0, i32 1
  %153 = call i32 @refcount_release(i32* %152)
  %154 = load %struct.icl_pdu*, %struct.icl_pdu** %2, align 8
  %155 = call i32 @icl_pdu_free(%struct.icl_pdu* %154)
  %156 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %4, align 8
  %157 = call i32 @cfiscsi_session_terminate(%struct.cfiscsi_session* %156)
  br label %158

158:                                              ; preds = %22, %145, %125
  ret void
}

declare dso_local %struct.cfiscsi_session* @PDU_SESSION(%struct.icl_pdu*) #1

declare dso_local i32 @CFISCSI_SESSION_WARN(%struct.cfiscsi_session*, i8*, ...) #1

declare dso_local i32 @icl_pdu_free(%struct.icl_pdu*) #1

declare dso_local i32 @cfiscsi_session_terminate(%struct.cfiscsi_session*) #1

declare dso_local %union.ctl_io* @ctl_alloc_io(i32) #1

declare dso_local i32 @ctl_zero_io(%union.ctl_io*) #1

declare dso_local i32 @ctl_decode_lun(i32) #1

declare dso_local i32 @be64toh(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @refcount_acquire(i32*) #1

declare dso_local i32 @ctl_queue(%union.ctl_io*) #1

declare dso_local i32 @ctl_free_io(%union.ctl_io*) #1

declare dso_local i32 @refcount_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

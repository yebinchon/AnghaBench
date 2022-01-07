; ModuleID = '/home/carl/AnghaBench/freebsd/share/examples/scsi_target/extr_scsi_target.c_handle_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/share/examples/scsi_target/extr_scsi_target.c_handle_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%union.ccb = type { %struct.ccb_accept_tio }
%struct.ccb_accept_tio = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i64 }
%struct.atio_descr = type { i32, i32, i32 }
%struct.ccb_scsiio = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.ctio_descr = type { i32, i32 }
%struct.TYPE_12__ = type { i32 }

@MAX_INITIATORS = common dso_local global i32 0, align 4
@targ_fd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"read ccb ptrs\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"truncated read ccb ptr?\00", align 1
@pending_queue = common dso_local global i32 0, align 4
@periph_links = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@CAM_DIS_DISCONNECT = common dso_local global i32 0, align 4
@CAM_TAG_ACTION_VALID = common dso_local global i32 0, align 4
@CAM_CDB_POINTER = common dso_local global i32 0, align 4
@work_queue = common dso_local global i32 0, align 4
@CTIO_DONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Unhandled ccb type %#x in handle_read\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @handle_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_read() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca %union.ccb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ccb_accept_tio*, align 8
  %9 = alloca %struct.atio_descr*, align 8
  %10 = alloca %struct.ccb_scsiio*, align 8
  %11 = alloca %struct.ctio_descr*, align 8
  %12 = load i32, i32* @MAX_INITIATORS, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %1, align 8
  %15 = alloca %union.ccb*, i64 %13, align 16
  store i64 %13, i64* %2, align 8
  %16 = load i32, i32* @targ_fd, align 4
  %17 = mul nuw i64 8, %13
  %18 = trunc i64 %17 to i32
  %19 = call i32 @read(i32 %16, %union.ccb** %15, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp sle i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %0
  %23 = call i32 @warn(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %7, align 4
  br label %135

24:                                               ; preds = %0
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = udiv i64 %26, 8
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %29, 1
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %7, align 4
  br label %135

33:                                               ; preds = %24
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %131, %33
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %134

38:                                               ; preds = %34
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %union.ccb*, %union.ccb** %15, i64 %40
  %42 = load %union.ccb*, %union.ccb** %41, align 8
  store %union.ccb* %42, %union.ccb** %3, align 8
  %43 = load %union.ccb*, %union.ccb** %3, align 8
  %44 = bitcast %union.ccb* %43 to %struct.TYPE_12__*
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @periph_links, i32 0, i32 0), align 4
  %46 = call i32 @TAILQ_REMOVE(i32* @pending_queue, %struct.TYPE_12__* %44, i32 %45)
  %47 = load %union.ccb*, %union.ccb** %3, align 8
  %48 = bitcast %union.ccb* %47 to %struct.TYPE_12__*
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  switch i32 %50, label %124 [
    i32 130, label %51
    i32 129, label %100
    i32 128, label %119
  ]

51:                                               ; preds = %38
  %52 = load %union.ccb*, %union.ccb** %3, align 8
  %53 = bitcast %union.ccb* %52 to %struct.ccb_accept_tio*
  store %struct.ccb_accept_tio* %53, %struct.ccb_accept_tio** %8, align 8
  %54 = load %struct.ccb_accept_tio*, %struct.ccb_accept_tio** %8, align 8
  %55 = getelementptr inbounds %struct.ccb_accept_tio, %struct.ccb_accept_tio* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to %struct.atio_descr*
  store %struct.atio_descr* %58, %struct.atio_descr** %9, align 8
  %59 = load %struct.atio_descr*, %struct.atio_descr** %9, align 8
  %60 = call i32 @bzero(%struct.atio_descr* %59, i32 12)
  %61 = load %struct.atio_descr*, %struct.atio_descr** %9, align 8
  %62 = getelementptr inbounds %struct.atio_descr, %struct.atio_descr* %61, i32 0, i32 2
  %63 = call i32 @TAILQ_INIT(i32* %62)
  %64 = load %struct.ccb_accept_tio*, %struct.ccb_accept_tio** %8, align 8
  %65 = getelementptr inbounds %struct.ccb_accept_tio, %struct.ccb_accept_tio* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @CAM_DIS_DISCONNECT, align 4
  %69 = load i32, i32* @CAM_TAG_ACTION_VALID, align 4
  %70 = or i32 %68, %69
  %71 = and i32 %67, %70
  %72 = load %struct.atio_descr*, %struct.atio_descr** %9, align 8
  %73 = getelementptr inbounds %struct.atio_descr, %struct.atio_descr* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  %74 = load %struct.ccb_accept_tio*, %struct.ccb_accept_tio** %8, align 8
  %75 = getelementptr inbounds %struct.ccb_accept_tio, %struct.ccb_accept_tio* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @CAM_CDB_POINTER, align 4
  %79 = and i32 %77, %78
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %51
  %82 = load %struct.ccb_accept_tio*, %struct.ccb_accept_tio** %8, align 8
  %83 = getelementptr inbounds %struct.ccb_accept_tio, %struct.ccb_accept_tio* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.atio_descr*, %struct.atio_descr** %9, align 8
  %87 = getelementptr inbounds %struct.atio_descr, %struct.atio_descr* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  br label %95

88:                                               ; preds = %51
  %89 = load %struct.ccb_accept_tio*, %struct.ccb_accept_tio** %8, align 8
  %90 = getelementptr inbounds %struct.ccb_accept_tio, %struct.ccb_accept_tio* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.atio_descr*, %struct.atio_descr** %9, align 8
  %94 = getelementptr inbounds %struct.atio_descr, %struct.atio_descr* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  br label %95

95:                                               ; preds = %88, %81
  %96 = load %union.ccb*, %union.ccb** %3, align 8
  %97 = bitcast %union.ccb* %96 to %struct.TYPE_12__*
  %98 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @periph_links, i32 0, i32 0), align 4
  %99 = call i32 @TAILQ_INSERT_TAIL(i32* @work_queue, %struct.TYPE_12__* %97, i32 %98)
  br label %130

100:                                              ; preds = %38
  %101 = load %union.ccb*, %union.ccb** %3, align 8
  %102 = bitcast %union.ccb* %101 to %struct.ccb_scsiio*
  store %struct.ccb_scsiio* %102, %struct.ccb_scsiio** %10, align 8
  %103 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %10, align 8
  %104 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = inttoptr i64 %106 to %struct.ctio_descr*
  store %struct.ctio_descr* %107, %struct.ctio_descr** %11, align 8
  %108 = load i32, i32* @CTIO_DONE, align 4
  %109 = load %struct.ctio_descr*, %struct.ctio_descr** %11, align 8
  %110 = getelementptr inbounds %struct.ctio_descr, %struct.ctio_descr* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  %111 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %10, align 8
  %112 = call i32 @queue_io(%struct.ccb_scsiio* %111)
  %113 = load %struct.ctio_descr*, %struct.ctio_descr** %11, align 8
  %114 = getelementptr inbounds %struct.ctio_descr, %struct.ctio_descr* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @run_queue(i32 %115)
  %117 = load i32, i32* %6, align 4
  %118 = add nsw i32 %117, %116
  store i32 %118, i32* %6, align 4
  br label %130

119:                                              ; preds = %38
  %120 = load %union.ccb*, %union.ccb** %3, align 8
  %121 = bitcast %union.ccb* %120 to %struct.TYPE_12__*
  %122 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @periph_links, i32 0, i32 0), align 4
  %123 = call i32 @TAILQ_INSERT_HEAD(i32* @work_queue, %struct.TYPE_12__* %121, i32 %122)
  br label %130

124:                                              ; preds = %38
  %125 = load %union.ccb*, %union.ccb** %3, align 8
  %126 = bitcast %union.ccb* %125 to %struct.TYPE_12__*
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %128)
  br label %130

130:                                              ; preds = %124, %119, %100, %95
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* %5, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %5, align 4
  br label %34

134:                                              ; preds = %34
  store i32 0, i32* %7, align 4
  br label %135

135:                                              ; preds = %134, %31, %22
  %136 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %136)
  %137 = load i32, i32* %7, align 4
  switch i32 %137, label %139 [
    i32 0, label %138
    i32 1, label %138
  ]

138:                                              ; preds = %135, %135
  ret void

139:                                              ; preds = %135
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @read(i32, %union.ccb**, i32) #2

declare dso_local i32 @warn(i8*) #2

declare dso_local i32 @warnx(i8*, ...) #2

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.TYPE_12__*, i32) #2

declare dso_local i32 @bzero(%struct.atio_descr*, i32) #2

declare dso_local i32 @TAILQ_INIT(i32*) #2

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.TYPE_12__*, i32) #2

declare dso_local i32 @queue_io(%struct.ccb_scsiio*) #2

declare dso_local i32 @run_queue(i32) #2

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.TYPE_12__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/share/examples/scsi_target/extr_scsi_target.c_run_queue.c'
source_filename = "/home/carl/AnghaBench/freebsd/share/examples/scsi_target/extr_scsi_target.c_run_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.ccb_accept_tio = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.atio_descr = type { i64, i64, i64, i32 }
%struct.ccb_hdr = type { i32 }
%struct.ccb_scsiio = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64 }
%struct.ctio_descr = type { i32, i64 }
%union.ccb = type { i32 }

@CAM_REQ_ABORTED = common dso_local global i64 0, align 8
@periph_links = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@AIO_DONE = common dso_local global i32 0, align 4
@CTIO_DONE = common dso_local global i32 0, align 4
@CAM_SEND_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"IO %p:%p out of order %s\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"aio\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"ctio\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccb_accept_tio*)* @run_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_queue(%struct.ccb_accept_tio* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ccb_accept_tio*, align 8
  %4 = alloca %struct.atio_descr*, align 8
  %5 = alloca %struct.ccb_hdr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ccb_scsiio*, align 8
  %9 = alloca %struct.ctio_descr*, align 8
  store %struct.ccb_accept_tio* %0, %struct.ccb_accept_tio** %3, align 8
  %10 = load %struct.ccb_accept_tio*, %struct.ccb_accept_tio** %3, align 8
  %11 = icmp eq %struct.ccb_accept_tio* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %132

13:                                               ; preds = %1
  %14 = load %struct.ccb_accept_tio*, %struct.ccb_accept_tio** %3, align 8
  %15 = getelementptr inbounds %struct.ccb_accept_tio, %struct.ccb_accept_tio* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.atio_descr*
  store %struct.atio_descr* %18, %struct.atio_descr** %4, align 8
  br label %19

19:                                               ; preds = %130, %38, %13
  %20 = load %struct.atio_descr*, %struct.atio_descr** %4, align 8
  %21 = getelementptr inbounds %struct.atio_descr, %struct.atio_descr* %20, i32 0, i32 3
  %22 = call %struct.ccb_hdr* @TAILQ_FIRST(i32* %21)
  store %struct.ccb_hdr* %22, %struct.ccb_hdr** %5, align 8
  %23 = icmp ne %struct.ccb_hdr* %22, null
  br i1 %23, label %24, label %131

24:                                               ; preds = %19
  %25 = load %struct.ccb_hdr*, %struct.ccb_hdr** %5, align 8
  %26 = bitcast %struct.ccb_hdr* %25 to %struct.ccb_scsiio*
  store %struct.ccb_scsiio* %26, %struct.ccb_scsiio** %8, align 8
  %27 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %8, align 8
  %28 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.ctio_descr*
  store %struct.ctio_descr* %31, %struct.ctio_descr** %9, align 8
  %32 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %8, align 8
  %33 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @CAM_REQ_ABORTED, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %24
  %39 = load %struct.atio_descr*, %struct.atio_descr** %4, align 8
  %40 = getelementptr inbounds %struct.atio_descr, %struct.atio_descr* %39, i32 0, i32 3
  %41 = load %struct.ccb_hdr*, %struct.ccb_hdr** %5, align 8
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @periph_links, i32 0, i32 0), align 4
  %43 = call i32 @TAILQ_REMOVE(i32* %40, %struct.ccb_hdr* %41, i32 %42)
  %44 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %8, align 8
  %45 = bitcast %struct.ccb_scsiio* %44 to %union.ccb*
  %46 = call i32 @free_ccb(%union.ccb* %45)
  %47 = load %struct.ccb_accept_tio*, %struct.ccb_accept_tio** %3, align 8
  %48 = bitcast %struct.ccb_accept_tio* %47 to %union.ccb*
  %49 = call i32 @send_ccb(%union.ccb* %48, i32 1)
  br label %19

50:                                               ; preds = %24
  %51 = load %struct.ctio_descr*, %struct.ctio_descr** %9, align 8
  %52 = getelementptr inbounds %struct.ctio_descr, %struct.ctio_descr* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @AIO_DONE, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %68

56:                                               ; preds = %50
  %57 = load %struct.ctio_descr*, %struct.ctio_descr** %9, align 8
  %58 = getelementptr inbounds %struct.ctio_descr, %struct.ctio_descr* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.atio_descr*, %struct.atio_descr** %4, align 8
  %61 = getelementptr inbounds %struct.atio_descr, %struct.atio_descr* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.atio_descr*, %struct.atio_descr** %4, align 8
  %64 = getelementptr inbounds %struct.atio_descr, %struct.atio_descr* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %62, %65
  %67 = icmp eq i64 %59, %66
  br i1 %67, label %86, label %68

68:                                               ; preds = %56, %50
  %69 = load %struct.ctio_descr*, %struct.ctio_descr** %9, align 8
  %70 = getelementptr inbounds %struct.ctio_descr, %struct.ctio_descr* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @CTIO_DONE, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %119

74:                                               ; preds = %68
  %75 = load %struct.ctio_descr*, %struct.ctio_descr** %9, align 8
  %76 = getelementptr inbounds %struct.ctio_descr, %struct.ctio_descr* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.atio_descr*, %struct.atio_descr** %4, align 8
  %79 = getelementptr inbounds %struct.atio_descr, %struct.atio_descr* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.atio_descr*, %struct.atio_descr** %4, align 8
  %82 = getelementptr inbounds %struct.atio_descr, %struct.atio_descr* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %80, %83
  %85 = icmp eq i64 %77, %84
  br i1 %85, label %86, label %119

86:                                               ; preds = %74, %56
  %87 = load %struct.ccb_hdr*, %struct.ccb_hdr** %5, align 8
  %88 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @CAM_SEND_STATUS, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  %93 = zext i1 %92 to i32
  store i32 %93, i32* %6, align 4
  %94 = load %struct.ctio_descr*, %struct.ctio_descr** %9, align 8
  %95 = getelementptr inbounds %struct.ctio_descr, %struct.ctio_descr* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  store i32 %96, i32* %7, align 4
  %97 = load %struct.atio_descr*, %struct.atio_descr** %4, align 8
  %98 = getelementptr inbounds %struct.atio_descr, %struct.atio_descr* %97, i32 0, i32 3
  %99 = load %struct.ccb_hdr*, %struct.ccb_hdr** %5, align 8
  %100 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @periph_links, i32 0, i32 0), align 4
  %101 = call i32 @TAILQ_REMOVE(i32* %98, %struct.ccb_hdr* %99, i32 %100)
  %102 = load %struct.ccb_accept_tio*, %struct.ccb_accept_tio** %3, align 8
  %103 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %8, align 8
  %104 = load %struct.ctio_descr*, %struct.ctio_descr** %9, align 8
  %105 = getelementptr inbounds %struct.ctio_descr, %struct.ctio_descr* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @tcmd_handle(%struct.ccb_accept_tio* %102, %struct.ccb_scsiio* %103, i32 %106)
  %108 = load i32, i32* %6, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %86
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* @CTIO_DONE, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %110
  %115 = load %struct.ccb_accept_tio*, %struct.ccb_accept_tio** %3, align 8
  %116 = bitcast %struct.ccb_accept_tio* %115 to %union.ccb*
  %117 = call i32 @send_ccb(%union.ccb* %116, i32 1)
  br label %118

118:                                              ; preds = %114, %110, %86
  br label %130

119:                                              ; preds = %74, %68
  %120 = load %struct.ccb_hdr*, %struct.ccb_hdr** %5, align 8
  %121 = load %struct.atio_descr*, %struct.atio_descr** %4, align 8
  %122 = load %struct.ctio_descr*, %struct.ctio_descr** %9, align 8
  %123 = getelementptr inbounds %struct.ctio_descr, %struct.ctio_descr* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @AIO_DONE, align 4
  %126 = icmp eq i32 %124, %125
  %127 = zext i1 %126 to i64
  %128 = select i1 %126, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %129 = call i32 @warnx(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.ccb_hdr* %120, %struct.atio_descr* %121, i8* %128)
  store i32 1, i32* %2, align 4
  br label %132

130:                                              ; preds = %118
  br label %19

131:                                              ; preds = %19
  store i32 0, i32* %2, align 4
  br label %132

132:                                              ; preds = %131, %119, %12
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local %struct.ccb_hdr* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.ccb_hdr*, i32) #1

declare dso_local i32 @free_ccb(%union.ccb*) #1

declare dso_local i32 @send_ccb(%union.ccb*, i32) #1

declare dso_local i32 @tcmd_handle(%struct.ccb_accept_tio*, %struct.ccb_scsiio*, i32) #1

declare dso_local i32 @warnx(i8*, %struct.ccb_hdr*, %struct.atio_descr*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

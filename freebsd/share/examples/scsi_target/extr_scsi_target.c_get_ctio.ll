; ModuleID = '/home/carl/AnghaBench/freebsd/share/examples/scsi_target/extr_scsi_target.c_get_ctio.c'
source_filename = "/home/carl/AnghaBench/freebsd/share/examples/scsi_target/extr_scsi_target.c_get_ctio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccb_scsiio = type { %struct.TYPE_5__, i32*, %struct.TYPE_4__, i32* }
%struct.TYPE_5__ = type { %struct.sigevent, i32, i32* }
%struct.sigevent = type { %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { %struct.ctio_descr* }
%struct.ctio_descr = type { %struct.TYPE_5__, i32*, %struct.TYPE_4__, i32* }
%struct.TYPE_4__ = type { i32, %struct.ctio_descr*, i32, i32 }

@num_ctios = common dso_local global i64 0, align 8
@MAX_CTIOS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"at CTIO max\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"malloc CTIO\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"malloc ctio_descr\00", align 1
@buf_size = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"malloc backing store\00", align 1
@XPT_CONT_TARGET_IO = common dso_local global i32 0, align 4
@CAM_TIME_INFINITY = common dso_local global i32 0, align 4
@file_fd = common dso_local global i32 0, align 4
@SIGEV_KEVENT = common dso_local global i32 0, align 4
@kq_fd = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ccb_scsiio* ()* @get_ctio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ccb_scsiio* @get_ctio() #0 {
  %1 = alloca %struct.ccb_scsiio*, align 8
  %2 = alloca %struct.ccb_scsiio*, align 8
  %3 = alloca %struct.ctio_descr*, align 8
  %4 = alloca %struct.sigevent*, align 8
  %5 = load i64, i64* @num_ctios, align 8
  %6 = load i64, i64* @MAX_CTIOS, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = call i32 @warnx(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store %struct.ccb_scsiio* null, %struct.ccb_scsiio** %1, align 8
  br label %91

10:                                               ; preds = %0
  %11 = call i32* @malloc(i32 72)
  %12 = bitcast i32* %11 to %struct.ccb_scsiio*
  store %struct.ccb_scsiio* %12, %struct.ccb_scsiio** %2, align 8
  %13 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %2, align 8
  %14 = icmp eq %struct.ccb_scsiio* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = call i32 @warn(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store %struct.ccb_scsiio* null, %struct.ccb_scsiio** %1, align 8
  br label %91

17:                                               ; preds = %10
  %18 = call i32* @malloc(i32 72)
  %19 = bitcast i32* %18 to %struct.ctio_descr*
  store %struct.ctio_descr* %19, %struct.ctio_descr** %3, align 8
  %20 = load %struct.ctio_descr*, %struct.ctio_descr** %3, align 8
  %21 = icmp eq %struct.ctio_descr* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %2, align 8
  %24 = bitcast %struct.ccb_scsiio* %23 to %struct.ctio_descr*
  %25 = call i32 @free(%struct.ctio_descr* %24)
  %26 = call i32 @warn(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  store %struct.ccb_scsiio* null, %struct.ccb_scsiio** %1, align 8
  br label %91

27:                                               ; preds = %17
  %28 = load i32, i32* @buf_size, align 4
  %29 = call i32* @malloc(i32 %28)
  %30 = load %struct.ctio_descr*, %struct.ctio_descr** %3, align 8
  %31 = getelementptr inbounds %struct.ctio_descr, %struct.ctio_descr* %30, i32 0, i32 1
  store i32* %29, i32** %31, align 8
  %32 = load %struct.ctio_descr*, %struct.ctio_descr** %3, align 8
  %33 = getelementptr inbounds %struct.ctio_descr, %struct.ctio_descr* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %27
  %37 = load %struct.ctio_descr*, %struct.ctio_descr** %3, align 8
  %38 = call i32 @free(%struct.ctio_descr* %37)
  %39 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %2, align 8
  %40 = bitcast %struct.ccb_scsiio* %39 to %struct.ctio_descr*
  %41 = call i32 @free(%struct.ctio_descr* %40)
  %42 = call i32 @warn(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  store %struct.ccb_scsiio* null, %struct.ccb_scsiio** %1, align 8
  br label %91

43:                                               ; preds = %27
  %44 = load i64, i64* @num_ctios, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* @num_ctios, align 8
  %46 = load i32, i32* @XPT_CONT_TARGET_IO, align 4
  %47 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %2, align 8
  %48 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 3
  store i32 %46, i32* %49, align 4
  %50 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %2, align 8
  %51 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  store i32 2, i32* %52, align 8
  %53 = load i32, i32* @CAM_TIME_INFINITY, align 4
  %54 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %2, align 8
  %55 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  store i32 %53, i32* %56, align 8
  %57 = load %struct.ctio_descr*, %struct.ctio_descr** %3, align 8
  %58 = getelementptr inbounds %struct.ctio_descr, %struct.ctio_descr* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %2, align 8
  %61 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %60, i32 0, i32 3
  store i32* %59, i32** %61, align 8
  %62 = load %struct.ctio_descr*, %struct.ctio_descr** %3, align 8
  %63 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %2, align 8
  %64 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  store %struct.ctio_descr* %62, %struct.ctio_descr** %65, align 8
  %66 = load %struct.ctio_descr*, %struct.ctio_descr** %3, align 8
  %67 = getelementptr inbounds %struct.ctio_descr, %struct.ctio_descr* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.ctio_descr*, %struct.ctio_descr** %3, align 8
  %70 = getelementptr inbounds %struct.ctio_descr, %struct.ctio_descr* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 2
  store i32* %68, i32** %71, align 8
  %72 = load i32, i32* @file_fd, align 4
  %73 = load %struct.ctio_descr*, %struct.ctio_descr** %3, align 8
  %74 = getelementptr inbounds %struct.ctio_descr, %struct.ctio_descr* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  store i32 %72, i32* %75, align 8
  %76 = load %struct.ctio_descr*, %struct.ctio_descr** %3, align 8
  %77 = getelementptr inbounds %struct.ctio_descr, %struct.ctio_descr* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  store %struct.sigevent* %78, %struct.sigevent** %4, align 8
  %79 = load i32, i32* @SIGEV_KEVENT, align 4
  %80 = load %struct.sigevent*, %struct.sigevent** %4, align 8
  %81 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* @kq_fd, align 4
  %83 = load %struct.sigevent*, %struct.sigevent** %4, align 8
  %84 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 8
  %85 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %2, align 8
  %86 = bitcast %struct.ccb_scsiio* %85 to %struct.ctio_descr*
  %87 = load %struct.sigevent*, %struct.sigevent** %4, align 8
  %88 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  store %struct.ctio_descr* %86, %struct.ctio_descr** %89, align 8
  %90 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %2, align 8
  store %struct.ccb_scsiio* %90, %struct.ccb_scsiio** %1, align 8
  br label %91

91:                                               ; preds = %43, %36, %22, %15, %8
  %92 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %1, align 8
  ret %struct.ccb_scsiio* %92
}

declare dso_local i32 @warnx(i8*) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @free(%struct.ctio_descr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_backend_ramdisk.c_ctl_backend_ramdisk_worker.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_backend_ramdisk.c_ctl_backend_ramdisk_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_be_ramdisk_lun = type { i32, i32 }
%union.ctl_io = type { i32 }
%struct.TYPE_2__ = type { i32 }

@ctl_io_hdr = common dso_local global i32 0, align 4
@links = common dso_local global i32 0, align 4
@CTL_LLF_COMPARE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @ctl_backend_ramdisk_worker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctl_backend_ramdisk_worker(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ctl_be_ramdisk_lun*, align 8
  %6 = alloca %union.ctl_io*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.ctl_be_ramdisk_lun*
  store %struct.ctl_be_ramdisk_lun* %8, %struct.ctl_be_ramdisk_lun** %5, align 8
  %9 = load %struct.ctl_be_ramdisk_lun*, %struct.ctl_be_ramdisk_lun** %5, align 8
  %10 = getelementptr inbounds %struct.ctl_be_ramdisk_lun, %struct.ctl_be_ramdisk_lun* %9, i32 0, i32 0
  %11 = call i32 @mtx_lock(i32* %10)
  br label %12

12:                                               ; preds = %43, %2
  %13 = load %struct.ctl_be_ramdisk_lun*, %struct.ctl_be_ramdisk_lun** %5, align 8
  %14 = getelementptr inbounds %struct.ctl_be_ramdisk_lun, %struct.ctl_be_ramdisk_lun* %13, i32 0, i32 1
  %15 = call i64 @STAILQ_FIRST(i32* %14)
  %16 = inttoptr i64 %15 to %union.ctl_io*
  store %union.ctl_io* %16, %union.ctl_io** %6, align 8
  %17 = load %union.ctl_io*, %union.ctl_io** %6, align 8
  %18 = icmp ne %union.ctl_io* %17, null
  br i1 %18, label %19, label %47

19:                                               ; preds = %12
  %20 = load %struct.ctl_be_ramdisk_lun*, %struct.ctl_be_ramdisk_lun** %5, align 8
  %21 = getelementptr inbounds %struct.ctl_be_ramdisk_lun, %struct.ctl_be_ramdisk_lun* %20, i32 0, i32 1
  %22 = load %union.ctl_io*, %union.ctl_io** %6, align 8
  %23 = bitcast %union.ctl_io* %22 to i32*
  %24 = load i32, i32* @ctl_io_hdr, align 4
  %25 = load i32, i32* @links, align 4
  %26 = call i32 @STAILQ_REMOVE(i32* %21, i32* %23, i32 %24, i32 %25)
  %27 = load %struct.ctl_be_ramdisk_lun*, %struct.ctl_be_ramdisk_lun** %5, align 8
  %28 = getelementptr inbounds %struct.ctl_be_ramdisk_lun, %struct.ctl_be_ramdisk_lun* %27, i32 0, i32 0
  %29 = call i32 @mtx_unlock(i32* %28)
  %30 = load %union.ctl_io*, %union.ctl_io** %6, align 8
  %31 = call %struct.TYPE_2__* @ARGS(%union.ctl_io* %30)
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @CTL_LLF_COMPARE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %19
  %38 = load %union.ctl_io*, %union.ctl_io** %6, align 8
  %39 = call i32 @ctl_backend_ramdisk_compare(%union.ctl_io* %38)
  br label %43

40:                                               ; preds = %19
  %41 = load %union.ctl_io*, %union.ctl_io** %6, align 8
  %42 = call i32 @ctl_backend_ramdisk_rw(%union.ctl_io* %41)
  br label %43

43:                                               ; preds = %40, %37
  %44 = load %struct.ctl_be_ramdisk_lun*, %struct.ctl_be_ramdisk_lun** %5, align 8
  %45 = getelementptr inbounds %struct.ctl_be_ramdisk_lun, %struct.ctl_be_ramdisk_lun* %44, i32 0, i32 0
  %46 = call i32 @mtx_lock(i32* %45)
  br label %12

47:                                               ; preds = %12
  br label %48

48:                                               ; preds = %47
  %49 = load %struct.ctl_be_ramdisk_lun*, %struct.ctl_be_ramdisk_lun** %5, align 8
  %50 = getelementptr inbounds %struct.ctl_be_ramdisk_lun, %struct.ctl_be_ramdisk_lun* %49, i32 0, i32 0
  %51 = call i32 @mtx_unlock(i32* %50)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @STAILQ_FIRST(i32*) #1

declare dso_local i32 @STAILQ_REMOVE(i32*, i32*, i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local %struct.TYPE_2__* @ARGS(%union.ctl_io*) #1

declare dso_local i32 @ctl_backend_ramdisk_compare(%union.ctl_io*) #1

declare dso_local i32 @ctl_backend_ramdisk_rw(%union.ctl_io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

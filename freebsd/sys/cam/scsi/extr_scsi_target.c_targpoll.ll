; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_target.c_targpoll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_target.c_targpoll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.thread = type { i32 }
%struct.targ_softc = type { i32, i32, i32, i32 }

@POLLOUT = common dso_local global i32 0, align 4
@POLLWRNORM = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, %struct.thread*)* @targpoll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @targpoll(%struct.cdev* %0, i32 %1, %struct.thread* %2) #0 {
  %4 = alloca %struct.cdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.thread*, align 8
  %7 = alloca %struct.targ_softc*, align 8
  %8 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.thread* %2, %struct.thread** %6, align 8
  %9 = bitcast %struct.targ_softc** %7 to i8**
  %10 = call i32 @devfs_get_cdevpriv(i8** %9)
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @POLLOUT, align 4
  %13 = load i32, i32* @POLLWRNORM, align 4
  %14 = or i32 %12, %13
  %15 = and i32 %11, %14
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @POLLIN, align 4
  %18 = load i32, i32* @POLLRDNORM, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %16, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %57

22:                                               ; preds = %3
  %23 = load %struct.targ_softc*, %struct.targ_softc** %7, align 8
  %24 = getelementptr inbounds %struct.targ_softc, %struct.targ_softc* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @cam_periph_lock(i32 %25)
  %27 = load %struct.targ_softc*, %struct.targ_softc** %7, align 8
  %28 = getelementptr inbounds %struct.targ_softc, %struct.targ_softc* %27, i32 0, i32 3
  %29 = call i32 @TAILQ_EMPTY(i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %22
  %32 = load %struct.targ_softc*, %struct.targ_softc** %7, align 8
  %33 = getelementptr inbounds %struct.targ_softc, %struct.targ_softc* %32, i32 0, i32 2
  %34 = call i32 @TAILQ_EMPTY(i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %31, %22
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @POLLIN, align 4
  %39 = load i32, i32* @POLLRDNORM, align 4
  %40 = or i32 %38, %39
  %41 = and i32 %37, %40
  %42 = load i32, i32* %8, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %36, %31
  %45 = load %struct.targ_softc*, %struct.targ_softc** %7, align 8
  %46 = getelementptr inbounds %struct.targ_softc, %struct.targ_softc* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @cam_periph_unlock(i32 %47)
  %49 = load i32, i32* %8, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %44
  %52 = load %struct.thread*, %struct.thread** %6, align 8
  %53 = load %struct.targ_softc*, %struct.targ_softc** %7, align 8
  %54 = getelementptr inbounds %struct.targ_softc, %struct.targ_softc* %53, i32 0, i32 0
  %55 = call i32 @selrecord(%struct.thread* %52, i32* %54)
  br label %56

56:                                               ; preds = %51, %44
  br label %57

57:                                               ; preds = %56, %3
  %58 = load i32, i32* %8, align 4
  ret i32 %58
}

declare dso_local i32 @devfs_get_cdevpriv(i8**) #1

declare dso_local i32 @cam_periph_lock(i32) #1

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @cam_periph_unlock(i32) #1

declare dso_local i32 @selrecord(%struct.thread*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

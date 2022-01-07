; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_ha.c_ctl_ha_msg_recv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_ha.c_ctl_ha_msg_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ha_softc = type { i32, i32, i32, i64, i32 }
%struct.uio = type { i32, i64, i32, i32, i32, %struct.iovec* }
%struct.iovec = type { i64, i8* }

@ha_softc = common dso_local global %struct.ha_softc zeroinitializer, align 8
@CTL_HA_STATUS_DISCONNECT = common dso_local global i32 0, align 4
@UIO_READ = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@CTL_HA_STATUS_SUCCESS = common dso_local global i32 0, align 4
@CTL_HA_STATUS_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctl_ha_msg_recv(i32 %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ha_softc*, align 8
  %11 = alloca %struct.uio, align 8
  %12 = alloca %struct.iovec, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.ha_softc* @ha_softc, %struct.ha_softc** %10, align 8
  %15 = load %struct.ha_softc*, %struct.ha_softc** %10, align 8
  %16 = getelementptr inbounds %struct.ha_softc, %struct.ha_softc* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @CTL_HA_STATUS_DISCONNECT, align 4
  store i32 %20, i32* %5, align 4
  br label %72

21:                                               ; preds = %4
  %22 = load i8*, i8** %7, align 8
  %23 = getelementptr inbounds %struct.iovec, %struct.iovec* %12, i32 0, i32 1
  store i8* %22, i8** %23, align 8
  %24 = load i64, i64* %8, align 8
  %25 = getelementptr inbounds %struct.iovec, %struct.iovec* %12, i32 0, i32 0
  store i64 %24, i64* %25, align 8
  %26 = getelementptr inbounds %struct.uio, %struct.uio* %11, i32 0, i32 5
  store %struct.iovec* %12, %struct.iovec** %26, align 8
  %27 = getelementptr inbounds %struct.uio, %struct.uio* %11, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load i32, i32* @UIO_READ, align 4
  %29 = getelementptr inbounds %struct.uio, %struct.uio* %11, i32 0, i32 4
  store i32 %28, i32* %29, align 8
  %30 = load i32, i32* @UIO_SYSSPACE, align 4
  %31 = getelementptr inbounds %struct.uio, %struct.uio* %11, i32 0, i32 3
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* @curthread, align 4
  %33 = getelementptr inbounds %struct.uio, %struct.uio* %11, i32 0, i32 2
  store i32 %32, i32* %33, align 8
  %34 = load i64, i64* %8, align 8
  %35 = getelementptr inbounds %struct.uio, %struct.uio* %11, i32 0, i32 1
  store i64 %34, i64* %35, align 8
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %21
  br label %41

39:                                               ; preds = %21
  %40 = load i32, i32* @MSG_DONTWAIT, align 4
  br label %41

41:                                               ; preds = %39, %38
  %42 = phi i32 [ 0, %38 ], [ %40, %39 ]
  store i32 %42, i32* %14, align 4
  %43 = load %struct.ha_softc*, %struct.ha_softc** %10, align 8
  %44 = getelementptr inbounds %struct.ha_softc, %struct.ha_softc* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @soreceive(i32 %45, i32* null, %struct.uio* %11, i32* null, i32* null, i32* %14)
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %13, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = load i32, i32* @CTL_HA_STATUS_SUCCESS, align 4
  store i32 %50, i32* %5, align 4
  br label %72

51:                                               ; preds = %41
  %52 = load %struct.ha_softc*, %struct.ha_softc** %10, align 8
  %53 = getelementptr inbounds %struct.ha_softc, %struct.ha_softc* %52, i32 0, i32 2
  %54 = call i32 @mtx_lock(i32* %53)
  %55 = load %struct.ha_softc*, %struct.ha_softc** %10, align 8
  %56 = getelementptr inbounds %struct.ha_softc, %struct.ha_softc* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %51
  %60 = load %struct.ha_softc*, %struct.ha_softc** %10, align 8
  %61 = getelementptr inbounds %struct.ha_softc, %struct.ha_softc* %60, i32 0, i32 0
  store i32 1, i32* %61, align 8
  %62 = load %struct.ha_softc*, %struct.ha_softc** %10, align 8
  %63 = getelementptr inbounds %struct.ha_softc, %struct.ha_softc* %62, i32 0, i32 1
  store i32 1, i32* %63, align 4
  %64 = load %struct.ha_softc*, %struct.ha_softc** %10, align 8
  %65 = getelementptr inbounds %struct.ha_softc, %struct.ha_softc* %64, i32 0, i32 1
  %66 = call i32 @wakeup(i32* %65)
  br label %67

67:                                               ; preds = %59, %51
  %68 = load %struct.ha_softc*, %struct.ha_softc** %10, align 8
  %69 = getelementptr inbounds %struct.ha_softc, %struct.ha_softc* %68, i32 0, i32 2
  %70 = call i32 @mtx_unlock(i32* %69)
  %71 = load i32, i32* @CTL_HA_STATUS_ERROR, align 4
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %67, %49, %19
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i32 @soreceive(i32, i32*, %struct.uio*, i32*, i32*, i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @wakeup(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

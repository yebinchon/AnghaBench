; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_frontend_iscsi.c_cfiscsi_online.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_frontend_iscsi.c_cfiscsi_online.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfiscsi_softc = type { i32*, i32, i32 }
%struct.cfiscsi_target = type { i32, %struct.cfiscsi_softc* }

@cfiscsi_accept = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @cfiscsi_online to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfiscsi_online(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.cfiscsi_softc*, align 8
  %4 = alloca %struct.cfiscsi_target*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.cfiscsi_target*
  store %struct.cfiscsi_target* %7, %struct.cfiscsi_target** %4, align 8
  %8 = load %struct.cfiscsi_target*, %struct.cfiscsi_target** %4, align 8
  %9 = getelementptr inbounds %struct.cfiscsi_target, %struct.cfiscsi_target* %8, i32 0, i32 1
  %10 = load %struct.cfiscsi_softc*, %struct.cfiscsi_softc** %9, align 8
  store %struct.cfiscsi_softc* %10, %struct.cfiscsi_softc** %3, align 8
  %11 = load %struct.cfiscsi_softc*, %struct.cfiscsi_softc** %3, align 8
  %12 = getelementptr inbounds %struct.cfiscsi_softc, %struct.cfiscsi_softc* %11, i32 0, i32 1
  %13 = call i32 @mtx_lock(i32* %12)
  %14 = load %struct.cfiscsi_target*, %struct.cfiscsi_target** %4, align 8
  %15 = getelementptr inbounds %struct.cfiscsi_target, %struct.cfiscsi_target* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load %struct.cfiscsi_softc*, %struct.cfiscsi_softc** %3, align 8
  %20 = getelementptr inbounds %struct.cfiscsi_softc, %struct.cfiscsi_softc* %19, i32 0, i32 1
  %21 = call i32 @mtx_unlock(i32* %20)
  br label %35

22:                                               ; preds = %1
  %23 = load %struct.cfiscsi_target*, %struct.cfiscsi_target** %4, align 8
  %24 = getelementptr inbounds %struct.cfiscsi_target, %struct.cfiscsi_target* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = load %struct.cfiscsi_softc*, %struct.cfiscsi_softc** %3, align 8
  %26 = getelementptr inbounds %struct.cfiscsi_softc, %struct.cfiscsi_softc* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  store i32 %27, i32* %5, align 4
  %29 = load %struct.cfiscsi_softc*, %struct.cfiscsi_softc** %3, align 8
  %30 = getelementptr inbounds %struct.cfiscsi_softc, %struct.cfiscsi_softc* %29, i32 0, i32 1
  %31 = call i32 @mtx_unlock(i32* %30)
  %32 = load i32, i32* %5, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %22
  br label %35

35:                                               ; preds = %18, %34, %22
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

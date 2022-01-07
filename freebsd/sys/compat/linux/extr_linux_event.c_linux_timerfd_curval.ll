; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_event.c_linux_timerfd_curval.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_event.c_linux_timerfd_curval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timerfd = type { %struct.itimerspec }
%struct.itimerspec = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }
%struct.timespec = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timerfd*, %struct.itimerspec*)* @linux_timerfd_curval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @linux_timerfd_curval(%struct.timerfd* %0, %struct.itimerspec* %1) #0 {
  %3 = alloca %struct.timerfd*, align 8
  %4 = alloca %struct.itimerspec*, align 8
  %5 = alloca %struct.timespec, align 4
  store %struct.timerfd* %0, %struct.timerfd** %3, align 8
  store %struct.itimerspec* %1, %struct.itimerspec** %4, align 8
  %6 = load %struct.timerfd*, %struct.timerfd** %3, align 8
  %7 = call i32 @linux_timerfd_clocktime(%struct.timerfd* %6, %struct.timespec* %5)
  %8 = load %struct.itimerspec*, %struct.itimerspec** %4, align 8
  %9 = load %struct.timerfd*, %struct.timerfd** %3, align 8
  %10 = getelementptr inbounds %struct.timerfd, %struct.timerfd* %9, i32 0, i32 0
  %11 = bitcast %struct.itimerspec* %8 to i8*
  %12 = bitcast %struct.itimerspec* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 16, i1 false)
  %13 = load %struct.itimerspec*, %struct.itimerspec** %4, align 8
  %14 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %2
  %19 = load %struct.itimerspec*, %struct.itimerspec** %4, align 8
  %20 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %55

24:                                               ; preds = %18, %2
  %25 = load %struct.itimerspec*, %struct.itimerspec** %4, align 8
  %26 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %25, i32 0, i32 0
  %27 = load %struct.itimerspec*, %struct.itimerspec** %4, align 8
  %28 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %27, i32 0, i32 0
  %29 = call i32 @timespecsub(%struct.TYPE_3__* %26, %struct.timespec* %5, %struct.TYPE_3__* %28)
  %30 = load %struct.itimerspec*, %struct.itimerspec** %4, align 8
  %31 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %47, label %35

35:                                               ; preds = %24
  %36 = load %struct.itimerspec*, %struct.itimerspec** %4, align 8
  %37 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %35
  %42 = load %struct.itimerspec*, %struct.itimerspec** %4, align 8
  %43 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %41, %24
  %48 = load %struct.itimerspec*, %struct.itimerspec** %4, align 8
  %49 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  store i64 0, i64* %50, align 8
  %51 = load %struct.itimerspec*, %struct.itimerspec** %4, align 8
  %52 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  store i32 1, i32* %53, align 8
  br label %54

54:                                               ; preds = %47, %41, %35
  br label %55

55:                                               ; preds = %54, %18
  ret void
}

declare dso_local i32 @linux_timerfd_clocktime(%struct.timerfd*, %struct.timespec*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @timespecsub(%struct.TYPE_3__*, %struct.timespec*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

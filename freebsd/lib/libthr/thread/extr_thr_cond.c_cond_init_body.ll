; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_cond.c_cond_init_body.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_cond.c_cond_init_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pthread_cond = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.pthread_cond_attr = type { i32, i64 }

@CLOCK_REALTIME = common dso_local global i32 0, align 4
@USYNC_PROCESS_SHARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pthread_cond*, %struct.pthread_cond_attr*)* @cond_init_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cond_init_body(%struct.pthread_cond* %0, %struct.pthread_cond_attr* %1) #0 {
  %3 = alloca %struct.pthread_cond*, align 8
  %4 = alloca %struct.pthread_cond_attr*, align 8
  store %struct.pthread_cond* %0, %struct.pthread_cond** %3, align 8
  store %struct.pthread_cond_attr* %1, %struct.pthread_cond_attr** %4, align 8
  %5 = load %struct.pthread_cond_attr*, %struct.pthread_cond_attr** %4, align 8
  %6 = icmp eq %struct.pthread_cond_attr* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = load i32, i32* @CLOCK_REALTIME, align 4
  %9 = load %struct.pthread_cond*, %struct.pthread_cond** %3, align 8
  %10 = getelementptr inbounds %struct.pthread_cond, %struct.pthread_cond* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i32 %8, i32* %11, align 4
  br label %31

12:                                               ; preds = %2
  %13 = load %struct.pthread_cond_attr*, %struct.pthread_cond_attr** %4, align 8
  %14 = getelementptr inbounds %struct.pthread_cond_attr, %struct.pthread_cond_attr* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %12
  %18 = load i32, i32* @USYNC_PROCESS_SHARED, align 4
  %19 = load %struct.pthread_cond*, %struct.pthread_cond** %3, align 8
  %20 = getelementptr inbounds %struct.pthread_cond, %struct.pthread_cond* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %18
  store i32 %23, i32* %21, align 4
  br label %24

24:                                               ; preds = %17, %12
  %25 = load %struct.pthread_cond_attr*, %struct.pthread_cond_attr** %4, align 8
  %26 = getelementptr inbounds %struct.pthread_cond_attr, %struct.pthread_cond_attr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.pthread_cond*, %struct.pthread_cond** %3, align 8
  %29 = getelementptr inbounds %struct.pthread_cond, %struct.pthread_cond* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 4
  br label %31

31:                                               ; preds = %24, %7
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_try_unblock_others.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_try_unblock_others.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_lun = type { i32 }
%union.ctl_io = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32* }

@MA_OWNED = common dso_local global i32 0, align 4
@blocked_links = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"I/O %p on blocked list without blocker\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"blocked_queue is not empty after skipping %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctl_lun*, %union.ctl_io*, i32)* @ctl_try_unblock_others to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctl_try_unblock_others(%struct.ctl_lun* %0, %union.ctl_io* %1, i32 %2) #0 {
  %4 = alloca %struct.ctl_lun*, align 8
  %5 = alloca %union.ctl_io*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.ctl_io*, align 8
  %8 = alloca %union.ctl_io*, align 8
  store %struct.ctl_lun* %0, %struct.ctl_lun** %4, align 8
  store %union.ctl_io* %1, %union.ctl_io** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %10 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %9, i32 0, i32 0
  %11 = load i32, i32* @MA_OWNED, align 4
  %12 = call i32 @mtx_assert(i32* %10, i32 %11)
  %13 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %14 = bitcast %union.ctl_io* %13 to %struct.TYPE_2__*
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i64 @TAILQ_FIRST(i32* %15)
  %17 = inttoptr i64 %16 to %union.ctl_io*
  store %union.ctl_io* %17, %union.ctl_io** %7, align 8
  br label %18

18:                                               ; preds = %40, %3
  %19 = load %union.ctl_io*, %union.ctl_io** %7, align 8
  %20 = icmp ne %union.ctl_io* %19, null
  br i1 %20, label %21, label %42

21:                                               ; preds = %18
  %22 = load %union.ctl_io*, %union.ctl_io** %7, align 8
  %23 = bitcast %union.ctl_io* %22 to %struct.TYPE_2__*
  %24 = load i32, i32* @blocked_links, align 4
  %25 = call i64 @TAILQ_NEXT(%struct.TYPE_2__* %23, i32 %24)
  %26 = inttoptr i64 %25 to %union.ctl_io*
  store %union.ctl_io* %26, %union.ctl_io** %8, align 8
  %27 = load %union.ctl_io*, %union.ctl_io** %7, align 8
  %28 = bitcast %union.ctl_io* %27 to %struct.TYPE_2__*
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  %32 = zext i1 %31 to i32
  %33 = load %union.ctl_io*, %union.ctl_io** %7, align 8
  %34 = bitcast %union.ctl_io* %33 to i8*
  %35 = call i32 @KASSERT(i32 %32, i8* %34)
  %36 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %37 = load %union.ctl_io*, %union.ctl_io** %7, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @ctl_try_unblock_io(%struct.ctl_lun* %36, %union.ctl_io* %37, i32 %38)
  br label %40

40:                                               ; preds = %21
  %41 = load %union.ctl_io*, %union.ctl_io** %8, align 8
  store %union.ctl_io* %41, %union.ctl_io** %7, align 8
  br label %18

42:                                               ; preds = %18
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %47 = bitcast %union.ctl_io* %46 to %struct.TYPE_2__*
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = call i64 @TAILQ_EMPTY(i32* %48)
  %50 = icmp ne i64 %49, 0
  br label %51

51:                                               ; preds = %45, %42
  %52 = phi i1 [ true, %42 ], [ %50, %45 ]
  %53 = zext i1 %52 to i32
  %54 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %55 = bitcast %union.ctl_io* %54 to i8*
  %56 = call i32 @KASSERT(i32 %53, i8* %55)
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i64 @TAILQ_FIRST(i32*) #1

declare dso_local i64 @TAILQ_NEXT(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @ctl_try_unblock_io(%struct.ctl_lun*, %union.ctl_io*, i32) #1

declare dso_local i64 @TAILQ_EMPTY(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

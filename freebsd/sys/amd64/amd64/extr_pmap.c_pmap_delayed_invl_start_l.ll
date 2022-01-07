; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_delayed_invl_start_l.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_delayed_invl_start_l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.pmap_invl_gen }
%struct.pmap_invl_gen = type { i64 }
%struct.TYPE_6__ = type { i64 }

@curthread = common dso_local global %struct.TYPE_5__* null, align 8
@invl_gen_mtx = common dso_local global i32 0, align 4
@pmap_invl_gen_tracker = common dso_local global i32 0, align 4
@pmap_invl_gen = common dso_local global i64 0, align 8
@link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @pmap_delayed_invl_start_l to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmap_delayed_invl_start_l() #0 {
  %1 = alloca %struct.pmap_invl_gen*, align 8
  %2 = alloca i64, align 8
  %3 = load %struct.TYPE_5__*, %struct.TYPE_5__** @curthread, align 8
  %4 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  store %struct.pmap_invl_gen* %5, %struct.pmap_invl_gen** %1, align 8
  %6 = call i32 (...) @PMAP_ASSERT_NOT_IN_DI()
  %7 = call i32 @mtx_lock(i32* @invl_gen_mtx)
  %8 = call i64 @LIST_EMPTY(i32* @pmap_invl_gen_tracker)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = load i64, i64* @pmap_invl_gen, align 8
  store i64 %11, i64* %2, align 8
  br label %16

12:                                               ; preds = %0
  %13 = call %struct.TYPE_6__* @LIST_FIRST(i32* @pmap_invl_gen_tracker)
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %2, align 8
  br label %16

16:                                               ; preds = %12, %10
  %17 = load i64, i64* %2, align 8
  %18 = add nsw i64 %17, 1
  %19 = load %struct.pmap_invl_gen*, %struct.pmap_invl_gen** %1, align 8
  %20 = getelementptr inbounds %struct.pmap_invl_gen, %struct.pmap_invl_gen* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load %struct.pmap_invl_gen*, %struct.pmap_invl_gen** %1, align 8
  %22 = load i32, i32* @link, align 4
  %23 = call i32 @LIST_INSERT_HEAD(i32* @pmap_invl_gen_tracker, %struct.pmap_invl_gen* %21, i32 %22)
  %24 = call i32 @mtx_unlock(i32* @invl_gen_mtx)
  ret void
}

declare dso_local i32 @PMAP_ASSERT_NOT_IN_DI(...) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @LIST_EMPTY(i32*) #1

declare dso_local %struct.TYPE_6__* @LIST_FIRST(i32*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.pmap_invl_gen*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

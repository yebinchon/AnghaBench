; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_delayed_invl_finish_l.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_delayed_invl_finish_l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.pmap_invl_gen }
%struct.pmap_invl_gen = type { i64 }

@curthread = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [18 x i8] c"missed invl_start\00", align 1
@invl_gen_mtx = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @pmap_delayed_invl_finish_l to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmap_delayed_invl_finish_l() #0 {
  %1 = alloca %struct.pmap_invl_gen*, align 8
  %2 = alloca %struct.pmap_invl_gen*, align 8
  %3 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curthread, align 8
  %4 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  store %struct.pmap_invl_gen* %5, %struct.pmap_invl_gen** %1, align 8
  %6 = load %struct.pmap_invl_gen*, %struct.pmap_invl_gen** %1, align 8
  %7 = getelementptr inbounds %struct.pmap_invl_gen, %struct.pmap_invl_gen* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  %10 = zext i1 %9 to i32
  %11 = call i32 @KASSERT(i32 %10, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 @mtx_lock(i32* @invl_gen_mtx)
  %13 = load %struct.pmap_invl_gen*, %struct.pmap_invl_gen** %1, align 8
  %14 = load i32, i32* @link, align 4
  %15 = call %struct.pmap_invl_gen* @LIST_NEXT(%struct.pmap_invl_gen* %13, i32 %14)
  store %struct.pmap_invl_gen* %15, %struct.pmap_invl_gen** %2, align 8
  %16 = load %struct.pmap_invl_gen*, %struct.pmap_invl_gen** %2, align 8
  %17 = icmp eq %struct.pmap_invl_gen* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %0
  %19 = load %struct.pmap_invl_gen*, %struct.pmap_invl_gen** %1, align 8
  %20 = getelementptr inbounds %struct.pmap_invl_gen, %struct.pmap_invl_gen* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @pmap_delayed_invl_finish_unblock(i64 %21)
  br label %29

23:                                               ; preds = %0
  %24 = load %struct.pmap_invl_gen*, %struct.pmap_invl_gen** %1, align 8
  %25 = getelementptr inbounds %struct.pmap_invl_gen, %struct.pmap_invl_gen* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.pmap_invl_gen*, %struct.pmap_invl_gen** %2, align 8
  %28 = getelementptr inbounds %struct.pmap_invl_gen, %struct.pmap_invl_gen* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  br label %29

29:                                               ; preds = %23, %18
  %30 = load %struct.pmap_invl_gen*, %struct.pmap_invl_gen** %1, align 8
  %31 = load i32, i32* @link, align 4
  %32 = call i32 @LIST_REMOVE(%struct.pmap_invl_gen* %30, i32 %31)
  %33 = call i32 @mtx_unlock(i32* @invl_gen_mtx)
  %34 = load %struct.pmap_invl_gen*, %struct.pmap_invl_gen** %1, align 8
  %35 = getelementptr inbounds %struct.pmap_invl_gen, %struct.pmap_invl_gen* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.pmap_invl_gen* @LIST_NEXT(%struct.pmap_invl_gen*, i32) #1

declare dso_local i32 @pmap_delayed_invl_finish_unblock(i64) #1

declare dso_local i32 @LIST_REMOVE(%struct.pmap_invl_gen*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

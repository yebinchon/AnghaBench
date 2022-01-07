; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/ndis/extr_kern_windrv.c_request_fpu_cc_ent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/ndis/extr_kern_windrv.c_request_fpu_cc_ent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpu_cc_ent = type { i32* }

@fpu_free_mtx = common dso_local global i32 0, align 4
@fpu_free_head = common dso_local global i32 0, align 4
@entries = common dso_local global i32 0, align 4
@fpu_busy_mtx = common dso_local global i32 0, align 4
@fpu_busy_head = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@FPU_KERN_NORMAL = common dso_local global i32 0, align 4
@FPU_KERN_NOWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fpu_cc_ent* ()* @request_fpu_cc_ent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fpu_cc_ent* @request_fpu_cc_ent() #0 {
  %1 = alloca %struct.fpu_cc_ent*, align 8
  %2 = alloca %struct.fpu_cc_ent*, align 8
  %3 = call i32 @mtx_lock(i32* @fpu_free_mtx)
  %4 = call %struct.fpu_cc_ent* @LIST_FIRST(i32* @fpu_free_head)
  store %struct.fpu_cc_ent* %4, %struct.fpu_cc_ent** %2, align 8
  %5 = icmp ne %struct.fpu_cc_ent* %4, null
  br i1 %5, label %6, label %17

6:                                                ; preds = %0
  %7 = load %struct.fpu_cc_ent*, %struct.fpu_cc_ent** %2, align 8
  %8 = load i32, i32* @entries, align 4
  %9 = call i32 @LIST_REMOVE(%struct.fpu_cc_ent* %7, i32 %8)
  %10 = call i32 @mtx_unlock(i32* @fpu_free_mtx)
  %11 = call i32 @mtx_lock(i32* @fpu_busy_mtx)
  %12 = load %struct.fpu_cc_ent*, %struct.fpu_cc_ent** %2, align 8
  %13 = load i32, i32* @entries, align 4
  %14 = call i32 @LIST_INSERT_HEAD(i32* @fpu_busy_head, %struct.fpu_cc_ent* %12, i32 %13)
  %15 = call i32 @mtx_unlock(i32* @fpu_busy_mtx)
  %16 = load %struct.fpu_cc_ent*, %struct.fpu_cc_ent** %2, align 8
  store %struct.fpu_cc_ent* %16, %struct.fpu_cc_ent** %1, align 8
  br label %49

17:                                               ; preds = %0
  %18 = call i32 @mtx_unlock(i32* @fpu_free_mtx)
  %19 = load i32, i32* @M_DEVBUF, align 4
  %20 = load i32, i32* @M_NOWAIT, align 4
  %21 = load i32, i32* @M_ZERO, align 4
  %22 = or i32 %20, %21
  %23 = call %struct.fpu_cc_ent* @malloc(i32 8, i32 %19, i32 %22)
  store %struct.fpu_cc_ent* %23, %struct.fpu_cc_ent** %2, align 8
  %24 = icmp ne %struct.fpu_cc_ent* %23, null
  br i1 %24, label %25, label %47

25:                                               ; preds = %17
  %26 = load i32, i32* @FPU_KERN_NORMAL, align 4
  %27 = load i32, i32* @FPU_KERN_NOWAIT, align 4
  %28 = or i32 %26, %27
  %29 = call i32* @fpu_kern_alloc_ctx(i32 %28)
  %30 = load %struct.fpu_cc_ent*, %struct.fpu_cc_ent** %2, align 8
  %31 = getelementptr inbounds %struct.fpu_cc_ent, %struct.fpu_cc_ent* %30, i32 0, i32 0
  store i32* %29, i32** %31, align 8
  %32 = load %struct.fpu_cc_ent*, %struct.fpu_cc_ent** %2, align 8
  %33 = getelementptr inbounds %struct.fpu_cc_ent, %struct.fpu_cc_ent* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %25
  %37 = call i32 @mtx_lock(i32* @fpu_busy_mtx)
  %38 = load %struct.fpu_cc_ent*, %struct.fpu_cc_ent** %2, align 8
  %39 = load i32, i32* @entries, align 4
  %40 = call i32 @LIST_INSERT_HEAD(i32* @fpu_busy_head, %struct.fpu_cc_ent* %38, i32 %39)
  %41 = call i32 @mtx_unlock(i32* @fpu_busy_mtx)
  br label %46

42:                                               ; preds = %25
  %43 = load %struct.fpu_cc_ent*, %struct.fpu_cc_ent** %2, align 8
  %44 = load i32, i32* @M_DEVBUF, align 4
  %45 = call i32 @free(%struct.fpu_cc_ent* %43, i32 %44)
  store %struct.fpu_cc_ent* null, %struct.fpu_cc_ent** %2, align 8
  br label %46

46:                                               ; preds = %42, %36
  br label %47

47:                                               ; preds = %46, %17
  %48 = load %struct.fpu_cc_ent*, %struct.fpu_cc_ent** %2, align 8
  store %struct.fpu_cc_ent* %48, %struct.fpu_cc_ent** %1, align 8
  br label %49

49:                                               ; preds = %47, %6
  %50 = load %struct.fpu_cc_ent*, %struct.fpu_cc_ent** %1, align 8
  ret %struct.fpu_cc_ent* %50
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.fpu_cc_ent* @LIST_FIRST(i32*) #1

declare dso_local i32 @LIST_REMOVE(%struct.fpu_cc_ent*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.fpu_cc_ent*, i32) #1

declare dso_local %struct.fpu_cc_ent* @malloc(i32, i32, i32) #1

declare dso_local i32* @fpu_kern_alloc_ctx(i32) #1

declare dso_local i32 @free(%struct.fpu_cc_ent*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

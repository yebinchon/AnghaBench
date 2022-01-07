; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/compat/opensolaris/kern/extr_opensolaris_sunddi.c_ddi_soft_state_zalloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/compat/opensolaris/kern/extr_opensolaris_sunddi.c_ddi_soft_state_zalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddi_soft_state = type { i32, i32, i32 }
%struct.ddi_soft_state_item = type { i32, %struct.ddi_soft_state_item* }

@KM_SLEEP = common dso_local global i32 0, align 4
@DDI_FAILURE = common dso_local global i32 0, align 4
@ssi_next = common dso_local global i32 0, align 4
@DDI_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ddi_soft_state_zalloc(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ddi_soft_state*, align 8
  %7 = alloca %struct.ddi_soft_state_item*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.ddi_soft_state*
  store %struct.ddi_soft_state* %9, %struct.ddi_soft_state** %6, align 8
  %10 = load i32, i32* @KM_SLEEP, align 4
  %11 = call %struct.ddi_soft_state_item* @kmem_alloc(i32 16, i32 %10)
  store %struct.ddi_soft_state_item* %11, %struct.ddi_soft_state_item** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.ddi_soft_state_item*, %struct.ddi_soft_state_item** %7, align 8
  %14 = getelementptr inbounds %struct.ddi_soft_state_item, %struct.ddi_soft_state_item* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load %struct.ddi_soft_state*, %struct.ddi_soft_state** %6, align 8
  %16 = getelementptr inbounds %struct.ddi_soft_state, %struct.ddi_soft_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @KM_SLEEP, align 4
  %19 = call %struct.ddi_soft_state_item* @kmem_zalloc(i32 %17, i32 %18)
  %20 = load %struct.ddi_soft_state_item*, %struct.ddi_soft_state_item** %7, align 8
  %21 = getelementptr inbounds %struct.ddi_soft_state_item, %struct.ddi_soft_state_item* %20, i32 0, i32 1
  store %struct.ddi_soft_state_item* %19, %struct.ddi_soft_state_item** %21, align 8
  %22 = load %struct.ddi_soft_state*, %struct.ddi_soft_state** %6, align 8
  %23 = getelementptr inbounds %struct.ddi_soft_state, %struct.ddi_soft_state* %22, i32 0, i32 1
  %24 = call i32 @mutex_enter(i32* %23)
  %25 = load %struct.ddi_soft_state*, %struct.ddi_soft_state** %6, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32* @ddi_get_soft_state_locked(%struct.ddi_soft_state* %25, i32 %26)
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %43

29:                                               ; preds = %2
  %30 = load %struct.ddi_soft_state*, %struct.ddi_soft_state** %6, align 8
  %31 = getelementptr inbounds %struct.ddi_soft_state, %struct.ddi_soft_state* %30, i32 0, i32 1
  %32 = call i32 @mutex_exit(i32* %31)
  %33 = load %struct.ddi_soft_state_item*, %struct.ddi_soft_state_item** %7, align 8
  %34 = getelementptr inbounds %struct.ddi_soft_state_item, %struct.ddi_soft_state_item* %33, i32 0, i32 1
  %35 = load %struct.ddi_soft_state_item*, %struct.ddi_soft_state_item** %34, align 8
  %36 = load %struct.ddi_soft_state*, %struct.ddi_soft_state** %6, align 8
  %37 = getelementptr inbounds %struct.ddi_soft_state, %struct.ddi_soft_state* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @kmem_free(%struct.ddi_soft_state_item* %35, i32 %38)
  %40 = load %struct.ddi_soft_state_item*, %struct.ddi_soft_state_item** %7, align 8
  %41 = call i32 @kmem_free(%struct.ddi_soft_state_item* %40, i32 16)
  %42 = load i32, i32* @DDI_FAILURE, align 4
  store i32 %42, i32* %3, align 4
  br label %53

43:                                               ; preds = %2
  %44 = load %struct.ddi_soft_state*, %struct.ddi_soft_state** %6, align 8
  %45 = getelementptr inbounds %struct.ddi_soft_state, %struct.ddi_soft_state* %44, i32 0, i32 2
  %46 = load %struct.ddi_soft_state_item*, %struct.ddi_soft_state_item** %7, align 8
  %47 = load i32, i32* @ssi_next, align 4
  %48 = call i32 @LIST_INSERT_HEAD(i32* %45, %struct.ddi_soft_state_item* %46, i32 %47)
  %49 = load %struct.ddi_soft_state*, %struct.ddi_soft_state** %6, align 8
  %50 = getelementptr inbounds %struct.ddi_soft_state, %struct.ddi_soft_state* %49, i32 0, i32 1
  %51 = call i32 @mutex_exit(i32* %50)
  %52 = load i32, i32* @DDI_SUCCESS, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %43, %29
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.ddi_soft_state_item* @kmem_alloc(i32, i32) #1

declare dso_local %struct.ddi_soft_state_item* @kmem_zalloc(i32, i32) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32* @ddi_get_soft_state_locked(%struct.ddi_soft_state*, i32) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @kmem_free(%struct.ddi_soft_state_item*, i32) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.ddi_soft_state_item*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

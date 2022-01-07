; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/compat/opensolaris/kern/extr_opensolaris_sunddi.c_ddi_soft_state_fini.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/compat/opensolaris/kern/extr_opensolaris_sunddi.c_ddi_soft_state_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddi_soft_state = type { i32, i32 }
%struct.ddi_soft_state_item = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ddi_soft_state_fini(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca %struct.ddi_soft_state*, align 8
  %4 = alloca %struct.ddi_soft_state_item*, align 8
  %5 = alloca i32, align 4
  store i8** %0, i8*** %2, align 8
  %6 = load i8**, i8*** %2, align 8
  %7 = load i8*, i8** %6, align 8
  %8 = bitcast i8* %7 to %struct.ddi_soft_state*
  store %struct.ddi_soft_state* %8, %struct.ddi_soft_state** %3, align 8
  %9 = load %struct.ddi_soft_state*, %struct.ddi_soft_state** %3, align 8
  %10 = getelementptr inbounds %struct.ddi_soft_state, %struct.ddi_soft_state* %9, i32 0, i32 0
  %11 = call i32 @mutex_enter(i32* %10)
  br label %12

12:                                               ; preds = %17, %1
  %13 = load %struct.ddi_soft_state*, %struct.ddi_soft_state** %3, align 8
  %14 = getelementptr inbounds %struct.ddi_soft_state, %struct.ddi_soft_state* %13, i32 0, i32 1
  %15 = call %struct.ddi_soft_state_item* @LIST_FIRST(i32* %14)
  store %struct.ddi_soft_state_item* %15, %struct.ddi_soft_state_item** %4, align 8
  %16 = icmp ne %struct.ddi_soft_state_item* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %12
  %18 = load %struct.ddi_soft_state_item*, %struct.ddi_soft_state_item** %4, align 8
  %19 = getelementptr inbounds %struct.ddi_soft_state_item, %struct.ddi_soft_state_item* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %5, align 4
  %21 = load %struct.ddi_soft_state*, %struct.ddi_soft_state** %3, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @ddi_soft_state_free_locked(%struct.ddi_soft_state* %21, i32 %22)
  br label %12

24:                                               ; preds = %12
  %25 = load %struct.ddi_soft_state*, %struct.ddi_soft_state** %3, align 8
  %26 = getelementptr inbounds %struct.ddi_soft_state, %struct.ddi_soft_state* %25, i32 0, i32 0
  %27 = call i32 @mutex_exit(i32* %26)
  %28 = load %struct.ddi_soft_state*, %struct.ddi_soft_state** %3, align 8
  %29 = getelementptr inbounds %struct.ddi_soft_state, %struct.ddi_soft_state* %28, i32 0, i32 0
  %30 = call i32 @mutex_destroy(i32* %29)
  %31 = load %struct.ddi_soft_state*, %struct.ddi_soft_state** %3, align 8
  %32 = call i32 @kmem_free(%struct.ddi_soft_state* %31, i32 8)
  %33 = load i8**, i8*** %2, align 8
  store i8* null, i8** %33, align 8
  ret void
}

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local %struct.ddi_soft_state_item* @LIST_FIRST(i32*) #1

declare dso_local i32 @ddi_soft_state_free_locked(%struct.ddi_soft_state*, i32) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @kmem_free(%struct.ddi_soft_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

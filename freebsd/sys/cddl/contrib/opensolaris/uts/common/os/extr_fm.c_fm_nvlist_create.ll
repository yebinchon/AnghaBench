; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/os/extr_fm.c_fm_nvlist_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/os/extr_fm.c_fm_nvlist_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KM_SLEEP = common dso_local global i32 0, align 4
@fm_mem_alloc_ops = common dso_local global i32 0, align 4
@NV_UNIQUE_NAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @fm_nvlist_create(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load i32*, i32** %3, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %19

9:                                                ; preds = %1
  %10 = load i32, i32* @KM_SLEEP, align 4
  %11 = call i32* @kmem_zalloc(i32 4, i32 %10)
  store i32* %11, i32** %6, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = call i64 @nv_alloc_init(i32* %12, i32* @fm_mem_alloc_ops, i32* null, i32 0)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @kmem_free(i32* %16, i32 4)
  store i32* null, i32** %2, align 8
  br label %37

18:                                               ; preds = %9
  store i32 1, i32* %4, align 4
  br label %21

19:                                               ; preds = %1
  %20 = load i32*, i32** %3, align 8
  store i32* %20, i32** %6, align 8
  br label %21

21:                                               ; preds = %19, %18
  %22 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %23 = load i32*, i32** %6, align 8
  %24 = call i64 @nvlist_xalloc(i32** %5, i32 %22, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %21
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 @nv_alloc_fini(i32* %30)
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @kmem_free(i32* %32, i32 4)
  br label %34

34:                                               ; preds = %29, %26
  store i32* null, i32** %2, align 8
  br label %37

35:                                               ; preds = %21
  %36 = load i32*, i32** %5, align 8
  store i32* %36, i32** %2, align 8
  br label %37

37:                                               ; preds = %35, %34, %15
  %38 = load i32*, i32** %2, align 8
  ret i32* %38
}

declare dso_local i32* @kmem_zalloc(i32, i32) #1

declare dso_local i64 @nv_alloc_init(i32*, i32*, i32*, i32) #1

declare dso_local i32 @kmem_free(i32*, i32) #1

declare dso_local i64 @nvlist_xalloc(i32**, i32, i32*) #1

declare dso_local i32 @nv_alloc_fini(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

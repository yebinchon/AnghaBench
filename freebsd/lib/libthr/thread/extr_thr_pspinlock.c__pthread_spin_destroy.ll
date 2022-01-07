; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_pspinlock.c__pthread_spin_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_pspinlock.c__pthread_spin_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@THR_PSHARED_PTR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_pthread_spin_destroy(i32** %0) #0 {
  %2 = alloca i32**, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i32** %0, i32*** %2, align 8
  %5 = load i32**, i32*** %2, align 8
  %6 = icmp eq i32** %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load i32**, i32*** %2, align 8
  %9 = load i32*, i32** %8, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %7, %1
  %12 = load i32, i32* @EINVAL, align 4
  store i32 %12, i32* %4, align 4
  br label %33

13:                                               ; preds = %7
  %14 = load i32**, i32*** %2, align 8
  %15 = load i32*, i32** %14, align 8
  %16 = load i32*, i32** @THR_PSHARED_PTR, align 8
  %17 = icmp eq i32* %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %13
  %19 = load i32**, i32*** %2, align 8
  %20 = call i8* @__thr_pshared_offpage(i32** %19, i32 0)
  store i8* %20, i8** %3, align 8
  %21 = load i8*, i8** %3, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i8*, i8** %3, align 8
  %25 = call i32 @__thr_pshared_destroy(i8* %24)
  br label %26

26:                                               ; preds = %23, %18
  store i32 0, i32* %4, align 4
  br label %32

27:                                               ; preds = %13
  %28 = load i32**, i32*** %2, align 8
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @free(i32* %29)
  %31 = load i32**, i32*** %2, align 8
  store i32* null, i32** %31, align 8
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %27, %26
  br label %33

33:                                               ; preds = %32, %11
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i8* @__thr_pshared_offpage(i32**, i32) #1

declare dso_local i32 @__thr_pshared_destroy(i8*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

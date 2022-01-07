; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdlib/extr_set_constraint_handler_s.c_set_constraint_handler_s.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdlib/extr_set_constraint_handler_s.c_set_constraint_handler_s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__isthreaded = common dso_local global i64 0, align 8
@ch_lock = common dso_local global i32 0, align 4
@_ch = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @set_constraint_handler_s(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %7 = call i32** @malloc(i32 8)
  store i32** %7, i32*** %4, align 8
  %8 = load i32**, i32*** %4, align 8
  %9 = icmp eq i32** %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %36

11:                                               ; preds = %1
  %12 = load i32*, i32** %3, align 8
  %13 = load i32**, i32*** %4, align 8
  store i32* %12, i32** %13, align 8
  %14 = load i64, i64* @__isthreaded, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = call i32 @_pthread_mutex_lock(i32* @ch_lock)
  br label %18

18:                                               ; preds = %16, %11
  %19 = load i32**, i32*** @_ch, align 8
  store i32** %19, i32*** %5, align 8
  %20 = load i32**, i32*** %4, align 8
  store i32** %20, i32*** @_ch, align 8
  %21 = load i64, i64* @__isthreaded, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = call i32 @_pthread_mutex_unlock(i32* @ch_lock)
  br label %25

25:                                               ; preds = %23, %18
  %26 = load i32**, i32*** %5, align 8
  %27 = icmp eq i32** %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32* null, i32** %6, align 8
  br label %34

29:                                               ; preds = %25
  %30 = load i32**, i32*** %5, align 8
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %6, align 8
  %32 = load i32**, i32*** %5, align 8
  %33 = call i32 @free(i32** %32)
  br label %34

34:                                               ; preds = %29, %28
  %35 = load i32*, i32** %6, align 8
  store i32* %35, i32** %2, align 8
  br label %36

36:                                               ; preds = %34, %10
  %37 = load i32*, i32** %2, align 8
  ret i32* %37
}

declare dso_local i32** @malloc(i32) #1

declare dso_local i32 @_pthread_mutex_lock(i32*) #1

declare dso_local i32 @_pthread_mutex_unlock(i32*) #1

declare dso_local i32 @free(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

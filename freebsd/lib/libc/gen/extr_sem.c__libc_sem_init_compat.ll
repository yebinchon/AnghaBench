; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_sem.c__libc_sem_init_compat.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_sem.c__libc_sem_init_compat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SEM_USER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_libc_sem_init_compat(i32** %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32** %0, i32*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i64, i64* @SEM_USER, align 8
  store i64 %9, i64* %8, align 8
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load i32, i32* %7, align 4
  %14 = call i64 @ksem_init(i64* %8, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i32 -1, i32* %4, align 4
  br label %34

17:                                               ; preds = %12, %3
  %18 = load i32, i32* %7, align 4
  %19 = load i64, i64* %8, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32* @sem_alloc(i32 %18, i64 %19, i32 %20)
  %22 = load i32**, i32*** %5, align 8
  store i32* %21, i32** %22, align 8
  %23 = load i32**, i32*** %5, align 8
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %17
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i64, i64* %8, align 8
  %31 = call i32 @ksem_destroy(i64 %30)
  br label %32

32:                                               ; preds = %29, %26
  store i32 -1, i32* %4, align 4
  br label %34

33:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %33, %32, %16
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i64 @ksem_init(i64*, i32) #1

declare dso_local i32* @sem_alloc(i32, i64, i32) #1

declare dso_local i32 @ksem_destroy(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

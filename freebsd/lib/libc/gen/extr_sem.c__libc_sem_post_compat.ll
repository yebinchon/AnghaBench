; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_sem.c__libc_sem_post_compat.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_sem.c__libc_sem_post_compat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_libc_sem_post_compat(%struct.TYPE_4__** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__**, align 8
  store %struct.TYPE_4__** %0, %struct.TYPE_4__*** %3, align 8
  %4 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %3, align 8
  %5 = call i64 @sem_check_validity(%struct.TYPE_4__** %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %37

8:                                                ; preds = %1
  %9 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %3, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %8
  %15 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %3, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @ksem_post(i32 %18)
  store i32 %19, i32* %2, align 4
  br label %37

20:                                               ; preds = %8
  %21 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %3, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = call i32 @atomic_add_rel_int(i32* %23, i32 1)
  %25 = call i32 (...) @rmb()
  %26 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %3, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %20
  %32 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %3, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = call i32 @_umtx_wake(i32* %34)
  store i32 %35, i32* %2, align 4
  br label %37

36:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %31, %14, %7
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i64 @sem_check_validity(%struct.TYPE_4__**) #1

declare dso_local i32 @ksem_post(i32) #1

declare dso_local i32 @atomic_add_rel_int(i32*, i32) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @_umtx_wake(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

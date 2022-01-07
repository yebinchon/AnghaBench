; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_barrier_combining.c_ck_barrier_combining_group_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_barrier_combining.c_ck_barrier_combining_group_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ck_barrier_combining = type { i32, i32* }
%struct.ck_barrier_combining_group = type { i32, i32*, i32*, i64, i64 }
%struct.ck_barrier_combining_queue = type { i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ck_barrier_combining_group_init(%struct.ck_barrier_combining* %0, %struct.ck_barrier_combining_group* %1, i32 %2) #0 {
  %4 = alloca %struct.ck_barrier_combining*, align 8
  %5 = alloca %struct.ck_barrier_combining_group*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ck_barrier_combining_group*, align 8
  %8 = alloca %struct.ck_barrier_combining_queue, align 8
  store %struct.ck_barrier_combining* %0, %struct.ck_barrier_combining** %4, align 8
  store %struct.ck_barrier_combining_group* %1, %struct.ck_barrier_combining_group** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = getelementptr inbounds %struct.ck_barrier_combining_queue, %struct.ck_barrier_combining_queue* %8, i32 0, i32 1
  store i32* null, i32** %9, align 8
  %10 = getelementptr inbounds %struct.ck_barrier_combining_queue, %struct.ck_barrier_combining_queue* %8, i32 0, i32 0
  store i32* null, i32** %10, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.ck_barrier_combining_group*, %struct.ck_barrier_combining_group** %5, align 8
  %13 = getelementptr inbounds %struct.ck_barrier_combining_group, %struct.ck_barrier_combining_group* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load %struct.ck_barrier_combining_group*, %struct.ck_barrier_combining_group** %5, align 8
  %15 = getelementptr inbounds %struct.ck_barrier_combining_group, %struct.ck_barrier_combining_group* %14, i32 0, i32 4
  store i64 0, i64* %15, align 8
  %16 = load %struct.ck_barrier_combining_group*, %struct.ck_barrier_combining_group** %5, align 8
  %17 = getelementptr inbounds %struct.ck_barrier_combining_group, %struct.ck_barrier_combining_group* %16, i32 0, i32 3
  store i64 0, i64* %17, align 8
  %18 = load %struct.ck_barrier_combining_group*, %struct.ck_barrier_combining_group** %5, align 8
  %19 = getelementptr inbounds %struct.ck_barrier_combining_group, %struct.ck_barrier_combining_group* %18, i32 0, i32 1
  store i32* null, i32** %19, align 8
  %20 = load %struct.ck_barrier_combining_group*, %struct.ck_barrier_combining_group** %5, align 8
  %21 = getelementptr inbounds %struct.ck_barrier_combining_group, %struct.ck_barrier_combining_group* %20, i32 0, i32 2
  store i32* null, i32** %21, align 8
  %22 = load %struct.ck_barrier_combining*, %struct.ck_barrier_combining** %4, align 8
  %23 = getelementptr inbounds %struct.ck_barrier_combining, %struct.ck_barrier_combining* %22, i32 0, i32 0
  %24 = call i32 @ck_spinlock_fas_lock(i32* %23)
  %25 = load %struct.ck_barrier_combining*, %struct.ck_barrier_combining** %4, align 8
  %26 = getelementptr inbounds %struct.ck_barrier_combining, %struct.ck_barrier_combining* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @ck_barrier_combining_queue_enqueue(%struct.ck_barrier_combining_queue* %8, i32* %27)
  br label %29

29:                                               ; preds = %56, %3
  %30 = getelementptr inbounds %struct.ck_barrier_combining_queue, %struct.ck_barrier_combining_queue* %8, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %65

33:                                               ; preds = %29
  %34 = call %struct.ck_barrier_combining_group* @ck_barrier_combining_queue_dequeue(%struct.ck_barrier_combining_queue* %8)
  store %struct.ck_barrier_combining_group* %34, %struct.ck_barrier_combining_group** %7, align 8
  %35 = load %struct.ck_barrier_combining_group*, %struct.ck_barrier_combining_group** %7, align 8
  %36 = getelementptr inbounds %struct.ck_barrier_combining_group, %struct.ck_barrier_combining_group* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %33
  %40 = load %struct.ck_barrier_combining_group*, %struct.ck_barrier_combining_group** %7, align 8
  %41 = load %struct.ck_barrier_combining_group*, %struct.ck_barrier_combining_group** %5, align 8
  %42 = load %struct.ck_barrier_combining_group*, %struct.ck_barrier_combining_group** %7, align 8
  %43 = getelementptr inbounds %struct.ck_barrier_combining_group, %struct.ck_barrier_combining_group* %42, i32 0, i32 2
  %44 = call i32 @ck_barrier_combining_insert(%struct.ck_barrier_combining_group* %40, %struct.ck_barrier_combining_group* %41, i32** %43)
  br label %66

45:                                               ; preds = %33
  %46 = load %struct.ck_barrier_combining_group*, %struct.ck_barrier_combining_group** %7, align 8
  %47 = getelementptr inbounds %struct.ck_barrier_combining_group, %struct.ck_barrier_combining_group* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = load %struct.ck_barrier_combining_group*, %struct.ck_barrier_combining_group** %7, align 8
  %52 = load %struct.ck_barrier_combining_group*, %struct.ck_barrier_combining_group** %5, align 8
  %53 = load %struct.ck_barrier_combining_group*, %struct.ck_barrier_combining_group** %7, align 8
  %54 = getelementptr inbounds %struct.ck_barrier_combining_group, %struct.ck_barrier_combining_group* %53, i32 0, i32 1
  %55 = call i32 @ck_barrier_combining_insert(%struct.ck_barrier_combining_group* %51, %struct.ck_barrier_combining_group* %52, i32** %54)
  br label %66

56:                                               ; preds = %45
  %57 = load %struct.ck_barrier_combining_group*, %struct.ck_barrier_combining_group** %7, align 8
  %58 = getelementptr inbounds %struct.ck_barrier_combining_group, %struct.ck_barrier_combining_group* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @ck_barrier_combining_queue_enqueue(%struct.ck_barrier_combining_queue* %8, i32* %59)
  %61 = load %struct.ck_barrier_combining_group*, %struct.ck_barrier_combining_group** %7, align 8
  %62 = getelementptr inbounds %struct.ck_barrier_combining_group, %struct.ck_barrier_combining_group* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @ck_barrier_combining_queue_enqueue(%struct.ck_barrier_combining_queue* %8, i32* %63)
  br label %29

65:                                               ; preds = %29
  br label %66

66:                                               ; preds = %65, %50, %39
  %67 = load %struct.ck_barrier_combining*, %struct.ck_barrier_combining** %4, align 8
  %68 = getelementptr inbounds %struct.ck_barrier_combining, %struct.ck_barrier_combining* %67, i32 0, i32 0
  %69 = call i32 @ck_spinlock_fas_unlock(i32* %68)
  ret void
}

declare dso_local i32 @ck_spinlock_fas_lock(i32*) #1

declare dso_local i32 @ck_barrier_combining_queue_enqueue(%struct.ck_barrier_combining_queue*, i32*) #1

declare dso_local %struct.ck_barrier_combining_group* @ck_barrier_combining_queue_dequeue(%struct.ck_barrier_combining_queue*) #1

declare dso_local i32 @ck_barrier_combining_insert(%struct.ck_barrier_combining_group*, %struct.ck_barrier_combining_group*, i32**) #1

declare dso_local i32 @ck_spinlock_fas_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

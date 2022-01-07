; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_barrier_combining.c_ck_barrier_combining_aux.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_barrier_combining.c_ck_barrier_combining_aux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ck_barrier_combining = type { i32 }
%struct.ck_barrier_combining_group = type { i32, i32, i32, %struct.ck_barrier_combining_group* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ck_barrier_combining*, %struct.ck_barrier_combining_group*, i32)* @ck_barrier_combining_aux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ck_barrier_combining_aux(%struct.ck_barrier_combining* %0, %struct.ck_barrier_combining_group* %1, i32 %2) #0 {
  %4 = alloca %struct.ck_barrier_combining*, align 8
  %5 = alloca %struct.ck_barrier_combining_group*, align 8
  %6 = alloca i32, align 4
  store %struct.ck_barrier_combining* %0, %struct.ck_barrier_combining** %4, align 8
  store %struct.ck_barrier_combining_group* %1, %struct.ck_barrier_combining_group** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.ck_barrier_combining_group*, %struct.ck_barrier_combining_group** %5, align 8
  %8 = getelementptr inbounds %struct.ck_barrier_combining_group, %struct.ck_barrier_combining_group* %7, i32 0, i32 2
  %9 = call i32 @ck_pr_faa_uint(i32* %8, i32 1)
  %10 = load %struct.ck_barrier_combining_group*, %struct.ck_barrier_combining_group** %5, align 8
  %11 = getelementptr inbounds %struct.ck_barrier_combining_group, %struct.ck_barrier_combining_group* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sub nsw i32 %12, 1
  %14 = icmp eq i32 %9, %13
  br i1 %14, label %15, label %38

15:                                               ; preds = %3
  %16 = load %struct.ck_barrier_combining_group*, %struct.ck_barrier_combining_group** %5, align 8
  %17 = getelementptr inbounds %struct.ck_barrier_combining_group, %struct.ck_barrier_combining_group* %16, i32 0, i32 3
  %18 = load %struct.ck_barrier_combining_group*, %struct.ck_barrier_combining_group** %17, align 8
  %19 = icmp ne %struct.ck_barrier_combining_group* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load %struct.ck_barrier_combining*, %struct.ck_barrier_combining** %4, align 8
  %22 = load %struct.ck_barrier_combining_group*, %struct.ck_barrier_combining_group** %5, align 8
  %23 = getelementptr inbounds %struct.ck_barrier_combining_group, %struct.ck_barrier_combining_group* %22, i32 0, i32 3
  %24 = load %struct.ck_barrier_combining_group*, %struct.ck_barrier_combining_group** %23, align 8
  %25 = load i32, i32* %6, align 4
  call void @ck_barrier_combining_aux(%struct.ck_barrier_combining* %21, %struct.ck_barrier_combining_group* %24, i32 %25)
  br label %26

26:                                               ; preds = %20, %15
  %27 = load %struct.ck_barrier_combining_group*, %struct.ck_barrier_combining_group** %5, align 8
  %28 = getelementptr inbounds %struct.ck_barrier_combining_group, %struct.ck_barrier_combining_group* %27, i32 0, i32 2
  %29 = call i32 @ck_pr_store_uint(i32* %28, i32 0)
  %30 = call i32 (...) @ck_pr_fence_store()
  %31 = load %struct.ck_barrier_combining_group*, %struct.ck_barrier_combining_group** %5, align 8
  %32 = getelementptr inbounds %struct.ck_barrier_combining_group, %struct.ck_barrier_combining_group* %31, i32 0, i32 1
  %33 = load %struct.ck_barrier_combining_group*, %struct.ck_barrier_combining_group** %5, align 8
  %34 = getelementptr inbounds %struct.ck_barrier_combining_group, %struct.ck_barrier_combining_group* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = xor i32 %35, -1
  %37 = call i32 @ck_pr_store_uint(i32* %32, i32 %36)
  br label %48

38:                                               ; preds = %3
  br label %39

39:                                               ; preds = %45, %38
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.ck_barrier_combining_group*, %struct.ck_barrier_combining_group** %5, align 8
  %42 = getelementptr inbounds %struct.ck_barrier_combining_group, %struct.ck_barrier_combining_group* %41, i32 0, i32 1
  %43 = call i32 @ck_pr_load_uint(i32* %42)
  %44 = icmp ne i32 %40, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = call i32 (...) @ck_pr_stall()
  br label %39

47:                                               ; preds = %39
  br label %48

48:                                               ; preds = %47, %26
  %49 = call i32 (...) @ck_pr_fence_memory()
  ret void
}

declare dso_local i32 @ck_pr_faa_uint(i32*, i32) #1

declare dso_local i32 @ck_pr_store_uint(i32*, i32) #1

declare dso_local i32 @ck_pr_fence_store(...) #1

declare dso_local i32 @ck_pr_load_uint(i32*) #1

declare dso_local i32 @ck_pr_stall(...) #1

declare dso_local i32 @ck_pr_fence_memory(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

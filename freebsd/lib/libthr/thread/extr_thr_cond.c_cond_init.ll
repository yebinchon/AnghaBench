; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_cond.c_cond_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_cond.c_cond_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pthread_cond = type { i32 }
%struct.pthread_cond_attr = type { i64 }

@PTHREAD_PROCESS_PRIVATE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@THR_PSHARED_PTR = common dso_local global %struct.pthread_cond* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pthread_cond**, %struct.pthread_cond_attr**)* @cond_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cond_init(%struct.pthread_cond** %0, %struct.pthread_cond_attr** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pthread_cond**, align 8
  %5 = alloca %struct.pthread_cond_attr**, align 8
  %6 = alloca %struct.pthread_cond*, align 8
  %7 = alloca %struct.pthread_cond_attr*, align 8
  %8 = alloca i32, align 4
  store %struct.pthread_cond** %0, %struct.pthread_cond*** %4, align 8
  store %struct.pthread_cond_attr** %1, %struct.pthread_cond_attr*** %5, align 8
  %9 = load %struct.pthread_cond_attr**, %struct.pthread_cond_attr*** %5, align 8
  %10 = icmp ne %struct.pthread_cond_attr** %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.pthread_cond_attr**, %struct.pthread_cond_attr*** %5, align 8
  %13 = load %struct.pthread_cond_attr*, %struct.pthread_cond_attr** %12, align 8
  br label %15

14:                                               ; preds = %2
  br label %15

15:                                               ; preds = %14, %11
  %16 = phi %struct.pthread_cond_attr* [ %13, %11 ], [ null, %14 ]
  store %struct.pthread_cond_attr* %16, %struct.pthread_cond_attr** %7, align 8
  %17 = load %struct.pthread_cond_attr*, %struct.pthread_cond_attr** %7, align 8
  %18 = icmp eq %struct.pthread_cond_attr* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = load %struct.pthread_cond_attr*, %struct.pthread_cond_attr** %7, align 8
  %21 = getelementptr inbounds %struct.pthread_cond_attr, %struct.pthread_cond_attr* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @PTHREAD_PROCESS_PRIVATE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %19, %15
  store i32 0, i32* %8, align 4
  %26 = call %struct.pthread_cond* @calloc(i32 1, i32 4)
  store %struct.pthread_cond* %26, %struct.pthread_cond** %6, align 8
  %27 = load %struct.pthread_cond*, %struct.pthread_cond** %6, align 8
  %28 = icmp eq %struct.pthread_cond* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* @ENOMEM, align 4
  store i32 %30, i32* %3, align 4
  br label %53

31:                                               ; preds = %25
  br label %40

32:                                               ; preds = %19
  store i32 1, i32* %8, align 4
  %33 = load %struct.pthread_cond**, %struct.pthread_cond*** %4, align 8
  %34 = call %struct.pthread_cond* @__thr_pshared_offpage(%struct.pthread_cond** %33, i32 1)
  store %struct.pthread_cond* %34, %struct.pthread_cond** %6, align 8
  %35 = load %struct.pthread_cond*, %struct.pthread_cond** %6, align 8
  %36 = icmp eq %struct.pthread_cond* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* @EFAULT, align 4
  store i32 %38, i32* %3, align 4
  br label %53

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %39, %31
  %41 = load %struct.pthread_cond*, %struct.pthread_cond** %6, align 8
  %42 = load %struct.pthread_cond_attr*, %struct.pthread_cond_attr** %7, align 8
  %43 = call i32 @cond_init_body(%struct.pthread_cond* %41, %struct.pthread_cond_attr* %42)
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load %struct.pthread_cond*, %struct.pthread_cond** @THR_PSHARED_PTR, align 8
  br label %50

48:                                               ; preds = %40
  %49 = load %struct.pthread_cond*, %struct.pthread_cond** %6, align 8
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi %struct.pthread_cond* [ %47, %46 ], [ %49, %48 ]
  %52 = load %struct.pthread_cond**, %struct.pthread_cond*** %4, align 8
  store %struct.pthread_cond* %51, %struct.pthread_cond** %52, align 8
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %50, %37, %29
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.pthread_cond* @calloc(i32, i32) #1

declare dso_local %struct.pthread_cond* @__thr_pshared_offpage(%struct.pthread_cond**, i32) #1

declare dso_local i32 @cond_init_body(%struct.pthread_cond*, %struct.pthread_cond_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

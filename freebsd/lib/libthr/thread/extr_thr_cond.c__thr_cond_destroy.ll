; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_cond.c__thr_cond_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_cond.c__thr_cond_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pthread_cond = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64 }

@THR_PSHARED_PTR = common dso_local global %struct.pthread_cond* null, align 8
@EBUSY = common dso_local global i32 0, align 4
@THR_COND_DESTROYED = common dso_local global %struct.pthread_cond* null, align 8
@THR_COND_INITIALIZER = common dso_local global %struct.pthread_cond* null, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_thr_cond_destroy(%struct.pthread_cond** %0) #0 {
  %2 = alloca %struct.pthread_cond**, align 8
  %3 = alloca %struct.pthread_cond*, align 8
  %4 = alloca i32, align 4
  store %struct.pthread_cond** %0, %struct.pthread_cond*** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.pthread_cond**, %struct.pthread_cond*** %2, align 8
  %6 = load %struct.pthread_cond*, %struct.pthread_cond** %5, align 8
  %7 = load %struct.pthread_cond*, %struct.pthread_cond** @THR_PSHARED_PTR, align 8
  %8 = icmp eq %struct.pthread_cond* %6, %7
  br i1 %8, label %9, label %33

9:                                                ; preds = %1
  %10 = load %struct.pthread_cond**, %struct.pthread_cond*** %2, align 8
  %11 = call %struct.pthread_cond* @__thr_pshared_offpage(%struct.pthread_cond** %10, i32 0)
  store %struct.pthread_cond* %11, %struct.pthread_cond** %3, align 8
  %12 = load %struct.pthread_cond*, %struct.pthread_cond** %3, align 8
  %13 = icmp ne %struct.pthread_cond* %12, null
  br i1 %13, label %14, label %26

14:                                               ; preds = %9
  %15 = load %struct.pthread_cond*, %struct.pthread_cond** %3, align 8
  %16 = getelementptr inbounds %struct.pthread_cond, %struct.pthread_cond* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* @EBUSY, align 4
  store i32 %21, i32* %4, align 4
  br label %25

22:                                               ; preds = %14
  %23 = load %struct.pthread_cond**, %struct.pthread_cond*** %2, align 8
  %24 = call i32 @__thr_pshared_destroy(%struct.pthread_cond** %23)
  br label %25

25:                                               ; preds = %22, %20
  br label %26

26:                                               ; preds = %25, %9
  %27 = load i32, i32* %4, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load %struct.pthread_cond*, %struct.pthread_cond** @THR_COND_DESTROYED, align 8
  %31 = load %struct.pthread_cond**, %struct.pthread_cond*** %2, align 8
  store %struct.pthread_cond* %30, %struct.pthread_cond** %31, align 8
  br label %32

32:                                               ; preds = %29, %26
  br label %68

33:                                               ; preds = %1
  %34 = load %struct.pthread_cond**, %struct.pthread_cond*** %2, align 8
  %35 = load %struct.pthread_cond*, %struct.pthread_cond** %34, align 8
  store %struct.pthread_cond* %35, %struct.pthread_cond** %3, align 8
  %36 = load %struct.pthread_cond*, %struct.pthread_cond** @THR_COND_INITIALIZER, align 8
  %37 = icmp eq %struct.pthread_cond* %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %67

39:                                               ; preds = %33
  %40 = load %struct.pthread_cond*, %struct.pthread_cond** %3, align 8
  %41 = load %struct.pthread_cond*, %struct.pthread_cond** @THR_COND_DESTROYED, align 8
  %42 = icmp eq %struct.pthread_cond* %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32, i32* @EINVAL, align 4
  store i32 %44, i32* %4, align 4
  br label %66

45:                                               ; preds = %39
  %46 = load %struct.pthread_cond**, %struct.pthread_cond*** %2, align 8
  %47 = load %struct.pthread_cond*, %struct.pthread_cond** %46, align 8
  store %struct.pthread_cond* %47, %struct.pthread_cond** %3, align 8
  %48 = load %struct.pthread_cond*, %struct.pthread_cond** %3, align 8
  %49 = getelementptr inbounds %struct.pthread_cond, %struct.pthread_cond* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %45
  %53 = load %struct.pthread_cond*, %struct.pthread_cond** %3, align 8
  %54 = getelementptr inbounds %struct.pthread_cond, %struct.pthread_cond* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %52, %45
  %59 = load i32, i32* @EBUSY, align 4
  store i32 %59, i32* %4, align 4
  br label %65

60:                                               ; preds = %52
  %61 = load %struct.pthread_cond*, %struct.pthread_cond** @THR_COND_DESTROYED, align 8
  %62 = load %struct.pthread_cond**, %struct.pthread_cond*** %2, align 8
  store %struct.pthread_cond* %61, %struct.pthread_cond** %62, align 8
  %63 = load %struct.pthread_cond*, %struct.pthread_cond** %3, align 8
  %64 = call i32 @free(%struct.pthread_cond* %63)
  br label %65

65:                                               ; preds = %60, %58
  br label %66

66:                                               ; preds = %65, %43
  br label %67

67:                                               ; preds = %66, %38
  br label %68

68:                                               ; preds = %67, %32
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local %struct.pthread_cond* @__thr_pshared_offpage(%struct.pthread_cond**, i32) #1

declare dso_local i32 @__thr_pshared_destroy(%struct.pthread_cond**) #1

declare dso_local i32 @free(%struct.pthread_cond*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

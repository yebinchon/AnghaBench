; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libcxgb4/extr_qp.c_c4iw_flush_qps.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libcxgb4/extr_qp.c_c4iw_flush_qps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c4iw_dev = type { i32, i32, %struct.c4iw_qp** }
%struct.c4iw_qp = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @c4iw_flush_qps(%struct.c4iw_dev* %0) #0 {
  %2 = alloca %struct.c4iw_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.c4iw_qp*, align 8
  store %struct.c4iw_dev* %0, %struct.c4iw_dev** %2, align 8
  %5 = load %struct.c4iw_dev*, %struct.c4iw_dev** %2, align 8
  %6 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %5, i32 0, i32 1
  %7 = call i32 @pthread_spin_lock(i32* %6)
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %46, %1
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.c4iw_dev*, %struct.c4iw_dev** %2, align 8
  %11 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %49

14:                                               ; preds = %8
  %15 = load %struct.c4iw_dev*, %struct.c4iw_dev** %2, align 8
  %16 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %15, i32 0, i32 2
  %17 = load %struct.c4iw_qp**, %struct.c4iw_qp*** %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.c4iw_qp*, %struct.c4iw_qp** %17, i64 %19
  %21 = load %struct.c4iw_qp*, %struct.c4iw_qp** %20, align 8
  store %struct.c4iw_qp* %21, %struct.c4iw_qp** %4, align 8
  %22 = load %struct.c4iw_qp*, %struct.c4iw_qp** %4, align 8
  %23 = icmp ne %struct.c4iw_qp* %22, null
  br i1 %23, label %24, label %45

24:                                               ; preds = %14
  %25 = load %struct.c4iw_qp*, %struct.c4iw_qp** %4, align 8
  %26 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %44, label %30

30:                                               ; preds = %24
  %31 = load %struct.c4iw_qp*, %struct.c4iw_qp** %4, align 8
  %32 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %31, i32 0, i32 1
  %33 = call i64 @t4_wq_in_error(%struct.TYPE_2__* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %30
  %36 = load %struct.c4iw_qp*, %struct.c4iw_qp** %4, align 8
  %37 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %36, i32 0, i32 0
  %38 = call i32 @pthread_spin_lock(i32* %37)
  %39 = load %struct.c4iw_qp*, %struct.c4iw_qp** %4, align 8
  %40 = call i32 @c4iw_flush_qp(%struct.c4iw_qp* %39)
  %41 = load %struct.c4iw_qp*, %struct.c4iw_qp** %4, align 8
  %42 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %41, i32 0, i32 0
  %43 = call i32 @pthread_spin_unlock(i32* %42)
  br label %44

44:                                               ; preds = %35, %30, %24
  br label %45

45:                                               ; preds = %44, %14
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %3, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %3, align 4
  br label %8

49:                                               ; preds = %8
  %50 = load %struct.c4iw_dev*, %struct.c4iw_dev** %2, align 8
  %51 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %50, i32 0, i32 1
  %52 = call i32 @pthread_spin_unlock(i32* %51)
  ret void
}

declare dso_local i32 @pthread_spin_lock(i32*) #1

declare dso_local i64 @t4_wq_in_error(%struct.TYPE_2__*) #1

declare dso_local i32 @c4iw_flush_qp(%struct.c4iw_qp*) #1

declare dso_local i32 @pthread_spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

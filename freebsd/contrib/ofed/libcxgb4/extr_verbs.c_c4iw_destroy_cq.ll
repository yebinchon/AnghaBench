; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libcxgb4/extr_verbs.c_c4iw_destroy_cq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libcxgb4/extr_verbs.c_c4iw_destroy_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_cq = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.c4iw_cq = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64, %struct.c4iw_cq*, i32, i32, i32 }
%struct.c4iw_dev = type { i32, i32** }

@c4iw_page_size = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c4iw_destroy_cq(%struct.ibv_cq* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ibv_cq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.c4iw_cq*, align 8
  %6 = alloca %struct.c4iw_dev*, align 8
  store %struct.ibv_cq* %0, %struct.ibv_cq** %3, align 8
  %7 = load %struct.ibv_cq*, %struct.ibv_cq** %3, align 8
  %8 = call %struct.c4iw_cq* @to_c4iw_cq(%struct.ibv_cq* %7)
  store %struct.c4iw_cq* %8, %struct.c4iw_cq** %5, align 8
  %9 = load %struct.ibv_cq*, %struct.ibv_cq** %3, align 8
  %10 = getelementptr inbounds %struct.ibv_cq, %struct.ibv_cq* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.c4iw_dev* @to_c4iw_dev(i32 %13)
  store %struct.c4iw_dev* %14, %struct.c4iw_dev** %6, align 8
  %15 = load %struct.c4iw_cq*, %struct.c4iw_cq** %5, align 8
  %16 = getelementptr inbounds %struct.c4iw_cq, %struct.c4iw_cq* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = load %struct.ibv_cq*, %struct.ibv_cq** %3, align 8
  %19 = call i32 @ibv_cmd_destroy_cq(%struct.ibv_cq* %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %2, align 4
  br label %62

24:                                               ; preds = %1
  %25 = load %struct.c4iw_cq*, %struct.c4iw_cq** %5, align 8
  %26 = getelementptr inbounds %struct.c4iw_cq, %struct.c4iw_cq* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @MASKED(i32 %28)
  %30 = load i32, i32* @c4iw_page_size, align 4
  %31 = call i32 @munmap(i32 %29, i32 %30)
  %32 = load %struct.c4iw_cq*, %struct.c4iw_cq** %5, align 8
  %33 = getelementptr inbounds %struct.c4iw_cq, %struct.c4iw_cq* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.c4iw_cq*, %struct.c4iw_cq** %5, align 8
  %37 = getelementptr inbounds %struct.c4iw_cq, %struct.c4iw_cq* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @munmap(i32 %35, i32 %39)
  %41 = load %struct.c4iw_dev*, %struct.c4iw_dev** %6, align 8
  %42 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %41, i32 0, i32 0
  %43 = call i32 @pthread_spin_lock(i32* %42)
  %44 = load %struct.c4iw_dev*, %struct.c4iw_dev** %6, align 8
  %45 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %44, i32 0, i32 1
  %46 = load i32**, i32*** %45, align 8
  %47 = load %struct.c4iw_cq*, %struct.c4iw_cq** %5, align 8
  %48 = getelementptr inbounds %struct.c4iw_cq, %struct.c4iw_cq* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds i32*, i32** %46, i64 %50
  store i32* null, i32** %51, align 8
  %52 = load %struct.c4iw_dev*, %struct.c4iw_dev** %6, align 8
  %53 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %52, i32 0, i32 0
  %54 = call i32 @pthread_spin_unlock(i32* %53)
  %55 = load %struct.c4iw_cq*, %struct.c4iw_cq** %5, align 8
  %56 = getelementptr inbounds %struct.c4iw_cq, %struct.c4iw_cq* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  %58 = load %struct.c4iw_cq*, %struct.c4iw_cq** %57, align 8
  %59 = call i32 @free(%struct.c4iw_cq* %58)
  %60 = load %struct.c4iw_cq*, %struct.c4iw_cq** %5, align 8
  %61 = call i32 @free(%struct.c4iw_cq* %60)
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %24, %22
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local %struct.c4iw_cq* @to_c4iw_cq(%struct.ibv_cq*) #1

declare dso_local %struct.c4iw_dev* @to_c4iw_dev(i32) #1

declare dso_local i32 @ibv_cmd_destroy_cq(%struct.ibv_cq*) #1

declare dso_local i32 @munmap(i32, i32) #1

declare dso_local i32 @MASKED(i32) #1

declare dso_local i32 @pthread_spin_lock(i32*) #1

declare dso_local i32 @pthread_spin_unlock(i32*) #1

declare dso_local i32 @free(%struct.c4iw_cq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libcxgb4/extr_verbs.c_c4iw_dereg_mr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libcxgb4/extr_verbs.c_c4iw_dereg_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_mr = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.c4iw_dev = type { i32, i32** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c4iw_dereg_mr(%struct.ibv_mr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ibv_mr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.c4iw_dev*, align 8
  store %struct.ibv_mr* %0, %struct.ibv_mr** %3, align 8
  %6 = load %struct.ibv_mr*, %struct.ibv_mr** %3, align 8
  %7 = getelementptr inbounds %struct.ibv_mr, %struct.ibv_mr* %6, i32 0, i32 1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.c4iw_dev* @to_c4iw_dev(i32 %12)
  store %struct.c4iw_dev* %13, %struct.c4iw_dev** %5, align 8
  %14 = load %struct.ibv_mr*, %struct.ibv_mr** %3, align 8
  %15 = call i32 @ibv_cmd_dereg_mr(%struct.ibv_mr* %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %38

20:                                               ; preds = %1
  %21 = load %struct.c4iw_dev*, %struct.c4iw_dev** %5, align 8
  %22 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %21, i32 0, i32 0
  %23 = call i32 @pthread_spin_lock(i32* %22)
  %24 = load %struct.c4iw_dev*, %struct.c4iw_dev** %5, align 8
  %25 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %24, i32 0, i32 1
  %26 = load i32**, i32*** %25, align 8
  %27 = load %struct.ibv_mr*, %struct.ibv_mr** %3, align 8
  %28 = getelementptr inbounds %struct.ibv_mr, %struct.ibv_mr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @c4iw_mmid(i32 %29)
  %31 = getelementptr inbounds i32*, i32** %26, i64 %30
  store i32* null, i32** %31, align 8
  %32 = load %struct.c4iw_dev*, %struct.c4iw_dev** %5, align 8
  %33 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %32, i32 0, i32 0
  %34 = call i32 @pthread_spin_unlock(i32* %33)
  %35 = load %struct.ibv_mr*, %struct.ibv_mr** %3, align 8
  %36 = call i32 @to_c4iw_mr(%struct.ibv_mr* %35)
  %37 = call i32 @free(i32 %36)
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %20, %18
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local %struct.c4iw_dev* @to_c4iw_dev(i32) #1

declare dso_local i32 @ibv_cmd_dereg_mr(%struct.ibv_mr*) #1

declare dso_local i32 @pthread_spin_lock(i32*) #1

declare dso_local i64 @c4iw_mmid(i32) #1

declare dso_local i32 @pthread_spin_unlock(i32*) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @to_c4iw_mr(%struct.ibv_mr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

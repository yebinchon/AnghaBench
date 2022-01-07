; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_verbs.c___ibv_query_qp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_verbs.c___ibv_query_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_qp = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { {}* }
%struct.ibv_qp_attr = type { i32 }
%struct.ibv_qp_init_attr = type { i32 }

@IBV_QP_STATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__ibv_query_qp(%struct.ibv_qp* %0, %struct.ibv_qp_attr* %1, i32 %2, %struct.ibv_qp_init_attr* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ibv_qp*, align 8
  %7 = alloca %struct.ibv_qp_attr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ibv_qp_init_attr*, align 8
  %10 = alloca i32, align 4
  store %struct.ibv_qp* %0, %struct.ibv_qp** %6, align 8
  store %struct.ibv_qp_attr* %1, %struct.ibv_qp_attr** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ibv_qp_init_attr* %3, %struct.ibv_qp_init_attr** %9, align 8
  %11 = load %struct.ibv_qp*, %struct.ibv_qp** %6, align 8
  %12 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = bitcast {}** %15 to i32 (%struct.ibv_qp*, %struct.ibv_qp_attr*, i32, %struct.ibv_qp_init_attr*)**
  %17 = load i32 (%struct.ibv_qp*, %struct.ibv_qp_attr*, i32, %struct.ibv_qp_init_attr*)*, i32 (%struct.ibv_qp*, %struct.ibv_qp_attr*, i32, %struct.ibv_qp_init_attr*)** %16, align 8
  %18 = load %struct.ibv_qp*, %struct.ibv_qp** %6, align 8
  %19 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.ibv_qp_init_attr*, %struct.ibv_qp_init_attr** %9, align 8
  %22 = call i32 %17(%struct.ibv_qp* %18, %struct.ibv_qp_attr* %19, i32 %20, %struct.ibv_qp_init_attr* %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %5, align 4
  br label %39

27:                                               ; preds = %4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @IBV_QP_STATE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %7, align 8
  %34 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ibv_qp*, %struct.ibv_qp** %6, align 8
  %37 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  br label %38

38:                                               ; preds = %32, %27
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %38, %25
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

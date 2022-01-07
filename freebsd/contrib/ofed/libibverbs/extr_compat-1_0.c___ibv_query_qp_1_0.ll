; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_compat-1_0.c___ibv_query_qp_1_0.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_compat-1_0.c___ibv_query_qp_1_0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_qp_1_0 = type { i32, i32 }
%struct.ibv_qp_attr = type { i32 }
%struct.ibv_qp_init_attr_1_0 = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ibv_qp_init_attr = type { i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__ibv_query_qp_1_0(%struct.ibv_qp_1_0* %0, %struct.ibv_qp_attr* %1, i32 %2, %struct.ibv_qp_init_attr_1_0* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ibv_qp_1_0*, align 8
  %7 = alloca %struct.ibv_qp_attr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ibv_qp_init_attr_1_0*, align 8
  %10 = alloca %struct.ibv_qp_init_attr, align 8
  %11 = alloca i32, align 4
  store %struct.ibv_qp_1_0* %0, %struct.ibv_qp_1_0** %6, align 8
  store %struct.ibv_qp_attr* %1, %struct.ibv_qp_attr** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ibv_qp_init_attr_1_0* %3, %struct.ibv_qp_init_attr_1_0** %9, align 8
  %12 = load %struct.ibv_qp_1_0*, %struct.ibv_qp_1_0** %6, align 8
  %13 = getelementptr inbounds %struct.ibv_qp_1_0, %struct.ibv_qp_1_0* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @ibv_query_qp(i32 %14, %struct.ibv_qp_attr* %15, i32 %16, %struct.ibv_qp_init_attr* %10)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* %11, align 4
  store i32 %21, i32* %5, align 4
  br label %58

22:                                               ; preds = %4
  %23 = load %struct.ibv_qp_1_0*, %struct.ibv_qp_1_0** %6, align 8
  %24 = getelementptr inbounds %struct.ibv_qp_1_0, %struct.ibv_qp_1_0* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ibv_qp_init_attr_1_0*, %struct.ibv_qp_init_attr_1_0** %9, align 8
  %27 = getelementptr inbounds %struct.ibv_qp_init_attr_1_0, %struct.ibv_qp_init_attr_1_0* %26, i32 0, i32 6
  store i32 %25, i32* %27, align 4
  %28 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %10, i32 0, i32 5
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ibv_qp_init_attr_1_0*, %struct.ibv_qp_init_attr_1_0** %9, align 8
  %33 = getelementptr inbounds %struct.ibv_qp_init_attr_1_0, %struct.ibv_qp_init_attr_1_0* %32, i32 0, i32 5
  store i32 %31, i32* %33, align 4
  %34 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %10, i32 0, i32 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ibv_qp_init_attr_1_0*, %struct.ibv_qp_init_attr_1_0** %9, align 8
  %39 = getelementptr inbounds %struct.ibv_qp_init_attr_1_0, %struct.ibv_qp_init_attr_1_0* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 4
  %40 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %10, i32 0, i32 3
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ibv_qp_init_attr_1_0*, %struct.ibv_qp_init_attr_1_0** %9, align 8
  %45 = getelementptr inbounds %struct.ibv_qp_init_attr_1_0, %struct.ibv_qp_init_attr_1_0* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %10, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.ibv_qp_init_attr_1_0*, %struct.ibv_qp_init_attr_1_0** %9, align 8
  %49 = getelementptr inbounds %struct.ibv_qp_init_attr_1_0, %struct.ibv_qp_init_attr_1_0* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %10, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ibv_qp_init_attr_1_0*, %struct.ibv_qp_init_attr_1_0** %9, align 8
  %53 = getelementptr inbounds %struct.ibv_qp_init_attr_1_0, %struct.ibv_qp_init_attr_1_0* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %10, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.ibv_qp_init_attr_1_0*, %struct.ibv_qp_init_attr_1_0** %9, align 8
  %57 = getelementptr inbounds %struct.ibv_qp_init_attr_1_0, %struct.ibv_qp_init_attr_1_0* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  store i32 0, i32* %5, align 4
  br label %58

58:                                               ; preds = %22, %20
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32 @ibv_query_qp(i32, %struct.ibv_qp_attr*, i32, %struct.ibv_qp_init_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

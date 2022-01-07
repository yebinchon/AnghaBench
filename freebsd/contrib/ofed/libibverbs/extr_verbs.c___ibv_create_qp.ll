; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_verbs.c___ibv_create_qp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_verbs.c___ibv_create_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_qp = type { i32, i32, i64, i32, i32, i32, i32, i32, %struct.ibv_pd*, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { {}* }
%struct.ibv_pd = type { %struct.TYPE_4__* }
%struct.ibv_qp_init_attr = type { i32, i32, i32, i32, i32 }

@IBV_QPS_RESET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ibv_qp* @__ibv_create_qp(%struct.ibv_pd* %0, %struct.ibv_qp_init_attr* %1) #0 {
  %3 = alloca %struct.ibv_pd*, align 8
  %4 = alloca %struct.ibv_qp_init_attr*, align 8
  %5 = alloca %struct.ibv_qp*, align 8
  store %struct.ibv_pd* %0, %struct.ibv_pd** %3, align 8
  store %struct.ibv_qp_init_attr* %1, %struct.ibv_qp_init_attr** %4, align 8
  %6 = load %struct.ibv_pd*, %struct.ibv_pd** %3, align 8
  %7 = getelementptr inbounds %struct.ibv_pd, %struct.ibv_pd* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = bitcast {}** %10 to %struct.ibv_qp* (%struct.ibv_pd*, %struct.ibv_qp_init_attr*)**
  %12 = load %struct.ibv_qp* (%struct.ibv_pd*, %struct.ibv_qp_init_attr*)*, %struct.ibv_qp* (%struct.ibv_pd*, %struct.ibv_qp_init_attr*)** %11, align 8
  %13 = load %struct.ibv_pd*, %struct.ibv_pd** %3, align 8
  %14 = load %struct.ibv_qp_init_attr*, %struct.ibv_qp_init_attr** %4, align 8
  %15 = call %struct.ibv_qp* %12(%struct.ibv_pd* %13, %struct.ibv_qp_init_attr* %14)
  store %struct.ibv_qp* %15, %struct.ibv_qp** %5, align 8
  %16 = load %struct.ibv_qp*, %struct.ibv_qp** %5, align 8
  %17 = icmp ne %struct.ibv_qp* %16, null
  br i1 %17, label %18, label %63

18:                                               ; preds = %2
  %19 = load %struct.ibv_pd*, %struct.ibv_pd** %3, align 8
  %20 = getelementptr inbounds %struct.ibv_pd, %struct.ibv_pd* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = load %struct.ibv_qp*, %struct.ibv_qp** %5, align 8
  %23 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %22, i32 0, i32 10
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** %23, align 8
  %24 = load %struct.ibv_qp_init_attr*, %struct.ibv_qp_init_attr** %4, align 8
  %25 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ibv_qp*, %struct.ibv_qp** %5, align 8
  %28 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %27, i32 0, i32 9
  store i32 %26, i32* %28, align 8
  %29 = load %struct.ibv_pd*, %struct.ibv_pd** %3, align 8
  %30 = load %struct.ibv_qp*, %struct.ibv_qp** %5, align 8
  %31 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %30, i32 0, i32 8
  store %struct.ibv_pd* %29, %struct.ibv_pd** %31, align 8
  %32 = load %struct.ibv_qp_init_attr*, %struct.ibv_qp_init_attr** %4, align 8
  %33 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ibv_qp*, %struct.ibv_qp** %5, align 8
  %36 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %35, i32 0, i32 7
  store i32 %34, i32* %36, align 8
  %37 = load %struct.ibv_qp_init_attr*, %struct.ibv_qp_init_attr** %4, align 8
  %38 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ibv_qp*, %struct.ibv_qp** %5, align 8
  %41 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %40, i32 0, i32 6
  store i32 %39, i32* %41, align 4
  %42 = load %struct.ibv_qp_init_attr*, %struct.ibv_qp_init_attr** %4, align 8
  %43 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ibv_qp*, %struct.ibv_qp** %5, align 8
  %46 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %45, i32 0, i32 5
  store i32 %44, i32* %46, align 8
  %47 = load %struct.ibv_qp_init_attr*, %struct.ibv_qp_init_attr** %4, align 8
  %48 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ibv_qp*, %struct.ibv_qp** %5, align 8
  %51 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @IBV_QPS_RESET, align 4
  %53 = load %struct.ibv_qp*, %struct.ibv_qp** %5, align 8
  %54 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 8
  %55 = load %struct.ibv_qp*, %struct.ibv_qp** %5, align 8
  %56 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %55, i32 0, i32 2
  store i64 0, i64* %56, align 8
  %57 = load %struct.ibv_qp*, %struct.ibv_qp** %5, align 8
  %58 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %57, i32 0, i32 1
  %59 = call i32 @pthread_mutex_init(i32* %58, i32* null)
  %60 = load %struct.ibv_qp*, %struct.ibv_qp** %5, align 8
  %61 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %60, i32 0, i32 0
  %62 = call i32 @pthread_cond_init(i32* %61, i32* null)
  br label %63

63:                                               ; preds = %18, %2
  %64 = load %struct.ibv_qp*, %struct.ibv_qp** %5, align 8
  ret %struct.ibv_qp* %64
}

declare dso_local i32 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i32 @pthread_cond_init(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

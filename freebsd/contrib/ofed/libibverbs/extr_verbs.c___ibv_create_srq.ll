; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_verbs.c___ibv_create_srq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_verbs.c___ibv_create_srq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_srq = type { i32, i32, i64, %struct.ibv_pd*, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { {}* }
%struct.ibv_pd = type { %struct.TYPE_4__* }
%struct.ibv_srq_init_attr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ibv_srq* @__ibv_create_srq(%struct.ibv_pd* %0, %struct.ibv_srq_init_attr* %1) #0 {
  %3 = alloca %struct.ibv_srq*, align 8
  %4 = alloca %struct.ibv_pd*, align 8
  %5 = alloca %struct.ibv_srq_init_attr*, align 8
  %6 = alloca %struct.ibv_srq*, align 8
  store %struct.ibv_pd* %0, %struct.ibv_pd** %4, align 8
  store %struct.ibv_srq_init_attr* %1, %struct.ibv_srq_init_attr** %5, align 8
  %7 = load %struct.ibv_pd*, %struct.ibv_pd** %4, align 8
  %8 = getelementptr inbounds %struct.ibv_pd, %struct.ibv_pd* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = bitcast {}** %11 to %struct.ibv_srq* (%struct.ibv_pd*, %struct.ibv_srq_init_attr*)**
  %13 = load %struct.ibv_srq* (%struct.ibv_pd*, %struct.ibv_srq_init_attr*)*, %struct.ibv_srq* (%struct.ibv_pd*, %struct.ibv_srq_init_attr*)** %12, align 8
  %14 = icmp ne %struct.ibv_srq* (%struct.ibv_pd*, %struct.ibv_srq_init_attr*)* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store %struct.ibv_srq* null, %struct.ibv_srq** %3, align 8
  br label %53

16:                                               ; preds = %2
  %17 = load %struct.ibv_pd*, %struct.ibv_pd** %4, align 8
  %18 = getelementptr inbounds %struct.ibv_pd, %struct.ibv_pd* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = bitcast {}** %21 to %struct.ibv_srq* (%struct.ibv_pd*, %struct.ibv_srq_init_attr*)**
  %23 = load %struct.ibv_srq* (%struct.ibv_pd*, %struct.ibv_srq_init_attr*)*, %struct.ibv_srq* (%struct.ibv_pd*, %struct.ibv_srq_init_attr*)** %22, align 8
  %24 = load %struct.ibv_pd*, %struct.ibv_pd** %4, align 8
  %25 = load %struct.ibv_srq_init_attr*, %struct.ibv_srq_init_attr** %5, align 8
  %26 = call %struct.ibv_srq* %23(%struct.ibv_pd* %24, %struct.ibv_srq_init_attr* %25)
  store %struct.ibv_srq* %26, %struct.ibv_srq** %6, align 8
  %27 = load %struct.ibv_srq*, %struct.ibv_srq** %6, align 8
  %28 = icmp ne %struct.ibv_srq* %27, null
  br i1 %28, label %29, label %51

29:                                               ; preds = %16
  %30 = load %struct.ibv_pd*, %struct.ibv_pd** %4, align 8
  %31 = getelementptr inbounds %struct.ibv_pd, %struct.ibv_pd* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = load %struct.ibv_srq*, %struct.ibv_srq** %6, align 8
  %34 = getelementptr inbounds %struct.ibv_srq, %struct.ibv_srq* %33, i32 0, i32 5
  store %struct.TYPE_4__* %32, %struct.TYPE_4__** %34, align 8
  %35 = load %struct.ibv_srq_init_attr*, %struct.ibv_srq_init_attr** %5, align 8
  %36 = getelementptr inbounds %struct.ibv_srq_init_attr, %struct.ibv_srq_init_attr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ibv_srq*, %struct.ibv_srq** %6, align 8
  %39 = getelementptr inbounds %struct.ibv_srq, %struct.ibv_srq* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 8
  %40 = load %struct.ibv_pd*, %struct.ibv_pd** %4, align 8
  %41 = load %struct.ibv_srq*, %struct.ibv_srq** %6, align 8
  %42 = getelementptr inbounds %struct.ibv_srq, %struct.ibv_srq* %41, i32 0, i32 3
  store %struct.ibv_pd* %40, %struct.ibv_pd** %42, align 8
  %43 = load %struct.ibv_srq*, %struct.ibv_srq** %6, align 8
  %44 = getelementptr inbounds %struct.ibv_srq, %struct.ibv_srq* %43, i32 0, i32 2
  store i64 0, i64* %44, align 8
  %45 = load %struct.ibv_srq*, %struct.ibv_srq** %6, align 8
  %46 = getelementptr inbounds %struct.ibv_srq, %struct.ibv_srq* %45, i32 0, i32 1
  %47 = call i32 @pthread_mutex_init(i32* %46, i32* null)
  %48 = load %struct.ibv_srq*, %struct.ibv_srq** %6, align 8
  %49 = getelementptr inbounds %struct.ibv_srq, %struct.ibv_srq* %48, i32 0, i32 0
  %50 = call i32 @pthread_cond_init(i32* %49, i32* null)
  br label %51

51:                                               ; preds = %29, %16
  %52 = load %struct.ibv_srq*, %struct.ibv_srq** %6, align 8
  store %struct.ibv_srq* %52, %struct.ibv_srq** %3, align 8
  br label %53

53:                                               ; preds = %51, %15
  %54 = load %struct.ibv_srq*, %struct.ibv_srq** %3, align 8
  ret %struct.ibv_srq* %54
}

declare dso_local i32 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i32 @pthread_cond_init(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

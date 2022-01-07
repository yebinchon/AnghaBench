; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_compat-1_0.c___ibv_create_ah_1_0.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_compat-1_0.c___ibv_create_ah_1_0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_ah_1_0 = type { %struct.ibv_ah*, %struct.ibv_pd_1_0*, i32 }
%struct.ibv_ah = type { i32 }
%struct.ibv_pd_1_0 = type { i32, i32 }
%struct.ibv_ah_attr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ibv_ah_1_0* @__ibv_create_ah_1_0(%struct.ibv_pd_1_0* %0, %struct.ibv_ah_attr* %1) #0 {
  %3 = alloca %struct.ibv_ah_1_0*, align 8
  %4 = alloca %struct.ibv_pd_1_0*, align 8
  %5 = alloca %struct.ibv_ah_attr*, align 8
  %6 = alloca %struct.ibv_ah*, align 8
  %7 = alloca %struct.ibv_ah_1_0*, align 8
  store %struct.ibv_pd_1_0* %0, %struct.ibv_pd_1_0** %4, align 8
  store %struct.ibv_ah_attr* %1, %struct.ibv_ah_attr** %5, align 8
  %8 = call %struct.ibv_ah_1_0* @malloc(i32 24)
  store %struct.ibv_ah_1_0* %8, %struct.ibv_ah_1_0** %7, align 8
  %9 = load %struct.ibv_ah_1_0*, %struct.ibv_ah_1_0** %7, align 8
  %10 = icmp ne %struct.ibv_ah_1_0* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.ibv_ah_1_0* null, %struct.ibv_ah_1_0** %3, align 8
  br label %36

12:                                               ; preds = %2
  %13 = load %struct.ibv_pd_1_0*, %struct.ibv_pd_1_0** %4, align 8
  %14 = getelementptr inbounds %struct.ibv_pd_1_0, %struct.ibv_pd_1_0* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.ibv_ah_attr*, %struct.ibv_ah_attr** %5, align 8
  %17 = call %struct.ibv_ah* @ibv_create_ah(i32 %15, %struct.ibv_ah_attr* %16)
  store %struct.ibv_ah* %17, %struct.ibv_ah** %6, align 8
  %18 = load %struct.ibv_ah*, %struct.ibv_ah** %6, align 8
  %19 = icmp ne %struct.ibv_ah* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %12
  %21 = load %struct.ibv_ah_1_0*, %struct.ibv_ah_1_0** %7, align 8
  %22 = call i32 @free(%struct.ibv_ah_1_0* %21)
  store %struct.ibv_ah_1_0* null, %struct.ibv_ah_1_0** %3, align 8
  br label %36

23:                                               ; preds = %12
  %24 = load %struct.ibv_pd_1_0*, %struct.ibv_pd_1_0** %4, align 8
  %25 = getelementptr inbounds %struct.ibv_pd_1_0, %struct.ibv_pd_1_0* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ibv_ah_1_0*, %struct.ibv_ah_1_0** %7, align 8
  %28 = getelementptr inbounds %struct.ibv_ah_1_0, %struct.ibv_ah_1_0* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  %29 = load %struct.ibv_pd_1_0*, %struct.ibv_pd_1_0** %4, align 8
  %30 = load %struct.ibv_ah_1_0*, %struct.ibv_ah_1_0** %7, align 8
  %31 = getelementptr inbounds %struct.ibv_ah_1_0, %struct.ibv_ah_1_0* %30, i32 0, i32 1
  store %struct.ibv_pd_1_0* %29, %struct.ibv_pd_1_0** %31, align 8
  %32 = load %struct.ibv_ah*, %struct.ibv_ah** %6, align 8
  %33 = load %struct.ibv_ah_1_0*, %struct.ibv_ah_1_0** %7, align 8
  %34 = getelementptr inbounds %struct.ibv_ah_1_0, %struct.ibv_ah_1_0* %33, i32 0, i32 0
  store %struct.ibv_ah* %32, %struct.ibv_ah** %34, align 8
  %35 = load %struct.ibv_ah_1_0*, %struct.ibv_ah_1_0** %7, align 8
  store %struct.ibv_ah_1_0* %35, %struct.ibv_ah_1_0** %3, align 8
  br label %36

36:                                               ; preds = %23, %20, %11
  %37 = load %struct.ibv_ah_1_0*, %struct.ibv_ah_1_0** %3, align 8
  ret %struct.ibv_ah_1_0* %37
}

declare dso_local %struct.ibv_ah_1_0* @malloc(i32) #1

declare dso_local %struct.ibv_ah* @ibv_create_ah(i32, %struct.ibv_ah_attr*) #1

declare dso_local i32 @free(%struct.ibv_ah_1_0*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

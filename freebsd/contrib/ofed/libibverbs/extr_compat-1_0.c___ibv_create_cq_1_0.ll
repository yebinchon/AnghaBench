; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_compat-1_0.c___ibv_create_cq_1_0.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_compat-1_0.c___ibv_create_cq_1_0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_cq_1_0 = type { i32, %struct.ibv_cq*, i8*, %struct.ibv_context_1_0* }
%struct.ibv_cq = type { %struct.ibv_cq_1_0* }
%struct.ibv_context_1_0 = type { i32 }
%struct.ibv_comp_channel = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ibv_cq_1_0* @__ibv_create_cq_1_0(%struct.ibv_context_1_0* %0, i32 %1, i8* %2, %struct.ibv_comp_channel* %3, i32 %4) #0 {
  %6 = alloca %struct.ibv_cq_1_0*, align 8
  %7 = alloca %struct.ibv_context_1_0*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ibv_comp_channel*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ibv_cq*, align 8
  %13 = alloca %struct.ibv_cq_1_0*, align 8
  store %struct.ibv_context_1_0* %0, %struct.ibv_context_1_0** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store %struct.ibv_comp_channel* %3, %struct.ibv_comp_channel** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = call %struct.ibv_cq_1_0* @malloc(i32 32)
  store %struct.ibv_cq_1_0* %14, %struct.ibv_cq_1_0** %13, align 8
  %15 = load %struct.ibv_cq_1_0*, %struct.ibv_cq_1_0** %13, align 8
  %16 = icmp ne %struct.ibv_cq_1_0* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %5
  store %struct.ibv_cq_1_0* null, %struct.ibv_cq_1_0** %6, align 8
  br label %49

18:                                               ; preds = %5
  %19 = load %struct.ibv_context_1_0*, %struct.ibv_context_1_0** %7, align 8
  %20 = getelementptr inbounds %struct.ibv_context_1_0, %struct.ibv_context_1_0* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i8*, i8** %9, align 8
  %24 = load %struct.ibv_comp_channel*, %struct.ibv_comp_channel** %10, align 8
  %25 = load i32, i32* %11, align 4
  %26 = call %struct.ibv_cq* @ibv_create_cq(i32 %21, i32 %22, i8* %23, %struct.ibv_comp_channel* %24, i32 %25)
  store %struct.ibv_cq* %26, %struct.ibv_cq** %12, align 8
  %27 = load %struct.ibv_cq*, %struct.ibv_cq** %12, align 8
  %28 = icmp ne %struct.ibv_cq* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %18
  %30 = load %struct.ibv_cq_1_0*, %struct.ibv_cq_1_0** %13, align 8
  %31 = call i32 @free(%struct.ibv_cq_1_0* %30)
  store %struct.ibv_cq_1_0* null, %struct.ibv_cq_1_0** %6, align 8
  br label %49

32:                                               ; preds = %18
  %33 = load %struct.ibv_context_1_0*, %struct.ibv_context_1_0** %7, align 8
  %34 = load %struct.ibv_cq_1_0*, %struct.ibv_cq_1_0** %13, align 8
  %35 = getelementptr inbounds %struct.ibv_cq_1_0, %struct.ibv_cq_1_0* %34, i32 0, i32 3
  store %struct.ibv_context_1_0* %33, %struct.ibv_context_1_0** %35, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = load %struct.ibv_cq_1_0*, %struct.ibv_cq_1_0** %13, align 8
  %38 = getelementptr inbounds %struct.ibv_cq_1_0, %struct.ibv_cq_1_0* %37, i32 0, i32 2
  store i8* %36, i8** %38, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.ibv_cq_1_0*, %struct.ibv_cq_1_0** %13, align 8
  %41 = getelementptr inbounds %struct.ibv_cq_1_0, %struct.ibv_cq_1_0* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.ibv_cq*, %struct.ibv_cq** %12, align 8
  %43 = load %struct.ibv_cq_1_0*, %struct.ibv_cq_1_0** %13, align 8
  %44 = getelementptr inbounds %struct.ibv_cq_1_0, %struct.ibv_cq_1_0* %43, i32 0, i32 1
  store %struct.ibv_cq* %42, %struct.ibv_cq** %44, align 8
  %45 = load %struct.ibv_cq_1_0*, %struct.ibv_cq_1_0** %13, align 8
  %46 = load %struct.ibv_cq*, %struct.ibv_cq** %12, align 8
  %47 = getelementptr inbounds %struct.ibv_cq, %struct.ibv_cq* %46, i32 0, i32 0
  store %struct.ibv_cq_1_0* %45, %struct.ibv_cq_1_0** %47, align 8
  %48 = load %struct.ibv_cq_1_0*, %struct.ibv_cq_1_0** %13, align 8
  store %struct.ibv_cq_1_0* %48, %struct.ibv_cq_1_0** %6, align 8
  br label %49

49:                                               ; preds = %32, %29, %17
  %50 = load %struct.ibv_cq_1_0*, %struct.ibv_cq_1_0** %6, align 8
  ret %struct.ibv_cq_1_0* %50
}

declare dso_local %struct.ibv_cq_1_0* @malloc(i32) #1

declare dso_local %struct.ibv_cq* @ibv_create_cq(i32, i32, i8*, %struct.ibv_comp_channel*, i32) #1

declare dso_local i32 @free(%struct.ibv_cq_1_0*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

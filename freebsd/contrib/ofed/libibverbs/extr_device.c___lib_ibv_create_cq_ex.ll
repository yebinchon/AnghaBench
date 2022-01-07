; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_device.c___lib_ibv_create_cq_ex.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_device.c___lib_ibv_create_cq_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_cq_ex = type { i32 }
%struct.ibv_context = type { i32 }
%struct.ibv_cq_init_attr_ex = type { i32, i32, i32 }
%struct.verbs_context = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ibv_cq_ex* (%struct.ibv_context*, %struct.ibv_cq_init_attr_ex*)* }

@IBV_CREATE_CQ_SUP_WC_FLAGS = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ibv_cq_ex* (%struct.ibv_context*, %struct.ibv_cq_init_attr_ex*)* @__lib_ibv_create_cq_ex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ibv_cq_ex* @__lib_ibv_create_cq_ex(%struct.ibv_context* %0, %struct.ibv_cq_init_attr_ex* %1) #0 {
  %3 = alloca %struct.ibv_cq_ex*, align 8
  %4 = alloca %struct.ibv_context*, align 8
  %5 = alloca %struct.ibv_cq_init_attr_ex*, align 8
  %6 = alloca %struct.verbs_context*, align 8
  %7 = alloca %struct.ibv_cq_ex*, align 8
  store %struct.ibv_context* %0, %struct.ibv_context** %4, align 8
  store %struct.ibv_cq_init_attr_ex* %1, %struct.ibv_cq_init_attr_ex** %5, align 8
  %8 = load %struct.ibv_context*, %struct.ibv_context** %4, align 8
  %9 = call %struct.verbs_context* @verbs_get_ctx(%struct.ibv_context* %8)
  store %struct.verbs_context* %9, %struct.verbs_context** %6, align 8
  %10 = load %struct.ibv_cq_init_attr_ex*, %struct.ibv_cq_init_attr_ex** %5, align 8
  %11 = getelementptr inbounds %struct.ibv_cq_init_attr_ex, %struct.ibv_cq_init_attr_ex* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @IBV_CREATE_CQ_SUP_WC_FLAGS, align 4
  %14 = xor i32 %13, -1
  %15 = and i32 %12, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %18, i32* @errno, align 4
  store %struct.ibv_cq_ex* null, %struct.ibv_cq_ex** %3, align 8
  br label %43

19:                                               ; preds = %2
  %20 = load %struct.verbs_context*, %struct.verbs_context** %6, align 8
  %21 = getelementptr inbounds %struct.verbs_context, %struct.verbs_context* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.ibv_cq_ex* (%struct.ibv_context*, %struct.ibv_cq_init_attr_ex*)*, %struct.ibv_cq_ex* (%struct.ibv_context*, %struct.ibv_cq_init_attr_ex*)** %23, align 8
  %25 = load %struct.ibv_context*, %struct.ibv_context** %4, align 8
  %26 = load %struct.ibv_cq_init_attr_ex*, %struct.ibv_cq_init_attr_ex** %5, align 8
  %27 = call %struct.ibv_cq_ex* %24(%struct.ibv_context* %25, %struct.ibv_cq_init_attr_ex* %26)
  store %struct.ibv_cq_ex* %27, %struct.ibv_cq_ex** %7, align 8
  %28 = load %struct.ibv_cq_ex*, %struct.ibv_cq_ex** %7, align 8
  %29 = icmp ne %struct.ibv_cq_ex* %28, null
  br i1 %29, label %30, label %41

30:                                               ; preds = %19
  %31 = load %struct.ibv_cq_ex*, %struct.ibv_cq_ex** %7, align 8
  %32 = call i32 @ibv_cq_ex_to_cq(%struct.ibv_cq_ex* %31)
  %33 = load %struct.ibv_context*, %struct.ibv_context** %4, align 8
  %34 = load %struct.ibv_cq_init_attr_ex*, %struct.ibv_cq_init_attr_ex** %5, align 8
  %35 = getelementptr inbounds %struct.ibv_cq_init_attr_ex, %struct.ibv_cq_init_attr_ex* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ibv_cq_init_attr_ex*, %struct.ibv_cq_init_attr_ex** %5, align 8
  %38 = getelementptr inbounds %struct.ibv_cq_init_attr_ex, %struct.ibv_cq_init_attr_ex* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @verbs_init_cq(i32 %32, %struct.ibv_context* %33, i32 %36, i32 %39)
  br label %41

41:                                               ; preds = %30, %19
  %42 = load %struct.ibv_cq_ex*, %struct.ibv_cq_ex** %7, align 8
  store %struct.ibv_cq_ex* %42, %struct.ibv_cq_ex** %3, align 8
  br label %43

43:                                               ; preds = %41, %17
  %44 = load %struct.ibv_cq_ex*, %struct.ibv_cq_ex** %3, align 8
  ret %struct.ibv_cq_ex* %44
}

declare dso_local %struct.verbs_context* @verbs_get_ctx(%struct.ibv_context*) #1

declare dso_local i32 @verbs_init_cq(i32, %struct.ibv_context*, i32, i32) #1

declare dso_local i32 @ibv_cq_ex_to_cq(%struct.ibv_cq_ex*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

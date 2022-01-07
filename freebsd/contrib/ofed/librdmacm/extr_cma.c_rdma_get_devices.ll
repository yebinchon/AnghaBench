; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_cma.c_rdma_get_devices.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_cma.c_rdma_get_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.ibv_context* }
%struct.ibv_context = type { i32 }

@cma_dev_cnt = common dso_local global i32 0, align 4
@cma_dev_array = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ibv_context** @rdma_get_devices(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.ibv_context**, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store %struct.ibv_context** null, %struct.ibv_context*** %3, align 8
  %5 = call i64 (...) @ucma_init_all()
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %42

8:                                                ; preds = %1
  %9 = load i32, i32* @cma_dev_cnt, align 4
  %10 = add nsw i32 %9, 1
  %11 = sext i32 %10 to i64
  %12 = mul i64 8, %11
  %13 = trunc i64 %12 to i32
  %14 = call %struct.ibv_context** @malloc(i32 %13)
  store %struct.ibv_context** %14, %struct.ibv_context*** %3, align 8
  %15 = load %struct.ibv_context**, %struct.ibv_context*** %3, align 8
  %16 = icmp ne %struct.ibv_context** %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %8
  br label %42

18:                                               ; preds = %8
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %34, %18
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @cma_dev_cnt, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %19
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cma_dev_array, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.ibv_context*, %struct.ibv_context** %28, align 8
  %30 = load %struct.ibv_context**, %struct.ibv_context*** %3, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.ibv_context*, %struct.ibv_context** %30, i64 %32
  store %struct.ibv_context* %29, %struct.ibv_context** %33, align 8
  br label %34

34:                                               ; preds = %23
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %4, align 4
  br label %19

37:                                               ; preds = %19
  %38 = load %struct.ibv_context**, %struct.ibv_context*** %3, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.ibv_context*, %struct.ibv_context** %38, i64 %40
  store %struct.ibv_context* null, %struct.ibv_context** %41, align 8
  br label %42

42:                                               ; preds = %37, %17, %7
  %43 = load i32*, i32** %2, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %54

45:                                               ; preds = %42
  %46 = load %struct.ibv_context**, %struct.ibv_context*** %3, align 8
  %47 = icmp ne %struct.ibv_context** %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i32, i32* @cma_dev_cnt, align 4
  br label %51

50:                                               ; preds = %45
  br label %51

51:                                               ; preds = %50, %48
  %52 = phi i32 [ %49, %48 ], [ 0, %50 ]
  %53 = load i32*, i32** %2, align 8
  store i32 %52, i32* %53, align 4
  br label %54

54:                                               ; preds = %51, %42
  %55 = load %struct.ibv_context**, %struct.ibv_context*** %3, align 8
  ret %struct.ibv_context** %55
}

declare dso_local i64 @ucma_init_all(...) #1

declare dso_local %struct.ibv_context** @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

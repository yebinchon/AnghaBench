; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_cma.c_ucma_create_cqs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_cma.c_ucma_create_cqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_cm_id = type { i8*, i8*, i32, i8*, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_cm_id*, i32, i32)* @ucma_create_cqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucma_create_cqs(%struct.rdma_cm_id* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rdma_cm_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rdma_cm_id* %0, %struct.rdma_cm_id** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %40

10:                                               ; preds = %3
  %11 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %5, align 8
  %12 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i8* @ibv_create_comp_channel(i32 %13)
  %15 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %5, align 8
  %16 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %15, i32 0, i32 4
  store i8* %14, i8** %16, align 8
  %17 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %5, align 8
  %18 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %17, i32 0, i32 4
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %10
  br label %74

22:                                               ; preds = %10
  %23 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %5, align 8
  %24 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %5, align 8
  %28 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %5, align 8
  %29 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %28, i32 0, i32 4
  %30 = load i8*, i8** %29, align 8
  %31 = call i8* @ibv_create_cq(i32 %25, i32 %26, %struct.rdma_cm_id* %27, i8* %30, i32 0)
  %32 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %5, align 8
  %33 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %32, i32 0, i32 3
  store i8* %31, i8** %33, align 8
  %34 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %5, align 8
  %35 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %34, i32 0, i32 3
  %36 = load i8*, i8** %35, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %22
  br label %74

39:                                               ; preds = %22
  br label %40

40:                                               ; preds = %39, %3
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %73

43:                                               ; preds = %40
  %44 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %5, align 8
  %45 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i8* @ibv_create_comp_channel(i32 %46)
  %48 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %5, align 8
  %49 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %48, i32 0, i32 1
  store i8* %47, i8** %49, align 8
  %50 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %5, align 8
  %51 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %43
  br label %74

55:                                               ; preds = %43
  %56 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %5, align 8
  %57 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %5, align 8
  %61 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %5, align 8
  %62 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = call i8* @ibv_create_cq(i32 %58, i32 %59, %struct.rdma_cm_id* %60, i8* %63, i32 0)
  %65 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %5, align 8
  %66 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %65, i32 0, i32 0
  store i8* %64, i8** %66, align 8
  %67 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %5, align 8
  %68 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %55
  br label %74

72:                                               ; preds = %55
  br label %73

73:                                               ; preds = %72, %40
  store i32 0, i32* %4, align 4
  br label %79

74:                                               ; preds = %71, %54, %38, %21
  %75 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %5, align 8
  %76 = call i32 @ucma_destroy_cqs(%struct.rdma_cm_id* %75)
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = call i32 @ERR(i32 %77)
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %74, %73
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i8* @ibv_create_comp_channel(i32) #1

declare dso_local i8* @ibv_create_cq(i32, i32, %struct.rdma_cm_id*, i8*, i32) #1

declare dso_local i32 @ucma_destroy_cqs(%struct.rdma_cm_id*) #1

declare dso_local i32 @ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_mckey.c_init_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_mckey.c_init_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmatest_node = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ibv_qp_init_attr = type { i32, i32, i32, i64, %struct.cmatest_node*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"mckey: unable to allocate PD\0A\00", align 1
@message_count = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"mckey: unable to create CQ\0A\00", align 1
@IBV_QPT_UD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"mckey: unable to create QP\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"mckey: failed to create messages: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmatest_node*)* @init_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_node(%struct.cmatest_node* %0) #0 {
  %2 = alloca %struct.cmatest_node*, align 8
  %3 = alloca %struct.ibv_qp_init_attr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cmatest_node* %0, %struct.cmatest_node** %2, align 8
  %6 = load %struct.cmatest_node*, %struct.cmatest_node** %2, align 8
  %7 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %6, i32 0, i32 1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @ibv_alloc_pd(i32 %10)
  %12 = load %struct.cmatest_node*, %struct.cmatest_node** %2, align 8
  %13 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load %struct.cmatest_node*, %struct.cmatest_node** %2, align 8
  %15 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %106

22:                                               ; preds = %1
  %23 = load i32, i32* @message_count, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32, i32* @message_count, align 4
  %27 = mul nsw i32 %26, 2
  br label %29

28:                                               ; preds = %22
  br label %29

29:                                               ; preds = %28, %25
  %30 = phi i32 [ %27, %25 ], [ 2, %28 ]
  store i32 %30, i32* %4, align 4
  %31 = load %struct.cmatest_node*, %struct.cmatest_node** %2, align 8
  %32 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.cmatest_node*, %struct.cmatest_node** %2, align 8
  %38 = call i32 @ibv_create_cq(i32 %35, i32 %36, %struct.cmatest_node* %37, i32* null, i32 0)
  %39 = load %struct.cmatest_node*, %struct.cmatest_node** %2, align 8
  %40 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load %struct.cmatest_node*, %struct.cmatest_node** %2, align 8
  %42 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %29
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %106

49:                                               ; preds = %29
  %50 = call i32 @memset(%struct.ibv_qp_init_attr* %3, i32 0, i32 48)
  %51 = load i32, i32* @message_count, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i32, i32* @message_count, align 4
  br label %56

55:                                               ; preds = %49
  br label %56

56:                                               ; preds = %55, %53
  %57 = phi i32 [ %54, %53 ], [ 1, %55 ]
  %58 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %3, i32 0, i32 5
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* @message_count, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = load i32, i32* @message_count, align 4
  br label %65

64:                                               ; preds = %56
  br label %65

65:                                               ; preds = %64, %62
  %66 = phi i32 [ %63, %62 ], [ 1, %64 ]
  %67 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %3, i32 0, i32 5
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %3, i32 0, i32 5
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 2
  store i32 1, i32* %70, align 8
  %71 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %3, i32 0, i32 5
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 3
  store i32 1, i32* %72, align 4
  %73 = load %struct.cmatest_node*, %struct.cmatest_node** %2, align 8
  %74 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %3, i32 0, i32 4
  store %struct.cmatest_node* %73, %struct.cmatest_node** %74, align 8
  %75 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %3, i32 0, i32 3
  store i64 0, i64* %75, align 8
  %76 = load i32, i32* @IBV_QPT_UD, align 4
  %77 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %3, i32 0, i32 2
  store i32 %76, i32* %77, align 8
  %78 = load %struct.cmatest_node*, %struct.cmatest_node** %2, align 8
  %79 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %3, i32 0, i32 1
  store i32 %80, i32* %81, align 4
  %82 = load %struct.cmatest_node*, %struct.cmatest_node** %2, align 8
  %83 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %3, i32 0, i32 0
  store i32 %84, i32* %85, align 8
  %86 = load %struct.cmatest_node*, %struct.cmatest_node** %2, align 8
  %87 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %86, i32 0, i32 1
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = load %struct.cmatest_node*, %struct.cmatest_node** %2, align 8
  %90 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @rdma_create_qp(%struct.TYPE_4__* %88, i32 %91, %struct.ibv_qp_init_attr* %3)
  store i32 %92, i32* %5, align 4
  %93 = load i32, i32* %5, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %65
  %96 = call i32 @perror(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %106

97:                                               ; preds = %65
  %98 = load %struct.cmatest_node*, %struct.cmatest_node** %2, align 8
  %99 = call i32 @create_message(%struct.cmatest_node* %98)
  store i32 %99, i32* %5, align 4
  %100 = load i32, i32* %5, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %97
  %103 = load i32, i32* %5, align 4
  %104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %103)
  br label %106

105:                                              ; preds = %97
  br label %106

106:                                              ; preds = %105, %102, %95, %45, %18
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local i32 @ibv_alloc_pd(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @ibv_create_cq(i32, i32, %struct.cmatest_node*, i32*, i32) #1

declare dso_local i32 @memset(%struct.ibv_qp_init_attr*, i32, i32) #1

declare dso_local i32 @rdma_create_qp(%struct.TYPE_4__*, i32, %struct.ibv_qp_init_attr*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @create_message(%struct.cmatest_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

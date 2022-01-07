; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_cmatose.c_init_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_cmatose.c_init_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmatest_node = type { i32, %struct.TYPE_4__*, i8** }
%struct.TYPE_4__ = type { i32 }
%struct.ibv_qp_init_attr = type { i32, i8*, i8*, i32, %struct.cmatest_node*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"cmatose: unable to allocate PD\0A\00", align 1
@message_count = common dso_local global i32 0, align 4
@SEND_CQ_INDEX = common dso_local global i64 0, align 8
@RECV_CQ_INDEX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"cmatose: unable to create CQ\0A\00", align 1
@IBV_QPT_RC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"cmatose: unable to create QP\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"cmatose: failed to create messages: %d\0A\00", align 1
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
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %126

22:                                               ; preds = %1
  %23 = load i32, i32* @message_count, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i32, i32* @message_count, align 4
  br label %28

27:                                               ; preds = %22
  br label %28

28:                                               ; preds = %27, %25
  %29 = phi i32 [ %26, %25 ], [ 1, %27 ]
  store i32 %29, i32* %4, align 4
  %30 = load %struct.cmatest_node*, %struct.cmatest_node** %2, align 8
  %31 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.cmatest_node*, %struct.cmatest_node** %2, align 8
  %37 = call i8* @ibv_create_cq(i32 %34, i32 %35, %struct.cmatest_node* %36, i32* null, i32 0)
  %38 = load %struct.cmatest_node*, %struct.cmatest_node** %2, align 8
  %39 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %38, i32 0, i32 2
  %40 = load i8**, i8*** %39, align 8
  %41 = load i64, i64* @SEND_CQ_INDEX, align 8
  %42 = getelementptr inbounds i8*, i8** %40, i64 %41
  store i8* %37, i8** %42, align 8
  %43 = load %struct.cmatest_node*, %struct.cmatest_node** %2, align 8
  %44 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %43, i32 0, i32 1
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %4, align 4
  %49 = load %struct.cmatest_node*, %struct.cmatest_node** %2, align 8
  %50 = call i8* @ibv_create_cq(i32 %47, i32 %48, %struct.cmatest_node* %49, i32* null, i32 0)
  %51 = load %struct.cmatest_node*, %struct.cmatest_node** %2, align 8
  %52 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %51, i32 0, i32 2
  %53 = load i8**, i8*** %52, align 8
  %54 = load i64, i64* @RECV_CQ_INDEX, align 8
  %55 = getelementptr inbounds i8*, i8** %53, i64 %54
  store i8* %50, i8** %55, align 8
  %56 = load %struct.cmatest_node*, %struct.cmatest_node** %2, align 8
  %57 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %56, i32 0, i32 2
  %58 = load i8**, i8*** %57, align 8
  %59 = load i64, i64* @SEND_CQ_INDEX, align 8
  %60 = getelementptr inbounds i8*, i8** %58, i64 %59
  %61 = load i8*, i8** %60, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %71

63:                                               ; preds = %28
  %64 = load %struct.cmatest_node*, %struct.cmatest_node** %2, align 8
  %65 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %64, i32 0, i32 2
  %66 = load i8**, i8*** %65, align 8
  %67 = load i64, i64* @RECV_CQ_INDEX, align 8
  %68 = getelementptr inbounds i8*, i8** %66, i64 %67
  %69 = load i8*, i8** %68, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %75, label %71

71:                                               ; preds = %63, %28
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %5, align 4
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %126

75:                                               ; preds = %63
  %76 = call i32 @memset(%struct.ibv_qp_init_attr* %3, i32 0, i32 56)
  %77 = load i32, i32* %4, align 4
  %78 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %3, i32 0, i32 5
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load i32, i32* %4, align 4
  %81 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %3, i32 0, i32 5
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %3, i32 0, i32 5
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 2
  store i32 1, i32* %84, align 8
  %85 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %3, i32 0, i32 5
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 3
  store i32 1, i32* %86, align 4
  %87 = load %struct.cmatest_node*, %struct.cmatest_node** %2, align 8
  %88 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %3, i32 0, i32 4
  store %struct.cmatest_node* %87, %struct.cmatest_node** %88, align 8
  %89 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %3, i32 0, i32 0
  store i32 1, i32* %89, align 8
  %90 = load i32, i32* @IBV_QPT_RC, align 4
  %91 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %3, i32 0, i32 3
  store i32 %90, i32* %91, align 8
  %92 = load %struct.cmatest_node*, %struct.cmatest_node** %2, align 8
  %93 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %92, i32 0, i32 2
  %94 = load i8**, i8*** %93, align 8
  %95 = load i64, i64* @SEND_CQ_INDEX, align 8
  %96 = getelementptr inbounds i8*, i8** %94, i64 %95
  %97 = load i8*, i8** %96, align 8
  %98 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %3, i32 0, i32 2
  store i8* %97, i8** %98, align 8
  %99 = load %struct.cmatest_node*, %struct.cmatest_node** %2, align 8
  %100 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %99, i32 0, i32 2
  %101 = load i8**, i8*** %100, align 8
  %102 = load i64, i64* @RECV_CQ_INDEX, align 8
  %103 = getelementptr inbounds i8*, i8** %101, i64 %102
  %104 = load i8*, i8** %103, align 8
  %105 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %3, i32 0, i32 1
  store i8* %104, i8** %105, align 8
  %106 = load %struct.cmatest_node*, %struct.cmatest_node** %2, align 8
  %107 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %106, i32 0, i32 1
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = load %struct.cmatest_node*, %struct.cmatest_node** %2, align 8
  %110 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @rdma_create_qp(%struct.TYPE_4__* %108, i32 %111, %struct.ibv_qp_init_attr* %3)
  store i32 %112, i32* %5, align 4
  %113 = load i32, i32* %5, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %75
  %116 = call i32 @perror(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %126

117:                                              ; preds = %75
  %118 = load %struct.cmatest_node*, %struct.cmatest_node** %2, align 8
  %119 = call i32 @create_message(%struct.cmatest_node* %118)
  store i32 %119, i32* %5, align 4
  %120 = load i32, i32* %5, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = load i32, i32* %5, align 4
  %124 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %123)
  br label %126

125:                                              ; preds = %117
  br label %126

126:                                              ; preds = %125, %122, %115, %71, %18
  %127 = load i32, i32* %5, align 4
  ret i32 %127
}

declare dso_local i32 @ibv_alloc_pd(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @ibv_create_cq(i32, i32, %struct.cmatest_node*, i32*, i32) #1

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

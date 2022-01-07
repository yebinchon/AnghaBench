; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_cmtime.c_cma_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_cmtime.c_cma_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.rdma_cm_id = type { %struct.node* }
%struct.node = type { i32, i32, i32 }
%struct.rdma_cm_event = type { i32, i32 }
%struct.list_head = type { %struct.rdma_cm_id* }

@.str = private unnamed_addr constant [40 x i8] c"out of memory accepting connect request\00", align 1
@req_work = common dso_local global i32 0, align 4
@rai = common dso_local global %struct.TYPE_2__* null, align 8
@timeout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"RDMA_CM_EVENT_ADDR_ERROR, error: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"RDMA_CM_EVENT_ROUTE_ERROR, error: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"event: %s, error: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [66 x i8] c"out of memory queueing disconnect request, handling synchronously\00", align 1
@disc_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rdma_cm_id*, %struct.rdma_cm_event*)* @cma_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cma_handler(%struct.rdma_cm_id* %0, %struct.rdma_cm_event* %1) #0 {
  %3 = alloca %struct.rdma_cm_id*, align 8
  %4 = alloca %struct.rdma_cm_event*, align 8
  %5 = alloca %struct.node*, align 8
  %6 = alloca %struct.list_head*, align 8
  store %struct.rdma_cm_id* %0, %struct.rdma_cm_id** %3, align 8
  store %struct.rdma_cm_event* %1, %struct.rdma_cm_event** %4, align 8
  %7 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %8 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %7, i32 0, i32 0
  %9 = load %struct.node*, %struct.node** %8, align 8
  store %struct.node* %9, %struct.node** %5, align 8
  %10 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %4, align 8
  %11 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %139 [
    i32 137, label %13
    i32 129, label %16
    i32 135, label %19
    i32 132, label %38
    i32 138, label %45
    i32 130, label %75
    i32 136, label %99
    i32 128, label %99
    i32 131, label %99
    i32 133, label %112
    i32 134, label %138
  ]

13:                                               ; preds = %2
  %14 = load %struct.node*, %struct.node** %5, align 8
  %15 = call i32 @addr_handler(%struct.node* %14)
  br label %140

16:                                               ; preds = %2
  %17 = load %struct.node*, %struct.node** %5, align 8
  %18 = call i32 @route_handler(%struct.node* %17)
  br label %140

19:                                               ; preds = %2
  %20 = call %struct.list_head* @malloc(i32 8)
  store %struct.list_head* %20, %struct.list_head** %6, align 8
  %21 = load %struct.list_head*, %struct.list_head** %6, align 8
  %22 = icmp ne %struct.list_head* %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %19
  %24 = call i32 @perror(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %26 = call i32 @rdma_reject(%struct.rdma_cm_id* %25, i32* null, i32 0)
  %27 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %28 = call i32 @rdma_destroy_id(%struct.rdma_cm_id* %27)
  br label %37

29:                                               ; preds = %19
  %30 = load %struct.list_head*, %struct.list_head** %6, align 8
  %31 = call i32 @INIT_LIST(%struct.list_head* %30)
  %32 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %33 = load %struct.list_head*, %struct.list_head** %6, align 8
  %34 = getelementptr inbounds %struct.list_head, %struct.list_head* %33, i32 0, i32 0
  store %struct.rdma_cm_id* %32, %struct.rdma_cm_id** %34, align 8
  %35 = load %struct.list_head*, %struct.list_head** %6, align 8
  %36 = call i32 @list_add_tail(i32* @req_work, %struct.list_head* %35)
  br label %37

37:                                               ; preds = %29, %23
  br label %140

38:                                               ; preds = %2
  %39 = load %struct.node*, %struct.node** %5, align 8
  %40 = icmp ne %struct.node* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load %struct.node*, %struct.node** %5, align 8
  %43 = call i32 @conn_handler(%struct.node* %42)
  br label %44

44:                                               ; preds = %41, %38
  br label %140

45:                                               ; preds = %2
  %46 = load %struct.node*, %struct.node** %5, align 8
  %47 = getelementptr inbounds %struct.node, %struct.node* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %47, align 4
  %50 = icmp ne i32 %48, 0
  br i1 %50, label %51, label %66

51:                                               ; preds = %45
  %52 = load %struct.node*, %struct.node** %5, align 8
  %53 = getelementptr inbounds %struct.node, %struct.node* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rai, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rai, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @timeout, align 4
  %62 = call i32 @rdma_resolve_addr(i32 %54, i32 %57, i32 %60, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %51
  br label %140

65:                                               ; preds = %51
  br label %66

66:                                               ; preds = %65, %45
  %67 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %4, align 8
  %68 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  %71 = load %struct.node*, %struct.node** %5, align 8
  %72 = call i32 @addr_handler(%struct.node* %71)
  %73 = load %struct.node*, %struct.node** %5, align 8
  %74 = getelementptr inbounds %struct.node, %struct.node* %73, i32 0, i32 0
  store i32 1, i32* %74, align 4
  br label %140

75:                                               ; preds = %2
  %76 = load %struct.node*, %struct.node** %5, align 8
  %77 = getelementptr inbounds %struct.node, %struct.node* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %77, align 4
  %80 = icmp ne i32 %78, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %75
  %82 = load %struct.node*, %struct.node** %5, align 8
  %83 = getelementptr inbounds %struct.node, %struct.node* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @timeout, align 4
  %86 = call i32 @rdma_resolve_route(i32 %84, i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %81
  br label %140

89:                                               ; preds = %81
  br label %90

90:                                               ; preds = %89, %75
  %91 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %4, align 8
  %92 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %93)
  %95 = load %struct.node*, %struct.node** %5, align 8
  %96 = call i32 @route_handler(%struct.node* %95)
  %97 = load %struct.node*, %struct.node** %5, align 8
  %98 = getelementptr inbounds %struct.node, %struct.node* %97, i32 0, i32 0
  store i32 1, i32* %98, align 4
  br label %140

99:                                               ; preds = %2, %2, %2
  %100 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %4, align 8
  %101 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i8* @rdma_event_str(i32 %102)
  %104 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %4, align 8
  %105 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %103, i32 %106)
  %108 = load %struct.node*, %struct.node** %5, align 8
  %109 = call i32 @conn_handler(%struct.node* %108)
  %110 = load %struct.node*, %struct.node** %5, align 8
  %111 = getelementptr inbounds %struct.node, %struct.node* %110, i32 0, i32 0
  store i32 1, i32* %111, align 4
  br label %140

112:                                              ; preds = %2
  %113 = load %struct.node*, %struct.node** %5, align 8
  %114 = icmp ne %struct.node* %113, null
  br i1 %114, label %134, label %115

115:                                              ; preds = %112
  %116 = call %struct.list_head* @malloc(i32 8)
  store %struct.list_head* %116, %struct.list_head** %6, align 8
  %117 = load %struct.list_head*, %struct.list_head** %6, align 8
  %118 = icmp ne %struct.list_head* %117, null
  br i1 %118, label %125, label %119

119:                                              ; preds = %115
  %120 = call i32 @perror(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.4, i64 0, i64 0))
  %121 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %122 = call i32 @rdma_disconnect(%struct.rdma_cm_id* %121)
  %123 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %124 = call i32 @rdma_destroy_id(%struct.rdma_cm_id* %123)
  br label %133

125:                                              ; preds = %115
  %126 = load %struct.list_head*, %struct.list_head** %6, align 8
  %127 = call i32 @INIT_LIST(%struct.list_head* %126)
  %128 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %129 = load %struct.list_head*, %struct.list_head** %6, align 8
  %130 = getelementptr inbounds %struct.list_head, %struct.list_head* %129, i32 0, i32 0
  store %struct.rdma_cm_id* %128, %struct.rdma_cm_id** %130, align 8
  %131 = load %struct.list_head*, %struct.list_head** %6, align 8
  %132 = call i32 @list_add_tail(i32* @disc_work, %struct.list_head* %131)
  br label %133

133:                                              ; preds = %125, %119
  br label %137

134:                                              ; preds = %112
  %135 = load %struct.node*, %struct.node** %5, align 8
  %136 = call i32 @disc_handler(%struct.node* %135)
  br label %137

137:                                              ; preds = %134, %133
  br label %140

138:                                              ; preds = %2
  br label %140

139:                                              ; preds = %2
  br label %140

140:                                              ; preds = %139, %138, %137, %99, %90, %88, %66, %64, %44, %37, %16, %13
  %141 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %4, align 8
  %142 = call i32 @rdma_ack_cm_event(%struct.rdma_cm_event* %141)
  ret void
}

declare dso_local i32 @addr_handler(%struct.node*) #1

declare dso_local i32 @route_handler(%struct.node*) #1

declare dso_local %struct.list_head* @malloc(i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @rdma_reject(%struct.rdma_cm_id*, i32*, i32) #1

declare dso_local i32 @rdma_destroy_id(%struct.rdma_cm_id*) #1

declare dso_local i32 @INIT_LIST(%struct.list_head*) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

declare dso_local i32 @conn_handler(%struct.node*) #1

declare dso_local i32 @rdma_resolve_addr(i32, i32, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @rdma_resolve_route(i32, i32) #1

declare dso_local i8* @rdma_event_str(i32) #1

declare dso_local i32 @rdma_disconnect(%struct.rdma_cm_id*) #1

declare dso_local i32 @disc_handler(%struct.node*) #1

declare dso_local i32 @rdma_ack_cm_event(%struct.rdma_cm_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

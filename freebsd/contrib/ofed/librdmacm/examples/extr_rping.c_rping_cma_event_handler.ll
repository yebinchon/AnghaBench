; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rping.c_rping_cma_event_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rping.c_rping_cma_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_cm_id = type { %struct.rping_cb* }
%struct.rping_cb = type { i32, i8*, i32, %struct.rdma_cm_id*, %struct.rdma_cm_id* }
%struct.rdma_cm_event = type { i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"cma_event type %s cma_id %p (%s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"parent\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"child\00", align 1
@ADDR_RESOLVED = common dso_local global i8* null, align 8
@ERROR = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"rdma_resolve_route\00", align 1
@ROUTE_RESOLVED = common dso_local global i8* null, align 8
@CONNECT_REQUEST = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [14 x i8] c"child cma %p\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"ESTABLISHED\0A\00", align 1
@CONNECTED = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"cma event %s, error %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"%s DISCONNECT EVENT...\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"server\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"client\00", align 1
@DISCONNECTED = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [33 x i8] c"cma detected device removal!!!!\0A\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"unhandled event: %s, ignoring\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_cm_id*, %struct.rdma_cm_event*)* @rping_cma_event_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rping_cma_event_handler(%struct.rdma_cm_id* %0, %struct.rdma_cm_event* %1) #0 {
  %3 = alloca %struct.rdma_cm_id*, align 8
  %4 = alloca %struct.rdma_cm_event*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rping_cb*, align 8
  store %struct.rdma_cm_id* %0, %struct.rdma_cm_id** %3, align 8
  store %struct.rdma_cm_event* %1, %struct.rdma_cm_event** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %8 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %7, i32 0, i32 0
  %9 = load %struct.rping_cb*, %struct.rping_cb** %8, align 8
  store %struct.rping_cb* %9, %struct.rping_cb** %6, align 8
  %10 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %4, align 8
  %11 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i8* @rdma_event_str(i32 %12)
  %14 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %15 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %16 = load %struct.rping_cb*, %struct.rping_cb** %6, align 8
  %17 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %16, i32 0, i32 4
  %18 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %17, align 8
  %19 = icmp eq %struct.rdma_cm_id* %15, %18
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %22 = call i32 (i8*, ...) @DEBUG_LOG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %13, %struct.rdma_cm_id* %14, i8* %21)
  %23 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %4, align 8
  %24 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %115 [
    i32 137, label %26
    i32 129, label %43
    i32 135, label %50
    i32 132, label %64
    i32 138, label %78
    i32 130, label %78
    i32 136, label %78
    i32 128, label %78
    i32 131, label %78
    i32 133, label %91
    i32 134, label %106
  ]

26:                                               ; preds = %2
  %27 = load i8*, i8** @ADDR_RESOLVED, align 8
  %28 = load %struct.rping_cb*, %struct.rping_cb** %6, align 8
  %29 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %28, i32 0, i32 1
  store i8* %27, i8** %29, align 8
  %30 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %31 = call i32 @rdma_resolve_route(%struct.rdma_cm_id* %30, i32 2000)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %26
  %35 = load i8*, i8** @ERROR, align 8
  %36 = load %struct.rping_cb*, %struct.rping_cb** %6, align 8
  %37 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = call i32 @perror(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %39 = load %struct.rping_cb*, %struct.rping_cb** %6, align 8
  %40 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %39, i32 0, i32 0
  %41 = call i32 @sem_post(i32* %40)
  br label %42

42:                                               ; preds = %34, %26
  br label %122

43:                                               ; preds = %2
  %44 = load i8*, i8** @ROUTE_RESOLVED, align 8
  %45 = load %struct.rping_cb*, %struct.rping_cb** %6, align 8
  %46 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %45, i32 0, i32 1
  store i8* %44, i8** %46, align 8
  %47 = load %struct.rping_cb*, %struct.rping_cb** %6, align 8
  %48 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %47, i32 0, i32 0
  %49 = call i32 @sem_post(i32* %48)
  br label %122

50:                                               ; preds = %2
  %51 = load i8*, i8** @CONNECT_REQUEST, align 8
  %52 = load %struct.rping_cb*, %struct.rping_cb** %6, align 8
  %53 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %52, i32 0, i32 1
  store i8* %51, i8** %53, align 8
  %54 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %55 = load %struct.rping_cb*, %struct.rping_cb** %6, align 8
  %56 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %55, i32 0, i32 3
  store %struct.rdma_cm_id* %54, %struct.rdma_cm_id** %56, align 8
  %57 = load %struct.rping_cb*, %struct.rping_cb** %6, align 8
  %58 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %57, i32 0, i32 3
  %59 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %58, align 8
  %60 = call i32 (i8*, ...) @DEBUG_LOG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), %struct.rdma_cm_id* %59)
  %61 = load %struct.rping_cb*, %struct.rping_cb** %6, align 8
  %62 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %61, i32 0, i32 0
  %63 = call i32 @sem_post(i32* %62)
  br label %122

64:                                               ; preds = %2
  %65 = call i32 (i8*, ...) @DEBUG_LOG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %66 = load %struct.rping_cb*, %struct.rping_cb** %6, align 8
  %67 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %64
  %71 = load i8*, i8** @CONNECTED, align 8
  %72 = load %struct.rping_cb*, %struct.rping_cb** %6, align 8
  %73 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %72, i32 0, i32 1
  store i8* %71, i8** %73, align 8
  br label %74

74:                                               ; preds = %70, %64
  %75 = load %struct.rping_cb*, %struct.rping_cb** %6, align 8
  %76 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %75, i32 0, i32 0
  %77 = call i32 @sem_post(i32* %76)
  br label %122

78:                                               ; preds = %2, %2, %2, %2, %2
  %79 = load i32, i32* @stderr, align 4
  %80 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %4, align 8
  %81 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i8* @rdma_event_str(i32 %82)
  %84 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %4, align 8
  %85 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 (i32, i8*, ...) @fprintf(i32 %79, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i8* %83, i32 %86)
  %88 = load %struct.rping_cb*, %struct.rping_cb** %6, align 8
  %89 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %88, i32 0, i32 0
  %90 = call i32 @sem_post(i32* %89)
  store i32 -1, i32* %5, align 4
  br label %122

91:                                               ; preds = %2
  %92 = load i32, i32* @stderr, align 4
  %93 = load %struct.rping_cb*, %struct.rping_cb** %6, align 8
  %94 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0)
  %99 = call i32 (i32, i8*, ...) @fprintf(i32 %92, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i8* %98)
  %100 = load i8*, i8** @DISCONNECTED, align 8
  %101 = load %struct.rping_cb*, %struct.rping_cb** %6, align 8
  %102 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %101, i32 0, i32 1
  store i8* %100, i8** %102, align 8
  %103 = load %struct.rping_cb*, %struct.rping_cb** %6, align 8
  %104 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %103, i32 0, i32 0
  %105 = call i32 @sem_post(i32* %104)
  br label %122

106:                                              ; preds = %2
  %107 = load i32, i32* @stderr, align 4
  %108 = call i32 (i32, i8*, ...) @fprintf(i32 %107, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0))
  %109 = load i8*, i8** @ERROR, align 8
  %110 = load %struct.rping_cb*, %struct.rping_cb** %6, align 8
  %111 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %110, i32 0, i32 1
  store i8* %109, i8** %111, align 8
  %112 = load %struct.rping_cb*, %struct.rping_cb** %6, align 8
  %113 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %112, i32 0, i32 0
  %114 = call i32 @sem_post(i32* %113)
  store i32 -1, i32* %5, align 4
  br label %122

115:                                              ; preds = %2
  %116 = load i32, i32* @stderr, align 4
  %117 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %4, align 8
  %118 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i8* @rdma_event_str(i32 %119)
  %121 = call i32 (i32, i8*, ...) @fprintf(i32 %116, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0), i8* %120)
  br label %122

122:                                              ; preds = %115, %106, %91, %78, %74, %50, %43, %42
  %123 = load i32, i32* %5, align 4
  ret i32 %123
}

declare dso_local i32 @DEBUG_LOG(i8*, ...) #1

declare dso_local i8* @rdma_event_str(i32) #1

declare dso_local i32 @rdma_resolve_route(%struct.rdma_cm_id*, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @sem_post(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

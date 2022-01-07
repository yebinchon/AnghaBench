; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_cmtime.c_run_server.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_cmtime.c_run_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.rdma_cm_id = type { i32 }

@req_work = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@disc_work = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@.str = private unnamed_addr constant [32 x i8] c"initializing mutex for req work\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"initializing mutex for disc work\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"initializing cond for req work\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"initializing cond for disc work\00", align 1
@req_handler_thread = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"failed to create req handler thread\00", align 1
@disc_handler_thread = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [43 x i8] c"failed to create disconnect handler thread\00", align 1
@channel = common dso_local global i32 0, align 4
@hints = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"listen request failed\00", align 1
@src_addr = common dso_local global i32 0, align 4
@dst_addr = common dso_local global i32 0, align 4
@port = common dso_local global i32 0, align 4
@rai = common dso_local global %struct.TYPE_8__* null, align 8
@.str.7 = private unnamed_addr constant [23 x i8] c"getrdmaaddr error: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"bind address failed\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"failure trying to listen\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @run_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_server() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.rdma_cm_id*, align 8
  %5 = alloca i32, align 4
  %6 = call i32 @INIT_LIST(i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @req_work, i32 0, i32 2))
  %7 = call i32 @INIT_LIST(i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @disc_work, i32 0, i32 2))
  %8 = call i32 @pthread_mutex_init(i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @req_work, i32 0, i32 1), i32* null)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %0
  %12 = call i32 @perror(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %1, align 4
  br label %94

14:                                               ; preds = %0
  %15 = call i32 @pthread_mutex_init(i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @disc_work, i32 0, i32 1), i32* null)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = call i32 @perror(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %1, align 4
  br label %94

21:                                               ; preds = %14
  %22 = call i32 @pthread_cond_init(i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @req_work, i32 0, i32 0), i32* null)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = call i32 @perror(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %27 = load i32, i32* %5, align 4
  store i32 %27, i32* %1, align 4
  br label %94

28:                                               ; preds = %21
  %29 = call i32 @pthread_cond_init(i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @disc_work, i32 0, i32 0), i32* null)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = call i32 @perror(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* %1, align 4
  br label %94

35:                                               ; preds = %28
  %36 = load i32, i32* @req_handler_thread, align 4
  %37 = call i32 @pthread_create(i32* %2, i32* null, i32 %36, i32* null)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = call i32 @perror(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* %1, align 4
  br label %94

43:                                               ; preds = %35
  %44 = load i32, i32* @disc_handler_thread, align 4
  %45 = call i32 @pthread_create(i32* %3, i32* null, i32 %44, i32* null)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = call i32 @perror(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %1, align 4
  br label %94

51:                                               ; preds = %43
  %52 = load i32, i32* @channel, align 4
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @hints, i32 0, i32 0), align 4
  %54 = call i32 @rdma_create_id(i32 %52, %struct.rdma_cm_id** %4, i32* null, i32 %53)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = call i32 @perror(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %59 = load i32, i32* %5, align 4
  store i32 %59, i32* %1, align 4
  br label %94

60:                                               ; preds = %51
  %61 = load i32, i32* @src_addr, align 4
  %62 = load i32, i32* @dst_addr, align 4
  %63 = load i32, i32* @port, align 4
  %64 = call i32 @get_rdma_addr(i32 %61, i32 %62, i32 %63, %struct.TYPE_9__* @hints, %struct.TYPE_8__** @rai)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %60
  %68 = load i32, i32* %5, align 4
  %69 = call i8* @gai_strerror(i32 %68)
  %70 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i8* %69)
  br label %90

71:                                               ; preds = %60
  %72 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %4, align 8
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** @rai, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @rdma_bind_addr(%struct.rdma_cm_id* %72, i32 %75)
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %71
  %80 = call i32 @perror(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  br label %90

81:                                               ; preds = %71
  %82 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %4, align 8
  %83 = call i32 @rdma_listen(%struct.rdma_cm_id* %82, i32 0)
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* %5, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = call i32 @perror(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  br label %90

88:                                               ; preds = %81
  %89 = call i32 @process_events(i32* null)
  br label %90

90:                                               ; preds = %88, %86, %79, %67
  %91 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %4, align 8
  %92 = call i32 @rdma_destroy_id(%struct.rdma_cm_id* %91)
  %93 = load i32, i32* %5, align 4
  store i32 %93, i32* %1, align 4
  br label %94

94:                                               ; preds = %90, %57, %48, %40, %32, %25, %18, %11
  %95 = load i32, i32* %1, align 4
  ret i32 %95
}

declare dso_local i32 @INIT_LIST(i32*) #1

declare dso_local i32 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @pthread_cond_init(i32*, i32*) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, i32*) #1

declare dso_local i32 @rdma_create_id(i32, %struct.rdma_cm_id**, i32*, i32) #1

declare dso_local i32 @get_rdma_addr(i32, i32, i32, %struct.TYPE_9__*, %struct.TYPE_8__**) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @gai_strerror(i32) #1

declare dso_local i32 @rdma_bind_addr(%struct.rdma_cm_id*, i32) #1

declare dso_local i32 @rdma_listen(%struct.rdma_cm_id*, i32) #1

declare dso_local i32 @process_events(i32*) #1

declare dso_local i32 @rdma_destroy_id(%struct.rdma_cm_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}

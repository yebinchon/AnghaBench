; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_listen_dnsport.c_tcp_req_info_add_result.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_listen_dnsport.c_tcp_req_info_add_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_req_info = type { i32, %struct.tcp_req_done_item* }
%struct.tcp_req_done_item = type { i64, %struct.tcp_req_done_item*, i32 }

@stream_wait_count_lock = common dso_local global i32 0, align 4
@stream_wait_count = common dso_local global i64 0, align 8
@stream_wait_max = common dso_local global i64 0, align 8
@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"drop stream reply, no space left, in stream-wait-size\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"malloc failure, for stream result list\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"malloc failure, adding reply to stream result list\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcp_req_info*, i32*, i64)* @tcp_req_info_add_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_req_info_add_result(%struct.tcp_req_info* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tcp_req_info*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.tcp_req_done_item*, align 8
  %9 = alloca %struct.tcp_req_done_item*, align 8
  %10 = alloca i64, align 8
  store %struct.tcp_req_info* %0, %struct.tcp_req_info** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.tcp_req_done_item* null, %struct.tcp_req_done_item** %8, align 8
  %11 = load i64, i64* %7, align 8
  %12 = add i64 24, %11
  store i64 %12, i64* %10, align 8
  %13 = call i32 @lock_basic_lock(i32* @stream_wait_count_lock)
  %14 = load i64, i64* @stream_wait_count, align 8
  %15 = load i64, i64* %10, align 8
  %16 = add i64 %14, %15
  %17 = load i64, i64* @stream_wait_max, align 8
  %18 = icmp ugt i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = call i32 @lock_basic_unlock(i32* @stream_wait_count_lock)
  %21 = load i32, i32* @VERB_ALGO, align 4
  %22 = call i32 @verbose(i32 %21, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %87

23:                                               ; preds = %3
  %24 = load i64, i64* %10, align 8
  %25 = load i64, i64* @stream_wait_count, align 8
  %26 = add i64 %25, %24
  store i64 %26, i64* @stream_wait_count, align 8
  %27 = call i32 @lock_basic_unlock(i32* @stream_wait_count_lock)
  %28 = load %struct.tcp_req_info*, %struct.tcp_req_info** %5, align 8
  %29 = getelementptr inbounds %struct.tcp_req_info, %struct.tcp_req_info* %28, i32 0, i32 1
  %30 = load %struct.tcp_req_done_item*, %struct.tcp_req_done_item** %29, align 8
  store %struct.tcp_req_done_item* %30, %struct.tcp_req_done_item** %8, align 8
  br label %31

31:                                               ; preds = %41, %23
  %32 = load %struct.tcp_req_done_item*, %struct.tcp_req_done_item** %8, align 8
  %33 = icmp ne %struct.tcp_req_done_item* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load %struct.tcp_req_done_item*, %struct.tcp_req_done_item** %8, align 8
  %36 = getelementptr inbounds %struct.tcp_req_done_item, %struct.tcp_req_done_item* %35, i32 0, i32 1
  %37 = load %struct.tcp_req_done_item*, %struct.tcp_req_done_item** %36, align 8
  %38 = icmp ne %struct.tcp_req_done_item* %37, null
  br label %39

39:                                               ; preds = %34, %31
  %40 = phi i1 [ false, %31 ], [ %38, %34 ]
  br i1 %40, label %41, label %45

41:                                               ; preds = %39
  %42 = load %struct.tcp_req_done_item*, %struct.tcp_req_done_item** %8, align 8
  %43 = getelementptr inbounds %struct.tcp_req_done_item, %struct.tcp_req_done_item* %42, i32 0, i32 1
  %44 = load %struct.tcp_req_done_item*, %struct.tcp_req_done_item** %43, align 8
  store %struct.tcp_req_done_item* %44, %struct.tcp_req_done_item** %8, align 8
  br label %31

45:                                               ; preds = %39
  %46 = call i64 @malloc(i32 24)
  %47 = inttoptr i64 %46 to %struct.tcp_req_done_item*
  store %struct.tcp_req_done_item* %47, %struct.tcp_req_done_item** %9, align 8
  %48 = load %struct.tcp_req_done_item*, %struct.tcp_req_done_item** %9, align 8
  %49 = icmp ne %struct.tcp_req_done_item* %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %45
  %51 = call i32 @log_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %87

52:                                               ; preds = %45
  %53 = load %struct.tcp_req_done_item*, %struct.tcp_req_done_item** %9, align 8
  %54 = getelementptr inbounds %struct.tcp_req_done_item, %struct.tcp_req_done_item* %53, i32 0, i32 1
  store %struct.tcp_req_done_item* null, %struct.tcp_req_done_item** %54, align 8
  %55 = load i64, i64* %7, align 8
  %56 = load %struct.tcp_req_done_item*, %struct.tcp_req_done_item** %9, align 8
  %57 = getelementptr inbounds %struct.tcp_req_done_item, %struct.tcp_req_done_item* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = load i64, i64* %7, align 8
  %60 = call i32 @memdup(i32* %58, i64 %59)
  %61 = load %struct.tcp_req_done_item*, %struct.tcp_req_done_item** %9, align 8
  %62 = getelementptr inbounds %struct.tcp_req_done_item, %struct.tcp_req_done_item* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  %63 = load %struct.tcp_req_done_item*, %struct.tcp_req_done_item** %9, align 8
  %64 = getelementptr inbounds %struct.tcp_req_done_item, %struct.tcp_req_done_item* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %52
  %68 = load %struct.tcp_req_done_item*, %struct.tcp_req_done_item** %9, align 8
  %69 = call i32 @free(%struct.tcp_req_done_item* %68)
  %70 = call i32 @log_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %87

71:                                               ; preds = %52
  %72 = load %struct.tcp_req_done_item*, %struct.tcp_req_done_item** %8, align 8
  %73 = icmp ne %struct.tcp_req_done_item* %72, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load %struct.tcp_req_done_item*, %struct.tcp_req_done_item** %9, align 8
  %76 = load %struct.tcp_req_done_item*, %struct.tcp_req_done_item** %8, align 8
  %77 = getelementptr inbounds %struct.tcp_req_done_item, %struct.tcp_req_done_item* %76, i32 0, i32 1
  store %struct.tcp_req_done_item* %75, %struct.tcp_req_done_item** %77, align 8
  br label %82

78:                                               ; preds = %71
  %79 = load %struct.tcp_req_done_item*, %struct.tcp_req_done_item** %9, align 8
  %80 = load %struct.tcp_req_info*, %struct.tcp_req_info** %5, align 8
  %81 = getelementptr inbounds %struct.tcp_req_info, %struct.tcp_req_info* %80, i32 0, i32 1
  store %struct.tcp_req_done_item* %79, %struct.tcp_req_done_item** %81, align 8
  br label %82

82:                                               ; preds = %78, %74
  %83 = load %struct.tcp_req_info*, %struct.tcp_req_info** %5, align 8
  %84 = getelementptr inbounds %struct.tcp_req_info, %struct.tcp_req_info* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 8
  store i32 1, i32* %4, align 4
  br label %87

87:                                               ; preds = %82, %67, %50, %19
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i32 @lock_basic_lock(i32*) #1

declare dso_local i32 @lock_basic_unlock(i32*) #1

declare dso_local i32 @verbose(i32, i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i32 @memdup(i32*, i64) #1

declare dso_local i32 @free(%struct.tcp_req_done_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

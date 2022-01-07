; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_stats.c_server_stats_obtain.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_stats.c_server_stats_obtain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.worker = type { i32 }
%struct.ub_stats_info = type { i32 }

@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"write stats cmd\00", align 1
@worker_cmd_stats = common dso_local global i32 0, align 4
@worker_cmd_stats_noreset = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"wait for stats reply\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"failed to read stats over cmd channel\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"stats on cmd channel wrong length %d %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @server_stats_obtain(%struct.worker* %0, %struct.worker* %1, %struct.ub_stats_info* %2, i32 %3) #0 {
  %5 = alloca %struct.worker*, align 8
  %6 = alloca %struct.worker*, align 8
  %7 = alloca %struct.ub_stats_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store %struct.worker* %0, %struct.worker** %5, align 8
  store %struct.worker* %1, %struct.worker** %6, align 8
  store %struct.ub_stats_info* %2, %struct.ub_stats_info** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32* null, i32** %9, align 8
  store i64 0, i64* %10, align 8
  %11 = load %struct.worker*, %struct.worker** %5, align 8
  %12 = load %struct.worker*, %struct.worker** %6, align 8
  %13 = icmp eq %struct.worker* %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %4
  %15 = load %struct.worker*, %struct.worker** %5, align 8
  %16 = load %struct.ub_stats_info*, %struct.ub_stats_info** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @server_stats_compile(%struct.worker* %15, %struct.ub_stats_info* %16, i32 %17)
  br label %56

19:                                               ; preds = %4
  %20 = load i32, i32* @VERB_ALGO, align 4
  %21 = call i32 @verbose(i32 %20, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load %struct.worker*, %struct.worker** %6, align 8
  %26 = load i32, i32* @worker_cmd_stats, align 4
  %27 = call i32 @worker_send_cmd(%struct.worker* %25, i32 %26)
  br label %32

28:                                               ; preds = %19
  %29 = load %struct.worker*, %struct.worker** %6, align 8
  %30 = load i32, i32* @worker_cmd_stats_noreset, align 4
  %31 = call i32 @worker_send_cmd(%struct.worker* %29, i32 %30)
  br label %32

32:                                               ; preds = %28, %24
  %33 = load i32, i32* @VERB_ALGO, align 4
  %34 = call i32 @verbose(i32 %33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %35 = load %struct.worker*, %struct.worker** %5, align 8
  %36 = getelementptr inbounds %struct.worker, %struct.worker* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @tube_read_msg(i32 %37, i32** %9, i64* %10, i32 0)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %32
  %41 = call i32 (i8*, ...) @fatal_exit(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %32
  %43 = load i64, i64* %10, align 8
  %44 = icmp ne i64 %43, 4
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load i64, i64* %10, align 8
  %47 = trunc i64 %46 to i32
  %48 = call i32 (i8*, ...) @fatal_exit(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %47, i32 4)
  br label %49

49:                                               ; preds = %45, %42
  %50 = load %struct.ub_stats_info*, %struct.ub_stats_info** %7, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = load i64, i64* %10, align 8
  %53 = call i32 @memcpy(%struct.ub_stats_info* %50, i32* %51, i64 %52)
  %54 = load i32*, i32** %9, align 8
  %55 = call i32 @free(i32* %54)
  br label %56

56:                                               ; preds = %49, %14
  ret void
}

declare dso_local i32 @server_stats_compile(%struct.worker*, %struct.ub_stats_info*, i32) #1

declare dso_local i32 @verbose(i32, i8*) #1

declare dso_local i32 @worker_send_cmd(%struct.worker*, i32) #1

declare dso_local i32 @tube_read_msg(i32, i32**, i64*, i32) #1

declare dso_local i32 @fatal_exit(i8*, ...) #1

declare dso_local i32 @memcpy(%struct.ub_stats_info*, i32*, i64) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

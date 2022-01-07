; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_stats.c_server_stats_log.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_stats.c_server_stats_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_server_stats = type { i64, i64, i64, i64, i64, i64 }
%struct.worker = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }

@.str = private unnamed_addr constant [122 x i8] c"server stats for thread %d: %u queries, %u answers from cache, %u recursions, %u prefetch, %u rejected by ip ratelimiting\00", align 1
@.str.1 = private unnamed_addr constant [77 x i8] c"server stats for thread %d: requestlist max %u avg %g exceeded %u jostled %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @server_stats_log(%struct.ub_server_stats* %0, %struct.worker* %1, i32 %2) #0 {
  %4 = alloca %struct.ub_server_stats*, align 8
  %5 = alloca %struct.worker*, align 8
  %6 = alloca i32, align 4
  store %struct.ub_server_stats* %0, %struct.ub_server_stats** %4, align 8
  store %struct.worker* %1, %struct.worker** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.ub_server_stats*, %struct.ub_server_stats** %4, align 8
  %9 = getelementptr inbounds %struct.ub_server_stats, %struct.ub_server_stats* %8, i32 0, i32 5
  %10 = load i64, i64* %9, align 8
  %11 = trunc i64 %10 to i32
  %12 = load %struct.ub_server_stats*, %struct.ub_server_stats** %4, align 8
  %13 = getelementptr inbounds %struct.ub_server_stats, %struct.ub_server_stats* %12, i32 0, i32 5
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.ub_server_stats*, %struct.ub_server_stats** %4, align 8
  %16 = getelementptr inbounds %struct.ub_server_stats, %struct.ub_server_stats* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = sub nsw i64 %14, %17
  %19 = trunc i64 %18 to i32
  %20 = uitofp i32 %19 to double
  %21 = load %struct.ub_server_stats*, %struct.ub_server_stats** %4, align 8
  %22 = getelementptr inbounds %struct.ub_server_stats, %struct.ub_server_stats* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = load %struct.ub_server_stats*, %struct.ub_server_stats** %4, align 8
  %26 = getelementptr inbounds %struct.ub_server_stats, %struct.ub_server_stats* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = trunc i64 %27 to i32
  %29 = load %struct.ub_server_stats*, %struct.ub_server_stats** %4, align 8
  %30 = getelementptr inbounds %struct.ub_server_stats, %struct.ub_server_stats* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = call i32 (i8*, i32, i32, double, i32, i32, ...) @log_info(i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %11, double %20, i32 %24, i32 %28, i32 %32)
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.ub_server_stats*, %struct.ub_server_stats** %4, align 8
  %36 = getelementptr inbounds %struct.ub_server_stats, %struct.ub_server_stats* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  %39 = load %struct.ub_server_stats*, %struct.ub_server_stats** %4, align 8
  %40 = getelementptr inbounds %struct.ub_server_stats, %struct.ub_server_stats* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.ub_server_stats*, %struct.ub_server_stats** %4, align 8
  %43 = getelementptr inbounds %struct.ub_server_stats, %struct.ub_server_stats* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %41, %44
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %3
  %48 = load %struct.ub_server_stats*, %struct.ub_server_stats** %4, align 8
  %49 = getelementptr inbounds %struct.ub_server_stats, %struct.ub_server_stats* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = sitofp i64 %50 to double
  %52 = load %struct.ub_server_stats*, %struct.ub_server_stats** %4, align 8
  %53 = getelementptr inbounds %struct.ub_server_stats, %struct.ub_server_stats* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.ub_server_stats*, %struct.ub_server_stats** %4, align 8
  %56 = getelementptr inbounds %struct.ub_server_stats, %struct.ub_server_stats* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %54, %57
  %59 = sitofp i64 %58 to double
  %60 = fdiv double %51, %59
  br label %62

61:                                               ; preds = %3
  br label %62

62:                                               ; preds = %61, %47
  %63 = phi double [ %60, %47 ], [ 0.000000e+00, %61 ]
  %64 = load %struct.worker*, %struct.worker** %5, align 8
  %65 = getelementptr inbounds %struct.worker, %struct.worker* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = trunc i64 %69 to i32
  %71 = load %struct.worker*, %struct.worker** %5, align 8
  %72 = getelementptr inbounds %struct.worker, %struct.worker* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = trunc i64 %76 to i32
  %78 = call i32 (i8*, i32, i32, double, i32, i32, ...) @log_info(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %38, double %63, i32 %70, i32 %77)
  ret void
}

declare dso_local i32 @log_info(i8*, i32, i32, double, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

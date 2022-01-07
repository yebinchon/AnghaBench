; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_do_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_do_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.daemon_remote = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.daemon* }
%struct.daemon = type { i32, %struct.TYPE_5__*, i32* }
%struct.TYPE_5__ = type { i64 }
%struct.ub_stats_info = type { double }

@.str = private unnamed_addr constant [6 x i8] c"total\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.daemon_remote*, i32)* @do_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_stats(i32* %0, %struct.daemon_remote* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.daemon_remote*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.daemon*, align 8
  %8 = alloca %struct.ub_stats_info, align 8
  %9 = alloca %struct.ub_stats_info, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.daemon_remote* %1, %struct.daemon_remote** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.daemon_remote*, %struct.daemon_remote** %5, align 8
  %12 = getelementptr inbounds %struct.daemon_remote, %struct.daemon_remote* %11, i32 0, i32 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.daemon*, %struct.daemon** %14, align 8
  store %struct.daemon* %15, %struct.daemon** %7, align 8
  %16 = call i32 @memset(%struct.ub_stats_info* %8, i32 0, i32 8)
  %17 = load %struct.daemon*, %struct.daemon** %7, align 8
  %18 = getelementptr inbounds %struct.daemon, %struct.daemon* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp sgt i32 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @log_assert(i32 %21)
  store i32 0, i32* %10, align 4
  br label %23

23:                                               ; preds = %56, %3
  %24 = load i32, i32* %10, align 4
  %25 = load %struct.daemon*, %struct.daemon** %7, align 8
  %26 = getelementptr inbounds %struct.daemon, %struct.daemon* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %59

29:                                               ; preds = %23
  %30 = load %struct.daemon_remote*, %struct.daemon_remote** %5, align 8
  %31 = getelementptr inbounds %struct.daemon_remote, %struct.daemon_remote* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = load %struct.daemon*, %struct.daemon** %7, align 8
  %34 = getelementptr inbounds %struct.daemon, %struct.daemon* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @server_stats_obtain(%struct.TYPE_6__* %32, i32 %39, %struct.ub_stats_info* %9, i32 %40)
  %42 = load i32*, i32** %4, align 8
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @print_thread_stats(i32* %42, i32 %43, %struct.ub_stats_info* %9)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %29
  br label %107

47:                                               ; preds = %29
  %48 = load i32, i32* %10, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = bitcast %struct.ub_stats_info* %8 to i8*
  %52 = bitcast %struct.ub_stats_info* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %51, i8* align 8 %52, i64 8, i1 false)
  br label %55

53:                                               ; preds = %47
  %54 = call i32 @server_stats_add(%struct.ub_stats_info* %8, %struct.ub_stats_info* %9)
  br label %55

55:                                               ; preds = %53, %50
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %10, align 4
  br label %23

59:                                               ; preds = %23
  %60 = load %struct.daemon*, %struct.daemon** %7, align 8
  %61 = getelementptr inbounds %struct.daemon, %struct.daemon* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sitofp i32 %62 to double
  %64 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %8, i32 0, i32 0
  %65 = load double, double* %64, align 8
  %66 = fdiv double %65, %63
  store double %66, double* %64, align 8
  %67 = load i32*, i32** %4, align 8
  %68 = call i32 @print_stats(i32* %67, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.ub_stats_info* %8)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %59
  br label %107

71:                                               ; preds = %59
  %72 = load i32*, i32** %4, align 8
  %73 = load %struct.daemon_remote*, %struct.daemon_remote** %5, align 8
  %74 = getelementptr inbounds %struct.daemon_remote, %struct.daemon_remote* %73, i32 0, i32 0
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @print_uptime(i32* %72, %struct.TYPE_6__* %75, i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %71
  br label %107

80:                                               ; preds = %71
  %81 = load %struct.daemon*, %struct.daemon** %7, align 8
  %82 = getelementptr inbounds %struct.daemon, %struct.daemon* %81, i32 0, i32 1
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %107

87:                                               ; preds = %80
  %88 = load i32*, i32** %4, align 8
  %89 = load %struct.daemon_remote*, %struct.daemon_remote** %5, align 8
  %90 = getelementptr inbounds %struct.daemon_remote, %struct.daemon_remote* %89, i32 0, i32 0
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = load %struct.daemon*, %struct.daemon** %7, align 8
  %93 = call i32 @print_mem(i32* %88, %struct.TYPE_6__* %91, %struct.daemon* %92, %struct.ub_stats_info* %8)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %87
  br label %107

96:                                               ; preds = %87
  %97 = load i32*, i32** %4, align 8
  %98 = call i32 @print_hist(i32* %97, %struct.ub_stats_info* %8)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %96
  br label %107

101:                                              ; preds = %96
  %102 = load i32*, i32** %4, align 8
  %103 = call i32 @print_ext(i32* %102, %struct.ub_stats_info* %8)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %101
  br label %107

106:                                              ; preds = %101
  br label %107

107:                                              ; preds = %46, %70, %79, %95, %100, %105, %106, %80
  ret void
}

declare dso_local i32 @memset(%struct.ub_stats_info*, i32, i32) #1

declare dso_local i32 @log_assert(i32) #1

declare dso_local i32 @server_stats_obtain(%struct.TYPE_6__*, i32, %struct.ub_stats_info*, i32) #1

declare dso_local i32 @print_thread_stats(i32*, i32, %struct.ub_stats_info*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @server_stats_add(%struct.ub_stats_info*, %struct.ub_stats_info*) #1

declare dso_local i32 @print_stats(i32*, i8*, %struct.ub_stats_info*) #1

declare dso_local i32 @print_uptime(i32*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @print_mem(i32*, %struct.TYPE_6__*, %struct.daemon*, %struct.ub_stats_info*) #1

declare dso_local i32 @print_hist(i32*, %struct.ub_stats_info*) #1

declare dso_local i32 @print_ext(i32*, %struct.ub_stats_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

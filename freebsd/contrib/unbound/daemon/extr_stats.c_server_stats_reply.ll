; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_stats.c_server_stats_reply.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_stats.c_server_stats_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.worker = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__** }
%struct.TYPE_3__ = type { i32 }
%struct.ub_stats_info = type { i32 }

@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"write stats replymsg\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"could not write stat values over cmd channel\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @server_stats_reply(%struct.worker* %0, i32 %1) #0 {
  %3 = alloca %struct.worker*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ub_stats_info, align 4
  store %struct.worker* %0, %struct.worker** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.worker*, %struct.worker** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @server_stats_compile(%struct.worker* %6, %struct.ub_stats_info* %5, i32 %7)
  %9 = load i32, i32* @VERB_ALGO, align 4
  %10 = call i32 @verbose(i32 %9, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.worker*, %struct.worker** %3, align 8
  %12 = getelementptr inbounds %struct.worker, %struct.worker* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %15, i64 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = bitcast %struct.ub_stats_info* %5 to i32*
  %21 = call i32 @tube_write_msg(i32 %19, i32* %20, i32 4, i32 0)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %2
  %24 = call i32 @fatal_exit(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %2
  ret void
}

declare dso_local i32 @server_stats_compile(%struct.worker*, %struct.ub_stats_info*, i32) #1

declare dso_local i32 @verbose(i32, i8*) #1

declare dso_local i32 @tube_write_msg(i32, i32*, i32, i32) #1

declare dso_local i32 @fatal_exit(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

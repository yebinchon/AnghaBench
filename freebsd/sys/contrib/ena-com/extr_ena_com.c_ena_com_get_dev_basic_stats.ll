; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_com.c_ena_com_get_dev_basic_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_com.c_ena_com_get_dev_basic_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_dev = type { i32 }
%struct.ena_admin_basic_stats = type { i32 }
%struct.ena_com_stats_ctx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ENA_ADMIN_GET_STATS_TYPE_BASIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ena_com_get_dev_basic_stats(%struct.ena_com_dev* %0, %struct.ena_admin_basic_stats* %1) #0 {
  %3 = alloca %struct.ena_com_dev*, align 8
  %4 = alloca %struct.ena_admin_basic_stats*, align 8
  %5 = alloca %struct.ena_com_stats_ctx, align 4
  %6 = alloca i32, align 4
  store %struct.ena_com_dev* %0, %struct.ena_com_dev** %3, align 8
  store %struct.ena_admin_basic_stats* %1, %struct.ena_admin_basic_stats** %4, align 8
  %7 = call i32 @memset(%struct.ena_com_stats_ctx* %5, i32 0, i32 4)
  %8 = load %struct.ena_com_dev*, %struct.ena_com_dev** %3, align 8
  %9 = load i32, i32* @ENA_ADMIN_GET_STATS_TYPE_BASIC, align 4
  %10 = call i32 @ena_get_dev_stats(%struct.ena_com_dev* %8, %struct.ena_com_stats_ctx* %5, i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp eq i32 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i64 @likely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.ena_admin_basic_stats*, %struct.ena_admin_basic_stats** %4, align 8
  %18 = getelementptr inbounds %struct.ena_com_stats_ctx, %struct.ena_com_stats_ctx* %5, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call i32 @memcpy(%struct.ena_admin_basic_stats* %17, i32* %19, i32 4)
  br label %21

21:                                               ; preds = %16, %2
  %22 = load i32, i32* %6, align 4
  ret i32 %22
}

declare dso_local i32 @memset(%struct.ena_com_stats_ctx*, i32, i32) #1

declare dso_local i32 @ena_get_dev_stats(%struct.ena_com_dev*, %struct.ena_com_stats_ctx*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @memcpy(%struct.ena_admin_basic_stats*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

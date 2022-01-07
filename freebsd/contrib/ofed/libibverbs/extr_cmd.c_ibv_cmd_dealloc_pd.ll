; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_cmd.c_ibv_cmd_dealloc_pd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_cmd.c_ibv_cmd_dealloc_pd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_pd = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ibv_dealloc_pd = type { i32 }

@DEALLOC_PD = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ibv_cmd_dealloc_pd(%struct.ibv_pd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ibv_pd*, align 8
  %4 = alloca %struct.ibv_dealloc_pd, align 4
  store %struct.ibv_pd* %0, %struct.ibv_pd** %3, align 8
  %5 = load i32, i32* @DEALLOC_PD, align 4
  %6 = call i32 @IBV_INIT_CMD(%struct.ibv_dealloc_pd* %4, i32 4, i32 %5)
  %7 = load %struct.ibv_pd*, %struct.ibv_pd** %3, align 8
  %8 = getelementptr inbounds %struct.ibv_pd, %struct.ibv_pd* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = getelementptr inbounds %struct.ibv_dealloc_pd, %struct.ibv_dealloc_pd* %4, i32 0, i32 0
  store i32 %9, i32* %10, align 4
  %11 = load %struct.ibv_pd*, %struct.ibv_pd** %3, align 8
  %12 = getelementptr inbounds %struct.ibv_pd, %struct.ibv_pd* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @write(i32 %15, %struct.ibv_dealloc_pd* %4, i32 4)
  %17 = sext i32 %16 to i64
  %18 = icmp ne i64 %17, 4
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* @errno, align 4
  store i32 %20, i32* %2, align 4
  br label %22

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %21, %19
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @IBV_INIT_CMD(%struct.ibv_dealloc_pd*, i32, i32) #1

declare dso_local i32 @write(i32, %struct.ibv_dealloc_pd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

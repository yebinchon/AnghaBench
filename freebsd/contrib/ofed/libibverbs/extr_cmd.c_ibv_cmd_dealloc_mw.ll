; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_cmd.c_ibv_cmd_dealloc_mw.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_cmd.c_ibv_cmd_dealloc_mw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_mw = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ibv_dealloc_mw = type { i64, i32 }

@DEALLOC_MW = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ibv_cmd_dealloc_mw(%struct.ibv_mw* %0, %struct.ibv_dealloc_mw* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ibv_mw*, align 8
  %6 = alloca %struct.ibv_dealloc_mw*, align 8
  %7 = alloca i64, align 8
  store %struct.ibv_mw* %0, %struct.ibv_mw** %5, align 8
  store %struct.ibv_dealloc_mw* %1, %struct.ibv_dealloc_mw** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load %struct.ibv_dealloc_mw*, %struct.ibv_dealloc_mw** %6, align 8
  %9 = load i64, i64* %7, align 8
  %10 = load i32, i32* @DEALLOC_MW, align 4
  %11 = call i32 @IBV_INIT_CMD(%struct.ibv_dealloc_mw* %8, i64 %9, i32 %10)
  %12 = load %struct.ibv_mw*, %struct.ibv_mw** %5, align 8
  %13 = getelementptr inbounds %struct.ibv_mw, %struct.ibv_mw* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.ibv_dealloc_mw*, %struct.ibv_dealloc_mw** %6, align 8
  %16 = getelementptr inbounds %struct.ibv_dealloc_mw, %struct.ibv_dealloc_mw* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 8
  %17 = load %struct.ibv_dealloc_mw*, %struct.ibv_dealloc_mw** %6, align 8
  %18 = getelementptr inbounds %struct.ibv_dealloc_mw, %struct.ibv_dealloc_mw* %17, i32 0, i32 0
  store i64 0, i64* %18, align 8
  %19 = load %struct.ibv_mw*, %struct.ibv_mw** %5, align 8
  %20 = getelementptr inbounds %struct.ibv_mw, %struct.ibv_mw* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ibv_dealloc_mw*, %struct.ibv_dealloc_mw** %6, align 8
  %25 = load i64, i64* %7, align 8
  %26 = call i64 @write(i32 %23, %struct.ibv_dealloc_mw* %24, i64 %25)
  %27 = load i64, i64* %7, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %3
  %30 = load i32, i32* @errno, align 4
  store i32 %30, i32* %4, align 4
  br label %32

31:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %31, %29
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @IBV_INIT_CMD(%struct.ibv_dealloc_mw*, i64, i32) #1

declare dso_local i64 @write(i32, %struct.ibv_dealloc_mw*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

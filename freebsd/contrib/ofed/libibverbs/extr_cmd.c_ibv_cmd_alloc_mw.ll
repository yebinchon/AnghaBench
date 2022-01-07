; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_cmd.c_ibv_cmd_alloc_mw.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_cmd.c_ibv_cmd_alloc_mw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_pd = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ibv_mw = type { i32, i32, i32, %struct.ibv_pd*, %struct.TYPE_2__* }
%struct.ibv_alloc_mw = type { i32, i32, i32 }
%struct.ibv_alloc_mw_resp = type { i32, i32 }

@ALLOC_MW = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ibv_cmd_alloc_mw(%struct.ibv_pd* %0, i32 %1, %struct.ibv_mw* %2, %struct.ibv_alloc_mw* %3, i64 %4, %struct.ibv_alloc_mw_resp* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ibv_pd*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ibv_mw*, align 8
  %12 = alloca %struct.ibv_alloc_mw*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.ibv_alloc_mw_resp*, align 8
  %15 = alloca i64, align 8
  store %struct.ibv_pd* %0, %struct.ibv_pd** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.ibv_mw* %2, %struct.ibv_mw** %11, align 8
  store %struct.ibv_alloc_mw* %3, %struct.ibv_alloc_mw** %12, align 8
  store i64 %4, i64* %13, align 8
  store %struct.ibv_alloc_mw_resp* %5, %struct.ibv_alloc_mw_resp** %14, align 8
  store i64 %6, i64* %15, align 8
  %16 = load %struct.ibv_alloc_mw*, %struct.ibv_alloc_mw** %12, align 8
  %17 = load i64, i64* %13, align 8
  %18 = load i32, i32* @ALLOC_MW, align 4
  %19 = load %struct.ibv_alloc_mw_resp*, %struct.ibv_alloc_mw_resp** %14, align 8
  %20 = load i64, i64* %15, align 8
  %21 = call i32 @IBV_INIT_CMD_RESP(%struct.ibv_alloc_mw* %16, i64 %17, i32 %18, %struct.ibv_alloc_mw_resp* %19, i64 %20)
  %22 = load %struct.ibv_pd*, %struct.ibv_pd** %9, align 8
  %23 = getelementptr inbounds %struct.ibv_pd, %struct.ibv_pd* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.ibv_alloc_mw*, %struct.ibv_alloc_mw** %12, align 8
  %26 = getelementptr inbounds %struct.ibv_alloc_mw, %struct.ibv_alloc_mw* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.ibv_alloc_mw*, %struct.ibv_alloc_mw** %12, align 8
  %29 = getelementptr inbounds %struct.ibv_alloc_mw, %struct.ibv_alloc_mw* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.ibv_alloc_mw*, %struct.ibv_alloc_mw** %12, align 8
  %31 = getelementptr inbounds %struct.ibv_alloc_mw, %struct.ibv_alloc_mw* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @memset(i32 %32, i32 0, i32 4)
  %34 = load %struct.ibv_pd*, %struct.ibv_pd** %9, align 8
  %35 = getelementptr inbounds %struct.ibv_pd, %struct.ibv_pd* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ibv_alloc_mw*, %struct.ibv_alloc_mw** %12, align 8
  %40 = load i64, i64* %13, align 8
  %41 = call i64 @write(i32 %38, %struct.ibv_alloc_mw* %39, i64 %40)
  %42 = load i64, i64* %13, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %7
  %45 = load i32, i32* @errno, align 4
  store i32 %45, i32* %8, align 4
  br label %71

46:                                               ; preds = %7
  %47 = load %struct.ibv_alloc_mw_resp*, %struct.ibv_alloc_mw_resp** %14, align 8
  %48 = load i64, i64* %15, align 8
  %49 = call i32 @VALGRIND_MAKE_MEM_DEFINED(%struct.ibv_alloc_mw_resp* %47, i64 %48)
  %50 = load %struct.ibv_pd*, %struct.ibv_pd** %9, align 8
  %51 = getelementptr inbounds %struct.ibv_pd, %struct.ibv_pd* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load %struct.ibv_mw*, %struct.ibv_mw** %11, align 8
  %54 = getelementptr inbounds %struct.ibv_mw, %struct.ibv_mw* %53, i32 0, i32 4
  store %struct.TYPE_2__* %52, %struct.TYPE_2__** %54, align 8
  %55 = load %struct.ibv_pd*, %struct.ibv_pd** %9, align 8
  %56 = load %struct.ibv_mw*, %struct.ibv_mw** %11, align 8
  %57 = getelementptr inbounds %struct.ibv_mw, %struct.ibv_mw* %56, i32 0, i32 3
  store %struct.ibv_pd* %55, %struct.ibv_pd** %57, align 8
  %58 = load %struct.ibv_alloc_mw_resp*, %struct.ibv_alloc_mw_resp** %14, align 8
  %59 = getelementptr inbounds %struct.ibv_alloc_mw_resp, %struct.ibv_alloc_mw_resp* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.ibv_mw*, %struct.ibv_mw** %11, align 8
  %62 = getelementptr inbounds %struct.ibv_mw, %struct.ibv_mw* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  %63 = load %struct.ibv_alloc_mw_resp*, %struct.ibv_alloc_mw_resp** %14, align 8
  %64 = getelementptr inbounds %struct.ibv_alloc_mw_resp, %struct.ibv_alloc_mw_resp* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ibv_mw*, %struct.ibv_mw** %11, align 8
  %67 = getelementptr inbounds %struct.ibv_mw, %struct.ibv_mw* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* %10, align 4
  %69 = load %struct.ibv_mw*, %struct.ibv_mw** %11, align 8
  %70 = getelementptr inbounds %struct.ibv_mw, %struct.ibv_mw* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  store i32 0, i32* %8, align 4
  br label %71

71:                                               ; preds = %46, %44
  %72 = load i32, i32* %8, align 4
  ret i32 %72
}

declare dso_local i32 @IBV_INIT_CMD_RESP(%struct.ibv_alloc_mw*, i64, i32, %struct.ibv_alloc_mw_resp*, i64) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i64 @write(i32, %struct.ibv_alloc_mw*, i64) #1

declare dso_local i32 @VALGRIND_MAKE_MEM_DEFINED(%struct.ibv_alloc_mw_resp*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_cmd.c_ibv_cmd_rereg_mr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_cmd.c_ibv_cmd_rereg_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_mr = type { %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ibv_pd = type { %struct.TYPE_2__*, i32 }
%struct.ibv_rereg_mr = type { i32, i64, i64, i32, i32, i32, i32 }
%struct.ibv_rereg_mr_resp = type { i32, i32 }

@REREG_MR = common dso_local global i32 0, align 4
@IBV_REREG_MR_CHANGE_PD = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ibv_cmd_rereg_mr(%struct.ibv_mr* %0, i32 %1, i8* %2, i64 %3, i32 %4, i32 %5, %struct.ibv_pd* %6, %struct.ibv_rereg_mr* %7, i64 %8, %struct.ibv_rereg_mr_resp* %9, i64 %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca %struct.ibv_mr*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.ibv_pd*, align 8
  %20 = alloca %struct.ibv_rereg_mr*, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.ibv_rereg_mr_resp*, align 8
  %23 = alloca i64, align 8
  store %struct.ibv_mr* %0, %struct.ibv_mr** %13, align 8
  store i32 %1, i32* %14, align 4
  store i8* %2, i8** %15, align 8
  store i64 %3, i64* %16, align 8
  store i32 %4, i32* %17, align 4
  store i32 %5, i32* %18, align 4
  store %struct.ibv_pd* %6, %struct.ibv_pd** %19, align 8
  store %struct.ibv_rereg_mr* %7, %struct.ibv_rereg_mr** %20, align 8
  store i64 %8, i64* %21, align 8
  store %struct.ibv_rereg_mr_resp* %9, %struct.ibv_rereg_mr_resp** %22, align 8
  store i64 %10, i64* %23, align 8
  %24 = load %struct.ibv_rereg_mr*, %struct.ibv_rereg_mr** %20, align 8
  %25 = load i64, i64* %21, align 8
  %26 = load i32, i32* @REREG_MR, align 4
  %27 = load %struct.ibv_rereg_mr_resp*, %struct.ibv_rereg_mr_resp** %22, align 8
  %28 = load i64, i64* %23, align 8
  %29 = call i32 @IBV_INIT_CMD_RESP(%struct.ibv_rereg_mr* %24, i64 %25, i32 %26, %struct.ibv_rereg_mr_resp* %27, i64 %28)
  %30 = load %struct.ibv_mr*, %struct.ibv_mr** %13, align 8
  %31 = getelementptr inbounds %struct.ibv_mr, %struct.ibv_mr* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.ibv_rereg_mr*, %struct.ibv_rereg_mr** %20, align 8
  %34 = getelementptr inbounds %struct.ibv_rereg_mr, %struct.ibv_rereg_mr* %33, i32 0, i32 6
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %14, align 4
  %36 = load %struct.ibv_rereg_mr*, %struct.ibv_rereg_mr** %20, align 8
  %37 = getelementptr inbounds %struct.ibv_rereg_mr, %struct.ibv_rereg_mr* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load i8*, i8** %15, align 8
  %39 = ptrtoint i8* %38 to i64
  %40 = load %struct.ibv_rereg_mr*, %struct.ibv_rereg_mr** %20, align 8
  %41 = getelementptr inbounds %struct.ibv_rereg_mr, %struct.ibv_rereg_mr* %40, i32 0, i32 1
  store i64 %39, i64* %41, align 8
  %42 = load i64, i64* %16, align 8
  %43 = load %struct.ibv_rereg_mr*, %struct.ibv_rereg_mr** %20, align 8
  %44 = getelementptr inbounds %struct.ibv_rereg_mr, %struct.ibv_rereg_mr* %43, i32 0, i32 2
  store i64 %42, i64* %44, align 8
  %45 = load i32, i32* %17, align 4
  %46 = load %struct.ibv_rereg_mr*, %struct.ibv_rereg_mr** %20, align 8
  %47 = getelementptr inbounds %struct.ibv_rereg_mr, %struct.ibv_rereg_mr* %46, i32 0, i32 5
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* %14, align 4
  %49 = load i32, i32* @IBV_REREG_MR_CHANGE_PD, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %11
  %53 = load %struct.ibv_pd*, %struct.ibv_pd** %19, align 8
  %54 = getelementptr inbounds %struct.ibv_pd, %struct.ibv_pd* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  br label %57

56:                                               ; preds = %11
  br label %57

57:                                               ; preds = %56, %52
  %58 = phi i32 [ %55, %52 ], [ 0, %56 ]
  %59 = load %struct.ibv_rereg_mr*, %struct.ibv_rereg_mr** %20, align 8
  %60 = getelementptr inbounds %struct.ibv_rereg_mr, %struct.ibv_rereg_mr* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* %18, align 4
  %62 = load %struct.ibv_rereg_mr*, %struct.ibv_rereg_mr** %20, align 8
  %63 = getelementptr inbounds %struct.ibv_rereg_mr, %struct.ibv_rereg_mr* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 8
  %64 = load %struct.ibv_mr*, %struct.ibv_mr** %13, align 8
  %65 = getelementptr inbounds %struct.ibv_mr, %struct.ibv_mr* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ibv_rereg_mr*, %struct.ibv_rereg_mr** %20, align 8
  %70 = load i64, i64* %21, align 8
  %71 = call i64 @write(i32 %68, %struct.ibv_rereg_mr* %69, i64 %70)
  %72 = load i64, i64* %21, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %57
  %75 = load i32, i32* @errno, align 4
  store i32 %75, i32* %12, align 4
  br label %101

76:                                               ; preds = %57
  %77 = load %struct.ibv_rereg_mr_resp*, %struct.ibv_rereg_mr_resp** %22, align 8
  %78 = load i64, i64* %23, align 8
  %79 = call i32 @VALGRIND_MAKE_MEM_DEFINED(%struct.ibv_rereg_mr_resp* %77, i64 %78)
  %80 = load %struct.ibv_rereg_mr_resp*, %struct.ibv_rereg_mr_resp** %22, align 8
  %81 = getelementptr inbounds %struct.ibv_rereg_mr_resp, %struct.ibv_rereg_mr_resp* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.ibv_mr*, %struct.ibv_mr** %13, align 8
  %84 = getelementptr inbounds %struct.ibv_mr, %struct.ibv_mr* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 4
  %85 = load %struct.ibv_rereg_mr_resp*, %struct.ibv_rereg_mr_resp** %22, align 8
  %86 = getelementptr inbounds %struct.ibv_rereg_mr_resp, %struct.ibv_rereg_mr_resp* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.ibv_mr*, %struct.ibv_mr** %13, align 8
  %89 = getelementptr inbounds %struct.ibv_mr, %struct.ibv_mr* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 8
  %90 = load i32, i32* %14, align 4
  %91 = load i32, i32* @IBV_REREG_MR_CHANGE_PD, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %76
  %95 = load %struct.ibv_pd*, %struct.ibv_pd** %19, align 8
  %96 = getelementptr inbounds %struct.ibv_pd, %struct.ibv_pd* %95, i32 0, i32 0
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = load %struct.ibv_mr*, %struct.ibv_mr** %13, align 8
  %99 = getelementptr inbounds %struct.ibv_mr, %struct.ibv_mr* %98, i32 0, i32 0
  store %struct.TYPE_2__* %97, %struct.TYPE_2__** %99, align 8
  br label %100

100:                                              ; preds = %94, %76
  store i32 0, i32* %12, align 4
  br label %101

101:                                              ; preds = %100, %74
  %102 = load i32, i32* %12, align 4
  ret i32 %102
}

declare dso_local i32 @IBV_INIT_CMD_RESP(%struct.ibv_rereg_mr*, i64, i32, %struct.ibv_rereg_mr_resp*, i64) #1

declare dso_local i64 @write(i32, %struct.ibv_rereg_mr*, i64) #1

declare dso_local i32 @VALGRIND_MAKE_MEM_DEFINED(%struct.ibv_rereg_mr_resp*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

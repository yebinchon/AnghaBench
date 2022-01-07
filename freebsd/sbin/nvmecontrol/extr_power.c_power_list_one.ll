; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/nvmecontrol/extr_power.c_power_list_one.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/nvmecontrol/extr_power.c_power_list_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_power_state = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@NVME_PWR_ST_MPS_SHIFT = common dso_local global i32 0, align 4
@NVME_PWR_ST_MPS_MASK = common dso_local global i32 0, align 4
@NVME_PWR_ST_NOPS_SHIFT = common dso_local global i32 0, align 4
@NVME_PWR_ST_NOPS_MASK = common dso_local global i32 0, align 4
@NVME_PWR_ST_APW_SHIFT = common dso_local global i32 0, align 4
@NVME_PWR_ST_APW_MASK = common dso_local global i32 0, align 4
@NVME_PWR_ST_APS_SHIFT = common dso_local global i32 0, align 4
@NVME_PWR_ST_APS_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [79 x i8] c"%2d: %2d.%04dW%c %3d.%03dms %3d.%03dms %2d %2d %2d %2d %2d.%04dW %2d.%04dW %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.nvme_power_state*)* @power_list_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @power_list_one(i32 %0, %struct.nvme_power_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvme_power_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.nvme_power_state* %1, %struct.nvme_power_state** %4, align 8
  %12 = load %struct.nvme_power_state*, %struct.nvme_power_state** %4, align 8
  %13 = getelementptr inbounds %struct.nvme_power_state, %struct.nvme_power_state* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @NVME_PWR_ST_MPS_SHIFT, align 4
  %16 = ashr i32 %14, %15
  %17 = load i32, i32* @NVME_PWR_ST_MPS_MASK, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %8, align 4
  %19 = load %struct.nvme_power_state*, %struct.nvme_power_state** %4, align 8
  %20 = getelementptr inbounds %struct.nvme_power_state, %struct.nvme_power_state* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @NVME_PWR_ST_NOPS_SHIFT, align 4
  %23 = ashr i32 %21, %22
  %24 = load i32, i32* @NVME_PWR_ST_NOPS_MASK, align 4
  %25 = and i32 %23, %24
  store i32 %25, i32* %9, align 4
  %26 = load %struct.nvme_power_state*, %struct.nvme_power_state** %4, align 8
  %27 = getelementptr inbounds %struct.nvme_power_state, %struct.nvme_power_state* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @NVME_PWR_ST_APW_SHIFT, align 4
  %30 = ashr i32 %28, %29
  %31 = load i32, i32* @NVME_PWR_ST_APW_MASK, align 4
  %32 = and i32 %30, %31
  store i32 %32, i32* %11, align 4
  %33 = load %struct.nvme_power_state*, %struct.nvme_power_state** %4, align 8
  %34 = getelementptr inbounds %struct.nvme_power_state, %struct.nvme_power_state* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @NVME_PWR_ST_APS_SHIFT, align 4
  %37 = ashr i32 %35, %36
  %38 = load i32, i32* @NVME_PWR_ST_APS_MASK, align 4
  %39 = and i32 %37, %38
  store i32 %39, i32* %10, align 4
  %40 = load %struct.nvme_power_state*, %struct.nvme_power_state** %4, align 8
  %41 = getelementptr inbounds %struct.nvme_power_state, %struct.nvme_power_state* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %2
  %46 = load i32, i32* %5, align 4
  %47 = mul nsw i32 %46, 100
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %45, %2
  %49 = load %struct.nvme_power_state*, %struct.nvme_power_state** %4, align 8
  %50 = getelementptr inbounds %struct.nvme_power_state, %struct.nvme_power_state* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %7, align 4
  %52 = load %struct.nvme_power_state*, %struct.nvme_power_state** %4, align 8
  %53 = getelementptr inbounds %struct.nvme_power_state, %struct.nvme_power_state* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %59

56:                                               ; preds = %48
  %57 = load i32, i32* %7, align 4
  %58 = mul nsw i32 %57, 100
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %56, %48
  %60 = load %struct.nvme_power_state*, %struct.nvme_power_state** %4, align 8
  %61 = getelementptr inbounds %struct.nvme_power_state, %struct.nvme_power_state* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load i32, i32* %6, align 4
  %67 = mul nsw i32 %66, 100
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %65, %59
  %69 = load i32, i32* %3, align 4
  %70 = load i32, i32* %5, align 4
  %71 = sdiv i32 %70, 10000
  %72 = load i32, i32* %5, align 4
  %73 = srem i32 %72, 10000
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i32 42, i32 32
  %78 = trunc i32 %77 to i8
  %79 = load %struct.nvme_power_state*, %struct.nvme_power_state** %4, align 8
  %80 = getelementptr inbounds %struct.nvme_power_state, %struct.nvme_power_state* %79, i32 0, i32 6
  %81 = load i32, i32* %80, align 4
  %82 = sdiv i32 %81, 1000
  %83 = load %struct.nvme_power_state*, %struct.nvme_power_state** %4, align 8
  %84 = getelementptr inbounds %struct.nvme_power_state, %struct.nvme_power_state* %83, i32 0, i32 6
  %85 = load i32, i32* %84, align 4
  %86 = srem i32 %85, 1000
  %87 = load %struct.nvme_power_state*, %struct.nvme_power_state** %4, align 8
  %88 = getelementptr inbounds %struct.nvme_power_state, %struct.nvme_power_state* %87, i32 0, i32 7
  %89 = load i32, i32* %88, align 4
  %90 = sdiv i32 %89, 1000
  %91 = load %struct.nvme_power_state*, %struct.nvme_power_state** %4, align 8
  %92 = getelementptr inbounds %struct.nvme_power_state, %struct.nvme_power_state* %91, i32 0, i32 7
  %93 = load i32, i32* %92, align 4
  %94 = srem i32 %93, 1000
  %95 = load %struct.nvme_power_state*, %struct.nvme_power_state** %4, align 8
  %96 = getelementptr inbounds %struct.nvme_power_state, %struct.nvme_power_state* %95, i32 0, i32 8
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.nvme_power_state*, %struct.nvme_power_state** %4, align 8
  %99 = getelementptr inbounds %struct.nvme_power_state, %struct.nvme_power_state* %98, i32 0, i32 9
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.nvme_power_state*, %struct.nvme_power_state** %4, align 8
  %102 = getelementptr inbounds %struct.nvme_power_state, %struct.nvme_power_state* %101, i32 0, i32 10
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.nvme_power_state*, %struct.nvme_power_state** %4, align 8
  %105 = getelementptr inbounds %struct.nvme_power_state, %struct.nvme_power_state* %104, i32 0, i32 11
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %7, align 4
  %108 = sdiv i32 %107, 10000
  %109 = load i32, i32* %7, align 4
  %110 = srem i32 %109, 10000
  %111 = load i32, i32* %6, align 4
  %112 = sdiv i32 %111, 10000
  %113 = load i32, i32* %6, align 4
  %114 = srem i32 %113, 10000
  %115 = load i32, i32* %11, align 4
  %116 = call i32 @printf(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i32 %69, i32 %71, i32 %73, i8 signext %78, i32 %82, i32 %86, i32 %90, i32 %94, i32 %97, i32 %100, i32 %103, i32 %106, i32 %108, i32 %110, i32 %112, i32 %114, i32 %115)
  ret void
}

declare dso_local i32 @printf(i8*, i32, i32, i32, i8 signext, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

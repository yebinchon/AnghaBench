; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-nand.c_cvmx_nand_get_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-nand.c_cvmx_nand_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@cvmx_nand_state = common dso_local global %struct.TYPE_2__* null, align 8
@CVMX_NAND_STATE_16BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@CVMX_NAND_INVALID_PARAM = common dso_local global i32 0, align 4
@cvmx_nand_buffer = common dso_local global i64 0, align 8
@NAND_COMMAND_STATUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_nand_get_status(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cvmx_nand_state, align 8
  %7 = load i32, i32* %3, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i64 %8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @CVMX_NAND_STATE_16BIT, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %5, align 4
  %18 = call i32 (...) @CVMX_NAND_LOG_CALLED()
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @CVMX_NAND_LOG_PARAM(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %3, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* %3, align 4
  %25 = icmp sgt i32 %24, 7
  br i1 %25, label %26, label %29

26:                                               ; preds = %23, %1
  %27 = load i32, i32* @CVMX_NAND_INVALID_PARAM, align 4
  %28 = call i32 @CVMX_NAND_RETURN(i32 %27)
  br label %29

29:                                               ; preds = %26, %23
  %30 = load i64, i64* @cvmx_nand_buffer, align 8
  %31 = inttoptr i64 %30 to i32*
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  store i32 255, i32* %34, align 4
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @NAND_COMMAND_STATUS, align 4
  %37 = load i64, i64* @cvmx_nand_buffer, align 8
  %38 = call i32 @cvmx_ptr_to_phys(i64 %37)
  %39 = call i32 @__cvmx_nand_low_level_read(i32 %35, i32 %36, i32 0, i32 0, i32 0, i32 %38, i32 8)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %29
  %43 = load i64, i64* @cvmx_nand_buffer, align 8
  %44 = inttoptr i64 %43 to i32*
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %42, %29
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @CVMX_NAND_RETURN(i32 %50)
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @CVMX_NAND_LOG_CALLED(...) #1

declare dso_local i32 @CVMX_NAND_LOG_PARAM(i8*, i32) #1

declare dso_local i32 @CVMX_NAND_RETURN(i32) #1

declare dso_local i32 @__cvmx_nand_low_level_read(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @cvmx_ptr_to_phys(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

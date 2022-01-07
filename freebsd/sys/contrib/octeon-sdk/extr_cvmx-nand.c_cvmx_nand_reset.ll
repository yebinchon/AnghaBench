; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-nand.c_cvmx_nand_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-nand.c_cvmx_nand_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@CVMX_NAND_INVALID_PARAM = common dso_local global i32 0, align 4
@cvmx_nand_state = common dso_local global %struct.TYPE_2__* null, align 8
@NAND_COMMAND_RESET = common dso_local global i32 0, align 4
@CVMX_NAND_NO_MEMORY = common dso_local global i32 0, align 4
@CVMX_NAND_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_nand_reset(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = call i32 (...) @CVMX_NAND_LOG_CALLED()
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @CVMX_NAND_LOG_PARAM(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = load i32, i32* %3, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = icmp sgt i32 %10, 7
  br i1 %11, label %12, label %15

12:                                               ; preds = %9, %1
  %13 = load i32, i32* @CVMX_NAND_INVALID_PARAM, align 4
  %14 = call i32 @CVMX_NAND_RETURN(i32 %13)
  br label %15

15:                                               ; preds = %12, %9
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cvmx_nand_state, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %15
  %24 = load i32, i32* @CVMX_NAND_INVALID_PARAM, align 4
  %25 = call i32 @CVMX_NAND_RETURN(i32 %24)
  br label %26

26:                                               ; preds = %23, %15
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @NAND_COMMAND_RESET, align 4
  %29 = call i64 @__cvmx_nand_build_pre_cmd(i32 %27, i32 %28, i32 0, i32 0, i32 0)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @CVMX_NAND_NO_MEMORY, align 4
  %33 = call i32 @CVMX_NAND_RETURN(i32 %32)
  br label %34

34:                                               ; preds = %31, %26
  %35 = load i32, i32* %3, align 4
  %36 = call i64 @__wait_for_busy_done(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* @CVMX_NAND_NO_MEMORY, align 4
  %40 = call i32 @CVMX_NAND_RETURN(i32 %39)
  br label %41

41:                                               ; preds = %38, %34
  %42 = call i64 (...) @__cvmx_nand_build_post_cmd()
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i32, i32* @CVMX_NAND_NO_MEMORY, align 4
  %46 = call i32 @CVMX_NAND_RETURN(i32 %45)
  br label %47

47:                                               ; preds = %44, %41
  %48 = load i32, i32* @CVMX_NAND_SUCCESS, align 4
  %49 = call i32 @CVMX_NAND_RETURN(i32 %48)
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @CVMX_NAND_LOG_CALLED(...) #1

declare dso_local i32 @CVMX_NAND_LOG_PARAM(i8*, i32) #1

declare dso_local i32 @CVMX_NAND_RETURN(i32) #1

declare dso_local i64 @__cvmx_nand_build_pre_cmd(i32, i32, i32, i32, i32) #1

declare dso_local i64 @__wait_for_busy_done(i32) #1

declare dso_local i64 @__cvmx_nand_build_post_cmd(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-nand.c_cvmx_nand_read_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-nand.c_cvmx_nand_read_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"0x%llx\00", align 1
@CVMX_NAND_INVALID_PARAM = common dso_local global i32 0, align 4
@NAND_COMMAND_READ_ID = common dso_local global i32 0, align 4
@cvmx_nand_state = common dso_local global %struct.TYPE_2__* null, align 8
@CVMX_NAND_STATE_16BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_nand_read_id(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = call i32 (...) @CVMX_NAND_LOG_CALLED()
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @CVMX_NAND_LOG_PARAM(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @CVMX_NAND_LOG_PARAM(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @CVMX_NAND_LOG_PARAM(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @CVMX_NAND_LOG_PARAM(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* %6, align 4
  %24 = icmp sgt i32 %23, 7
  br i1 %24, label %25, label %28

25:                                               ; preds = %22, %4
  %26 = load i32, i32* @CVMX_NAND_INVALID_PARAM, align 4
  %27 = call i32 @CVMX_NAND_RETURN(i32 %26)
  br label %28

28:                                               ; preds = %25, %22
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* @CVMX_NAND_INVALID_PARAM, align 4
  %33 = call i32 @CVMX_NAND_RETURN(i32 %32)
  br label %34

34:                                               ; preds = %31, %28
  %35 = load i32, i32* %8, align 4
  %36 = and i32 %35, 7
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* @CVMX_NAND_INVALID_PARAM, align 4
  %40 = call i32 @CVMX_NAND_RETURN(i32 %39)
  br label %41

41:                                               ; preds = %38, %34
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* @CVMX_NAND_INVALID_PARAM, align 4
  %46 = call i32 @CVMX_NAND_RETURN(i32 %45)
  br label %47

47:                                               ; preds = %44, %41
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @NAND_COMMAND_READ_ID, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @__cvmx_nand_low_level_read(i32 %48, i32 %49, i32 1, i32 %50, i32 0, i32 %51, i32 %52)
  store i32 %53, i32* %10, align 4
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cvmx_nand_state, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @CVMX_NAND_STATE_16BIT, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %47
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @cvmx_phys_to_ptr(i32 %64)
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @__cvmx_nand_fixup_16bit_id_reads(i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %63, %47
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @CVMX_NAND_RETURN(i32 %69)
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i32 @CVMX_NAND_LOG_CALLED(...) #1

declare dso_local i32 @CVMX_NAND_LOG_PARAM(i8*, i32) #1

declare dso_local i32 @CVMX_NAND_RETURN(i32) #1

declare dso_local i32 @__cvmx_nand_low_level_read(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @__cvmx_nand_fixup_16bit_id_reads(i32, i32) #1

declare dso_local i32 @cvmx_phys_to_ptr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-nand.c_cvmx_nand_read_param_page.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-nand.c_cvmx_nand_read_param_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"0x%llx\00", align 1
@CVMX_NAND_INVALID_PARAM = common dso_local global i32 0, align 4
@NAND_COMMAND_READ_PARAM_PAGE = common dso_local global i32 0, align 4
@cvmx_nand_state = common dso_local global %struct.TYPE_2__* null, align 8
@CVMX_NAND_STATE_16BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_nand_read_param_page(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = call i32 (...) @CVMX_NAND_LOG_CALLED()
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @CVMX_NAND_LOG_PARAM(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @CVMX_NAND_LOG_PARAM(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @CVMX_NAND_LOG_PARAM(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* %5, align 4
  %20 = icmp sgt i32 %19, 7
  br i1 %20, label %21, label %24

21:                                               ; preds = %18, %3
  %22 = load i32, i32* @CVMX_NAND_INVALID_PARAM, align 4
  %23 = call i32 @CVMX_NAND_RETURN(i32 %22)
  br label %24

24:                                               ; preds = %21, %18
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* @CVMX_NAND_INVALID_PARAM, align 4
  %29 = call i32 @CVMX_NAND_RETURN(i32 %28)
  br label %30

30:                                               ; preds = %27, %24
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %31, 7
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* @CVMX_NAND_INVALID_PARAM, align 4
  %36 = call i32 @CVMX_NAND_RETURN(i32 %35)
  br label %37

37:                                               ; preds = %34, %30
  %38 = load i32, i32* %7, align 4
  %39 = and i32 %38, 7
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i32, i32* @CVMX_NAND_INVALID_PARAM, align 4
  %43 = call i32 @CVMX_NAND_RETURN(i32 %42)
  br label %44

44:                                               ; preds = %41, %37
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* @CVMX_NAND_INVALID_PARAM, align 4
  %49 = call i32 @CVMX_NAND_RETURN(i32 %48)
  br label %50

50:                                               ; preds = %47, %44
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @NAND_COMMAND_READ_PARAM_PAGE, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @__cvmx_nand_low_level_read(i32 %51, i32 %52, i32 1, i32 0, i32 0, i32 %53, i32 %54)
  store i32 %55, i32* %8, align 4
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cvmx_nand_state, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @CVMX_NAND_STATE_16BIT, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %50
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @cvmx_phys_to_ptr(i32 %66)
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @__cvmx_nand_fixup_16bit_id_reads(i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %65, %50
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @CVMX_NAND_RETURN(i32 %71)
  %73 = load i32, i32* %4, align 4
  ret i32 %73
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

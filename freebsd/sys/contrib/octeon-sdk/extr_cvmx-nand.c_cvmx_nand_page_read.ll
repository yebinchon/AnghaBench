; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-nand.c_cvmx_nand_page_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-nand.c_cvmx_nand_page_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"0x%llx\00", align 1
@CVMX_NAND_INVALID_PARAM = common dso_local global i32 0, align 4
@cvmx_nand_state = common dso_local global %struct.TYPE_2__* null, align 8
@CVMX_NAND_STATE_16BIT = common dso_local global i32 0, align 4
@NAND_COMMAND_READ = common dso_local global i32 0, align 4
@NAND_COMMAND_READ_FIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_nand_page_read(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cvmx_nand_state, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %28
  %37 = load i32, i32* @CVMX_NAND_INVALID_PARAM, align 4
  %38 = call i32 @CVMX_NAND_RETURN(i32 %37)
  br label %39

39:                                               ; preds = %36, %28
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* @CVMX_NAND_INVALID_PARAM, align 4
  %44 = call i32 @CVMX_NAND_RETURN(i32 %43)
  br label %45

45:                                               ; preds = %42, %39
  %46 = load i32, i32* %8, align 4
  %47 = and i32 %46, 7
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i32, i32* @CVMX_NAND_INVALID_PARAM, align 4
  %51 = call i32 @CVMX_NAND_RETURN(i32 %50)
  br label %52

52:                                               ; preds = %49, %45
  %53 = load i32, i32* %9, align 4
  %54 = and i32 %53, 7
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32, i32* @CVMX_NAND_INVALID_PARAM, align 4
  %58 = call i32 @CVMX_NAND_RETURN(i32 %57)
  br label %59

59:                                               ; preds = %56, %52
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* @CVMX_NAND_INVALID_PARAM, align 4
  %64 = call i32 @CVMX_NAND_RETURN(i32 %63)
  br label %65

65:                                               ; preds = %62, %59
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cvmx_nand_state, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @CVMX_NAND_STATE_16BIT, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %97

75:                                               ; preds = %65
  %76 = load i32, i32* %7, align 4
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cvmx_nand_state, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = sub nsw i32 %82, 1
  %84 = xor i32 %83, -1
  %85 = and i32 %76, %84
  %86 = load i32, i32* %7, align 4
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cvmx_nand_state, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = sub nsw i32 %92, 1
  %94 = and i32 %86, %93
  %95 = ashr i32 %94, 1
  %96 = or i32 %85, %95
  store i32 %96, i32* %7, align 4
  br label %97

97:                                               ; preds = %75, %65
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* @NAND_COMMAND_READ, align 4
  %100 = load i32, i32* %6, align 4
  %101 = call i32 @__cvmx_nand_get_address_cycles(i32 %100)
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* @NAND_COMMAND_READ_FIN, align 4
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* %9, align 4
  %106 = call i32 @__cvmx_nand_low_level_read(i32 %98, i32 %99, i32 %101, i32 %102, i32 %103, i32 %104, i32 %105)
  store i32 %106, i32* %10, align 4
  %107 = load i32, i32* %10, align 4
  %108 = call i32 @CVMX_NAND_RETURN(i32 %107)
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local i32 @CVMX_NAND_LOG_CALLED(...) #1

declare dso_local i32 @CVMX_NAND_LOG_PARAM(i8*, i32) #1

declare dso_local i32 @CVMX_NAND_RETURN(i32) #1

declare dso_local i32 @__cvmx_nand_low_level_read(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @__cvmx_nand_get_address_cycles(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-isoclns.c_isis_print_metric_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-isoclns.c_isis_print_metric_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isis_metric_block = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c", Default Metric: %d, %s\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"External\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Internal\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"\0A\09\09  Delay Metric: %d, %s\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"\0A\09\09  Expense Metric: %d, %s\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"\0A\09\09  Error Metric: %d, %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.isis_metric_block*)* @isis_print_metric_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isis_print_metric_block(i32* %0, %struct.isis_metric_block* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.isis_metric_block*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.isis_metric_block* %1, %struct.isis_metric_block** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = load %struct.isis_metric_block*, %struct.isis_metric_block** %4, align 8
  %7 = getelementptr inbounds %struct.isis_metric_block, %struct.isis_metric_block* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @ISIS_LSP_TLV_METRIC_VALUE(i32 %8)
  %10 = load %struct.isis_metric_block*, %struct.isis_metric_block** %4, align 8
  %11 = getelementptr inbounds %struct.isis_metric_block, %struct.isis_metric_block* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @ISIS_LSP_TLV_METRIC_IE(i32 %12)
  %14 = icmp ne i64 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %17 = bitcast i8* %16 to i32*
  %18 = call i32 @ND_PRINT(i32* %17)
  %19 = load %struct.isis_metric_block*, %struct.isis_metric_block** %4, align 8
  %20 = getelementptr inbounds %struct.isis_metric_block, %struct.isis_metric_block* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ISIS_LSP_TLV_METRIC_SUPPORTED(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %39, label %24

24:                                               ; preds = %2
  %25 = load i32*, i32** %3, align 8
  %26 = load %struct.isis_metric_block*, %struct.isis_metric_block** %4, align 8
  %27 = getelementptr inbounds %struct.isis_metric_block, %struct.isis_metric_block* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ISIS_LSP_TLV_METRIC_VALUE(i32 %28)
  %30 = load %struct.isis_metric_block*, %struct.isis_metric_block** %4, align 8
  %31 = getelementptr inbounds %struct.isis_metric_block, %struct.isis_metric_block* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @ISIS_LSP_TLV_METRIC_IE(i32 %32)
  %34 = icmp ne i64 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %37 = bitcast i8* %36 to i32*
  %38 = call i32 @ND_PRINT(i32* %37)
  br label %39

39:                                               ; preds = %24, %2
  %40 = load %struct.isis_metric_block*, %struct.isis_metric_block** %4, align 8
  %41 = getelementptr inbounds %struct.isis_metric_block, %struct.isis_metric_block* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ISIS_LSP_TLV_METRIC_SUPPORTED(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %60, label %45

45:                                               ; preds = %39
  %46 = load i32*, i32** %3, align 8
  %47 = load %struct.isis_metric_block*, %struct.isis_metric_block** %4, align 8
  %48 = getelementptr inbounds %struct.isis_metric_block, %struct.isis_metric_block* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ISIS_LSP_TLV_METRIC_VALUE(i32 %49)
  %51 = load %struct.isis_metric_block*, %struct.isis_metric_block** %4, align 8
  %52 = getelementptr inbounds %struct.isis_metric_block, %struct.isis_metric_block* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @ISIS_LSP_TLV_METRIC_IE(i32 %53)
  %55 = icmp ne i64 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %58 = bitcast i8* %57 to i32*
  %59 = call i32 @ND_PRINT(i32* %58)
  br label %60

60:                                               ; preds = %45, %39
  %61 = load %struct.isis_metric_block*, %struct.isis_metric_block** %4, align 8
  %62 = getelementptr inbounds %struct.isis_metric_block, %struct.isis_metric_block* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @ISIS_LSP_TLV_METRIC_SUPPORTED(i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %81, label %66

66:                                               ; preds = %60
  %67 = load i32*, i32** %3, align 8
  %68 = load %struct.isis_metric_block*, %struct.isis_metric_block** %4, align 8
  %69 = getelementptr inbounds %struct.isis_metric_block, %struct.isis_metric_block* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @ISIS_LSP_TLV_METRIC_VALUE(i32 %70)
  %72 = load %struct.isis_metric_block*, %struct.isis_metric_block** %4, align 8
  %73 = getelementptr inbounds %struct.isis_metric_block, %struct.isis_metric_block* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @ISIS_LSP_TLV_METRIC_IE(i32 %74)
  %76 = icmp ne i64 %75, 0
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %79 = bitcast i8* %78 to i32*
  %80 = call i32 @ND_PRINT(i32* %79)
  br label %81

81:                                               ; preds = %66, %60
  ret i32 1
}

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @ISIS_LSP_TLV_METRIC_VALUE(i32) #1

declare dso_local i64 @ISIS_LSP_TLV_METRIC_IE(i32) #1

declare dso_local i32 @ISIS_LSP_TLV_METRIC_SUPPORTED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

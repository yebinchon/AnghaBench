; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl.c_pfctl_show_timeouts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl.c_pfctl_show_timeouts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i64 }
%struct.pfioc_tm = type { i64, i32 }

@PF_OPT_SHOWALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"TIMEOUTS:\00", align 1
@pf_timeouts = common dso_local global %struct.TYPE_2__* null, align 8
@DIOCGETTIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"DIOCGETTIMEOUT\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"%-20s %10d\00", align 1
@PFTM_ADAPTIVE_START = common dso_local global i64 0, align 8
@PFTM_ADAPTIVE_END = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c" states\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pfctl_show_timeouts(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.pfioc_tm, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @PF_OPT_SHOWALL, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 @pfctl_print_title(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %2
  %14 = call i32 @memset(%struct.pfioc_tm* %5, i32 0, i32 16)
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %70, %13
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pf_timeouts, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %73

23:                                               ; preds = %15
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pf_timeouts, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.pfioc_tm, %struct.pfioc_tm* %5, i32 0, i32 0
  store i64 %29, i64* %30, align 8
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @DIOCGETTIMEOUT, align 4
  %33 = call i64 @ioctl(i32 %31, i32 %32, %struct.pfioc_tm* %5)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %23
  %36 = call i32 @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %23
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pf_timeouts, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = getelementptr inbounds %struct.pfioc_tm, %struct.pfioc_tm* %5, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %43, i32 %45)
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pf_timeouts, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @PFTM_ADAPTIVE_START, align 8
  %54 = icmp sge i64 %52, %53
  br i1 %54, label %55, label %66

55:                                               ; preds = %37
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pf_timeouts, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @PFTM_ADAPTIVE_END, align 8
  %63 = icmp sle i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %55
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %68

66:                                               ; preds = %55, %37
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %64
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %6, align 4
  br label %15

73:                                               ; preds = %15
  ret i32 0
}

declare dso_local i32 @pfctl_print_title(i8*) #1

declare dso_local i32 @memset(%struct.pfioc_tm*, i32, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.pfioc_tm*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

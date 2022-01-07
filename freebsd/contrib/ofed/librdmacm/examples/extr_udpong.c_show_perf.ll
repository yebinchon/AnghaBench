; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_udpong.c_show_perf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_udpong.c_show_perf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }

@end = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@start = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@echo = common dso_local global i64 0, align 8
@transfer_count = common dso_local global i32 0, align 4
@g_msg = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@transfer_size = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"%-10s\00", align 1
@test_name = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"%-8s\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"%8.2fs%10.2f%11.2f\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @show_perf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_perf() #0 {
  %1 = alloca [32 x i8], align 16
  %2 = alloca float, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @end, i32 0, i32 0), align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @start, i32 0, i32 0), align 4
  %7 = sub nsw i32 %5, %6
  %8 = mul nsw i32 %7, 1000000
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @end, i32 0, i32 1), align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @start, i32 0, i32 1), align 4
  %11 = sub nsw i32 %9, %10
  %12 = add nsw i32 %8, %11
  %13 = sitofp i32 %12 to float
  store float %13, float* %2, align 4
  %14 = load i64, i64* @echo, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %0
  %17 = load i32, i32* @transfer_count, align 4
  %18 = mul nsw i32 %17, 2
  br label %22

19:                                               ; preds = %0
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @g_msg, i32 0, i32 0), align 4
  %21 = call i32 @be32toh(i32 %20)
  br label %22

22:                                               ; preds = %19, %16
  %23 = phi i32 [ %18, %16 ], [ %21, %19 ]
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = load i64, i64* @transfer_size, align 8
  %27 = mul nsw i64 %25, %26
  store i64 %27, i64* %3, align 8
  %28 = load i8*, i8** @test_name, align 8
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %28)
  %30 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 0
  %31 = load i64, i64* @transfer_size, align 8
  %32 = call i32 @size_str(i8* %30, i32 32, i64 %31)
  %33 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 0
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  %35 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 0
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @cnt_str(i8* %35, i32 32, i32 %36)
  %38 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 0
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %38)
  %40 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 0
  %41 = load i64, i64* %3, align 8
  %42 = call i32 @size_str(i8* %40, i32 32, i64 %41)
  %43 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 0
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %43)
  %45 = load float, float* %2, align 4
  %46 = fpext float %45 to double
  %47 = fdiv double %46, 1.000000e+06
  %48 = load i64, i64* %3, align 8
  %49 = mul nsw i64 %48, 8
  %50 = sitofp i64 %49 to double
  %51 = load float, float* %2, align 4
  %52 = fpext float %51 to double
  %53 = fmul double 1.000000e+03, %52
  %54 = fdiv double %50, %53
  %55 = load float, float* %2, align 4
  %56 = load i32, i32* %4, align 4
  %57 = sitofp i32 %56 to float
  %58 = fdiv float %55, %57
  %59 = fpext float %58 to double
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), double %47, double %54, double %59)
  ret void
}

declare dso_local i32 @be32toh(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @size_str(i8*, i32, i64) #1

declare dso_local i32 @cnt_str(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

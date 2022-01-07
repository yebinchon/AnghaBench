; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rstream.c_show_perf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rstream.c_show_perf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@end = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@start = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@iterations = common dso_local global float 0.000000e+00, align 4
@transfer_count = common dso_local global i64 0, align 8
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
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @end, i32 0, i32 0), align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @start, i32 0, i32 0), align 4
  %6 = sub nsw i32 %4, %5
  %7 = mul nsw i32 %6, 1000000
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @end, i32 0, i32 1), align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @start, i32 0, i32 1), align 4
  %10 = sub nsw i32 %8, %9
  %11 = add nsw i32 %7, %10
  %12 = sitofp i32 %11 to float
  store float %12, float* %2, align 4
  %13 = load float, float* @iterations, align 4
  %14 = fptosi float %13 to i64
  %15 = load i64, i64* @transfer_count, align 8
  %16 = mul nsw i64 %14, %15
  %17 = load i64, i64* @transfer_size, align 8
  %18 = mul nsw i64 %16, %17
  %19 = mul nsw i64 %18, 2
  store i64 %19, i64* %3, align 8
  %20 = load i8*, i8** @test_name, align 8
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %20)
  %22 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 0
  %23 = load i64, i64* @transfer_size, align 8
  %24 = call i32 @size_str(i8* %22, i32 32, i64 %23)
  %25 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 0
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %25)
  %27 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 0
  %28 = load i64, i64* @transfer_count, align 8
  %29 = sitofp i64 %28 to float
  %30 = call i32 @cnt_str(i8* %27, i32 32, float %29)
  %31 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 0
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  %33 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 0
  %34 = load float, float* @iterations, align 4
  %35 = call i32 @cnt_str(i8* %33, i32 32, float %34)
  %36 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 0
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %36)
  %38 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 0
  %39 = load i64, i64* %3, align 8
  %40 = call i32 @size_str(i8* %38, i32 32, i64 %39)
  %41 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 0
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %41)
  %43 = load float, float* %2, align 4
  %44 = fpext float %43 to double
  %45 = fdiv double %44, 1.000000e+06
  %46 = load i64, i64* %3, align 8
  %47 = mul nsw i64 %46, 8
  %48 = sitofp i64 %47 to double
  %49 = load float, float* %2, align 4
  %50 = fpext float %49 to double
  %51 = fmul double 1.000000e+03, %50
  %52 = fdiv double %48, %51
  %53 = load float, float* %2, align 4
  %54 = load float, float* @iterations, align 4
  %55 = fdiv float %53, %54
  %56 = load i64, i64* @transfer_count, align 8
  %57 = mul nsw i64 %56, 2
  %58 = sitofp i64 %57 to float
  %59 = fdiv float %55, %58
  %60 = fpext float %59 to double
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), double %45, double %52, double %60)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @size_str(i8*, i32, i64) #1

declare dso_local i32 @cnt_str(i8*, i32, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-cpu.c_cpu_invalid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-cpu.c_cpu_invalid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptunit_result = type { i32 }
%struct.pt_cpu = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"e/44/2\00", align 1
@pte_invalid = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"6/e/2\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"6/44/e\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"65536/44/2\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"6/256/2\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"6/44/256\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"-1/44/2\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"6/-1/2\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"6/44/-1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @cpu_invalid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpu_invalid() #0 {
  %1 = alloca %struct.ptunit_result, align 4
  %2 = alloca %struct.pt_cpu, align 4
  %3 = alloca i32, align 4
  %4 = call i32 @pt_cpu_parse(%struct.pt_cpu* %2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @pte_invalid, align 4
  %7 = sub nsw i32 0, %6
  %8 = call i32 @ptu_int_eq(i32 %5, i32 %7)
  %9 = call i32 @pt_cpu_parse(%struct.pt_cpu* %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @pte_invalid, align 4
  %12 = sub nsw i32 0, %11
  %13 = call i32 @ptu_int_eq(i32 %10, i32 %12)
  %14 = call i32 @pt_cpu_parse(%struct.pt_cpu* %2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @pte_invalid, align 4
  %17 = sub nsw i32 0, %16
  %18 = call i32 @ptu_int_eq(i32 %15, i32 %17)
  %19 = call i32 @pt_cpu_parse(%struct.pt_cpu* %2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @pte_invalid, align 4
  %22 = sub nsw i32 0, %21
  %23 = call i32 @ptu_int_eq(i32 %20, i32 %22)
  %24 = call i32 @pt_cpu_parse(%struct.pt_cpu* %2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @pte_invalid, align 4
  %27 = sub nsw i32 0, %26
  %28 = call i32 @ptu_int_eq(i32 %25, i32 %27)
  %29 = call i32 @pt_cpu_parse(%struct.pt_cpu* %2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @pte_invalid, align 4
  %32 = sub nsw i32 0, %31
  %33 = call i32 @ptu_int_eq(i32 %30, i32 %32)
  %34 = call i32 @pt_cpu_parse(%struct.pt_cpu* %2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @pte_invalid, align 4
  %37 = sub nsw i32 0, %36
  %38 = call i32 @ptu_int_eq(i32 %35, i32 %37)
  %39 = call i32 @pt_cpu_parse(%struct.pt_cpu* %2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @pte_invalid, align 4
  %42 = sub nsw i32 0, %41
  %43 = call i32 @ptu_int_eq(i32 %40, i32 %42)
  %44 = call i32 @pt_cpu_parse(%struct.pt_cpu* %2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  store i32 %44, i32* %3, align 4
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @pte_invalid, align 4
  %47 = sub nsw i32 0, %46
  %48 = call i32 @ptu_int_eq(i32 %45, i32 %47)
  %49 = call i32 (...) @ptu_passed()
  %50 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %1, i32 0, i32 0
  store i32 %49, i32* %50, align 4
  %51 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %1, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  ret i32 %52
}

declare dso_local i32 @pt_cpu_parse(%struct.pt_cpu*, i8*) #1

declare dso_local i32 @ptu_int_eq(i32, i32) #1

declare dso_local i32 @ptu_passed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

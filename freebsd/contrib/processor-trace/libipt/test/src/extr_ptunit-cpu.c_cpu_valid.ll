; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-cpu.c_cpu_valid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-cpu.c_cpu_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptunit_result = type { i32 }
%struct.pt_cpu = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"6/44/2\00", align 1
@pcv_intel = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"0xf/0x2c/0xf\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"022/054/017\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"6/44\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @cpu_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpu_valid() #0 {
  %1 = alloca %struct.ptunit_result, align 4
  %2 = alloca %struct.pt_cpu, align 4
  %3 = alloca i32, align 4
  %4 = call i32 @pt_cpu_parse(%struct.pt_cpu* %2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @ptu_int_eq(i32 %5, i32 0)
  %7 = getelementptr inbounds %struct.pt_cpu, %struct.pt_cpu* %2, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @pcv_intel, align 4
  %10 = call i32 @ptu_int_eq(i32 %8, i32 %9)
  %11 = getelementptr inbounds %struct.pt_cpu, %struct.pt_cpu* %2, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @ptu_uint_eq(i32 %12, i32 6)
  %14 = getelementptr inbounds %struct.pt_cpu, %struct.pt_cpu* %2, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ptu_uint_eq(i32 %15, i32 44)
  %17 = getelementptr inbounds %struct.pt_cpu, %struct.pt_cpu* %2, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ptu_uint_eq(i32 %18, i32 2)
  %20 = call i32 @pt_cpu_parse(%struct.pt_cpu* %2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @ptu_int_eq(i32 %21, i32 0)
  %23 = getelementptr inbounds %struct.pt_cpu, %struct.pt_cpu* %2, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @pcv_intel, align 4
  %26 = call i32 @ptu_int_eq(i32 %24, i32 %25)
  %27 = getelementptr inbounds %struct.pt_cpu, %struct.pt_cpu* %2, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ptu_uint_eq(i32 %28, i32 15)
  %30 = getelementptr inbounds %struct.pt_cpu, %struct.pt_cpu* %2, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ptu_uint_eq(i32 %31, i32 44)
  %33 = getelementptr inbounds %struct.pt_cpu, %struct.pt_cpu* %2, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ptu_uint_eq(i32 %34, i32 15)
  %36 = call i32 @pt_cpu_parse(%struct.pt_cpu* %2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @ptu_int_eq(i32 %37, i32 0)
  %39 = getelementptr inbounds %struct.pt_cpu, %struct.pt_cpu* %2, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @pcv_intel, align 4
  %42 = call i32 @ptu_int_eq(i32 %40, i32 %41)
  %43 = getelementptr inbounds %struct.pt_cpu, %struct.pt_cpu* %2, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @ptu_uint_eq(i32 %44, i32 18)
  %46 = getelementptr inbounds %struct.pt_cpu, %struct.pt_cpu* %2, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ptu_uint_eq(i32 %47, i32 44)
  %49 = getelementptr inbounds %struct.pt_cpu, %struct.pt_cpu* %2, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ptu_uint_eq(i32 %50, i32 15)
  %52 = call i32 @pt_cpu_parse(%struct.pt_cpu* %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i32 %52, i32* %3, align 4
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @ptu_int_eq(i32 %53, i32 0)
  %55 = getelementptr inbounds %struct.pt_cpu, %struct.pt_cpu* %2, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @pcv_intel, align 4
  %58 = call i32 @ptu_int_eq(i32 %56, i32 %57)
  %59 = getelementptr inbounds %struct.pt_cpu, %struct.pt_cpu* %2, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @ptu_uint_eq(i32 %60, i32 6)
  %62 = getelementptr inbounds %struct.pt_cpu, %struct.pt_cpu* %2, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @ptu_uint_eq(i32 %63, i32 44)
  %65 = getelementptr inbounds %struct.pt_cpu, %struct.pt_cpu* %2, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @ptu_uint_eq(i32 %66, i32 0)
  %68 = call i32 (...) @ptu_passed()
  %69 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %1, i32 0, i32 0
  store i32 %68, i32* %69, align 4
  %70 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %1, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  ret i32 %71
}

declare dso_local i32 @pt_cpu_parse(%struct.pt_cpu*, i8*) #1

declare dso_local i32 @ptu_int_eq(i32, i32) #1

declare dso_local i32 @ptu_uint_eq(i32, i32) #1

declare dso_local i32 @ptu_passed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

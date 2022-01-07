; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libm/extr_t_ldexp.c_run_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libm/extr_t_ldexp.c_run_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ldexp_test = type { double, i32*, i32, i32 }

@SKIP = common dso_local global i32 0, align 4
@FORMAT = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [33 x i8] c"Entry %zu:\0A\09Exp: \22%s\22\0A\09Act: \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ldexp_test*)* @run_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_test(%struct.ldexp_test* %0) #0 {
  %2 = alloca %struct.ldexp_test*, align 8
  %3 = alloca [64 x i8], align 16
  %4 = alloca i64, align 8
  %5 = alloca double, align 8
  store %struct.ldexp_test* %0, %struct.ldexp_test** %2, align 8
  store i64 0, i64* %4, align 8
  br label %6

6:                                                ; preds = %45, %1
  %7 = load %struct.ldexp_test*, %struct.ldexp_test** %2, align 8
  %8 = getelementptr inbounds %struct.ldexp_test, %struct.ldexp_test* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %50

11:                                               ; preds = %6
  %12 = load %struct.ldexp_test*, %struct.ldexp_test** %2, align 8
  %13 = getelementptr inbounds %struct.ldexp_test, %struct.ldexp_test* %12, i32 0, i32 0
  %14 = load double, double* %13, align 8
  %15 = load %struct.ldexp_test*, %struct.ldexp_test** %2, align 8
  %16 = getelementptr inbounds %struct.ldexp_test, %struct.ldexp_test* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call double @ldexp(double %14, i32 %17) #3
  store double %18, double* %5, align 8
  %19 = load %struct.ldexp_test*, %struct.ldexp_test** %2, align 8
  %20 = getelementptr inbounds %struct.ldexp_test, %struct.ldexp_test* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @SKIP, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %11
  %25 = load double, double* %5, align 8
  %26 = load %struct.ldexp_test*, %struct.ldexp_test** %2, align 8
  %27 = getelementptr inbounds %struct.ldexp_test, %struct.ldexp_test* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call double @ldexp(double %25, i32 %28) #3
  store double %29, double* %5, align 8
  br label %30

30:                                               ; preds = %24, %11
  %31 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %32 = load i8*, i8** @FORMAT, align 8
  %33 = load double, double* %5, align 8
  %34 = call i32 @snprintf(i8* %31, i32 64, i8* %32, double %33)
  %35 = load %struct.ldexp_test*, %struct.ldexp_test** %2, align 8
  %36 = getelementptr inbounds %struct.ldexp_test, %struct.ldexp_test* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %39 = load i64, i64* %4, align 8
  %40 = load %struct.ldexp_test*, %struct.ldexp_test** %2, align 8
  %41 = getelementptr inbounds %struct.ldexp_test, %struct.ldexp_test* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %44 = call i32 @ATF_CHECK_STREQ_MSG(i32* %37, i8* %38, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %39, i32* %42, i8* %43)
  br label %45

45:                                               ; preds = %30
  %46 = load %struct.ldexp_test*, %struct.ldexp_test** %2, align 8
  %47 = getelementptr inbounds %struct.ldexp_test, %struct.ldexp_test* %46, i32 1
  store %struct.ldexp_test* %47, %struct.ldexp_test** %2, align 8
  %48 = load i64, i64* %4, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %4, align 8
  br label %6

50:                                               ; preds = %6
  ret void
}

; Function Attrs: nounwind
declare dso_local double @ldexp(double, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, double) #2

declare dso_local i32 @ATF_CHECK_STREQ_MSG(i32*, i8*, i8*, i64, i32*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-retstack.c_overflow.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-retstack.c_overflow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptunit_result = type { i32 }
%struct.pt_retstack = type { i32 }

@pt_retstack_size = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @overflow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @overflow() #0 {
  %1 = alloca %struct.ptunit_result, align 4
  %2 = alloca %struct.pt_retstack, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = call i32 @pt_retstack_init(%struct.pt_retstack* %2)
  store i64 0, i64* %4, align 8
  br label %7

7:                                                ; preds = %16, %0
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @pt_retstack_size, align 8
  %10 = icmp sle i64 %8, %9
  br i1 %10, label %11, label %19

11:                                               ; preds = %7
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @pt_retstack_push(%struct.pt_retstack* %2, i64 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @ptu_int_eq(i32 %14, i32 0)
  br label %16

16:                                               ; preds = %11
  %17 = load i64, i64* %4, align 8
  %18 = add nsw i64 %17, 1
  store i64 %18, i64* %4, align 8
  br label %7

19:                                               ; preds = %7
  %20 = call i32 @pt_retstack_is_empty(%struct.pt_retstack* %2)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @ptu_int_eq(i32 %21, i32 0)
  %23 = load i64, i64* @pt_retstack_size, align 8
  store i64 %23, i64* %4, align 8
  br label %24

24:                                               ; preds = %34, %19
  %25 = load i64, i64* %4, align 8
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %24
  %28 = call i32 @pt_retstack_pop(%struct.pt_retstack* %2, i64* %3)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @ptu_int_eq(i32 %29, i32 0)
  %31 = load i64, i64* %3, align 8
  %32 = load i64, i64* %4, align 8
  %33 = call i32 @ptu_uint_eq(i64 %31, i64 %32)
  br label %34

34:                                               ; preds = %27
  %35 = load i64, i64* %4, align 8
  %36 = add nsw i64 %35, -1
  store i64 %36, i64* %4, align 8
  br label %24

37:                                               ; preds = %24
  %38 = call i32 @pt_retstack_is_empty(%struct.pt_retstack* %2)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @ptu_int_ne(i32 %39, i32 0)
  %41 = call i32 (...) @ptu_passed()
  %42 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %1, i32 0, i32 0
  store i32 %41, i32* %42, align 4
  %43 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %1, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  ret i32 %44
}

declare dso_local i32 @pt_retstack_init(%struct.pt_retstack*) #1

declare dso_local i32 @pt_retstack_push(%struct.pt_retstack*, i64) #1

declare dso_local i32 @ptu_int_eq(i32, i32) #1

declare dso_local i32 @pt_retstack_is_empty(%struct.pt_retstack*) #1

declare dso_local i32 @pt_retstack_pop(%struct.pt_retstack*, i64*) #1

declare dso_local i32 @ptu_uint_eq(i64, i64) #1

declare dso_local i32 @ptu_int_ne(i32, i32) #1

declare dso_local i32 @ptu_passed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

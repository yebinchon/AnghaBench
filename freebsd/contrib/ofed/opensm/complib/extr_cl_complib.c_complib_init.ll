; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/complib/extr_cl_complib.c_complib_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/complib/extr_cl_complib.c_complib_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CL_SUCCESS = common dso_local global i64 0, align 8
@cl_atomic_spinlock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"__init: failed to create complib (%s)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @complib_init() #0 {
  %1 = alloca i64, align 8
  %2 = load i64, i64* @CL_SUCCESS, align 8
  store i64 %2, i64* %1, align 8
  %3 = call i64 @cl_spinlock_init(i32* @cl_atomic_spinlock)
  store i64 %3, i64* %1, align 8
  %4 = load i64, i64* %1, align 8
  %5 = load i64, i64* @CL_SUCCESS, align 8
  %6 = icmp ne i64 %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  br label %15

8:                                                ; preds = %0
  %9 = call i64 (...) @__cl_timer_prov_create()
  store i64 %9, i64* %1, align 8
  %10 = load i64, i64* %1, align 8
  %11 = load i64, i64* @CL_SUCCESS, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  br label %15

14:                                               ; preds = %8
  ret void

15:                                               ; preds = %13, %7
  %16 = load i64, i64* %1, align 8
  %17 = call i32 @CL_STATUS_MSG(i64 %16)
  %18 = call i32 @cl_msg_out(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = call i32 @exit(i32 1) #3
  unreachable
}

declare dso_local i64 @cl_spinlock_init(i32*) #1

declare dso_local i64 @__cl_timer_prov_create(...) #1

declare dso_local i32 @cl_msg_out(i8*, i32) #1

declare dso_local i32 @CL_STATUS_MSG(i64) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

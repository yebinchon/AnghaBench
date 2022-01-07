; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/modules/extr_t_modctl.c_check_permission.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/modules/extr_t_modctl.c_check_permission.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MODCTL_EXISTS = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOSYS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"Kernel does not have 'options MODULAR'.\00", align 1
@EPERM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"Module loading administratively forbidden\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"unexpected error %d from modctl(MODCTL_EXISTS, 0)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @check_permission to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_permission() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @MODCTL_EXISTS, align 4
  %3 = call i32 @modctl(i32 %2, i32 0)
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %24

7:                                                ; preds = %0
  %8 = load i64, i64* @errno, align 8
  %9 = load i64, i64* @ENOSYS, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = call i32 @atf_tc_skip(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %20

13:                                               ; preds = %7
  %14 = load i64, i64* @errno, align 8
  %15 = load i64, i64* @EPERM, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = call i32 @atf_tc_skip(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %13
  br label %20

20:                                               ; preds = %19, %11
  %21 = load i64, i64* @errno, align 8
  %22 = load i64, i64* @errno, align 8
  %23 = call i32 @ATF_REQUIRE_EQ_MSG(i64 %21, i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i64 %22)
  br label %24

24:                                               ; preds = %20, %6
  ret void
}

declare dso_local i32 @modctl(i32, i32) #1

declare dso_local i32 @atf_tc_skip(i8*) #1

declare dso_local i32 @ATF_REQUIRE_EQ_MSG(i64, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

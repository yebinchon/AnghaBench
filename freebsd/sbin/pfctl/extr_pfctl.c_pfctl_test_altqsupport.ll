; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl.c_pfctl_test_altqsupport.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl.c_pfctl_test_altqsupport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfioc_altq = type { i32 }

@PFIOC_ALTQ_VERSION = common dso_local global i32 0, align 4
@DIOCGETALTQS = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i64 0, align 8
@PF_OPT_VERBOSE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"No ALTQ support in kernel\0AALTQ related functions disabled\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"DIOCGETALTQS\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pfctl_test_altqsupport(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.pfioc_altq, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @PFIOC_ALTQ_VERSION, align 4
  %8 = getelementptr inbounds %struct.pfioc_altq, %struct.pfioc_altq* %6, i32 0, i32 0
  store i32 %7, i32* %8, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @DIOCGETALTQS, align 4
  %11 = call i64 @ioctl(i32 %9, i32 %10, %struct.pfioc_altq* %6)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %2
  %14 = load i64, i64* @errno, align 8
  %15 = load i64, i64* @ENODEV, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %13
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @PF_OPT_VERBOSE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* @stderr, align 4
  %24 = call i32 @fprintf(i32 %23, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %22, %17
  store i32 0, i32* %3, align 4
  br label %30

26:                                               ; preds = %13
  %27 = call i32 @err(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26
  br label %29

29:                                               ; preds = %28, %2
  store i32 1, i32* %3, align 4
  br label %30

30:                                               ; preds = %29, %25
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i64 @ioctl(i32, i32, %struct.pfioc_altq*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

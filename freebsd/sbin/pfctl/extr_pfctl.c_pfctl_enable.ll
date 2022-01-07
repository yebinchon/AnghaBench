; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl.c_pfctl_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl.c_pfctl_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DIOCSTART = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"pf already enabled\00", align 1
@ESRCH = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"pfil registeration failed\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"DIOCSTART\00", align 1
@PF_OPT_QUIET = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"pf enabled\0A\00", align 1
@altqsupport = common dso_local global i64 0, align 8
@DIOCSTARTALTQ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"DIOCSTARTALTQ\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pfctl_enable(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @DIOCSTART, align 4
  %7 = call i64 @ioctl(i32 %5, i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %25

9:                                                ; preds = %2
  %10 = load i64, i64* @errno, align 8
  %11 = load i64, i64* @EEXIST, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = call i32 @errx(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %24

15:                                               ; preds = %9
  %16 = load i64, i64* @errno, align 8
  %17 = load i64, i64* @ESRCH, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = call i32 @errx(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %23

21:                                               ; preds = %15
  %22 = call i32 @err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %19
  br label %24

24:                                               ; preds = %23, %13
  br label %25

25:                                               ; preds = %24, %2
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @PF_OPT_QUIET, align 4
  %28 = and i32 %26, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* @stderr, align 4
  %32 = call i32 @fprintf(i32 %31, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %33

33:                                               ; preds = %30, %25
  %34 = load i64, i64* @altqsupport, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %33
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @DIOCSTARTALTQ, align 4
  %39 = call i64 @ioctl(i32 %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load i64, i64* @errno, align 8
  %43 = load i64, i64* @EEXIST, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = call i32 @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %41
  br label %48

48:                                               ; preds = %47, %36, %33
  ret i32 0
}

declare dso_local i64 @ioctl(i32, i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

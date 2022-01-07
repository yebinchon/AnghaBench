; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_altq.c_altq_set_enabled.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_altq.c_altq_set_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"/dev/pf\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@EX_UNAVAILABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"altq support opening pf(4) control device\00", align 1
@DIOCSTARTALTQ = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"enabling altq\00", align 1
@DIOCSTOPALTQ = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"disabling altq\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @altq_set_enabled(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @O_RDWR, align 4
  %5 = call i32 @open(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* @EX_UNAVAILABLE, align 4
  %10 = call i32 @err(i32 %9, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %11

11:                                               ; preds = %8, %1
  %12 = load i32, i32* %2, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %11
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @DIOCSTARTALTQ, align 4
  %17 = call i64 @ioctl(i32 %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = load i64, i64* @errno, align 8
  %21 = load i64, i64* @EEXIST, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* @EX_UNAVAILABLE, align 4
  %25 = call i32 @err(i32 %24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %26

26:                                               ; preds = %23, %19, %14
  br label %40

27:                                               ; preds = %11
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @DIOCSTOPALTQ, align 4
  %30 = call i64 @ioctl(i32 %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load i64, i64* @errno, align 8
  %34 = load i64, i64* @ENOENT, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i32, i32* @EX_UNAVAILABLE, align 4
  %38 = call i32 @err(i32 %37, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %39

39:                                               ; preds = %36, %32, %27
  br label %40

40:                                               ; preds = %39, %26
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @close(i32 %41)
  ret void
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @ioctl(i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

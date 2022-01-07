; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl.c_pfctl_debug.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl.c_pfctl_debug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DIOCSETDEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"DIOCSETDEBUG\00", align 1
@PF_OPT_QUIET = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"debug level set to '\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"urgent\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"misc\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"loud\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"<invalid>\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pfctl_debug(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @DIOCSETDEBUG, align 4
  %9 = call i64 @ioctl(i32 %7, i32 %8, i32* %5)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = call i32 @err(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %3
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @PF_OPT_QUIET, align 4
  %16 = and i32 %14, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %40

18:                                               ; preds = %13
  %19 = load i32, i32* @stderr, align 4
  %20 = call i32 @fprintf(i32 %19, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32, i32* %5, align 4
  switch i32 %21, label %34 [
    i32 129, label %22
    i32 128, label %25
    i32 131, label %28
    i32 130, label %31
  ]

22:                                               ; preds = %18
  %23 = load i32, i32* @stderr, align 4
  %24 = call i32 @fprintf(i32 %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %37

25:                                               ; preds = %18
  %26 = load i32, i32* @stderr, align 4
  %27 = call i32 @fprintf(i32 %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %37

28:                                               ; preds = %18
  %29 = load i32, i32* @stderr, align 4
  %30 = call i32 @fprintf(i32 %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %37

31:                                               ; preds = %18
  %32 = load i32, i32* @stderr, align 4
  %33 = call i32 @fprintf(i32 %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %37

34:                                               ; preds = %18
  %35 = load i32, i32* @stderr, align 4
  %36 = call i32 @fprintf(i32 %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %31, %28, %25, %22
  %38 = load i32, i32* @stderr, align 4
  %39 = call i32 @fprintf(i32 %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %13
  ret void
}

declare dso_local i64 @ioctl(i32, i32, i32*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

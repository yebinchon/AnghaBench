; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditd/extr_auditd.c_auditd_reap_children.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditd/extr_auditd.c_auditd_reap_children.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WNOHANG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"warn process [pid=%d] %s %d.\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"exited with non-zero status\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"exited as a result of signal\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @auditd_reap_children() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  br label %3

3:                                                ; preds = %27, %10, %0
  %4 = load i32, i32* @WNOHANG, align 4
  %5 = call i32 @waitpid(i32 -1, i32* %2, i32 %4)
  store i32 %5, i32* %1, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %30

7:                                                ; preds = %3
  %8 = load i32, i32* %2, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  br label %3

11:                                               ; preds = %7
  %12 = load i32, i32* %1, align 4
  %13 = load i32, i32* %2, align 4
  %14 = call i64 @WIFEXITED(i32 %13)
  %15 = icmp ne i64 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0)
  %18 = load i32, i32* %2, align 4
  %19 = call i64 @WIFEXITED(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %11
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @WEXITSTATUS(i32 %22)
  br label %27

24:                                               ; preds = %11
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @WTERMSIG(i32 %25)
  br label %27

27:                                               ; preds = %24, %21
  %28 = phi i32 [ %23, %21 ], [ %26, %24 ]
  %29 = call i32 @auditd_log_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %12, i8* %17, i32 %28)
  br label %3

30:                                               ; preds = %3
  ret void
}

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local i32 @auditd_log_info(i8*, i32, i8*, i32) #1

declare dso_local i64 @WIFEXITED(i32) #1

declare dso_local i32 @WEXITSTATUS(i32) #1

declare dso_local i32 @WTERMSIG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcp_wrappers/extr_shell_cmd.c_do_child.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcp_wrappers/extr_shell_cmd.c_do_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIGHUP = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"open /dev/null: %m\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"dup: %m\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"/bin/sh\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"sh\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"execl /bin/sh: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @do_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_child(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i32, i32* @SIGHUP, align 4
  %6 = load i32, i32* @SIG_IGN, align 4
  %7 = call i32 @signal(i32 %5, i32 %6)
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %14, %1
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 3
  br i1 %10, label %11, label %17

11:                                               ; preds = %8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @close(i32 %12)
  br label %14

14:                                               ; preds = %11
  %15 = load i32, i32* %4, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %4, align 4
  br label %8

17:                                               ; preds = %8
  %18 = call i64 @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 2)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %32

21:                                               ; preds = %17
  %22 = call i32 @dup(i32 0)
  %23 = icmp ne i32 %22, 1
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = call i32 @dup(i32 0)
  %26 = icmp ne i32 %25, 2
  br i1 %26, label %27, label %28

27:                                               ; preds = %24, %21
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %31

28:                                               ; preds = %24
  %29 = load i8*, i8** %2, align 8
  %30 = call i32 @execl(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %29, i8* null)
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8** %3, align 8
  br label %31

31:                                               ; preds = %28, %27
  br label %32

32:                                               ; preds = %31, %20
  %33 = load i8*, i8** %3, align 8
  %34 = call i32 @tcpd_warn(i8* %33)
  %35 = call i32 @_exit(i32 0) #3
  unreachable
}

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @open(i8*, i32) #1

declare dso_local i32 @dup(i32) #1

declare dso_local i32 @execl(i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @tcpd_warn(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

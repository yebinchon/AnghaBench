; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_dhclient.c_go_daemon.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_dhclient.c_go_daemon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@go_daemon.state = internal global i32 0, align 4
@no_daemon = common dso_local global i64 0, align 8
@log_perror = common dso_local global i64 0, align 8
@nullfd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"daemon\00", align 1
@pidfile = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"can't limit pidfile descriptor: %m\00", align 1
@STDIN_FILENO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"can't limit stdin: %m\00", align 1
@CAP_WRITE = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"can't limit stdout: %m\00", align 1
@STDERR_FILENO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"can't limit stderr: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @go_daemon() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @no_daemon, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %0
  %5 = load i32, i32* @go_daemon.state, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %4, %0
  br label %54

8:                                                ; preds = %4
  store i32 1, i32* @go_daemon.state, align 4
  store i64 0, i64* @log_perror, align 8
  %9 = load i32, i32* @nullfd, align 4
  %10 = call i32 @daemonfd(i32 -1, i32 %9)
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = call i32 @error(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %8
  %15 = call i32 (i32*, ...) @cap_rights_init(i32* %1)
  %16 = load i32*, i32** @pidfile, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %28

18:                                               ; preds = %14
  %19 = load i32*, i32** @pidfile, align 8
  %20 = call i32 @pidfile_write(i32* %19)
  %21 = load i32*, i32** @pidfile, align 8
  %22 = call i32 @pidfile_fileno(i32* %21)
  %23 = call i64 @caph_rights_limit(i32 %22, i32* %1)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = call i32 @error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %18
  br label %28

28:                                               ; preds = %27, %14
  %29 = load i32, i32* @nullfd, align 4
  %30 = icmp ne i32 %29, -1
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* @nullfd, align 4
  %33 = call i32 @close(i32 %32)
  store i32 -1, i32* @nullfd, align 4
  br label %34

34:                                               ; preds = %31, %28
  %35 = load i32, i32* @STDIN_FILENO, align 4
  %36 = call i64 @caph_rights_limit(i32 %35, i32* %1)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = call i32 @error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %34
  %41 = load i32, i32* @CAP_WRITE, align 4
  %42 = call i32 (i32*, ...) @cap_rights_init(i32* %1, i32 %41)
  %43 = load i32, i32* @STDOUT_FILENO, align 4
  %44 = call i64 @caph_rights_limit(i32 %43, i32* %1)
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = call i32 @error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %40
  %49 = load i32, i32* @STDERR_FILENO, align 4
  %50 = call i64 @caph_rights_limit(i32 %49, i32* %1)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = call i32 @error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %54

54:                                               ; preds = %7, %52, %48
  ret void
}

declare dso_local i32 @daemonfd(i32, i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @cap_rights_init(i32*, ...) #1

declare dso_local i32 @pidfile_write(i32*) #1

declare dso_local i64 @caph_rights_limit(i32, i32*) #1

declare dso_local i32 @pidfile_fileno(i32*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

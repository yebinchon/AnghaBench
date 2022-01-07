; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/rump/rumpkern/h_client/extr_h_forkcli.c_simple.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/rump/rumpkern/h_client/extr_h_forkcli.c_simple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rumpclient_fork = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"unexpected pid %d\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@O_CREAT = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"write newlyopened /dev/null\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"prefork\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"postfork init failed\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"child and parent pids are equal\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"write child /dev/null\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"write parent /dev/null\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"wait failed\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"child exited with status %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @simple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @simple() #0 {
  %1 = alloca %struct.rumpclient_fork*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = call i32 (...) @rump_sys_getpid()
  store i32 %6, i32* %2, align 4
  %7 = icmp slt i32 %6, 2
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = load i32, i32* %2, align 4
  %10 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %9)
  br label %11

11:                                               ; preds = %8, %0
  %12 = load i32, i32* @O_CREAT, align 4
  %13 = load i32, i32* @O_RDWR, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @rump_sys_open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @rump_sys_write(i32 %16, i32* %4, i32 4)
  %18 = sext i32 %17 to i64
  %19 = icmp ne i64 %18, 4
  br i1 %19, label %20, label %22

20:                                               ; preds = %11
  %21 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %11
  %23 = call %struct.rumpclient_fork* (...) @rumpclient_prefork()
  store %struct.rumpclient_fork* %23, %struct.rumpclient_fork** %1, align 8
  %24 = icmp eq %struct.rumpclient_fork* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = call i32 @err(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %22
  %28 = call i32 (...) @fork()
  switch i32 %28, label %59 [
    i32 -1, label %29
    i32 0, label %31
  ]

29:                                               ; preds = %27
  %30 = call i32 @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %90

31:                                               ; preds = %27
  %32 = load %struct.rumpclient_fork*, %struct.rumpclient_fork** %1, align 8
  %33 = call i32 @rumpclient_fork_init(%struct.rumpclient_fork* %32)
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = call i32 @err(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %31
  %38 = call i32 (...) @rump_sys_getpid()
  store i32 %38, i32* %3, align 4
  %39 = icmp slt i32 %38, 2
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32, i32* %3, align 4
  %42 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %40, %37
  %44 = load i32, i32* %2, align 4
  %45 = load i32, i32* %3, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %43
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @rump_sys_write(i32 %50, i32* %4, i32 4)
  %52 = sext i32 %51 to i64
  %53 = icmp ne i64 %52, 4
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %49
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @rump_sys_close(i32 %57)
  br label %90

59:                                               ; preds = %27
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @rump_sys_write(i32 %60, i32* %4, i32 4)
  %62 = sext i32 %61 to i64
  %63 = icmp ne i64 %62, 4
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %59
  %67 = call i32 @wait(i32* %5)
  %68 = icmp eq i32 %67, -1
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = call i32 @err(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %66
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @WIFEXITED(i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @WEXITSTATUS(i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %75, %71
  %80 = load i32, i32* %5, align 4
  %81 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %79, %75
  %83 = load i32, i32* %4, align 4
  %84 = call i32 @rump_sys_write(i32 %83, i32* %4, i32 4)
  %85 = sext i32 %84 to i64
  %86 = icmp ne i64 %85, 4
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  br label %89

89:                                               ; preds = %87, %82
  br label %90

90:                                               ; preds = %89, %56, %29
  ret void
}

declare dso_local i32 @rump_sys_getpid(...) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @rump_sys_open(i8*, i32) #1

declare dso_local i32 @rump_sys_write(i32, i32*, i32) #1

declare dso_local %struct.rumpclient_fork* @rumpclient_prefork(...) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @rumpclient_fork_init(%struct.rumpclient_fork*) #1

declare dso_local i32 @rump_sys_close(i32) #1

declare dso_local i32 @wait(i32*) #1

declare dso_local i32 @WIFEXITED(i32) #1

declare dso_local i32 @WEXITSTATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

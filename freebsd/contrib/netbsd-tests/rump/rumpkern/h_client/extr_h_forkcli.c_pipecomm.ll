; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/rump/rumpkern/h_client/extr_h_forkcli.c_pipecomm.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/rump/rumpkern/h_client/extr_h_forkcli.c_pipecomm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rumpclient_fork = type { i32 }

@TESTSLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"pipe\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"prefork\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"postfork init failed\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"pipe read\00", align 1
@TESTSTR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"teststring doesn't match, got %s\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"pipe write\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"wait failed\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"child exited with status %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @pipecomm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pipecomm() #0 {
  %1 = alloca %struct.rumpclient_fork*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca [2 x i32], align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* @TESTSLEN, align 4
  %7 = add nsw i32 %6, 1
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %2, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %3, align 8
  %11 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %12 = call i32 @rump_sys_pipe(i32* %11)
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %16

14:                                               ; preds = %0
  %15 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %0
  %17 = call %struct.rumpclient_fork* (...) @rumpclient_prefork()
  store %struct.rumpclient_fork* %17, %struct.rumpclient_fork** %1, align 8
  %18 = icmp eq %struct.rumpclient_fork* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = call i32 @err(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %16
  %22 = call i32 (...) @fork()
  switch i32 %22, label %49 [
    i32 -1, label %23
    i32 0, label %25
  ]

23:                                               ; preds = %21
  %24 = call i32 @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %76

25:                                               ; preds = %21
  %26 = load %struct.rumpclient_fork*, %struct.rumpclient_fork** %1, align 8
  %27 = call i32 @rumpclient_fork_init(%struct.rumpclient_fork* %26)
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = call i32 @err(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %25
  %32 = trunc i64 %8 to i32
  %33 = call i32 @memset(i8* %10, i32 0, i32 %32)
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @TESTSLEN, align 4
  %37 = call i32 @rump_sys_read(i32 %35, i8* %10, i32 %36)
  %38 = load i32, i32* @TESTSLEN, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = call i32 @err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %31
  %43 = load i32, i32* @TESTSTR, align 4
  %44 = call i32 @strcmp(i32 %43, i8* %10)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i8* %10)
  br label %48

48:                                               ; preds = %46, %42
  br label %76

49:                                               ; preds = %21
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @TESTSTR, align 4
  %53 = load i32, i32* @TESTSLEN, align 4
  %54 = call i32 @rump_sys_write(i32 %51, i32 %52, i32 %53)
  %55 = load i32, i32* @TESTSLEN, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %49
  %58 = call i32 @err(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %49
  %60 = call i32 @wait(i32* %5)
  %61 = icmp eq i32 %60, -1
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = call i32 @err(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %59
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @WIFEXITED(i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @WEXITSTATUS(i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %68, %64
  %73 = load i32, i32* %5, align 4
  %74 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %72, %68
  br label %76

76:                                               ; preds = %75, %48, %23
  %77 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %77)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @rump_sys_pipe(i32*) #2

declare dso_local i32 @errx(i32, i8*, ...) #2

declare dso_local %struct.rumpclient_fork* @rumpclient_prefork(...) #2

declare dso_local i32 @err(i32, i8*) #2

declare dso_local i32 @fork(...) #2

declare dso_local i32 @rumpclient_fork_init(%struct.rumpclient_fork*) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @rump_sys_read(i32, i8*, i32) #2

declare dso_local i32 @strcmp(i32, i8*) #2

declare dso_local i32 @rump_sys_write(i32, i32, i32) #2

declare dso_local i32 @wait(i32*) #2

declare dso_local i32 @WIFEXITED(i32) #2

declare dso_local i32 @WEXITSTATUS(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

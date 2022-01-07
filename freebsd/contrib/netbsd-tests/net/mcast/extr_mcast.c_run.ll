; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/net/mcast/extr_mcast.c_run.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/net/mcast/extr_mcast.c_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AF_UNIX = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"socketpair (%s)\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"fork (%s)\00", align 1
@WNOHANG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"wait (%s)\00", align 1
@SIGTERM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"kill (%s)\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"receiver failed and was killedby sender\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"receiver got signaled (%s)\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"receiver exited with status %d\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"receiver exited with unexpected status %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i64, i32, i32)* @run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run(i8* %0, i8* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [2 x i32], align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load i32, i32* @AF_UNIX, align 4
  %16 = load i32, i32* @SOCK_STREAM, align 4
  %17 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %18 = call i32 @socketpair(i32 %15, i32 %16, i32 0, i32* %17)
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %25

20:                                               ; preds = %5
  %21 = load i32, i32* @EXIT_FAILURE, align 4
  %22 = load i32, i32* @errno, align 4
  %23 = call i32 @strerror(i32 %22)
  %24 = call i32 @ERRX(i32 %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %20, %5
  %26 = call i32 (...) @fork()
  store i32 %26, i32* %11, align 4
  switch i32 %26, label %41 [
    i32 0, label %27
    i32 -1, label %36
  ]

27:                                               ; preds = %25
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = load i8*, i8** %6, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @receiver(i32 %29, i8* %30, i8* %31, i64 %32, i32 %33, i32 %34)
  br label %114

36:                                               ; preds = %25
  %37 = load i32, i32* @EXIT_FAILURE, align 4
  %38 = load i32, i32* @errno, align 4
  %39 = call i32 @strerror(i32 %38)
  %40 = call i32 @ERRX(i32 %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %25, %36
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = load i8*, i8** %6, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = load i64, i64* %8, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @sender(i32 %43, i8* %44, i8* %45, i64 %46, i32 %47, i32 %48)
  store i32 %49, i32* %14, align 4
  br label %50

50:                                               ; preds = %73, %62, %41
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* @WNOHANG, align 4
  %53 = call i32 @waitpid(i32 %51, i32* %12, i32 %52)
  switch i32 %53, label %74 [
    i32 -1, label %54
    i32 0, label %59
  ]

54:                                               ; preds = %50
  %55 = load i32, i32* @EXIT_FAILURE, align 4
  %56 = load i32, i32* @errno, align 4
  %57 = call i32 @strerror(i32 %56)
  %58 = call i32 @ERRX(i32 %55, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %50, %54
  %60 = load i32, i32* %14, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  br label %50

63:                                               ; preds = %59
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* @SIGTERM, align 4
  %66 = call i32 @kill(i32 %64, i32 %65)
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %68, label %73

68:                                               ; preds = %63
  %69 = load i32, i32* @EXIT_FAILURE, align 4
  %70 = load i32, i32* @errno, align 4
  %71 = call i32 @strerror(i32 %70)
  %72 = call i32 @ERRX(i32 %69, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %68, %63
  br label %50

74:                                               ; preds = %50
  %75 = load i32, i32* %12, align 4
  %76 = call i32 @WIFSIGNALED(i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %93

78:                                               ; preds = %74
  %79 = load i32, i32* %12, align 4
  %80 = call i32 @WTERMSIG(i32 %79)
  %81 = load i32, i32* @SIGTERM, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load i32, i32* @EXIT_FAILURE, align 4
  %85 = call i32 @ERRX0(i32 %84, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  br label %92

86:                                               ; preds = %78
  %87 = load i32, i32* @EXIT_FAILURE, align 4
  %88 = load i32, i32* %12, align 4
  %89 = call i32 @WTERMSIG(i32 %88)
  %90 = call i32 @strsignal(i32 %89)
  %91 = call i32 @ERRX(i32 %87, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %86, %83
  br label %112

93:                                               ; preds = %74
  %94 = load i32, i32* %12, align 4
  %95 = call i32 @WIFEXITED(i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %107

97:                                               ; preds = %93
  %98 = load i32, i32* %12, align 4
  %99 = call i32 @WEXITSTATUS(i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %97
  %102 = load i32, i32* @EXIT_FAILURE, align 4
  %103 = load i32, i32* %12, align 4
  %104 = call i32 @WEXITSTATUS(i32 %103)
  %105 = call i32 @ERRX(i32 %102, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %104)
  br label %106

106:                                              ; preds = %101, %97
  br label %111

107:                                              ; preds = %93
  %108 = load i32, i32* @EXIT_FAILURE, align 4
  %109 = load i32, i32* %12, align 4
  %110 = call i32 @ERRX(i32 %108, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i32 %109)
  br label %111

111:                                              ; preds = %107, %106
  br label %112

112:                                              ; preds = %111, %92
  br label %113

113:                                              ; preds = %112
  br label %114

114:                                              ; preds = %113, %27
  ret void
}

declare dso_local i32 @socketpair(i32, i32, i32, i32*) #1

declare dso_local i32 @ERRX(i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @receiver(i32, i8*, i8*, i64, i32, i32) #1

declare dso_local i32 @sender(i32, i8*, i8*, i64, i32, i32) #1

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local i32 @kill(i32, i32) #1

declare dso_local i32 @WIFSIGNALED(i32) #1

declare dso_local i32 @WTERMSIG(i32) #1

declare dso_local i32 @ERRX0(i32, i8*) #1

declare dso_local i32 @strsignal(i32) #1

declare dso_local i32 @WIFEXITED(i32) #1

declare dso_local i32 @WEXITSTATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

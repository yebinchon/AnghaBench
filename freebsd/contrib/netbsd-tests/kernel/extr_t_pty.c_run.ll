; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/kernel/extr_t_pty.c_run.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/kernel/extr_t_pty.c_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@buffer_size = common dso_local global i64 0, align 8
@dbuf = common dso_local global i64* null, align 8
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"malloc(%zu)\00", align 1
@verbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"parent: started; opening PTY and spawning child\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"parent: sleeping to make sure child is ready\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"parent: writing\0A\00", align 1
@packets = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [46 x i8] c"parent: attempting to write %zu bytes to PTY\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"parent: write()\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"parent: wrote %zd bytes to PTY\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"parent: waiting for child to exit\0A\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"waitpid\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"child failed\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"parent: closing PTY\0A\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"parent: exiting\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i64, i64* @buffer_size, align 8
  %7 = call i64* @calloc(i32 1, i64 %6)
  store i64* %7, i64** @dbuf, align 8
  %8 = icmp eq i64* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %0
  %10 = load i32, i32* @EXIT_FAILURE, align 4
  %11 = load i64, i64* @buffer_size, align 8
  %12 = call i32 (i32, i8*, ...) @err(i32 %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %11)
  br label %13

13:                                               ; preds = %9, %0
  %14 = load i64, i64* @verbose, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %13
  %19 = call i32 (...) @pty_open()
  store i32 %19, i32* %2, align 4
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @ptsname(i32 %20)
  %22 = call i32 @child_spawn(i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i64, i64* @verbose, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %18
  %28 = call i32 @sleep(i32 1)
  store i64 0, i64* %1, align 8
  br label %29

29:                                               ; preds = %39, %27
  %30 = load i64, i64* %1, align 8
  %31 = load i64, i64* @buffer_size, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %29
  %34 = load i64, i64* %1, align 8
  %35 = and i64 %34, 255
  %36 = load i64*, i64** @dbuf, align 8
  %37 = load i64, i64* %1, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  store i64 %35, i64* %38, align 8
  br label %39

39:                                               ; preds = %33
  %40 = load i64, i64* %1, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %1, align 8
  br label %29

42:                                               ; preds = %29
  %43 = load i64, i64* @verbose, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %42
  store i64 0, i64* %1, align 8
  br label %48

48:                                               ; preds = %74, %47
  %49 = load i64, i64* %1, align 8
  %50 = load i64, i64* @packets, align 8
  %51 = icmp ult i64 %49, %50
  br i1 %51, label %52, label %77

52:                                               ; preds = %48
  %53 = load i64, i64* @verbose, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i64, i64* @buffer_size, align 8
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i64 %56)
  br label %58

58:                                               ; preds = %55, %52
  %59 = load i32, i32* %2, align 4
  %60 = load i64*, i64** @dbuf, align 8
  %61 = load i64, i64* @buffer_size, align 8
  %62 = call i32 @write(i32 %59, i64* %60, i64 %61)
  store i32 %62, i32* %5, align 4
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load i32, i32* @EXIT_FAILURE, align 4
  %66 = call i32 (i32, i8*, ...) @err(i32 %65, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  br label %77

67:                                               ; preds = %58
  %68 = load i64, i64* @verbose, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i32, i32* %5, align 4
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %70, %67
  br label %74

74:                                               ; preds = %73
  %75 = load i64, i64* %1, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %1, align 8
  br label %48

77:                                               ; preds = %64, %48
  %78 = load i64, i64* @verbose, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  br label %82

82:                                               ; preds = %80, %77
  %83 = load i32, i32* %4, align 4
  %84 = call i32 @waitpid(i32 %83, i32* %3, i32 0)
  %85 = icmp eq i32 %84, -1
  br i1 %85, label %86, label %89

86:                                               ; preds = %82
  %87 = load i32, i32* @EXIT_FAILURE, align 4
  %88 = call i32 (i32, i8*, ...) @err(i32 %87, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  br label %89

89:                                               ; preds = %86, %82
  %90 = load i32, i32* %3, align 4
  %91 = call i32 @WIFEXITED(i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %89
  %94 = load i32, i32* %3, align 4
  %95 = call i64 @WEXITSTATUS(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %93, %89
  %98 = load i32, i32* @EXIT_FAILURE, align 4
  %99 = call i32 @errx(i32 %98, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  br label %100

100:                                              ; preds = %97, %93
  %101 = load i64, i64* @verbose, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %100
  %104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  br label %105

105:                                              ; preds = %103, %100
  %106 = load i32, i32* %2, align 4
  %107 = call i32 @close(i32 %106)
  %108 = load i64, i64* @verbose, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %105
  %111 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0))
  br label %112

112:                                              ; preds = %110, %105
  ret void
}

declare dso_local i64* @calloc(i32, i64) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @pty_open(...) #1

declare dso_local i32 @child_spawn(i32) #1

declare dso_local i32 @ptsname(i32) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @write(i32, i64*, i64) #1

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local i32 @WIFEXITED(i32) #1

declare dso_local i64 @WEXITSTATUS(i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

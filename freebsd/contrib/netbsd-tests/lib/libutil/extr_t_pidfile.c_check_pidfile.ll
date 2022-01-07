; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libutil/extr_t_pidfile.c_check_pidfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libutil/extr_t_pidfile.c_check_pidfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [37 x i8] c"Validating contents of pidfile '%s'\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Cannot open expected pidfile '%s'\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Failed to read pid from pidfile '%s'\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Read pid %d, current pid %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"Pid in pidfile (%d) does not match current pid (%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @check_pidfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_pidfile(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %5)
  %7 = load i8*, i8** %2, align 8
  %8 = call i32* @fopen(i8* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %8, i32** %3, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i32, i32* @EXIT_FAILURE, align 4
  %12 = load i8*, i8** %2, align 8
  %13 = call i32 (i32, i8*, ...) @errx(i32 %11, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %12)
  br label %14

14:                                               ; preds = %10, %1
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @fscanf(i32* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %4)
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i32, i32* @EXIT_FAILURE, align 4
  %20 = load i8*, i8** %2, align 8
  %21 = call i32 (i32, i8*, ...) @errx(i32 %19, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i8* %20)
  br label %22

22:                                               ; preds = %18, %14
  %23 = load i32, i32* %4, align 4
  %24 = call i32 (...) @getpid()
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %23, i32 %24)
  %26 = load i32, i32* %4, align 4
  %27 = call i32 (...) @getpid()
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %22
  %30 = load i32, i32* @EXIT_FAILURE, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 (...) @getpid()
  %33 = call i32 (i32, i8*, ...) @errx(i32 %30, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %29, %22
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @fscanf(i32*, i8*, i32*) #1

declare dso_local i32 @getpid(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

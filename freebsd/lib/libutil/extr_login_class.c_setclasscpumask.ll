; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libutil/extr_login_class.c_setclasscpumask.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libutil/extr_login_class.c_setclasscpumask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"cpumask\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"list2cpuset(%s) invalid mask specification\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"cpuset(): %s\00", align 1
@errno = common dso_local global i32 0, align 4
@CPU_LEVEL_CPUSET = common dso_local global i32 0, align 4
@CPU_WHICH_PID = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"cpuset_setaffinity(%s): %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setclasscpumask(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call i8* @login_getcapstr(i32* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* null, i32* null)
  store i8* %7, i8** %3, align 8
  %8 = call i32 @CPU_ZERO(i32* %4)
  %9 = load i8*, i8** %3, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %46

12:                                               ; preds = %1
  %13 = load i8*, i8** %3, align 8
  %14 = call i64 @strcasecmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %13)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  br label %46

17:                                               ; preds = %12
  %18 = load i8*, i8** %3, align 8
  %19 = call i32 @list2cpuset(i8* %18, i32* %4)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* @LOG_WARNING, align 4
  %23 = load i8*, i8** %3, align 8
  %24 = call i32 (i32, i8*, i8*, ...) @syslog(i32 %22, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i8* %23)
  br label %46

25:                                               ; preds = %17
  %26 = call i64 @cpuset(i32* %5)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  %29 = load i32, i32* @LOG_ERR, align 4
  %30 = load i32, i32* @errno, align 4
  %31 = call i32 @strerror(i32 %30)
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i8*
  %34 = call i32 (i32, i8*, i8*, ...) @syslog(i32 %29, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %33)
  br label %46

35:                                               ; preds = %25
  %36 = load i32, i32* @CPU_LEVEL_CPUSET, align 4
  %37 = load i32, i32* @CPU_WHICH_PID, align 4
  %38 = call i64 @cpuset_setaffinity(i32 %36, i32 %37, i32 -1, i32 4, i32* %4)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load i32, i32* @LOG_ERR, align 4
  %42 = load i8*, i8** %3, align 8
  %43 = load i32, i32* @errno, align 4
  %44 = call i32 @strerror(i32 %43)
  %45 = call i32 (i32, i8*, i8*, ...) @syslog(i32 %41, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %42, i32 %44)
  br label %46

46:                                               ; preds = %11, %16, %21, %28, %40, %35
  ret void
}

declare dso_local i8* @login_getcapstr(i32*, i8*, i32*, i32*) #1

declare dso_local i32 @CPU_ZERO(i32*) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @list2cpuset(i8*, i32*) #1

declare dso_local i32 @syslog(i32, i8*, i8*, ...) #1

declare dso_local i64 @cpuset(i32*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @cpuset_setaffinity(i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

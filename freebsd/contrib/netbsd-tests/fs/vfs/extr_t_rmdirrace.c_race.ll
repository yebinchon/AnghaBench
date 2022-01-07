; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/vfs/extr_t_rmdirrace.c_race.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/vfs/extr_t_rmdirrace.c_race.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [41 x i8] c"directories not supported by file system\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"open failed\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"chdir failed\00", align 1
@func1 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"pthread_create1 failed\00", align 1
@func2 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"pthread_create2 failed\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"pthread_join2 failed\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"pthread_join1 failed\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"fchdir failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @race to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @race(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i64 @FSTYPE_SYSVBFS(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = call i32 @atf_tc_skip(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %2
  %16 = load i32, i32* @O_RDONLY, align 4
  %17 = call i32 @rump_sys_open(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %16, i32 438)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = call i32 @atf_tc_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %15
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @rump_sys_chdir(i8* %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = call i32 @atf_tc_fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %22
  store i32 0, i32* %7, align 4
  %30 = load i32, i32* @func1, align 4
  %31 = call i32 @pthread_create(i32* %8, i32* null, i32 %30, i32* %7)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = call i32 @atf_tc_fail(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %29
  %37 = load i32, i32* @func2, align 4
  %38 = call i32 @pthread_create(i32* %9, i32* null, i32 %37, i32* %7)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = call i32 @atf_tc_fail(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %36
  %44 = call i32 @sleep(i32 10)
  store i32 1, i32* %7, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @pthread_join(i32 %45, i32* null)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = call i32 @atf_tc_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %43
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @pthread_join(i32 %52, i32* null)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = call i32 @atf_tc_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %51
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @rump_sys_fchdir(i32 %59)
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = call i32 @atf_tc_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %58
  ret void
}

declare dso_local i64 @FSTYPE_SYSVBFS(i32*) #1

declare dso_local i32 @atf_tc_skip(i8*) #1

declare dso_local i32 @rump_sys_open(i8*, i32, i32) #1

declare dso_local i32 @atf_tc_fail(i8*) #1

declare dso_local i32 @rump_sys_chdir(i8*) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, i32*) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @pthread_join(i32, i32*) #1

declare dso_local i32 @rump_sys_fchdir(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}

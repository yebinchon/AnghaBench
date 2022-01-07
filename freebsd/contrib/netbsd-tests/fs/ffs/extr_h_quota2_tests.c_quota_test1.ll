; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/ffs/extr_h_quota2_tests.c_quota_test1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/ffs/extr_h_quota2_tests.c_quota_test1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@quota_test1.buf = internal global [512 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@TEST_NONROOT_ID = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"rump_sys_setegid\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"rump_sys_seteuid\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"test_fillup\00", align 1
@O_CREAT = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"rump_sys_open\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"write failed early\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @quota_test1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @quota_test1(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i32, i32* @TEST_NONROOT_ID, align 4
  %8 = load i32, i32* @TEST_NONROOT_ID, align 4
  %9 = call i32 @rump_sys_chown(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %8)
  %10 = call i32 @rump_sys_chmod(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 511)
  %11 = load i32, i32* @TEST_NONROOT_ID, align 4
  %12 = call i64 @rump_sys_setegid(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load i32, i32* @errno, align 4
  store i32 %15, i32* %5, align 4
  %16 = call i32 @warn(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %68

18:                                               ; preds = %1
  %19 = load i32, i32* @TEST_NONROOT_ID, align 4
  %20 = call i64 @rump_sys_seteuid(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i32, i32* @errno, align 4
  store i32 %23, i32* %5, align 4
  %24 = call i32 @warn(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* %2, align 4
  br label %68

26:                                               ; preds = %18
  %27 = load i32, i32* @O_CREAT, align 4
  %28 = load i32, i32* @O_RDWR, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @rump_sys_open(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %29, i32 420)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i32, i32* @errno, align 4
  store i32 %34, i32* %5, align 4
  %35 = call i32 @warn(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  br label %62

36:                                               ; preds = %26
  store i32 0, i32* %6, align 4
  br label %37

37:                                               ; preds = %49, %36
  %38 = load i32, i32* %6, align 4
  %39 = icmp slt i32 %38, 4
  br i1 %39, label %40, label %52

40:                                               ; preds = %37
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @rump_sys_write(i32 %41, i8* getelementptr inbounds ([512 x i8], [512 x i8]* @quota_test1.buf, i64 0, i64 0), i32 512)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = icmp ne i64 %44, 512
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = call i32 @err(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %40
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %37

52:                                               ; preds = %37
  %53 = call i32 @sleep(i32 2)
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @rump_sys_write(i32 %54, i8* getelementptr inbounds ([512 x i8], [512 x i8]* @quota_test1.buf, i64 0, i64 0), i32 512)
  %56 = sext i32 %55 to i64
  %57 = icmp ne i64 %56, 512
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load i32, i32* @errno, align 4
  store i32 %59, i32* %5, align 4
  br label %61

60:                                               ; preds = %52
  store i32 0, i32* %5, align 4
  br label %61

61:                                               ; preds = %60, %58
  br label %62

62:                                               ; preds = %61, %33
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @rump_sys_close(i32 %63)
  %65 = call i64 @rump_sys_seteuid(i32 0)
  %66 = call i64 @rump_sys_setegid(i32 0)
  %67 = load i32, i32* %5, align 4
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %62, %22, %14
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @rump_sys_chown(i8*, i32, i32) #1

declare dso_local i32 @rump_sys_chmod(i8*, i32) #1

declare dso_local i64 @rump_sys_setegid(i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i64 @rump_sys_seteuid(i32) #1

declare dso_local i32 @rump_sys_open(i8*, i32, i32) #1

declare dso_local i32 @rump_sys_write(i32, i8*, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @rump_sys_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

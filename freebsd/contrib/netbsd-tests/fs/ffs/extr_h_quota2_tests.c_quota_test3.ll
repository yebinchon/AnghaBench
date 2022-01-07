; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/ffs/extr_h_quota2_tests.c_quota_test3.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/ffs/extr_h_quota2_tests.c_quota_test3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@quota_test3.buf = internal global [512 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@TEST_NONROOT_ID = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"rump_sys_setegid\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"rump_sys_seteuid\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"file%d\00", align 1
@O_EXCL = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"file create failed early\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"test file no %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @quota_test3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @quota_test3(i8* %0) #0 {
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
  br label %75

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
  br label %75

26:                                               ; preds = %18
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %51, %26
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 4
  br i1 %29, label %30, label %54

30:                                               ; preds = %27
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @sprintf(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @quota_test3.buf, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @O_EXCL, align 4
  %34 = load i32, i32* @O_CREAT, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @O_RDWR, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @rump_sys_open(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @quota_test3.buf, i64 0, i64 0), i32 %37, i32 420)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %30
  %42 = call i32 @err(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %30
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @sprintf(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @quota_test3.buf, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @strlen(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @quota_test3.buf, i64 0, i64 0))
  %48 = call i32 @rump_sys_write(i32 %46, i8* getelementptr inbounds ([512 x i8], [512 x i8]* @quota_test3.buf, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @rump_sys_close(i32 %49)
  br label %51

51:                                               ; preds = %43
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %27

54:                                               ; preds = %27
  %55 = call i32 @sleep(i32 2)
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @sprintf(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @quota_test3.buf, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* @O_EXCL, align 4
  %59 = load i32, i32* @O_CREAT, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @O_RDWR, align 4
  %62 = or i32 %60, %61
  %63 = call i32 @rump_sys_open(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @quota_test3.buf, i64 0, i64 0), i32 %62, i32 420)
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %54
  %67 = load i32, i32* @errno, align 4
  store i32 %67, i32* %5, align 4
  br label %69

68:                                               ; preds = %54
  store i32 0, i32* %5, align 4
  br label %69

69:                                               ; preds = %68, %66
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @rump_sys_close(i32 %70)
  %72 = call i64 @rump_sys_seteuid(i32 0)
  %73 = call i64 @rump_sys_setegid(i32 0)
  %74 = load i32, i32* %5, align 4
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %69, %22, %14
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @rump_sys_chown(i8*, i32, i32) #1

declare dso_local i32 @rump_sys_chmod(i8*, i32) #1

declare dso_local i64 @rump_sys_setegid(i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i64 @rump_sys_seteuid(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @rump_sys_open(i8*, i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @rump_sys_write(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @rump_sys_close(i32) #1

declare dso_local i32 @sleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

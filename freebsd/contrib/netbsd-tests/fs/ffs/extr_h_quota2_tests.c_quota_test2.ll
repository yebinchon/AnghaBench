; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/ffs/extr_h_quota2_tests.c_quota_test2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/ffs/extr_h_quota2_tests.c_quota_test2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@quota_test2.buf = internal global [512 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@TEST_NONROOT_ID = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"rump_sys_setegid\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"rump_sys_seteuid\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"file%d\00", align 1
@O_CREAT = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"test file no %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @quota_test2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @quota_test2(i8* %0) #0 {
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
  br label %55

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
  br label %55

26:                                               ; preds = %18
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %45, %26
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @sprintf(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @quota_test2.buf, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @O_CREAT, align 4
  %31 = load i32, i32* @O_RDWR, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @rump_sys_open(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @quota_test2.buf, i64 0, i64 0), i32 %32, i32 420)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  br label %48

37:                                               ; preds = %27
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @sprintf(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @quota_test2.buf, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @strlen(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @quota_test2.buf, i64 0, i64 0))
  %42 = call i32 @rump_sys_write(i32 %40, i8* getelementptr inbounds ([512 x i8], [512 x i8]* @quota_test2.buf, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @rump_sys_close(i32 %43)
  br label %45

45:                                               ; preds = %37
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %6, align 4
  br label %27

48:                                               ; preds = %36
  %49 = load i32, i32* @errno, align 4
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @rump_sys_close(i32 %50)
  %52 = call i64 @rump_sys_seteuid(i32 0)
  %53 = call i64 @rump_sys_setegid(i32 0)
  %54 = load i32, i32* %5, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %48, %22, %14
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @rump_sys_chown(i8*, i32, i32) #1

declare dso_local i32 @rump_sys_chmod(i8*, i32) #1

declare dso_local i64 @rump_sys_setegid(i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i64 @rump_sys_seteuid(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @rump_sys_open(i8*, i32, i32) #1

declare dso_local i32 @rump_sys_write(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @rump_sys_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/ffs/extr_h_quota2_tests.c_quota_test0.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/ffs/extr_h_quota2_tests.c_quota_test0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@quota_test0.buf = internal global [512 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [25 x i8] c"test4: unknown option %c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@TEST_NONROOT_ID = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"rump_sys_setegid\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"rump_sys_seteuid\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"test_fillup\00", align 1
@O_CREAT = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"rump_sys_open\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @quota_test0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @quota_test0(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 1, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %34, %1
  %9 = load i8*, i8** %3, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %8
  %12 = load i32, i32* %6, align 4
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 @strlen(i8* %13)
  %15 = icmp ult i32 %12, %14
  br label %16

16:                                               ; preds = %11, %8
  %17 = phi i1 [ false, %8 ], [ %15, %11 ]
  br i1 %17, label %18, label %37

18:                                               ; preds = %16
  %19 = load i8*, i8** %3, align 8
  %20 = load i32, i32* %6, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  switch i32 %24, label %26 [
    i32 67, label %25
  ]

25:                                               ; preds = %18
  store i32 0, i32* %7, align 4
  br label %33

26:                                               ; preds = %18
  %27 = load i8*, i8** %3, align 8
  %28 = load i32, i32* %6, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = call i32 @errx(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8 signext %31)
  br label %33

33:                                               ; preds = %26, %25
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %6, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %8

37:                                               ; preds = %16
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i32, i32* @TEST_NONROOT_ID, align 4
  %42 = load i32, i32* @TEST_NONROOT_ID, align 4
  %43 = call i32 @rump_sys_chown(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %40, %37
  %45 = call i32 @rump_sys_chmod(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 511)
  %46 = load i32, i32* @TEST_NONROOT_ID, align 4
  %47 = call i64 @rump_sys_setegid(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load i32, i32* @errno, align 4
  store i32 %50, i32* %5, align 4
  %51 = call i32 @warn(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %52 = load i32, i32* %5, align 4
  store i32 %52, i32* %2, align 4
  br label %86

53:                                               ; preds = %44
  %54 = load i32, i32* @TEST_NONROOT_ID, align 4
  %55 = call i64 @rump_sys_seteuid(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load i32, i32* @errno, align 4
  store i32 %58, i32* %5, align 4
  %59 = call i32 @warn(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %60 = load i32, i32* %5, align 4
  store i32 %60, i32* %2, align 4
  br label %86

61:                                               ; preds = %53
  %62 = load i32, i32* @O_CREAT, align 4
  %63 = load i32, i32* @O_RDWR, align 4
  %64 = or i32 %62, %63
  %65 = call i32 @rump_sys_open(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %64, i32 420)
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %61
  %69 = load i32, i32* @errno, align 4
  store i32 %69, i32* %5, align 4
  %70 = call i32 @warn(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  br label %80

71:                                               ; preds = %61
  br label %72

72:                                               ; preds = %77, %71
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @rump_sys_write(i32 %73, i8* getelementptr inbounds ([512 x i8], [512 x i8]* @quota_test0.buf, i64 0, i64 0), i32 512)
  %75 = sext i32 %74 to i64
  %76 = icmp eq i64 %75, 512
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  store i32 0, i32* %5, align 4
  br label %72

78:                                               ; preds = %72
  %79 = load i32, i32* @errno, align 4
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %78, %68
  %81 = load i32, i32* %4, align 4
  %82 = call i32 @rump_sys_close(i32 %81)
  %83 = call i64 @rump_sys_seteuid(i32 0)
  %84 = call i64 @rump_sys_setegid(i32 0)
  %85 = load i32, i32* %5, align 4
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %80, %57, %49
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @errx(i32, i8*, i8 signext) #1

declare dso_local i32 @rump_sys_chown(i8*, i32, i32) #1

declare dso_local i32 @rump_sys_chmod(i8*, i32) #1

declare dso_local i64 @rump_sys_setegid(i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i64 @rump_sys_seteuid(i32) #1

declare dso_local i32 @rump_sys_open(i8*, i32, i32) #1

declare dso_local i32 @rump_sys_write(i32, i8*, i32) #1

declare dso_local i32 @rump_sys_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

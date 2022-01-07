; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/tmpfs/extr_t_renamerace.c_r2w1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/tmpfs/extr_t_renamerace.c_r2w1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wrkpid = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"/file\00", align 1
@O_CREAT = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"creat\00", align 1
@quittingtime = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"/dir/file\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"rename 1\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"rename 2\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @r2w1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @r2w1(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i32, i32* @wrkpid, align 4
  %5 = call i32 @rump_pub_lwproc_newlwp(i32 %4)
  %6 = load i32, i32* @O_CREAT, align 4
  %7 = load i32, i32* @O_RDWR, align 4
  %8 = or i32 %6, %7
  %9 = call i32 @rump_sys_open(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %8, i32 511)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = call i32 @atf_tc_fail_errno(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %1
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @rump_sys_close(i32 %15)
  br label %17

17:                                               ; preds = %31, %14
  %18 = load i32, i32* @quittingtime, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  br i1 %20, label %21, label %32

21:                                               ; preds = %17
  %22 = call i32 @rump_sys_rename(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = call i32 @atf_tc_fail_errno(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %21
  %27 = call i32 @rump_sys_rename(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = call i32 @atf_tc_fail_errno(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %26
  br label %17

32:                                               ; preds = %17
  ret i8* null
}

declare dso_local i32 @rump_pub_lwproc_newlwp(i32) #1

declare dso_local i32 @rump_sys_open(i8*, i32, i32) #1

declare dso_local i32 @atf_tc_fail_errno(i8*) #1

declare dso_local i32 @rump_sys_close(i32) #1

declare dso_local i32 @rump_sys_rename(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

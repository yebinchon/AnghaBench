; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/vfs/extr_t_renamerace.c_w1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/vfs/extr_t_renamerace.c_w1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wrkpid = common dso_local global i32 0, align 4
@quittingtime = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"rename.test1\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"create\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @w1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @w1(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i32, i32* @wrkpid, align 4
  %5 = call i32 @rump_pub_lwproc_newlwp(i32 %4)
  br label %6

6:                                                ; preds = %25, %1
  %7 = load i32, i32* @quittingtime, align 4
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  br i1 %9, label %10, label %29

10:                                               ; preds = %6
  %11 = load i32, i32* @O_WRONLY, align 4
  %12 = load i32, i32* @O_CREAT, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @O_TRUNC, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @rump_sys_open(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %15, i32 438)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %25

19:                                               ; preds = %10
  %20 = load i64, i64* @errno, align 8
  %21 = load i64, i64* @EEXIST, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = call i32 @atf_tc_fail_errno(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %19, %10
  %26 = call i32 @rump_sys_unlink(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @rump_sys_close(i32 %27)
  br label %6

29:                                               ; preds = %6
  ret i8* null
}

declare dso_local i32 @rump_pub_lwproc_newlwp(i32) #1

declare dso_local i32 @rump_sys_open(i8*, i32, i32) #1

declare dso_local i32 @atf_tc_fail_errno(i8*) #1

declare dso_local i32 @rump_sys_unlink(i8*) #1

declare dso_local i32 @rump_sys_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

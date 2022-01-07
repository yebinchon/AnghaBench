; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/vfs/extr_t_renamerace.c_renamerace_dirs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/vfs/extr_t_renamerace.c_renamerace_dirs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [41 x i8] c"directories not supported by file system\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"rename not supported by file system\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"PR kern/43626\00", align 1
@RUMP_RFCFDG = common dso_local global i32 0, align 4
@wrkpid = common dso_local global i32 0, align 4
@w1_dirs = common dso_local global i32 0, align 4
@w2 = common dso_local global i32 0, align 4
@quittingtime = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @renamerace_dirs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @renamerace_dirs(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i64 @FSTYPE_SYSVBFS(i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = call i32 @atf_tc_skip(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %2
  %13 = load i32*, i32** %3, align 8
  %14 = call i64 @FSTYPE_RUMPFS(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = call i32 @atf_tc_skip(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %12
  %19 = load i32*, i32** %3, align 8
  %20 = call i64 @FSTYPE_MSDOS(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = call i32 @atf_tc_expect_signal(i32 -1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %18
  %25 = load i32, i32* @RUMP_RFCFDG, align 4
  %26 = call i32 @rump_pub_lwproc_rfork(i32 %25)
  %27 = call i32 @RZ(i32 %26)
  %28 = call i32 (...) @rump_sys_getpid()
  store i32 %28, i32* @wrkpid, align 4
  %29 = call i32 @RL(i32 %28)
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 @rump_sys_chdir(i8* %30)
  %32 = call i32 @RL(i32 %31)
  %33 = load i32, i32* @w1_dirs, align 4
  %34 = call i32 @pthread_create(i32* %5, i32* null, i32 %33, i32* null)
  %35 = load i32, i32* @w2, align 4
  %36 = call i32 @pthread_create(i32* %6, i32* null, i32 %35, i32* null)
  %37 = call i32 @sleep(i32 5)
  store i32 1, i32* @quittingtime, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @pthread_join(i32 %38, i32* null)
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @pthread_join(i32 %40, i32* null)
  %42 = call i32 @rump_sys_chdir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %43 = call i32 @RL(i32 %42)
  %44 = load i32*, i32** %3, align 8
  %45 = call i64 @FSTYPE_MSDOS(i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %24
  %48 = call i32 (...) @abort() #3
  unreachable

49:                                               ; preds = %24
  ret void
}

declare dso_local i64 @FSTYPE_SYSVBFS(i32*) #1

declare dso_local i32 @atf_tc_skip(i8*) #1

declare dso_local i64 @FSTYPE_RUMPFS(i32*) #1

declare dso_local i64 @FSTYPE_MSDOS(i32*) #1

declare dso_local i32 @atf_tc_expect_signal(i32, i8*) #1

declare dso_local i32 @RZ(i32) #1

declare dso_local i32 @rump_pub_lwproc_rfork(i32) #1

declare dso_local i32 @RL(i32) #1

declare dso_local i32 @rump_sys_getpid(...) #1

declare dso_local i32 @rump_sys_chdir(i8*) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, i32*) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @pthread_join(i32, i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/vfs/extr_t_vnops.c_dir_rmdirdotdot.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/vfs/extr_t_vnops.c_dir_rmdirdotdot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPATHLEN = common dso_local global i32 0, align 4
@USES_DIRS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"subtest\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"test/subtest\00", align 1
@ESTALE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @dir_rmdirdotdot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dir_rmdirdotdot(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i32, i32* @MAXPATHLEN, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %5, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %6, align 8
  %12 = load i32, i32* @USES_DIRS, align 4
  %13 = call i32 (...) @FSTEST_ENTER()
  %14 = call i32 @rump_sys_mkdir(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 511)
  %15 = call i32 @RL(i32 %14)
  %16 = call i32 @rump_sys_chdir(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %17 = call i32 @RL(i32 %16)
  %18 = call i32 @rump_sys_mkdir(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 511)
  %19 = call i32 @RL(i32 %18)
  %20 = call i32 @rump_sys_chdir(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %21 = call i32 @RL(i32 %20)
  %22 = trunc i64 %9 to i32
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @md(i8* %11, i32 %22, i8* %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %25 = call i32 @rump_sys_rmdir(i8* %11)
  %26 = call i32 @RL(i32 %25)
  %27 = trunc i64 %9 to i32
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 @md(i8* %11, i32 %27, i8* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %30 = call i32 @rump_sys_rmdir(i8* %11)
  %31 = call i32 @RL(i32 %30)
  %32 = load i32*, i32** %3, align 8
  %33 = call i64 @FSTYPE_NFS(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %2
  %36 = load i32, i32* @ESTALE, align 4
  store i32 %36, i32* %7, align 4
  br label %39

37:                                               ; preds = %2
  %38 = load i32, i32* @ENOENT, align 4
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @rump_sys_chdir(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %42 = icmp eq i32 %41, -1
  %43 = zext i1 %42 to i32
  %44 = call i32 @ATF_REQUIRE_ERRNO(i32 %40, i32 %43)
  %45 = call i32 (...) @FSTEST_EXIT()
  %46 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %46)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @FSTEST_ENTER(...) #2

declare dso_local i32 @RL(i32) #2

declare dso_local i32 @rump_sys_mkdir(i8*, i32) #2

declare dso_local i32 @rump_sys_chdir(i8*) #2

declare dso_local i32 @md(i8*, i32, i8*, i8*) #2

declare dso_local i32 @rump_sys_rmdir(i8*) #2

declare dso_local i64 @FSTYPE_NFS(i32*) #2

declare dso_local i32 @ATF_REQUIRE_ERRNO(i32, i32) #2

declare dso_local i32 @FSTEST_EXIT(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

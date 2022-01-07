; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/vfs/extr_t_union.c_whiteout.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/vfs/extr_t_union.c_whiteout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"daimage\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"/lower\00", align 1
@TDIR = common dso_local global i32 0, align 4
@TDFILE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@MNT_RDONLY = common dso_local global i32 0, align 4
@ENOTEMPTY = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @whiteout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @whiteout(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.stat, align 4
  %8 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i32, i32* @MAXPATHLEN, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @ffs_fstest_newfs(i32* %13, i8** %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 5242880, i32* null)
  %15 = call i32 @RL(i32 %14)
  %16 = load i32*, i32** %3, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = call i32 @ffs_fstest_mount(i32* %16, i8* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %19 = call i32 @RL(i32 %18)
  %20 = call i32 @rump_sys_chdir(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %21 = call i32 @RL(i32 %20)
  %22 = load i32, i32* @TDIR, align 4
  %23 = call i32 @rump_sys_mkdir(i32 %22, i32 511)
  %24 = call i32 @RL(i32 %23)
  %25 = load i32, i32* @TDFILE, align 4
  %26 = call i32 @rump_sys_mkdir(i32 %25, i32 511)
  %27 = call i32 @RL(i32 %26)
  %28 = call i32 @rump_sys_chdir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %29 = call i32 @RL(i32 %28)
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @ffs_fstest_unmount(i32* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %32 = call i32 @RL(i32 %31)
  %33 = load i32*, i32** %3, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = load i32, i32* @MNT_RDONLY, align 4
  %36 = call i32 @ffs_fstest_mount(i32* %33, i8* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = call i32 @RL(i32 %36)
  %38 = load i8*, i8** %4, align 8
  %39 = call i32 @mountunion(i8* %38, i8* %12)
  %40 = call i32 (...) @FSTEST_ENTER()
  %41 = load i32, i32* @ENOTEMPTY, align 4
  %42 = load i32, i32* @TDIR, align 4
  %43 = call i32 @rump_sys_rmdir(i32 %42)
  %44 = icmp eq i32 %43, -1
  %45 = zext i1 %44 to i32
  %46 = call i32 @ATF_REQUIRE_ERRNO(i32 %41, i32 %45)
  %47 = load i32, i32* @TDFILE, align 4
  %48 = call i32 @rump_sys_rmdir(i32 %47)
  %49 = call i32 @RL(i32 %48)
  %50 = load i32, i32* @TDIR, align 4
  %51 = call i32 @rump_sys_rmdir(i32 %50)
  %52 = call i32 @RL(i32 %51)
  %53 = load i32, i32* @ENOENT, align 4
  %54 = load i32, i32* @TDFILE, align 4
  %55 = call i32 @rump_sys_stat(i32 %54, %struct.stat* %7)
  %56 = icmp eq i32 %55, -1
  %57 = zext i1 %56 to i32
  %58 = call i32 @ATF_REQUIRE_ERRNO(i32 %53, i32 %57)
  %59 = load i32, i32* @ENOENT, align 4
  %60 = load i32, i32* @TDIR, align 4
  %61 = call i32 @rump_sys_stat(i32 %60, %struct.stat* %7)
  %62 = icmp eq i32 %61, -1
  %63 = zext i1 %62 to i32
  %64 = call i32 @ATF_REQUIRE_ERRNO(i32 %59, i32 %63)
  %65 = load i32, i32* @TDIR, align 4
  %66 = call i32 @rump_sys_mkdir(i32 %65, i32 511)
  %67 = call i32 @RL(i32 %66)
  %68 = load i32, i32* @TDIR, align 4
  %69 = call i32 @rump_sys_stat(i32 %68, %struct.stat* %7)
  %70 = call i32 @RL(i32 %69)
  %71 = load i32, i32* @ENOENT, align 4
  %72 = load i32, i32* @TDFILE, align 4
  %73 = call i32 @rump_sys_stat(i32 %72, %struct.stat* %7)
  %74 = icmp eq i32 %73, -1
  %75 = zext i1 %74 to i32
  %76 = call i32 @ATF_REQUIRE_ERRNO(i32 %71, i32 %75)
  %77 = call i32 (...) @FSTEST_EXIT()
  %78 = load i8*, i8** %4, align 8
  %79 = call i32 @rump_sys_unmount(i8* %78, i32 0)
  %80 = call i32 @RL(i32 %79)
  %81 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %81)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @RL(i32) #2

declare dso_local i32 @ffs_fstest_newfs(i32*, i8**, i8*, i32, i32*) #2

declare dso_local i32 @ffs_fstest_mount(i32*, i8*, i8*, i32) #2

declare dso_local i32 @rump_sys_chdir(i8*) #2

declare dso_local i32 @rump_sys_mkdir(i32, i32) #2

declare dso_local i32 @ffs_fstest_unmount(i32*, i8*, i32) #2

declare dso_local i32 @mountunion(i8*, i8*) #2

declare dso_local i32 @FSTEST_ENTER(...) #2

declare dso_local i32 @ATF_REQUIRE_ERRNO(i32, i32) #2

declare dso_local i32 @rump_sys_rmdir(i32) #2

declare dso_local i32 @rump_sys_stat(i32, %struct.stat*) #2

declare dso_local i32 @FSTEST_EXIT(...) #2

declare dso_local i32 @rump_sys_unmount(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

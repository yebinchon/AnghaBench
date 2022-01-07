; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/vfs/extr_t_vfsops.c_tfhremove.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/vfs/extr_t_vfsops.c_tfhremove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FNAME = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"file handles not supported\00", align 1
@E2BIG = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"getfh size\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"fhopen() for removed file succeeds (PR kern/43745)\00", align 1
@ESTALE = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @tfhremove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tfhremove(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @rump_sys_chdir(i8* %8)
  %10 = call i32 @RL(i32 %9)
  %11 = load i32, i32* @FNAME, align 4
  %12 = load i32, i32* @O_RDWR, align 4
  %13 = load i32, i32* @O_CREAT, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @rump_sys_open(i32 %11, i32 %14, i32 511)
  store i32 %15, i32* %7, align 4
  %16 = call i32 @RL(i32 %15)
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @rump_sys_close(i32 %17)
  %19 = call i32 @RL(i32 %18)
  store i64 0, i64* %5, align 8
  %20 = load i32, i32* @FNAME, align 4
  %21 = call i32 @rump_sys_getfh(i32 %20, i8* null, i64* %5)
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %37

23:                                               ; preds = %2
  %24 = load i64, i64* @errno, align 8
  %25 = load i64, i64* @EOPNOTSUPP, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = call i32 @atf_tc_skip(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %36

29:                                               ; preds = %23
  %30 = load i64, i64* @errno, align 8
  %31 = load i64, i64* @E2BIG, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = call i32 @atf_tc_fail_errno(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %29
  br label %36

36:                                               ; preds = %35, %27
  br label %37

37:                                               ; preds = %36, %2
  %38 = load i64, i64* %5, align 8
  %39 = call i8* @malloc(i64 %38)
  store i8* %39, i8** %6, align 8
  %40 = load i32, i32* @FNAME, align 4
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 @rump_sys_getfh(i32 %40, i8* %41, i64* %5)
  %43 = call i32 @RL(i32 %42)
  %44 = load i32, i32* @FNAME, align 4
  %45 = call i32 @rump_sys_unlink(i32 %44)
  %46 = call i32 @RL(i32 %45)
  %47 = load i32*, i32** %3, align 8
  %48 = call i64 @FSTYPE_LFS(i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %37
  %51 = call i32 @atf_tc_expect_fail(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %37
  %53 = load i32, i32* @ESTALE, align 4
  %54 = load i8*, i8** %6, align 8
  %55 = load i64, i64* %5, align 8
  %56 = load i32, i32* @O_RDONLY, align 4
  %57 = call i32 @rump_sys_fhopen(i8* %54, i64 %55, i32 %56)
  %58 = icmp eq i32 %57, -1
  %59 = zext i1 %58 to i32
  %60 = call i32 @ATF_REQUIRE_ERRNO(i32 %53, i32 %59)
  %61 = call i32 (...) @atf_tc_expect_pass()
  %62 = call i32 @rump_sys_chdir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %63 = call i32 @RL(i32 %62)
  ret void
}

declare dso_local i32 @RL(i32) #1

declare dso_local i32 @rump_sys_chdir(i8*) #1

declare dso_local i32 @rump_sys_open(i32, i32, i32) #1

declare dso_local i32 @rump_sys_close(i32) #1

declare dso_local i32 @rump_sys_getfh(i32, i8*, i64*) #1

declare dso_local i32 @atf_tc_skip(i8*) #1

declare dso_local i32 @atf_tc_fail_errno(i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @rump_sys_unlink(i32) #1

declare dso_local i64 @FSTYPE_LFS(i32*) #1

declare dso_local i32 @atf_tc_expect_fail(i8*) #1

declare dso_local i32 @ATF_REQUIRE_ERRNO(i32, i32) #1

declare dso_local i32 @rump_sys_fhopen(i8*, i64, i32) #1

declare dso_local i32 @atf_tc_expect_pass(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

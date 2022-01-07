; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/vfs/extr_t_vnops.c_read_directory.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/vfs/extr_t_vnops.c_read_directory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@O_DIRECTORY = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EISDIR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @read_directory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_directory(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [1024 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = call i32 (...) @FSTEST_ENTER()
  %10 = load i32, i32* @O_DIRECTORY, align 4
  %11 = load i32, i32* @O_RDONLY, align 4
  %12 = or i32 %10, %11
  %13 = call i32 @rump_sys_open(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %12, i32 511)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, -1
  %16 = zext i1 %15 to i32
  %17 = call i32 @ATF_REQUIRE(i32 %16)
  %18 = load i32, i32* %6, align 4
  %19 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %20 = call i32 @rump_sys_pread(i32 %18, i8* %19, i32 1024, i32 0)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, -1
  br i1 %22, label %27, label %23

23:                                               ; preds = %2
  %24 = load i64, i64* @errno, align 8
  %25 = load i64, i64* @EISDIR, align 8
  %26 = icmp eq i64 %24, %25
  br label %27

27:                                               ; preds = %23, %2
  %28 = phi i1 [ true, %2 ], [ %26, %23 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @ATF_CHECK(i32 %29)
  %31 = load i32, i32* %6, align 4
  %32 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %33 = call i32 @rump_sys_read(i32 %31, i8* %32, i32 1024)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, -1
  br i1 %35, label %40, label %36

36:                                               ; preds = %27
  %37 = load i64, i64* @errno, align 8
  %38 = load i64, i64* @EISDIR, align 8
  %39 = icmp eq i64 %37, %38
  br label %40

40:                                               ; preds = %36, %27
  %41 = phi i1 [ true, %27 ], [ %39, %36 ]
  %42 = zext i1 %41 to i32
  %43 = call i32 @ATF_CHECK(i32 %42)
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @rump_sys_close(i32 %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, -1
  %48 = zext i1 %47 to i32
  %49 = call i32 @ATF_REQUIRE(i32 %48)
  %50 = call i32 (...) @FSTEST_EXIT()
  ret void
}

declare dso_local i32 @FSTEST_ENTER(...) #1

declare dso_local i32 @rump_sys_open(i8*, i32, i32) #1

declare dso_local i32 @ATF_REQUIRE(i32) #1

declare dso_local i32 @rump_sys_pread(i32, i8*, i32, i32) #1

declare dso_local i32 @ATF_CHECK(i32) #1

declare dso_local i32 @rump_sys_read(i32, i8*, i32) #1

declare dso_local i32 @rump_sys_close(i32) #1

declare dso_local i32 @FSTEST_EXIT(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/vfs/extr_t_io.c_read_after_unlink.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/vfs/extr_t_io.c_read_after_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TBSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"file\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @read_after_unlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_after_unlink(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i32, i32* @TBSIZE, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = load i32, i32* @TBSIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %16 = call i32 (...) @FSTEST_ENTER()
  %17 = load i32, i32* @O_RDWR, align 4
  %18 = load i32, i32* @O_CREAT, align 4
  %19 = or i32 %17, %18
  %20 = call i32 (i8*, i32, ...) @rump_sys_open(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %19, i32 438)
  store i32 %20, i32* %8, align 4
  %21 = call i32 @RL(i32 %20)
  %22 = load i32, i32* @TBSIZE, align 4
  %23 = call i32 @memset(i8* %12, i8 signext 68, i32 %22)
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @TBSIZE, align 4
  %26 = call i32 @rump_sys_write(i32 %24, i8* %12, i32 %25)
  %27 = load i32, i32* @TBSIZE, align 4
  %28 = call i32 @ATF_REQUIRE_EQ(i32 %26, i32 %27)
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @rump_sys_close(i32 %29)
  %31 = load i32, i32* @EBUSY, align 4
  %32 = load i8*, i8** %4, align 8
  %33 = call i32 @rump_sys_unmount(i8* %32, i32 0)
  %34 = icmp eq i32 %33, -1
  %35 = zext i1 %34 to i32
  %36 = call i32 @ATF_REQUIRE_ERRNO(i32 %31, i32 %35)
  %37 = load i32, i32* @O_RDWR, align 4
  %38 = call i32 (i8*, i32, ...) @rump_sys_open(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = call i32 @RL(i32 %38)
  %40 = call i32 @rump_sys_unlink(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %41 = call i32 @RL(i32 %40)
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @TBSIZE, align 4
  %44 = call i32 @rump_sys_read(i32 %42, i8* %15, i32 %43)
  %45 = load i32, i32* @TBSIZE, align 4
  %46 = call i32 @ATF_REQUIRE_EQ(i32 %44, i32 %45)
  %47 = load i32, i32* @TBSIZE, align 4
  %48 = call i32 @memcmp(i8* %12, i8* %15, i32 %47)
  %49 = call i32 @ATF_REQUIRE_EQ(i32 %48, i32 0)
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @rump_sys_close(i32 %50)
  %52 = call i32 (...) @FSTEST_EXIT()
  %53 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %53)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @FSTEST_ENTER(...) #2

declare dso_local i32 @RL(i32) #2

declare dso_local i32 @rump_sys_open(i8*, i32, ...) #2

declare dso_local i32 @memset(i8*, i8 signext, i32) #2

declare dso_local i32 @ATF_REQUIRE_EQ(i32, i32) #2

declare dso_local i32 @rump_sys_write(i32, i8*, i32) #2

declare dso_local i32 @rump_sys_close(i32) #2

declare dso_local i32 @ATF_REQUIRE_ERRNO(i32, i32) #2

declare dso_local i32 @rump_sys_unmount(i8*, i32) #2

declare dso_local i32 @rump_sys_unlink(i8*) #2

declare dso_local i32 @rump_sys_read(i32, i8*, i32) #2

declare dso_local i32 @memcmp(i8*, i8*, i32) #2

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

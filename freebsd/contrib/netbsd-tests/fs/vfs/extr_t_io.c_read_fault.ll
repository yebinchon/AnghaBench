; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/vfs/extr_t_io.c_read_fault.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/vfs/extr_t_io.c_read_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"file\00", align 1
@O_CREAT = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@O_SYNC = common dso_local global i32 0, align 4
@O_RSYNC = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @read_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_fault(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  store i8 123, i8* %5, align 1
  %7 = call i32 (...) @FSTEST_ENTER()
  %8 = load i32, i32* @O_CREAT, align 4
  %9 = load i32, i32* @O_RDWR, align 4
  %10 = or i32 %8, %9
  %11 = call i32 (i8*, i32, ...) @rump_sys_open(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %10, i32 511)
  store i32 %11, i32* %6, align 4
  %12 = call i32 @RL(i32 %11)
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @rump_sys_write(i32 %13, i8* %5, i32 1)
  %15 = call i32 @ATF_REQUIRE_EQ(i32 %14, i32 1)
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @rump_sys_close(i32 %16)
  %18 = call i32 @RL(i32 %17)
  %19 = load i32, i32* @O_RDONLY, align 4
  %20 = load i32, i32* @O_SYNC, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @O_RSYNC, align 4
  %23 = or i32 %21, %22
  %24 = call i32 (i8*, i32, ...) @rump_sys_open(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = call i32 @RL(i32 %24)
  %26 = load i32, i32* @EFAULT, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @rump_sys_read(i32 %27, i32* null, i32 1)
  %29 = icmp eq i32 %28, -1
  %30 = zext i1 %29 to i32
  %31 = call i32 @ATF_REQUIRE_ERRNO(i32 %26, i32 %30)
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @rump_sys_close(i32 %32)
  %34 = call i32 @RL(i32 %33)
  %35 = call i32 (...) @FSTEST_EXIT()
  ret void
}

declare dso_local i32 @FSTEST_ENTER(...) #1

declare dso_local i32 @RL(i32) #1

declare dso_local i32 @rump_sys_open(i8*, i32, ...) #1

declare dso_local i32 @ATF_REQUIRE_EQ(i32, i32) #1

declare dso_local i32 @rump_sys_write(i32, i8*, i32) #1

declare dso_local i32 @rump_sys_close(i32) #1

declare dso_local i32 @ATF_REQUIRE_ERRNO(i32, i32) #1

declare dso_local i32 @rump_sys_read(i32, i32*, i32) #1

declare dso_local i32 @FSTEST_EXIT(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

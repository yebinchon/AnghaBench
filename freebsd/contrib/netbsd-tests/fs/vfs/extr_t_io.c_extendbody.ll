; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/vfs/extr_t_io.c_extendbody.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/vfs/extr_t_io.c_extendbody.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@TESTSZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"testfile\00", align 1
@O_CREAT = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@TESTSTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @extendbody to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @extendbody(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.stat, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* @TESTSZ, align 4
  %10 = add nsw i32 %9, 1
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %5, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %6, align 8
  %14 = call i32 (...) @FSTEST_ENTER()
  %15 = load i32, i32* @O_CREAT, align 4
  %16 = load i32, i32* @O_RDWR, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @O_APPEND, align 4
  br label %23

22:                                               ; preds = %2
  br label %23

23:                                               ; preds = %22, %20
  %24 = phi i32 [ %21, %20 ], [ 0, %22 ]
  %25 = or i32 %17, %24
  %26 = call i32 @rump_sys_open(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = call i32 @RL(i32 %26)
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @rump_sys_ftruncate(i32 %28, i32 %29)
  %31 = call i32 @RL(i32 %30)
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @rump_sys_fstat(i32 %32, %struct.stat* %7)
  %34 = call i32 @RL(i32 %33)
  %35 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @ATF_REQUIRE_EQ(i32 %36, i32 %37)
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @TESTSTR, align 4
  %41 = load i32, i32* @TESTSZ, align 4
  %42 = call i32 @rump_sys_write(i32 %39, i32 %40, i32 %41)
  %43 = load i32, i32* @TESTSZ, align 4
  %44 = call i32 @ATF_REQUIRE_EQ(i32 %42, i32 %43)
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @TESTSZ, align 4
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @rump_sys_pread(i32 %45, i8* %13, i32 %46, i32 %47)
  %49 = load i32, i32* @TESTSZ, align 4
  %50 = call i32 @ATF_REQUIRE_EQ(i32 %48, i32 %49)
  %51 = load i32, i32* @TESTSTR, align 4
  %52 = call i32 @ATF_REQUIRE_STREQ(i8* %13, i32 %51)
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @rump_sys_fstat(i32 %53, %struct.stat* %7)
  %55 = call i32 @RL(i32 %54)
  %56 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @TESTSZ, align 4
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 %58, %59
  %61 = call i32 @ATF_REQUIRE_EQ(i32 %57, i32 %60)
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @rump_sys_close(i32 %62)
  %64 = call i32 @RL(i32 %63)
  %65 = call i32 (...) @FSTEST_EXIT()
  %66 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %66)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @FSTEST_ENTER(...) #2

declare dso_local i32 @RL(i32) #2

declare dso_local i32 @rump_sys_open(i8*, i32) #2

declare dso_local i32 @rump_sys_ftruncate(i32, i32) #2

declare dso_local i32 @rump_sys_fstat(i32, %struct.stat*) #2

declare dso_local i32 @ATF_REQUIRE_EQ(i32, i32) #2

declare dso_local i32 @rump_sys_write(i32, i32, i32) #2

declare dso_local i32 @rump_sys_pread(i32, i8*, i32, i32) #2

declare dso_local i32 @ATF_REQUIRE_STREQ(i8*, i32) #2

declare dso_local i32 @rump_sys_close(i32) #2

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

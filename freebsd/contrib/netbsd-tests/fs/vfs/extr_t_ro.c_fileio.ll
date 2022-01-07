; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/vfs/extr_t_ro.c_fileio.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/vfs/extr_t_ro.c_fileio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FUNSIZE = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@AFILE = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@FUNTEXT = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @fileio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fileio(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i32, i32* @FUNSIZE, align 4
  %10 = add nsw i32 %9, 1
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = call i64 @FSTYPE_NFSRO(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @EACCES, align 4
  store i32 %18, i32* %8, align 4
  br label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @EROFS, align 4
  store i32 %20, i32* %8, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = call i32 (...) @FSTEST_ENTER()
  %23 = load i32, i32* @AFILE, align 4
  %24 = load i32, i32* @O_RDONLY, align 4
  %25 = call i32 @rump_sys_open(i32 %23, i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = call i32 @RL(i32 %25)
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @FUNSIZE, align 4
  %29 = call i32 @rump_sys_read(i32 %27, i8* %13, i32 %28)
  %30 = load i32, i32* @FUNSIZE, align 4
  %31 = call i32 @ATF_REQUIRE_EQ(i32 %29, i32 %30)
  %32 = load i32, i32* @FUNSIZE, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %13, i64 %33
  store i8 0, i8* %34, align 1
  %35 = load i32, i32* @FUNTEXT, align 4
  %36 = call i32 @ATF_REQUIRE_STREQ(i8* %13, i32 %35)
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @rump_sys_close(i32 %37)
  %39 = call i32 @RL(i32 %38)
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @AFILE, align 4
  %42 = load i32, i32* @O_WRONLY, align 4
  %43 = call i32 @rump_sys_open(i32 %41, i32 %42)
  %44 = icmp eq i32 %43, -1
  %45 = zext i1 %44 to i32
  %46 = call i32 @ATF_REQUIRE_ERRNO(i32 %40, i32 %45)
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @AFILE, align 4
  %49 = load i32, i32* @O_RDWR, align 4
  %50 = call i32 @rump_sys_open(i32 %48, i32 %49)
  %51 = icmp eq i32 %50, -1
  %52 = zext i1 %51 to i32
  %53 = call i32 @ATF_REQUIRE_ERRNO(i32 %47, i32 %52)
  %54 = call i32 (...) @FSTEST_EXIT()
  %55 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %55)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @FSTYPE_NFSRO(i32*) #2

declare dso_local i32 @FSTEST_ENTER(...) #2

declare dso_local i32 @RL(i32) #2

declare dso_local i32 @rump_sys_open(i32, i32) #2

declare dso_local i32 @ATF_REQUIRE_EQ(i32, i32) #2

declare dso_local i32 @rump_sys_read(i32, i8*, i32) #2

declare dso_local i32 @ATF_REQUIRE_STREQ(i8*, i32) #2

declare dso_local i32 @rump_sys_close(i32) #2

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

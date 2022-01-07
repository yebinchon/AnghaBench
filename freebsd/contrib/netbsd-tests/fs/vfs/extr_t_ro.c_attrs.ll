; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/vfs/extr_t_ro.c_attrs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/vfs/extr_t_ro.c_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32 }
%struct.stat = type { i32 }

@AFILE = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @attrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @attrs(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [2 x %struct.timeval], align 4
  %6 = alloca %struct.stat, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = call i32 (...) @FSTEST_ENTER()
  %9 = load i32, i32* @AFILE, align 4
  %10 = call i32 @rump_sys_stat(i32 %9, %struct.stat* %6)
  %11 = call i32 @RL(i32 %10)
  %12 = load i32, i32* @EROFS, align 4
  %13 = load i32, i32* @AFILE, align 4
  %14 = call i32 @rump_sys_chmod(i32 %13, i32 509)
  %15 = icmp eq i32 %14, -1
  %16 = zext i1 %15 to i32
  %17 = call i32 @ATF_REQUIRE_ERRNO(i32 %12, i32 %16)
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @FSTYPE_MSDOS(i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @EROFS, align 4
  %23 = load i32, i32* @AFILE, align 4
  %24 = call i32 @rump_sys_chown(i32 %23, i32 1, i32 1)
  %25 = icmp eq i32 %24, -1
  %26 = zext i1 %25 to i32
  %27 = call i32 @ATF_REQUIRE_ERRNO(i32 %22, i32 %26)
  br label %28

28:                                               ; preds = %21, %2
  %29 = load i32, i32* @EROFS, align 4
  %30 = load i32, i32* @AFILE, align 4
  %31 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %5, i64 0, i64 0
  %32 = call i32 @rump_sys_utimes(i32 %30, %struct.timeval* %31)
  %33 = icmp eq i32 %32, -1
  %34 = zext i1 %33 to i32
  %35 = call i32 @ATF_REQUIRE_ERRNO(i32 %29, i32 %34)
  %36 = load i32, i32* @AFILE, align 4
  %37 = load i32, i32* @O_RDONLY, align 4
  %38 = call i32 @rump_sys_open(i32 %36, i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = call i32 @RL(i32 %38)
  %40 = load i32, i32* @EROFS, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @rump_sys_fchmod(i32 %41, i32 509)
  %43 = icmp eq i32 %42, -1
  %44 = zext i1 %43 to i32
  %45 = call i32 @ATF_REQUIRE_ERRNO(i32 %40, i32 %44)
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 @FSTYPE_MSDOS(i32* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %28
  %50 = load i32, i32* @EROFS, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @rump_sys_fchown(i32 %51, i32 1, i32 1)
  %53 = icmp eq i32 %52, -1
  %54 = zext i1 %53 to i32
  %55 = call i32 @ATF_REQUIRE_ERRNO(i32 %50, i32 %54)
  br label %56

56:                                               ; preds = %49, %28
  %57 = load i32, i32* @EROFS, align 4
  %58 = load i32, i32* %7, align 4
  %59 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %5, i64 0, i64 0
  %60 = call i32 @rump_sys_futimes(i32 %58, %struct.timeval* %59)
  %61 = icmp eq i32 %60, -1
  %62 = zext i1 %61 to i32
  %63 = call i32 @ATF_REQUIRE_ERRNO(i32 %57, i32 %62)
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @rump_sys_close(i32 %64)
  %66 = call i32 @RL(i32 %65)
  %67 = call i32 (...) @FSTEST_EXIT()
  ret void
}

declare dso_local i32 @FSTEST_ENTER(...) #1

declare dso_local i32 @RL(i32) #1

declare dso_local i32 @rump_sys_stat(i32, %struct.stat*) #1

declare dso_local i32 @ATF_REQUIRE_ERRNO(i32, i32) #1

declare dso_local i32 @rump_sys_chmod(i32, i32) #1

declare dso_local i32 @FSTYPE_MSDOS(i32*) #1

declare dso_local i32 @rump_sys_chown(i32, i32, i32) #1

declare dso_local i32 @rump_sys_utimes(i32, %struct.timeval*) #1

declare dso_local i32 @rump_sys_open(i32, i32) #1

declare dso_local i32 @rump_sys_fchmod(i32, i32) #1

declare dso_local i32 @rump_sys_fchown(i32, i32, i32) #1

declare dso_local i32 @rump_sys_futimes(i32, %struct.timeval*) #1

declare dso_local i32 @rump_sys_close(i32) #1

declare dso_local i32 @FSTEST_EXIT(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

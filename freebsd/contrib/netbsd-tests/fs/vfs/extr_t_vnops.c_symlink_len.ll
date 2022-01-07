; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/vfs/extr_t_vnops.c_symlink_len.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/vfs/extr_t_vnops.c_symlink_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@USES_SYMLINKS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"afile\00", align 1
@ENAMETOOLONG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i64)* @symlink_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @symlink_len(i32* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i32, i32* @USES_SYMLINKS, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @rump_sys_chdir(i8* %10)
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @RLF(i32 %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %12)
  %14 = load i64, i64* %6, align 8
  %15 = add i64 %14, 1
  %16 = call i8* @malloc(i64 %15)
  store i8* %16, i8** %7, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = call i32 @ATF_REQUIRE(i8* %17)
  %19 = load i8*, i8** %7, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @memset(i8* %19, i8 signext 97, i64 %20)
  %22 = load i8*, i8** %7, align 8
  %23 = load i64, i64* %6, align 8
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  store i8 0, i8* %24, align 1
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @rump_sys_symlink(i8* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %33

29:                                               ; preds = %3
  %30 = load i32, i32* @ENAMETOOLONG, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @ATF_REQUIRE_ERRNO(i32 %30, i32 %31)
  br label %36

33:                                               ; preds = %3
  %34 = call i32 @rump_sys_unlink(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %35 = call i32 @RL(i32 %34)
  br label %36

36:                                               ; preds = %33, %29
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 @free(i8* %37)
  %39 = call i32 @rump_sys_chdir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %40 = call i32 @RL(i32 %39)
  ret void
}

declare dso_local i32 @RLF(i32, i8*, i8*) #1

declare dso_local i32 @rump_sys_chdir(i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @ATF_REQUIRE(i8*) #1

declare dso_local i32 @memset(i8*, i8 signext, i64) #1

declare dso_local i32 @rump_sys_symlink(i8*, i8*) #1

declare dso_local i32 @ATF_REQUIRE_ERRNO(i32, i32) #1

declare dso_local i32 @RL(i32) #1

declare dso_local i32 @rump_sys_unlink(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

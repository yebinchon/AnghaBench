; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/vfs/extr_t_io.c_holywrite.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/vfs/extr_t_io.c_holywrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"file\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @holywrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @holywrite(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [1024 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = call i64 (...) @getpagesize()
  %11 = add i64 %10, 1
  store i64 %11, i64* %8, align 8
  %12 = call i32 (...) @FSTEST_ENTER()
  %13 = load i32, i32* @O_RDWR, align 4
  %14 = load i32, i32* @O_CREAT, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @O_TRUNC, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @rump_sys_open(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %17, i32 438)
  store i32 %18, i32* %9, align 4
  %19 = call i32 @RL(i32 %18)
  %20 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %21 = call i32 @memset(i8* %20, i8 signext 65, i32 1024)
  %22 = load i32, i32* %9, align 4
  %23 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %24 = call i64 (...) @getpagesize()
  %25 = trunc i64 %24 to i32
  %26 = call i32 @rump_sys_pwrite(i32 %22, i8* %23, i32 1, i32 %25)
  %27 = call i32 @RL(i32 %26)
  %28 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %29 = call i32 @memset(i8* %28, i8 signext 66, i32 1024)
  %30 = load i32, i32* %9, align 4
  %31 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %32 = call i64 (...) @getpagesize()
  %33 = sub i64 %32, 1
  %34 = trunc i64 %33 to i32
  %35 = call i32 @rump_sys_pwrite(i32 %30, i8* %31, i32 2, i32 %34)
  %36 = call i32 @RL(i32 %35)
  %37 = call i64 (...) @getpagesize()
  %38 = mul i64 2, %37
  %39 = trunc i64 %38 to i32
  %40 = call i8* @malloc(i32 %39)
  store i8* %40, i8** %6, align 8
  %41 = call i32 @REQUIRE_LIBC(i8* %40, i32* null)
  %42 = call i64 (...) @getpagesize()
  %43 = mul i64 2, %42
  %44 = trunc i64 %43 to i32
  %45 = call i8* @malloc(i32 %44)
  store i8* %45, i8** %7, align 8
  %46 = call i32 @REQUIRE_LIBC(i8* %45, i32* null)
  %47 = load i32, i32* %9, align 4
  %48 = load i8*, i8** %6, align 8
  %49 = load i64, i64* %8, align 8
  %50 = call i32 @rump_sys_pread(i32 %47, i8* %48, i64 %49, i32 0)
  %51 = call i32 @RL(i32 %50)
  %52 = load i8*, i8** %7, align 8
  %53 = load i64, i64* %8, align 8
  %54 = trunc i64 %53 to i32
  %55 = call i32 @memset(i8* %52, i8 signext 0, i32 %54)
  %56 = load i8*, i8** %7, align 8
  %57 = call i64 (...) @getpagesize()
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  %59 = getelementptr inbounds i8, i8* %58, i64 -1
  %60 = call i32 @memset(i8* %59, i8 signext 66, i32 2)
  %61 = load i8*, i8** %6, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = load i64, i64* %8, align 8
  %64 = call i32 @memcmp(i8* %61, i8* %62, i64 %63)
  %65 = call i32 @ATF_REQUIRE_EQ(i32 %64, i32 0)
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @rump_sys_close(i32 %66)
  %68 = call i32 (...) @FSTEST_EXIT()
  ret void
}

declare dso_local i64 @getpagesize(...) #1

declare dso_local i32 @FSTEST_ENTER(...) #1

declare dso_local i32 @RL(i32) #1

declare dso_local i32 @rump_sys_open(i8*, i32, i32) #1

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i32 @rump_sys_pwrite(i32, i8*, i32, i32) #1

declare dso_local i32 @REQUIRE_LIBC(i8*, i32*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @rump_sys_pread(i32, i8*, i64, i32) #1

declare dso_local i32 @ATF_REQUIRE_EQ(i32, i32) #1

declare dso_local i32 @memcmp(i8*, i8*, i64) #1

declare dso_local i32 @rump_sys_close(i32) #1

declare dso_local i32 @FSTEST_EXIT(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/vfs/extr_t_vfsops.c_tfhinval.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/vfs/extr_t_vfsops.c_tfhinval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"RNG seed %lu\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@errno = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"file handles not supported\00", align 1
@E2BIG = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"getfh size\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @tfhinval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tfhinval(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = call i64 @time(i32* null)
  store i64 %9, i64* %7, align 8
  %10 = call i32 @srandom(i64 %9)
  %11 = load i64, i64* %7, align 8
  %12 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 %11)
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @rump_sys_chdir(i8* %13)
  %15 = call i32 @RL(i32 %14)
  store i64 0, i64* %5, align 8
  %16 = call i32 @rump_sys_getfh(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32* null, i64* %5)
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %32

18:                                               ; preds = %2
  %19 = load i64, i64* @errno, align 8
  %20 = load i64, i64* @EOPNOTSUPP, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = call i32 @atf_tc_skip(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %31

24:                                               ; preds = %18
  %25 = load i64, i64* @errno, align 8
  %26 = load i64, i64* @E2BIG, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = call i32 @atf_tc_fail_errno(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %24
  br label %31

31:                                               ; preds = %30, %22
  br label %32

32:                                               ; preds = %31, %2
  %33 = load i64, i64* %5, align 8
  %34 = call i8* @malloc(i64 %33)
  store i8* %34, i8** %6, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = load i64, i64* %5, align 8
  %37 = call i32 @tests_makegarbage(i8* %35, i64 %36)
  %38 = load i8*, i8** %6, align 8
  %39 = load i64, i64* %5, align 8
  %40 = load i32, i32* @O_RDWR, align 4
  %41 = call i32 @rump_sys_fhopen(i8* %38, i64 %39, i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, -1
  br i1 %43, label %44, label %47

44:                                               ; preds = %32
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @rump_sys_close(i32 %45)
  br label %47

47:                                               ; preds = %44, %32
  %48 = call i32 @rump_sys_chdir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %49 = call i32 @RL(i32 %48)
  ret void
}

declare dso_local i32 @srandom(i64) #1

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @printf(i8*, i64) #1

declare dso_local i32 @RL(i32) #1

declare dso_local i32 @rump_sys_chdir(i8*) #1

declare dso_local i32 @rump_sys_getfh(i8*, i32*, i64*) #1

declare dso_local i32 @atf_tc_skip(i8*) #1

declare dso_local i32 @atf_tc_fail_errno(i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @tests_makegarbage(i8*, i64) #1

declare dso_local i32 @rump_sys_fhopen(i8*, i64, i32) #1

declare dso_local i32 @rump_sys_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

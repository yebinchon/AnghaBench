; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/umapfs/extr_t_basic.c_testuidgid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/umapfs/extr_t_basic.c_testuidgid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i64 }

@.str = private unnamed_addr constant [8 x i8] c"stat %s\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"%s: expected uid %d, got %d\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"%s: expected gid %d, got %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i64)* @testuidgid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @testuidgid(i8* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.stat, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @rump_sys_stat(i8* %8, %struct.stat* %7)
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @atf_tc_fail_errno(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %12)
  br label %14

14:                                               ; preds = %11, %3
  %15 = load i64, i64* %5, align 8
  %16 = icmp ne i64 %15, -1
  br i1 %16, label %17, label %29

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %5, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load i8*, i8** %4, align 8
  %24 = load i64, i64* %5, align 8
  %25 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @atf_tc_fail(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %23, i64 %24, i64 %26)
  br label %28

28:                                               ; preds = %22, %17
  br label %29

29:                                               ; preds = %28, %14
  %30 = load i64, i64* %6, align 8
  %31 = icmp ne i64 %30, -1
  br i1 %31, label %32, label %44

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %6, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load i8*, i8** %4, align 8
  %39 = load i64, i64* %6, align 8
  %40 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @atf_tc_fail(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %38, i64 %39, i64 %41)
  br label %43

43:                                               ; preds = %37, %32
  br label %44

44:                                               ; preds = %43, %29
  ret void
}

declare dso_local i32 @rump_sys_stat(i8*, %struct.stat*) #1

declare dso_local i32 @atf_tc_fail_errno(i8*, i8*) #1

declare dso_local i32 @atf_tc_fail(i8*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

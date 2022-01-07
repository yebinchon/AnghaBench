; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/vfs/extr_t_mtime_otrunc.c_otrunc_mtime_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/vfs/extr_t_mtime_otrunc.c_otrunc_mtime_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"chdir failed\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"last lock: %ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [69 x i8] c"iteration %d: lock time did not increase, old time %lu, new time %lu\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @otrunc_mtime_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @otrunc_mtime_update(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  store i64 0, i64* %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @rump_sys_chdir(i8* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = call i32 @atf_tc_fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %2
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %38, %15
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 5
  br i1 %18, label %19, label %41

19:                                               ; preds = %16
  %20 = call i64 (...) @lock_it()
  store i64 %20, i64* %8, align 8
  %21 = load i64, i64* %8, align 8
  %22 = call i32 @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i64 %21)
  %23 = load i32, i32* %7, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %19
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* %5, align 8
  %28 = icmp sgt i64 %26, %27
  br label %29

29:                                               ; preds = %25, %19
  %30 = phi i1 [ true, %19 ], [ %28, %25 ]
  %31 = zext i1 %30 to i32
  %32 = load i32, i32* %7, align 4
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* %8, align 8
  %35 = call i32 @ATF_REQUIRE_MSG(i32 %31, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i64 0, i64 0), i32 %32, i64 %33, i64 %34)
  %36 = load i64, i64* %8, align 8
  store i64 %36, i64* %5, align 8
  %37 = call i32 @sleep(i32 2)
  br label %38

38:                                               ; preds = %29
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  br label %16

41:                                               ; preds = %16
  %42 = call i32 @rump_sys_chdir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @rump_sys_chdir(i8*) #1

declare dso_local i32 @atf_tc_fail(i8*) #1

declare dso_local i64 @lock_it(...) #1

declare dso_local i32 @printf(i8*, i64) #1

declare dso_local i32 @ATF_REQUIRE_MSG(i32, i8*, i32, i64, i64) #1

declare dso_local i32 @sleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

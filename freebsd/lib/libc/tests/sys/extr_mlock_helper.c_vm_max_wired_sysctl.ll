; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/tests/sys/extr_mlock_helper.c_vm_max_wired_sysctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/tests/sys/extr_mlock_helper.c_vm_max_wired_sysctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [30 x i8] c"Setting the new value to %lu\0A\00", align 1
@VM_MAX_WIRED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"sysctlbyname(%s) failed: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Saved the old value (%lu)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @vm_max_wired_sysctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vm_max_wired_sysctl(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = icmp eq i32* %7, null
  %9 = zext i1 %8 to i64
  %10 = select i1 %8, i64 0, i64 4
  store i64 %10, i64* %6, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %28

17:                                               ; preds = %2
  %18 = load i32, i32* @VM_MAX_WIRED, align 4
  %19 = load i32*, i32** %4, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call i64 @sysctlbyname(i32 %18, i32* null, i64* %5, i32* %19, i64 %20)
  %22 = icmp eq i64 %21, 0
  %23 = zext i1 %22 to i32
  %24 = load i32, i32* @VM_MAX_WIRED, align 4
  %25 = load i32, i32* @errno, align 4
  %26 = call i32 @strerror(i32 %25)
  %27 = call i32 @ATF_REQUIRE_MSG(i32 %23, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32 %26)
  br label %28

28:                                               ; preds = %17, %13
  %29 = load i32, i32* @VM_MAX_WIRED, align 4
  %30 = load i32*, i32** %3, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = load i64, i64* %6, align 8
  %33 = call i64 @sysctlbyname(i32 %29, i32* %30, i64* %5, i32* %31, i64 %32)
  %34 = icmp eq i64 %33, 0
  %35 = zext i1 %34 to i32
  %36 = load i32, i32* @VM_MAX_WIRED, align 4
  %37 = load i32, i32* @errno, align 4
  %38 = call i32 @strerror(i32 %37)
  %39 = call i32 @ATF_REQUIRE_MSG(i32 %35, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %38)
  %40 = load i32*, i32** %3, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %28
  %43 = load i32*, i32** %3, align 8
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %42, %28
  ret void
}

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @ATF_REQUIRE_MSG(i32, i8*, i32, i32) #1

declare dso_local i64 @sysctlbyname(i32, i32*, i64*, i32*, i64) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

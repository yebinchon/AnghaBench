; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/rump/modautoload/extr_t_modautoload.c_mountkernfs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/rump/modautoload/extr_t_modautoload.c_mountkernfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [34 x i8] c"host kernel modules not supported\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"/kern\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"mkdir /kern\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"kern.module.autoload\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"could not enable module autoload\00", align 1
@MOUNT_KERNFS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"could not mount kernfs\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @mountkernfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mountkernfs() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = call i32 (...) @rump_nativeabi_p()
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %0
  %9 = call i32 @atf_tc_skip(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %0
  %11 = call i32 (...) @rump_init()
  %12 = call i32 @rump_sys_mkdir(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 511)
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = call i32 @atf_tc_fail_errno(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %10
  store i32 1, i32* %2, align 4
  store i64 4, i64* %3, align 8
  store i64 4, i64* %4, align 8
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @sysctlbyname(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32* %1, i64* %3, i32* %2, i64 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = call i32 @atf_tc_fail_errno(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %16
  %24 = load i32, i32* @MOUNT_KERNFS, align 4
  %25 = call i32 @rump_sys_mount(i32 %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 0, i32* null, i32 0)
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = call i32 @atf_tc_fail_errno(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %23
  ret void
}

declare dso_local i32 @rump_nativeabi_p(...) #1

declare dso_local i32 @atf_tc_skip(i8*) #1

declare dso_local i32 @rump_init(...) #1

declare dso_local i32 @rump_sys_mkdir(i8*, i32) #1

declare dso_local i32 @atf_tc_fail_errno(i8*) #1

declare dso_local i32 @sysctlbyname(i8*, i32*, i64*, i32*, i64) #1

declare dso_local i32 @rump_sys_mount(i32, i8*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

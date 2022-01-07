; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/ptyfs/extr_t_ptyfs.c_mountptyfs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/ptyfs/extr_t_ptyfs.c_mountptyfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptyfs_args = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"/mp\00", align 1
@errno = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"mp1\00", align 1
@PTYFS_ARGSVERSION = common dso_local global i32 0, align 4
@MOUNT_PTYFS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"could not mount ptyfs\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @mountptyfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mountptyfs(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ptyfs_args, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 @rump_sys_mkdir(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 511)
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = load i64, i64* @errno, align 8
  %10 = load i64, i64* @EEXIST, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = call i32 @atf_tc_fail_errno(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %8
  br label %15

15:                                               ; preds = %14, %2
  %16 = call i32 @memset(%struct.ptyfs_args* %5, i32 0, i32 8)
  %17 = load i32, i32* @PTYFS_ARGSVERSION, align 4
  %18 = getelementptr inbounds %struct.ptyfs_args, %struct.ptyfs_args* %5, i32 0, i32 1
  store i32 %17, i32* %18, align 4
  %19 = getelementptr inbounds %struct.ptyfs_args, %struct.ptyfs_args* %5, i32 0, i32 0
  store i32 511, i32* %19, align 4
  %20 = load i32, i32* @MOUNT_PTYFS, align 4
  %21 = load i8*, i8** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @rump_sys_mount(i32 %20, i8* %21, i32 %22, %struct.ptyfs_args* %5, i32 8)
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %27

25:                                               ; preds = %15
  %26 = call i32 @atf_tc_fail_errno(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %15
  ret void
}

declare dso_local i32 @rump_sys_mkdir(i8*, i32) #1

declare dso_local i32 @atf_tc_fail_errno(i8*) #1

declare dso_local i32 @memset(%struct.ptyfs_args*, i32, i32) #1

declare dso_local i32 @rump_sys_mount(i32, i8*, i32, %struct.ptyfs_args*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

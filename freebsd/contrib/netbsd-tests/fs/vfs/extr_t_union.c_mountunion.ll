; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/vfs/extr_t_union.c_mountunion.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/vfs/extr_t_union.c_mountunion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.union_args = type { i8*, i32 }

@.str = private unnamed_addr constant [7 x i8] c"/lower\00", align 1
@UNMNT_BELOW = common dso_local global i32 0, align 4
@MOUNT_UNION = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"fs does not support VOP_WHITEOUT\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"union mount\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @mountunion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mountunion(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.union_args, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i32 @sprintf(i8* %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @rump_sys_mkdir(i8* %8, i32 511)
  %10 = call i32 @memset(%struct.union_args* %5, i32 0, i32 16)
  %11 = load i8*, i8** %4, align 8
  %12 = getelementptr inbounds %struct.union_args, %struct.union_args* %5, i32 0, i32 0
  store i8* %11, i8** %12, align 8
  %13 = load i32, i32* @UNMNT_BELOW, align 4
  %14 = getelementptr inbounds %struct.union_args, %struct.union_args* %5, i32 0, i32 1
  store i32 %13, i32* %14, align 8
  %15 = load i32, i32* @MOUNT_UNION, align 4
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 @rump_sys_mount(i32 %15, i8* %16, i32 0, %struct.union_args* %5, i32 16)
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %28

19:                                               ; preds = %2
  %20 = load i64, i64* @errno, align 8
  %21 = load i64, i64* @EOPNOTSUPP, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = call i32 @atf_tc_skip(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %27

25:                                               ; preds = %19
  %26 = call i32 @atf_tc_fail_errno(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %23
  br label %28

28:                                               ; preds = %27, %2
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*) #1

declare dso_local i32 @rump_sys_mkdir(i8*, i32) #1

declare dso_local i32 @memset(%struct.union_args*, i32, i32) #1

declare dso_local i32 @rump_sys_mount(i32, i8*, i32, %struct.union_args*, i32) #1

declare dso_local i32 @atf_tc_skip(i8*) #1

declare dso_local i32 @atf_tc_fail_errno(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

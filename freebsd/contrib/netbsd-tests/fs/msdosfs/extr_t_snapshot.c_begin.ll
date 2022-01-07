; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/msdosfs/extr_t_snapshot.c_begin.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/msdosfs/extr_t_snapshot.c_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmpfs_args = type { i32 }

@TMPFS_ARGS_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"/stor\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"mkdir /stor\00", align 1
@MOUNT_TMPFS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"mount storage\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @begin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @begin() #0 {
  %1 = alloca %struct.tmpfs_args, align 4
  %2 = getelementptr inbounds %struct.tmpfs_args, %struct.tmpfs_args* %1, i32 0, i32 0
  %3 = load i32, i32* @TMPFS_ARGS_VERSION, align 4
  store i32 %3, i32* %2, align 4
  %4 = call i32 @rump_sys_mkdir(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 511)
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = call i32 @atf_tc_fail_errno(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %8

8:                                                ; preds = %6, %0
  %9 = load i32, i32* @MOUNT_TMPFS, align 4
  %10 = call i32 @rump_sys_mount(i32 %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 0, %struct.tmpfs_args* %1, i32 4)
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = call i32 @atf_tc_fail_errno(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %8
  ret void
}

declare dso_local i32 @rump_sys_mkdir(i8*, i32) #1

declare dso_local i32 @atf_tc_fail_errno(i8*) #1

declare dso_local i32 @rump_sys_mount(i32, i8*, i32, %struct.tmpfs_args*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

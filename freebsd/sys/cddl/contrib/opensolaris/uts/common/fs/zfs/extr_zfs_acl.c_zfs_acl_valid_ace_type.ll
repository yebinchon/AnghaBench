; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_acl.c_zfs_acl_valid_ace_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_acl.c_zfs_acl_valid_ace_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ACE_TYPE_FLAGS = common dso_local global i32 0, align 4
@ACE_OWNER = common dso_local global i32 0, align 4
@OWNING_GROUP = common dso_local global i32 0, align 4
@ACE_EVERYONE = common dso_local global i32 0, align 4
@ACE_IDENTIFIER_GROUP = common dso_local global i32 0, align 4
@MIN_ACE_TYPE = common dso_local global i32 0, align 4
@MAX_ACE_TYPE = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @zfs_acl_valid_ace_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_acl_valid_ace_type(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %33 [
    i32 129, label %8
    i32 128, label %8
    i32 130, label %8
    i32 131, label %8
  ]

8:                                                ; preds = %2, %2, %2, %2
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @ACE_TYPE_FLAGS, align 4
  %11 = and i32 %9, %10
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @ACE_OWNER, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %30, label %15

15:                                               ; preds = %8
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @OWNING_GROUP, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %30, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @ACE_EVERYONE, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %30, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %6, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @ACE_IDENTIFIER_GROUP, align 4
  %29 = icmp eq i32 %27, %28
  br label %30

30:                                               ; preds = %26, %23, %19, %15, %8
  %31 = phi i1 [ true, %23 ], [ true, %19 ], [ true, %15 ], [ true, %8 ], [ %29, %26 ]
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %3, align 4
  br label %46

33:                                               ; preds = %2
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @MIN_ACE_TYPE, align 4
  %36 = icmp sge i32 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @MAX_ACE_TYPE, align 4
  %40 = icmp sle i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32, i32* @B_TRUE, align 4
  store i32 %42, i32* %3, align 4
  br label %46

43:                                               ; preds = %37, %33
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* @B_FALSE, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %44, %41, %30
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

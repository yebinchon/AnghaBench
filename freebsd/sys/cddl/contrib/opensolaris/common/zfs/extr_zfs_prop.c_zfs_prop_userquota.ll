; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/common/zfs/extr_zfs_prop.c_zfs_prop_userquota.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/common/zfs/extr_zfs_prop.c_zfs_prop_userquota.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZFS_NUM_USERQUOTA_PROPS = common dso_local global i64 0, align 8
@zfs_userquota_prop_prefixes = common dso_local global i32* null, align 8
@B_TRUE = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_prop_userquota(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 0, i64* %4, align 8
  br label %5

5:                                                ; preds = %25, %1
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* @ZFS_NUM_USERQUOTA_PROPS, align 8
  %8 = icmp ult i64 %6, %7
  br i1 %8, label %9, label %28

9:                                                ; preds = %5
  %10 = load i8*, i8** %3, align 8
  %11 = load i32*, i32** @zfs_userquota_prop_prefixes, align 8
  %12 = load i64, i64* %4, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = load i32*, i32** @zfs_userquota_prop_prefixes, align 8
  %16 = load i64, i64* %4, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @strlen(i32 %18)
  %20 = call i64 @strncmp(i8* %10, i32 %14, i32 %19)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %9
  %23 = load i32, i32* @B_TRUE, align 4
  store i32 %23, i32* %2, align 4
  br label %30

24:                                               ; preds = %9
  br label %25

25:                                               ; preds = %24
  %26 = load i64, i64* %4, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %4, align 8
  br label %5

28:                                               ; preds = %5
  %29 = load i32, i32* @B_FALSE, align 4
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %28, %22
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i64 @strncmp(i8*, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

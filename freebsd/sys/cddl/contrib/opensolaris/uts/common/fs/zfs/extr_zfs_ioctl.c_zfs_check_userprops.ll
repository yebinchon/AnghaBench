; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_ioctl.c_zfs_check_userprops.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_ioctl.c_zfs_check_userprops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DATA_TYPE_STRING = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ZAP_MAXNAMELEN = common dso_local global i64 0, align 8
@ENAMETOOLONG = common dso_local global i32 0, align 4
@ZAP_MAXVALUELEN = common dso_local global i64 0, align 8
@E2BIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @zfs_check_userprops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_check_userprops(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32* null, i32** %4, align 8
  br label %6

6:                                                ; preds = %41, %1
  %7 = load i32*, i32** %3, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i32* @nvlist_next_nvpair(i32* %7, i32* %8)
  store i32* %9, i32** %4, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %42

11:                                               ; preds = %6
  %12 = load i32*, i32** %4, align 8
  %13 = call i8* @nvpair_name(i32* %12)
  store i8* %13, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @zfs_prop_user(i8* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %11
  %18 = load i32*, i32** %4, align 8
  %19 = call i64 @nvpair_type(i32* %18)
  %20 = load i64, i64* @DATA_TYPE_STRING, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %17, %11
  %23 = load i32, i32* @EINVAL, align 4
  %24 = call i32 @SET_ERROR(i32 %23)
  store i32 %24, i32* %2, align 4
  br label %43

25:                                               ; preds = %17
  %26 = load i8*, i8** %5, align 8
  %27 = call i64 @strlen(i8* %26)
  %28 = load i64, i64* @ZAP_MAXNAMELEN, align 8
  %29 = icmp sge i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* @ENAMETOOLONG, align 4
  %32 = call i32 @SET_ERROR(i32 %31)
  store i32 %32, i32* %2, align 4
  br label %43

33:                                               ; preds = %25
  %34 = load i32*, i32** %4, align 8
  %35 = call i8* @fnvpair_value_string(i32* %34)
  %36 = call i64 @strlen(i8* %35)
  %37 = load i64, i64* @ZAP_MAXVALUELEN, align 8
  %38 = icmp sge i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @E2BIG, align 4
  store i32 %40, i32* %2, align 4
  br label %43

41:                                               ; preds = %33
  br label %6

42:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %39, %30, %22
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #1

declare dso_local i8* @nvpair_name(i32*) #1

declare dso_local i32 @zfs_prop_user(i8*) #1

declare dso_local i64 @nvpair_type(i32*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @fnvpair_value_string(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

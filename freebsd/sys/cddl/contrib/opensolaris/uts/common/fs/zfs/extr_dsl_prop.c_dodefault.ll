; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_prop.c_dodefault.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_prop.c_dodefault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZPROP_INVAL = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@PROP_TYPE_STRING = common dso_local global i64 0, align 8
@EOVERFLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i32, i8*)* @dodefault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dodefault(i64 %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* @ZPROP_INVAL, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %21, label %13

13:                                               ; preds = %4
  %14 = load i64, i64* %6, align 8
  %15 = call i64 @zfs_prop_readonly(i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %13
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @zfs_prop_setonce(i64 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %17, %4
  %22 = load i32, i32* @ENOENT, align 4
  %23 = call i32 @SET_ERROR(i32 %22)
  store i32 %23, i32* %5, align 4
  br label %63

24:                                               ; preds = %17, %13
  %25 = load i64, i64* %6, align 8
  %26 = call i64 @zfs_prop_get_type(i64 %25)
  %27 = load i64, i64* @PROP_TYPE_STRING, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %48

29:                                               ; preds = %24
  %30 = load i64, i64* %6, align 8
  %31 = call i32* @zfs_prop_default_string(i64 %30)
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i32, i32* @ENOENT, align 4
  %35 = call i32 @SET_ERROR(i32 %34)
  store i32 %35, i32* %5, align 4
  br label %63

36:                                               ; preds = %29
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 1
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, i32* @EOVERFLOW, align 4
  %41 = call i32 @SET_ERROR(i32 %40)
  store i32 %41, i32* %5, align 4
  br label %63

42:                                               ; preds = %36
  %43 = load i8*, i8** %9, align 8
  %44 = load i64, i64* %6, align 8
  %45 = call i32* @zfs_prop_default_string(i64 %44)
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @strncpy(i8* %43, i32* %45, i32 %46)
  br label %62

48:                                               ; preds = %24
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 8
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %8, align 4
  %53 = icmp slt i32 %52, 1
  br i1 %53, label %54, label %57

54:                                               ; preds = %51, %48
  %55 = load i32, i32* @EOVERFLOW, align 4
  %56 = call i32 @SET_ERROR(i32 %55)
  store i32 %56, i32* %5, align 4
  br label %63

57:                                               ; preds = %51
  %58 = load i64, i64* %6, align 8
  %59 = call i32 @zfs_prop_default_numeric(i64 %58)
  %60 = load i8*, i8** %9, align 8
  %61 = bitcast i8* %60 to i32*
  store i32 %59, i32* %61, align 4
  br label %62

62:                                               ; preds = %57, %42
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %62, %54, %39, %33, %21
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i64 @zfs_prop_readonly(i64) #1

declare dso_local i32 @zfs_prop_setonce(i64) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i64 @zfs_prop_get_type(i64) #1

declare dso_local i32* @zfs_prop_default_string(i64) #1

declare dso_local i32 @strncpy(i8*, i32*, i32) #1

declare dso_local i32 @zfs_prop_default_numeric(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

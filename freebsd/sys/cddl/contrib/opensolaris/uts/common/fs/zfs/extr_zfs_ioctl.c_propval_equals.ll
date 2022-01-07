; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_ioctl.c_propval_equals.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_ioctl.c_propval_equals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DATA_TYPE_NVLIST = common dso_local global i64 0, align 8
@ZPROP_VALUE = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@DATA_TYPE_STRING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @propval_equals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @propval_equals(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i64 @nvpair_type(i32* %12)
  %14 = load i64, i64* @DATA_TYPE_NVLIST, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %2
  %17 = load i32*, i32** %4, align 8
  %18 = call i64 @nvpair_value_nvlist(i32* %17, i32** %6)
  %19 = icmp eq i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @VERIFY(i32 %20)
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* @ZPROP_VALUE, align 4
  %24 = call i64 @nvlist_lookup_nvpair(i32* %22, i32 %23, i32** %4)
  %25 = icmp eq i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @VERIFY(i32 %26)
  br label %28

28:                                               ; preds = %16, %2
  %29 = load i32*, i32** %5, align 8
  %30 = call i64 @nvpair_type(i32* %29)
  %31 = load i64, i64* @DATA_TYPE_NVLIST, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %45

33:                                               ; preds = %28
  %34 = load i32*, i32** %5, align 8
  %35 = call i64 @nvpair_value_nvlist(i32* %34, i32** %7)
  %36 = icmp eq i64 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @VERIFY(i32 %37)
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* @ZPROP_VALUE, align 4
  %41 = call i64 @nvlist_lookup_nvpair(i32* %39, i32 %40, i32** %5)
  %42 = icmp eq i64 %41, 0
  %43 = zext i1 %42 to i32
  %44 = call i32 @VERIFY(i32 %43)
  br label %45

45:                                               ; preds = %33, %28
  %46 = load i32*, i32** %4, align 8
  %47 = call i64 @nvpair_type(i32* %46)
  %48 = load i32*, i32** %5, align 8
  %49 = call i64 @nvpair_type(i32* %48)
  %50 = icmp ne i64 %47, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, i32* @B_FALSE, align 4
  store i32 %52, i32* %3, align 4
  br label %89

53:                                               ; preds = %45
  %54 = load i32*, i32** %4, align 8
  %55 = call i64 @nvpair_type(i32* %54)
  %56 = load i64, i64* @DATA_TYPE_STRING, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %74

58:                                               ; preds = %53
  %59 = load i32*, i32** %4, align 8
  %60 = call i64 @nvpair_value_string(i32* %59, i8** %8)
  %61 = icmp eq i64 %60, 0
  %62 = zext i1 %61 to i32
  %63 = call i32 @VERIFY(i32 %62)
  %64 = load i32*, i32** %5, align 8
  %65 = call i64 @nvpair_value_string(i32* %64, i8** %9)
  %66 = icmp eq i64 %65, 0
  %67 = zext i1 %66 to i32
  %68 = call i32 @VERIFY(i32 %67)
  %69 = load i8*, i8** %8, align 8
  %70 = load i8*, i8** %9, align 8
  %71 = call i64 @strcmp(i8* %69, i8* %70)
  %72 = icmp eq i64 %71, 0
  %73 = zext i1 %72 to i32
  store i32 %73, i32* %3, align 4
  br label %89

74:                                               ; preds = %53
  %75 = load i32*, i32** %4, align 8
  %76 = call i64 @nvpair_value_uint64(i32* %75, i64* %10)
  %77 = icmp eq i64 %76, 0
  %78 = zext i1 %77 to i32
  %79 = call i32 @VERIFY(i32 %78)
  %80 = load i32*, i32** %5, align 8
  %81 = call i64 @nvpair_value_uint64(i32* %80, i64* %11)
  %82 = icmp eq i64 %81, 0
  %83 = zext i1 %82 to i32
  %84 = call i32 @VERIFY(i32 %83)
  %85 = load i64, i64* %10, align 8
  %86 = load i64, i64* %11, align 8
  %87 = icmp eq i64 %85, %86
  %88 = zext i1 %87 to i32
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %74, %58, %51
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i64 @nvpair_type(i32*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @nvpair_value_nvlist(i32*, i32**) #1

declare dso_local i64 @nvlist_lookup_nvpair(i32*, i32, i32**) #1

declare dso_local i64 @nvpair_value_string(i32*, i8**) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @nvpair_value_uint64(i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

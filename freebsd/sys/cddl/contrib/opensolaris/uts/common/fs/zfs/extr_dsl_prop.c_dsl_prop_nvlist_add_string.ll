; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_prop.c_dsl_prop_nvlist_add_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_prop.c_dsl_prop_nvlist_add_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZPROP_VALUE = common dso_local global i32 0, align 4
@NV_UNIQUE_NAME = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dsl_prop_nvlist_add_string(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i8* @zfs_prop_to_name(i32 %9)
  store i8* %10, i8** %8, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = call i64 @nvlist_lookup_nvlist(i32* %11, i8* %12, i32** %7)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %3
  %16 = load i32*, i32** %7, align 8
  %17 = load i32, i32* @ZPROP_VALUE, align 4
  %18 = load i8*, i8** %6, align 8
  %19 = call i64 @nvlist_add_string(i32* %16, i32 %17, i8* %18)
  %20 = icmp eq i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @VERIFY(i32 %21)
  br label %46

23:                                               ; preds = %3
  %24 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %25 = load i32, i32* @KM_SLEEP, align 4
  %26 = call i64 @nvlist_alloc(i32** %7, i32 %24, i32 %25)
  %27 = icmp eq i64 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i32 @VERIFY(i32 %28)
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* @ZPROP_VALUE, align 4
  %32 = load i8*, i8** %6, align 8
  %33 = call i64 @nvlist_add_string(i32* %30, i32 %31, i8* %32)
  %34 = icmp eq i64 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i32 @VERIFY(i32 %35)
  %37 = load i32*, i32** %4, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = call i64 @nvlist_add_nvlist(i32* %37, i8* %38, i32* %39)
  %41 = icmp eq i64 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i32 @VERIFY(i32 %42)
  %44 = load i32*, i32** %7, align 8
  %45 = call i32 @nvlist_free(i32* %44)
  br label %46

46:                                               ; preds = %23, %15
  ret void
}

declare dso_local i8* @zfs_prop_to_name(i32) #1

declare dso_local i64 @nvlist_lookup_nvlist(i32*, i8*, i32**) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @nvlist_add_string(i32*, i32, i8*) #1

declare dso_local i64 @nvlist_alloc(i32**, i32, i32) #1

declare dso_local i64 @nvlist_add_nvlist(i32*, i8*, i32*) #1

declare dso_local i32 @nvlist_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

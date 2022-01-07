; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_prop.c_dsl_prop_nvlist_add_uint64.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_prop.c_dsl_prop_nvlist_add_uint64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZPROP_VALUE = common dso_local global i32 0, align 4
@NV_UNIQUE_NAME = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@ZPROP_SOURCE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dsl_prop_nvlist_add_uint64(i32* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i8* @zfs_prop_to_name(i32 %10)
  store i8* %11, i8** %8, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = call i64 @nvlist_lookup_nvlist(i32* %12, i8* %13, i32** %7)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %3
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* @ZPROP_VALUE, align 4
  %19 = load i64, i64* %6, align 8
  %20 = call i64 @nvlist_add_uint64(i32* %17, i32 %18, i64 %19)
  %21 = icmp eq i64 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @VERIFY(i32 %22)
  br label %62

24:                                               ; preds = %3
  %25 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %26 = load i32, i32* @KM_SLEEP, align 4
  %27 = call i64 @nvlist_alloc(i32** %7, i32 %25, i32 %26)
  %28 = icmp eq i64 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @VERIFY(i32 %29)
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* @ZPROP_VALUE, align 4
  %33 = load i64, i64* %6, align 8
  %34 = call i64 @nvlist_add_uint64(i32* %31, i32 %32, i64 %33)
  %35 = icmp eq i64 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 @VERIFY(i32 %36)
  %38 = load i32, i32* %5, align 4
  %39 = call i64 @dodefault(i32 %38, i32 8, i32 1, i64* %9)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %24
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* %9, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %41
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* @ZPROP_SOURCE, align 4
  %48 = call i64 @nvlist_add_string(i32* %46, i32 %47, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %49 = icmp eq i64 %48, 0
  %50 = zext i1 %49 to i32
  %51 = call i32 @VERIFY(i32 %50)
  br label %52

52:                                               ; preds = %45, %41, %24
  %53 = load i32*, i32** %4, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = load i32*, i32** %7, align 8
  %56 = call i64 @nvlist_add_nvlist(i32* %53, i8* %54, i32* %55)
  %57 = icmp eq i64 %56, 0
  %58 = zext i1 %57 to i32
  %59 = call i32 @VERIFY(i32 %58)
  %60 = load i32*, i32** %7, align 8
  %61 = call i32 @nvlist_free(i32* %60)
  br label %62

62:                                               ; preds = %52, %16
  ret void
}

declare dso_local i8* @zfs_prop_to_name(i32) #1

declare dso_local i64 @nvlist_lookup_nvlist(i32*, i8*, i32**) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @nvlist_add_uint64(i32*, i32, i64) #1

declare dso_local i64 @nvlist_alloc(i32**, i32, i32) #1

declare dso_local i64 @dodefault(i32, i32, i32, i64*) #1

declare dso_local i64 @nvlist_add_string(i32*, i32, i8*) #1

declare dso_local i64 @nvlist_add_nvlist(i32*, i8*, i32*) #1

declare dso_local i32 @nvlist_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa.c_spa_prop_add_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa.c_spa_prop_add_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NV_UNIQUE_NAME = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@ZPROP_SOURCE = common dso_local global i32 0, align 4
@ZPROP_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i8*, i32, i32)* @spa_prop_add_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spa_prop_add_list(i32* %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i8* @zpool_prop_to_name(i32 %13)
  store i8* %14, i8** %11, align 8
  %15 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %16 = load i32, i32* @KM_SLEEP, align 4
  %17 = call i64 @nvlist_alloc(i32** %12, i32 %15, i32 %16)
  %18 = icmp eq i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @VERIFY(i32 %19)
  %21 = load i32*, i32** %12, align 8
  %22 = load i32, i32* @ZPROP_SOURCE, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call i64 @nvlist_add_uint64(i32* %21, i32 %22, i32 %23)
  %25 = icmp eq i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @VERIFY(i32 %26)
  %28 = load i8*, i8** %8, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %5
  %31 = load i32*, i32** %12, align 8
  %32 = load i32, i32* @ZPROP_VALUE, align 4
  %33 = load i8*, i8** %8, align 8
  %34 = call i64 @nvlist_add_string(i32* %31, i32 %32, i8* %33)
  %35 = icmp eq i64 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 @VERIFY(i32 %36)
  br label %46

38:                                               ; preds = %5
  %39 = load i32*, i32** %12, align 8
  %40 = load i32, i32* @ZPROP_VALUE, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i64 @nvlist_add_uint64(i32* %39, i32 %40, i32 %41)
  %43 = icmp eq i64 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i32 @VERIFY(i32 %44)
  br label %46

46:                                               ; preds = %38, %30
  %47 = load i32*, i32** %6, align 8
  %48 = load i8*, i8** %11, align 8
  %49 = load i32*, i32** %12, align 8
  %50 = call i64 @nvlist_add_nvlist(i32* %47, i8* %48, i32* %49)
  %51 = icmp eq i64 %50, 0
  %52 = zext i1 %51 to i32
  %53 = call i32 @VERIFY(i32 %52)
  %54 = load i32*, i32** %12, align 8
  %55 = call i32 @nvlist_free(i32* %54)
  ret void
}

declare dso_local i8* @zpool_prop_to_name(i32) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @nvlist_alloc(i32**, i32, i32) #1

declare dso_local i64 @nvlist_add_uint64(i32*, i32, i32) #1

declare dso_local i64 @nvlist_add_string(i32*, i32, i8*) #1

declare dso_local i64 @nvlist_add_nvlist(i32*, i8*, i32*) #1

declare dso_local i32 @nvlist_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

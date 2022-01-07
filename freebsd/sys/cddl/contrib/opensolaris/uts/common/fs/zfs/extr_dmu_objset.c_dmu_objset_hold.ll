; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu_objset.c_dmu_objset_hold.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu_objset.c_dmu_objset_hold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dmu_objset_hold(i8* %0, i8* %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32** %2, i32*** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @dsl_pool_hold(i8* %11, i8* %12, i32** %8)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %10, align 4
  store i32 %17, i32* %4, align 4
  br label %45

18:                                               ; preds = %3
  %19 = load i32*, i32** %8, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @dsl_dataset_hold(i32* %19, i8* %20, i8* %21, i32** %9)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  %26 = load i32*, i32** %8, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @dsl_pool_rele(i32* %26, i8* %27)
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %4, align 4
  br label %45

30:                                               ; preds = %18
  %31 = load i32*, i32** %9, align 8
  %32 = load i32**, i32*** %7, align 8
  %33 = call i32 @dmu_objset_from_ds(i32* %31, i32** %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %30
  %37 = load i32*, i32** %9, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 @dsl_dataset_rele(i32* %37, i8* %38)
  %40 = load i32*, i32** %8, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 @dsl_pool_rele(i32* %40, i8* %41)
  br label %43

43:                                               ; preds = %36, %30
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %43, %25, %16
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @dsl_pool_hold(i8*, i8*, i32**) #1

declare dso_local i32 @dsl_dataset_hold(i32*, i8*, i8*, i32**) #1

declare dso_local i32 @dsl_pool_rele(i32*, i8*) #1

declare dso_local i32 @dmu_objset_from_ds(i32*, i32**) #1

declare dso_local i32 @dsl_dataset_rele(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu_objset.c_dmu_objset_own_impl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu_objset.c_dmu_objset_own_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@DMU_OST_ANY = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i32, i8*, %struct.TYPE_6__**)* @dmu_objset_own_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmu_objset_own_impl(i32* %0, i64 %1, i32 %2, i8* %3, %struct.TYPE_6__** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_6__**, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store %struct.TYPE_6__** %4, %struct.TYPE_6__*** %11, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %11, align 8
  %15 = call i32 @dmu_objset_from_ds(i32* %13, %struct.TYPE_6__** %14)
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %12, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %5
  %19 = load i32*, i32** %7, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = call i32 @dsl_dataset_disown(i32* %19, i8* %20)
  br label %56

22:                                               ; preds = %5
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* @DMU_OST_ANY, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %41

26:                                               ; preds = %22
  %27 = load i64, i64* %8, align 8
  %28 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %11, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %27, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %26
  %36 = load i32*, i32** %7, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = call i32 @dsl_dataset_disown(i32* %36, i8* %37)
  %39 = load i32, i32* @EINVAL, align 4
  %40 = call i32 @SET_ERROR(i32 %39)
  store i32 %40, i32* %6, align 4
  br label %58

41:                                               ; preds = %26, %22
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %54, label %44

44:                                               ; preds = %41
  %45 = load i32*, i32** %7, align 8
  %46 = call i64 @dsl_dataset_is_snapshot(i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = load i32*, i32** %7, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = call i32 @dsl_dataset_disown(i32* %49, i8* %50)
  %52 = load i32, i32* @EROFS, align 4
  %53 = call i32 @SET_ERROR(i32 %52)
  store i32 %53, i32* %6, align 4
  br label %58

54:                                               ; preds = %44, %41
  br label %55

55:                                               ; preds = %54
  br label %56

56:                                               ; preds = %55, %18
  %57 = load i32, i32* %12, align 4
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %56, %48, %35
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local i32 @dmu_objset_from_ds(i32*, %struct.TYPE_6__**) #1

declare dso_local i32 @dsl_dataset_disown(i32*, i8*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i64 @dsl_dataset_is_snapshot(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

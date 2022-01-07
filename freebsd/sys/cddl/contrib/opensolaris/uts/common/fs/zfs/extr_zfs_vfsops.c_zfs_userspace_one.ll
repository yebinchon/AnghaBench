; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_vfsops.c_zfs_userspace_one.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_vfsops.c_zfs_userspace_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@ENOTSUP = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_userspace_one(%struct.TYPE_5__* %0, i32 %1, i8* %2, i64 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca [32 x i8], align 16
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  %15 = load i64*, i64** %11, align 8
  store i64 0, i64* %15, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @dmu_objset_userspace_present(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* @ENOTSUP, align 4
  %23 = call i32 @SET_ERROR(i32 %22)
  store i32 %23, i32* %6, align 4
  br label %56

24:                                               ; preds = %5
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i64 @zfs_userquota_prop_to_obj(%struct.TYPE_5__* %25, i32 %26)
  store i64 %27, i64* %14, align 8
  %28 = load i64, i64* %14, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 0, i32* %6, align 4
  br label %56

31:                                               ; preds = %24
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = load i64, i64* %10, align 8
  %35 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %36 = load i32, i32* @B_FALSE, align 4
  %37 = call i32 @id_to_fuidstr(%struct.TYPE_5__* %32, i8* %33, i64 %34, i8* %35, i32 %36)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = load i32, i32* %13, align 4
  store i32 %41, i32* %6, align 4
  br label %56

42:                                               ; preds = %31
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i64, i64* %14, align 8
  %47 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %48 = load i64*, i64** %11, align 8
  %49 = call i32 @zap_lookup(i32 %45, i64 %46, i8* %47, i32 8, i32 1, i64* %48)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* @ENOENT, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %42
  store i32 0, i32* %13, align 4
  br label %54

54:                                               ; preds = %53, %42
  %55 = load i32, i32* %13, align 4
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %54, %40, %30, %21
  %57 = load i32, i32* %6, align 4
  ret i32 %57
}

declare dso_local i32 @dmu_objset_userspace_present(i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i64 @zfs_userquota_prop_to_obj(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @id_to_fuidstr(%struct.TYPE_5__*, i8*, i64, i8*, i32) #1

declare dso_local i32 @zap_lookup(i32, i64, i8*, i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

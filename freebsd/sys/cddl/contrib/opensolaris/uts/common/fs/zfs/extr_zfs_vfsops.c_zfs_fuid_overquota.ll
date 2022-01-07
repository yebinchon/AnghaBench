; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_vfsops.c_zfs_fuid_overquota.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_vfsops.c_zfs_fuid_overquota.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32, i64 }

@DMU_GROUPUSED_OBJECT = common dso_local global i64 0, align 8
@DMU_USERUSED_OBJECT = common dso_local global i64 0, align 8
@B_FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%llx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_fuid_overquota(%struct.TYPE_3__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca [32 x i8], align 16
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i64, i64* @DMU_GROUPUSED_OBJECT, align 8
  br label %20

18:                                               ; preds = %3
  %19 = load i64, i64* @DMU_USERUSED_OBJECT, align 8
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i64 [ %17, %16 ], [ %19, %18 ]
  store i64 %21, i64* %11, align 8
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  br label %32

28:                                               ; preds = %20
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  br label %32

32:                                               ; preds = %28, %24
  %33 = phi i64 [ %27, %24 ], [ %31, %28 ]
  store i64 %33, i64* %12, align 8
  %34 = load i64, i64* %12, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %32
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36, %32
  %42 = load i32, i32* @B_FALSE, align 4
  store i32 %42, i32* %4, align 4
  br label %74

43:                                               ; preds = %36
  %44 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %45 = load i64, i64* %7, align 8
  %46 = trunc i64 %45 to i32
  %47 = call i32 @sprintf(i8* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load i64, i64* %12, align 8
  %52 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %53 = call i32 @zap_lookup(i32 %50, i64 %51, i8* %52, i32 8, i32 1, i64* %10)
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %13, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %43
  %57 = load i32, i32* @B_FALSE, align 4
  store i32 %57, i32* %4, align 4
  br label %74

58:                                               ; preds = %43
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load i64, i64* %11, align 8
  %63 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %64 = call i32 @zap_lookup(i32 %61, i64 %62, i8* %63, i32 8, i32 1, i64* %9)
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %13, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %58
  %68 = load i32, i32* @B_FALSE, align 4
  store i32 %68, i32* %4, align 4
  br label %74

69:                                               ; preds = %58
  %70 = load i64, i64* %9, align 8
  %71 = load i64, i64* %10, align 8
  %72 = icmp sge i64 %70, %71
  %73 = zext i1 %72 to i32
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %69, %67, %56, %41
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @zap_lookup(i32, i64, i8*, i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

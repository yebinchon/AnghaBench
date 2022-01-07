; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_disk.c_vdev_disk_hold.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_disk.c_vdev_disk_hold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i64, i32, i32*, i32*, i32*, i32 }

@SCL_STATE = common dso_local global i32 0, align 4
@RW_WRITER = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%ss0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @vdev_disk_hold to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vdev_disk_hold(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 6
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @SCL_STATE, align 4
  %11 = load i32, i32* @RW_WRITER, align 4
  %12 = call i32 @spa_config_held(i32 %9, i32 %10, i32 %11)
  %13 = call i32 @ASSERT(i32 %12)
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 47
  br i1 %25, label %26, label %27

26:                                               ; preds = %18, %1
  br label %94

27:                                               ; preds = %18
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 5
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %94

33:                                               ; preds = %27
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, -1
  br i1 %37, label %38, label %61

38:                                               ; preds = %33
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @strlen(i8* %41)
  %43 = add nsw i32 %42, 3
  %44 = sext i32 %43 to i64
  store i64 %44, i64* %5, align 8
  %45 = load i64, i64* %5, align 8
  %46 = load i32, i32* @KM_SLEEP, align 4
  %47 = call i8* @kmem_alloc(i64 %45, i32 %46)
  store i8* %47, i8** %6, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = load i64, i64* %5, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @snprintf(i8* %48, i64 %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %52)
  %54 = load i8*, i8** %6, align 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 4
  %57 = call i32 @ldi_vp_from_name(i8* %54, i32** %56)
  %58 = load i8*, i8** %6, align 8
  %59 = load i64, i64* %5, align 8
  %60 = call i32 @kmem_free(i8* %58, i64 %59)
  br label %61

61:                                               ; preds = %38, %33
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 4
  %64 = load i32*, i32** %63, align 8
  %65 = icmp eq i32* %64, null
  br i1 %65, label %66, label %73

66:                                               ; preds = %61
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 4
  %72 = call i32 @ldi_vp_from_name(i8* %69, i32** %71)
  br label %73

73:                                               ; preds = %66, %61
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 3
  %76 = load i32*, i32** %75, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %94

78:                                               ; preds = %73
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 3
  %81 = load i32*, i32** %80, align 8
  %82 = call i64 @ddi_devid_str_decode(i32* %81, i32* %3, i8** %4)
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %78
  %85 = load i32, i32* %3, align 4
  %86 = load i8*, i8** %4, align 8
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 2
  %89 = call i32 @ldi_vp_from_devid(i32 %85, i8* %86, i32* %88)
  %90 = load i8*, i8** %4, align 8
  %91 = call i32 @ddi_devid_str_free(i8* %90)
  %92 = load i32, i32* %3, align 4
  %93 = call i32 @ddi_devid_free(i32 %92)
  br label %94

94:                                               ; preds = %26, %32, %84, %78, %73
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @spa_config_held(i32, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @kmem_alloc(i64, i32) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*) #1

declare dso_local i32 @ldi_vp_from_name(i8*, i32**) #1

declare dso_local i32 @kmem_free(i8*, i64) #1

declare dso_local i64 @ddi_devid_str_decode(i32*, i32*, i8**) #1

declare dso_local i32 @ldi_vp_from_devid(i32, i8*, i32*) #1

declare dso_local i32 @ddi_devid_str_free(i8*) #1

declare dso_local i32 @ddi_devid_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

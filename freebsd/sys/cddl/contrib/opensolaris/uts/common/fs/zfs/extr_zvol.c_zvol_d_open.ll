; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zvol.c_zvol_d_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zvol.c_zvol_d_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32, i32, i32 }
%struct.thread = type { i32 }

@zfsdev_state_lock = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4
@ZVOL_RDONLY = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@ZVOL_EXCL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@FSYNC = common dso_local global i32 0, align 4
@FDSYNC = common dso_local global i32 0, align 4
@ZVOL_OBJ = common dso_local global i32 0, align 4
@FEXCL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i32, %struct.thread*)* @zvol_d_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zvol_d_open(%struct.cdev* %0, i32 %1, i32 %2, %struct.thread* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.thread*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.thread* %3, %struct.thread** %9, align 8
  %12 = load %struct.cdev*, %struct.cdev** %6, align 8
  %13 = getelementptr inbounds %struct.cdev, %struct.cdev* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %10, align 8
  store i32 0, i32* %11, align 4
  %15 = call i32 @mutex_enter(i32* @zfsdev_state_lock)
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %22 = call i32 @zvol_first_open(%struct.TYPE_4__* %21)
  store i32 %22, i32* %11, align 4
  br label %23

23:                                               ; preds = %20, %4
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = call i32 @mutex_exit(i32* @zfsdev_state_lock)
  %28 = load i32, i32* %11, align 4
  store i32 %28, i32* %5, align 4
  br label %95

29:                                               ; preds = %23
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @FWRITE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %29
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @ZVOL_RDONLY, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load i32, i32* @EROFS, align 4
  %43 = call i32 @SET_ERROR(i32 %42)
  store i32 %43, i32* %11, align 4
  br label %84

44:                                               ; preds = %34, %29
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @ZVOL_EXCL, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load i32, i32* @EBUSY, align 4
  %53 = call i32 @SET_ERROR(i32 %52)
  store i32 %53, i32* %11, align 4
  br label %84

54:                                               ; preds = %44
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %56, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @FSYNC, align 4
  %61 = load i32, i32* @FDSYNC, align 4
  %62 = or i32 %60, %61
  %63 = and i32 %59, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %81

65:                                               ; preds = %54
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 4
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %74, label %80

74:                                               ; preds = %65
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @ZVOL_OBJ, align 4
  %79 = call i32 @zil_async_to_sync(i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %74, %65
  br label %81

81:                                               ; preds = %80, %54
  %82 = call i32 @mutex_exit(i32* @zfsdev_state_lock)
  %83 = load i32, i32* %11, align 4
  store i32 %83, i32* %5, align 4
  br label %95

84:                                               ; preds = %51, %41
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %91 = call i32 @zvol_last_close(%struct.TYPE_4__* %90)
  br label %92

92:                                               ; preds = %89, %84
  %93 = call i32 @mutex_exit(i32* @zfsdev_state_lock)
  %94 = load i32, i32* %11, align 4
  store i32 %94, i32* %5, align 4
  br label %95

95:                                               ; preds = %92, %81, %26
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @zvol_first_open(%struct.TYPE_4__*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @zil_async_to_sync(i32, i32) #1

declare dso_local i32 @zvol_last_close(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

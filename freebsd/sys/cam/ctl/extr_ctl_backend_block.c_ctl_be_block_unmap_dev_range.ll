; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_backend_block.c_ctl_be_block_unmap_dev_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_backend_block.c_ctl_be_block_unmap_dev_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_be_block_lun = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.ctl_be_block_io = type { i32, i32 }
%struct.bio = type { i64, i32, i64, %struct.ctl_be_block_io*, i32 (%struct.bio*)*, i64, i64, %struct.cdev*, i32 }
%struct.cdev = type { i32 }
%struct.cdevsw = type { i32 (%struct.bio.0*)* }
%struct.bio.0 = type opaque

@LONG_MAX = common dso_local global i64 0, align 8
@BIO_DELETE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctl_be_block_lun*, %struct.ctl_be_block_io*, i64, i64, i32)* @ctl_be_block_unmap_dev_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctl_be_block_unmap_dev_range(%struct.ctl_be_block_lun* %0, %struct.ctl_be_block_io* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.ctl_be_block_lun*, align 8
  %7 = alloca %struct.ctl_be_block_io*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.bio*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.cdevsw*, align 8
  %14 = alloca %struct.cdev*, align 8
  %15 = alloca i32, align 4
  store %struct.ctl_be_block_lun* %0, %struct.ctl_be_block_lun** %6, align 8
  store %struct.ctl_be_block_io* %1, %struct.ctl_be_block_io** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %16 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %6, align 8
  %17 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.cdevsw* @devvn_refthread(i32 %18, %struct.cdev** %14, i32* %15)
  store %struct.cdevsw* %19, %struct.cdevsw** %13, align 8
  %20 = load i64, i64* @LONG_MAX, align 8
  %21 = load i64, i64* @LONG_MAX, align 8
  %22 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %6, align 8
  %23 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = srem i64 %21, %25
  %27 = sub nsw i64 %20, %26
  store i64 %27, i64* %12, align 8
  br label %28

28:                                               ; preds = %106, %5
  %29 = load i64, i64* %9, align 8
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %107

31:                                               ; preds = %28
  %32 = call %struct.bio* (...) @g_alloc_bio()
  store %struct.bio* %32, %struct.bio** %11, align 8
  %33 = load i32, i32* @BIO_DELETE, align 4
  %34 = load %struct.bio*, %struct.bio** %11, align 8
  %35 = getelementptr inbounds %struct.bio, %struct.bio* %34, i32 0, i32 8
  store i32 %33, i32* %35, align 8
  %36 = load %struct.cdev*, %struct.cdev** %14, align 8
  %37 = load %struct.bio*, %struct.bio** %11, align 8
  %38 = getelementptr inbounds %struct.bio, %struct.bio* %37, i32 0, i32 7
  store %struct.cdev* %36, %struct.cdev** %38, align 8
  %39 = load i64, i64* %8, align 8
  %40 = load %struct.bio*, %struct.bio** %11, align 8
  %41 = getelementptr inbounds %struct.bio, %struct.bio* %40, i32 0, i32 6
  store i64 %39, i64* %41, align 8
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* %12, align 8
  %44 = call i64 @MIN(i64 %42, i64 %43)
  %45 = load %struct.bio*, %struct.bio** %11, align 8
  %46 = getelementptr inbounds %struct.bio, %struct.bio* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = load %struct.bio*, %struct.bio** %11, align 8
  %48 = getelementptr inbounds %struct.bio, %struct.bio* %47, i32 0, i32 5
  store i64 0, i64* %48, align 8
  %49 = load %struct.bio*, %struct.bio** %11, align 8
  %50 = getelementptr inbounds %struct.bio, %struct.bio* %49, i32 0, i32 4
  store i32 (%struct.bio*)* @ctl_be_block_biodone, i32 (%struct.bio*)** %50, align 8
  %51 = load %struct.ctl_be_block_io*, %struct.ctl_be_block_io** %7, align 8
  %52 = load %struct.bio*, %struct.bio** %11, align 8
  %53 = getelementptr inbounds %struct.bio, %struct.bio* %52, i32 0, i32 3
  store %struct.ctl_be_block_io* %51, %struct.ctl_be_block_io** %53, align 8
  %54 = load i64, i64* %8, align 8
  %55 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %6, align 8
  %56 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = sdiv i64 %54, %58
  %60 = load %struct.bio*, %struct.bio** %11, align 8
  %61 = getelementptr inbounds %struct.bio, %struct.bio* %60, i32 0, i32 2
  store i64 %59, i64* %61, align 8
  %62 = load %struct.bio*, %struct.bio** %11, align 8
  %63 = getelementptr inbounds %struct.bio, %struct.bio* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %8, align 8
  %66 = add nsw i64 %65, %64
  store i64 %66, i64* %8, align 8
  %67 = load %struct.bio*, %struct.bio** %11, align 8
  %68 = getelementptr inbounds %struct.bio, %struct.bio* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %9, align 8
  %71 = sub nsw i64 %70, %69
  store i64 %71, i64* %9, align 8
  %72 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %6, align 8
  %73 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %72, i32 0, i32 0
  %74 = call i32 @mtx_lock(i32* %73)
  %75 = load %struct.ctl_be_block_io*, %struct.ctl_be_block_io** %7, align 8
  %76 = getelementptr inbounds %struct.ctl_be_block_io, %struct.ctl_be_block_io* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 4
  %79 = load i32, i32* %10, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %31
  %82 = load i64, i64* %9, align 8
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load %struct.ctl_be_block_io*, %struct.ctl_be_block_io** %7, align 8
  %86 = getelementptr inbounds %struct.ctl_be_block_io, %struct.ctl_be_block_io* %85, i32 0, i32 0
  store i32 1, i32* %86, align 4
  br label %87

87:                                               ; preds = %84, %81, %31
  %88 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %6, align 8
  %89 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %88, i32 0, i32 0
  %90 = call i32 @mtx_unlock(i32* %89)
  %91 = load %struct.cdevsw*, %struct.cdevsw** %13, align 8
  %92 = icmp ne %struct.cdevsw* %91, null
  br i1 %92, label %93, label %100

93:                                               ; preds = %87
  %94 = load %struct.cdevsw*, %struct.cdevsw** %13, align 8
  %95 = getelementptr inbounds %struct.cdevsw, %struct.cdevsw* %94, i32 0, i32 0
  %96 = load i32 (%struct.bio.0*)*, i32 (%struct.bio.0*)** %95, align 8
  %97 = load %struct.bio*, %struct.bio** %11, align 8
  %98 = bitcast %struct.bio* %97 to %struct.bio.0*
  %99 = call i32 %96(%struct.bio.0* %98)
  br label %106

100:                                              ; preds = %87
  %101 = load i32, i32* @ENXIO, align 4
  %102 = load %struct.bio*, %struct.bio** %11, align 8
  %103 = getelementptr inbounds %struct.bio, %struct.bio* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 8
  %104 = load %struct.bio*, %struct.bio** %11, align 8
  %105 = call i32 @ctl_be_block_biodone(%struct.bio* %104)
  br label %106

106:                                              ; preds = %100, %93
  br label %28

107:                                              ; preds = %28
  %108 = load %struct.cdevsw*, %struct.cdevsw** %13, align 8
  %109 = icmp ne %struct.cdevsw* %108, null
  br i1 %109, label %110, label %114

110:                                              ; preds = %107
  %111 = load %struct.cdev*, %struct.cdev** %14, align 8
  %112 = load i32, i32* %15, align 4
  %113 = call i32 @dev_relthread(%struct.cdev* %111, i32 %112)
  br label %114

114:                                              ; preds = %110, %107
  ret void
}

declare dso_local %struct.cdevsw* @devvn_refthread(i32, %struct.cdev**, i32*) #1

declare dso_local %struct.bio* @g_alloc_bio(...) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i32 @ctl_be_block_biodone(%struct.bio*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @dev_relthread(%struct.cdev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

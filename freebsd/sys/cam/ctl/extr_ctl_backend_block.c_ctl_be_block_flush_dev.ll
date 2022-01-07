; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_backend_block.c_ctl_be_block_flush_dev.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_backend_block.c_ctl_be_block_flush_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_be_block_lun = type { i32, i32, i32 }
%struct.ctl_be_block_io = type { i32, i32, i32 }
%struct.bio = type { i32, %struct.cdev*, i64, %struct.ctl_be_block_io*, i32 (%struct.bio*)*, i64, i64, i32 }
%struct.cdev = type { i32 }
%struct.cdevsw = type { i32 (%struct.bio.0*)* }
%struct.bio.0 = type opaque

@.str = private unnamed_addr constant [9 x i8] c"entered\0A\00", align 1
@BIO_FLUSH = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctl_be_block_lun*, %struct.ctl_be_block_io*)* @ctl_be_block_flush_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctl_be_block_flush_dev(%struct.ctl_be_block_lun* %0, %struct.ctl_be_block_io* %1) #0 {
  %3 = alloca %struct.ctl_be_block_lun*, align 8
  %4 = alloca %struct.ctl_be_block_io*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.cdevsw*, align 8
  %7 = alloca %struct.cdev*, align 8
  %8 = alloca i32, align 4
  store %struct.ctl_be_block_lun* %0, %struct.ctl_be_block_lun** %3, align 8
  store %struct.ctl_be_block_io* %1, %struct.ctl_be_block_io** %4, align 8
  %9 = call i32 @DPRINTF(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %10 = call %struct.bio* (...) @g_alloc_bio()
  store %struct.bio* %10, %struct.bio** %5, align 8
  %11 = load i32, i32* @BIO_FLUSH, align 4
  %12 = load %struct.bio*, %struct.bio** %5, align 8
  %13 = getelementptr inbounds %struct.bio, %struct.bio* %12, i32 0, i32 7
  store i32 %11, i32* %13, align 8
  %14 = load %struct.bio*, %struct.bio** %5, align 8
  %15 = getelementptr inbounds %struct.bio, %struct.bio* %14, i32 0, i32 6
  store i64 0, i64* %15, align 8
  %16 = load %struct.bio*, %struct.bio** %5, align 8
  %17 = getelementptr inbounds %struct.bio, %struct.bio* %16, i32 0, i32 5
  store i64 0, i64* %17, align 8
  %18 = load %struct.bio*, %struct.bio** %5, align 8
  %19 = getelementptr inbounds %struct.bio, %struct.bio* %18, i32 0, i32 4
  store i32 (%struct.bio*)* @ctl_be_block_biodone, i32 (%struct.bio*)** %19, align 8
  %20 = load %struct.ctl_be_block_io*, %struct.ctl_be_block_io** %4, align 8
  %21 = load %struct.bio*, %struct.bio** %5, align 8
  %22 = getelementptr inbounds %struct.bio, %struct.bio* %21, i32 0, i32 3
  store %struct.ctl_be_block_io* %20, %struct.ctl_be_block_io** %22, align 8
  %23 = load %struct.bio*, %struct.bio** %5, align 8
  %24 = getelementptr inbounds %struct.bio, %struct.bio* %23, i32 0, i32 2
  store i64 0, i64* %24, align 8
  %25 = load %struct.ctl_be_block_io*, %struct.ctl_be_block_io** %4, align 8
  %26 = getelementptr inbounds %struct.ctl_be_block_io, %struct.ctl_be_block_io* %25, i32 0, i32 0
  store i32 1, i32* %26, align 4
  %27 = load %struct.ctl_be_block_io*, %struct.ctl_be_block_io** %4, align 8
  %28 = getelementptr inbounds %struct.ctl_be_block_io, %struct.ctl_be_block_io* %27, i32 0, i32 1
  store i32 1, i32* %28, align 4
  %29 = load %struct.ctl_be_block_io*, %struct.ctl_be_block_io** %4, align 8
  %30 = getelementptr inbounds %struct.ctl_be_block_io, %struct.ctl_be_block_io* %29, i32 0, i32 2
  %31 = call i32 @binuptime(i32* %30)
  %32 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %3, align 8
  %33 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %32, i32 0, i32 1
  %34 = call i32 @mtx_lock(i32* %33)
  %35 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %3, align 8
  %36 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ctl_be_block_io*, %struct.ctl_be_block_io** %4, align 8
  %39 = getelementptr inbounds %struct.ctl_be_block_io, %struct.ctl_be_block_io* %38, i32 0, i32 2
  %40 = call i32 @devstat_start_transaction(i32 %37, i32* %39)
  %41 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %3, align 8
  %42 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %41, i32 0, i32 1
  %43 = call i32 @mtx_unlock(i32* %42)
  %44 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %3, align 8
  %45 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call %struct.cdevsw* @devvn_refthread(i32 %46, %struct.cdev** %7, i32* %8)
  store %struct.cdevsw* %47, %struct.cdevsw** %6, align 8
  %48 = load %struct.cdevsw*, %struct.cdevsw** %6, align 8
  %49 = icmp ne %struct.cdevsw* %48, null
  br i1 %49, label %50, label %63

50:                                               ; preds = %2
  %51 = load %struct.cdev*, %struct.cdev** %7, align 8
  %52 = load %struct.bio*, %struct.bio** %5, align 8
  %53 = getelementptr inbounds %struct.bio, %struct.bio* %52, i32 0, i32 1
  store %struct.cdev* %51, %struct.cdev** %53, align 8
  %54 = load %struct.cdevsw*, %struct.cdevsw** %6, align 8
  %55 = getelementptr inbounds %struct.cdevsw, %struct.cdevsw* %54, i32 0, i32 0
  %56 = load i32 (%struct.bio.0*)*, i32 (%struct.bio.0*)** %55, align 8
  %57 = load %struct.bio*, %struct.bio** %5, align 8
  %58 = bitcast %struct.bio* %57 to %struct.bio.0*
  %59 = call i32 %56(%struct.bio.0* %58)
  %60 = load %struct.cdev*, %struct.cdev** %7, align 8
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @dev_relthread(%struct.cdev* %60, i32 %61)
  br label %69

63:                                               ; preds = %2
  %64 = load i32, i32* @ENXIO, align 4
  %65 = load %struct.bio*, %struct.bio** %5, align 8
  %66 = getelementptr inbounds %struct.bio, %struct.bio* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.bio*, %struct.bio** %5, align 8
  %68 = call i32 @ctl_be_block_biodone(%struct.bio* %67)
  br label %69

69:                                               ; preds = %63, %50
  ret void
}

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local %struct.bio* @g_alloc_bio(...) #1

declare dso_local i32 @ctl_be_block_biodone(%struct.bio*) #1

declare dso_local i32 @binuptime(i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @devstat_start_transaction(i32, i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local %struct.cdevsw* @devvn_refthread(i32, %struct.cdev**, i32*) #1

declare dso_local i32 @dev_relthread(%struct.cdev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

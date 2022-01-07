; ModuleID = '/home/carl/AnghaBench/freebsd/stand/i386/zfsboot/extr_zfsboot.c_probe_drive.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/i386/zfsboot/extr_zfsboot.c_probe_drive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }
%struct.zfsdsk = type { i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i32, i32, i32 }
%struct.dos_partition = type { i64, i64, i32 }

@dmadat = common dso_local global %struct.TYPE_4__* null, align 8
@DOSBBSECTOR = common dso_local global i64 0, align 8
@DOSPARTOFF = common dso_local global i32 0, align 4
@NDOSPART = common dso_local global i32 0, align 4
@vdev_read2 = common dso_local global i32 0, align 4
@DEV_BSIZE = common dso_local global i32 0, align 4
@GPT_HDR_SIG = common dso_local global i32* null, align 8
@freebsd_zfs_uuid = common dso_local global i32 0, align 4
@gelipw = common dso_local global i32 0, align 4
@vdev_read = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zfsdsk*)* @probe_drive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @probe_drive(%struct.zfsdsk* %0) #0 {
  %2 = alloca %struct.zfsdsk*, align 8
  %3 = alloca %struct.dos_partition*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.zfsdsk* %0, %struct.zfsdsk** %2, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dmadat, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  store i8* %8, i8** %4, align 8
  %9 = load %struct.zfsdsk*, %struct.zfsdsk** %2, align 8
  %10 = getelementptr inbounds %struct.zfsdsk, %struct.zfsdsk* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store i64 0, i64* %11, align 8
  %12 = load %struct.zfsdsk*, %struct.zfsdsk** %2, align 8
  %13 = getelementptr inbounds %struct.zfsdsk, %struct.zfsdsk* %12, i32 0, i32 1
  %14 = load i8*, i8** %4, align 8
  %15 = load i64, i64* @DOSBBSECTOR, align 8
  %16 = call i64 @drvread(%struct.TYPE_3__* %13, i8* %14, i64 %15, i32 1)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %73

19:                                               ; preds = %1
  %20 = load i8*, i8** %4, align 8
  %21 = load i32, i32* @DOSPARTOFF, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  %24 = bitcast i8* %23 to %struct.dos_partition*
  store %struct.dos_partition* %24, %struct.dos_partition** %3, align 8
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %70, %19
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @NDOSPART, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %29, label %73

29:                                               ; preds = %25
  %30 = load %struct.dos_partition*, %struct.dos_partition** %3, align 8
  %31 = load i32, i32* %5, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %30, i64 %32
  %34 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %29
  br label %70

38:                                               ; preds = %29
  %39 = load %struct.dos_partition*, %struct.dos_partition** %3, align 8
  %40 = load i32, i32* %5, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %39, i64 %41
  %43 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.zfsdsk*, %struct.zfsdsk** %2, align 8
  %46 = getelementptr inbounds %struct.zfsdsk, %struct.zfsdsk* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store i64 %44, i64* %47, align 8
  %48 = load %struct.dos_partition*, %struct.dos_partition** %3, align 8
  %49 = load i32, i32* %5, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %48, i64 %50
  %52 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.zfsdsk*, %struct.zfsdsk** %2, align 8
  %55 = getelementptr inbounds %struct.zfsdsk, %struct.zfsdsk* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  store i64 %53, i64* %56, align 8
  %57 = load i32, i32* %5, align 4
  %58 = add i32 %57, 1
  %59 = load %struct.zfsdsk*, %struct.zfsdsk** %2, align 8
  %60 = getelementptr inbounds %struct.zfsdsk, %struct.zfsdsk* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 2
  store i32 %58, i32* %61, align 8
  %62 = load i32, i32* @vdev_read2, align 4
  %63 = load %struct.zfsdsk*, %struct.zfsdsk** %2, align 8
  %64 = call i64 @vdev_probe(i32 %62, %struct.zfsdsk* %63, i32* null)
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %38
  %67 = load %struct.zfsdsk*, %struct.zfsdsk** %2, align 8
  %68 = call %struct.zfsdsk* @copy_dsk(%struct.zfsdsk* %67)
  store %struct.zfsdsk* %68, %struct.zfsdsk** %2, align 8
  br label %69

69:                                               ; preds = %66, %38
  br label %70

70:                                               ; preds = %69, %37
  %71 = load i32, i32* %5, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %5, align 4
  br label %25

73:                                               ; preds = %18, %25
  ret void
}

declare dso_local i64 @drvread(%struct.TYPE_3__*, i8*, i64, i32) #1

declare dso_local i64 @vdev_probe(i32, %struct.zfsdsk*, i32*) #1

declare dso_local %struct.zfsdsk* @copy_dsk(%struct.zfsdsk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

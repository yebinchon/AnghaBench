; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/zfs/extr_zfs.c_zfs_probe_dev.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/zfs/extr_zfs.c_zfs_probe_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (i8**, i8*, i32*)* }
%struct.disk_devdesc = type { i32, i32 }
%struct.ptable = type { i32 }
%struct.zfs_probe_args = type { i32, i64, i8*, i64* }

@O_RDONLY = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@archsw = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@D_PARTNONE = common dso_local global i32 0, align 4
@D_SLICENONE = common dso_local global i32 0, align 4
@DIOCGMEDIASIZE = common dso_local global i32 0, align 4
@DIOCGSECTORSIZE = common dso_local global i32 0, align 4
@zfs_diskread = common dso_local global i32 0, align 4
@zfs_probe_partition = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_probe_dev(i8* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.disk_devdesc*, align 8
  %7 = alloca %struct.ptable*, align 8
  %8 = alloca %struct.zfs_probe_args, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  %13 = load i64*, i64** %5, align 8
  %14 = icmp ne i64* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i64*, i64** %5, align 8
  store i64 0, i64* %16, align 8
  br label %17

17:                                               ; preds = %15, %2
  %18 = load i8*, i8** %4, align 8
  %19 = load i32, i32* @O_RDONLY, align 4
  %20 = call i32 @open(i8* %18, i32 %19)
  %21 = getelementptr inbounds %struct.zfs_probe_args, %struct.zfs_probe_args* %8, i32 0, i32 0
  store i32 %20, i32* %21, align 8
  %22 = getelementptr inbounds %struct.zfs_probe_args, %struct.zfs_probe_args* %8, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* @ENXIO, align 4
  store i32 %26, i32* %3, align 4
  br label %111

27:                                               ; preds = %17
  %28 = load i64 (i8**, i8*, i32*)*, i64 (i8**, i8*, i32*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @archsw, i32 0, i32 0), align 8
  %29 = bitcast %struct.disk_devdesc** %6 to i8**
  %30 = load i8*, i8** %4, align 8
  %31 = call i64 %28(i8** %29, i8* %30, i32* null)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %59

33:                                               ; preds = %27
  %34 = load %struct.disk_devdesc*, %struct.disk_devdesc** %6, align 8
  %35 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %11, align 4
  %37 = load %struct.disk_devdesc*, %struct.disk_devdesc** %6, align 8
  %38 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %12, align 4
  %40 = load %struct.disk_devdesc*, %struct.disk_devdesc** %6, align 8
  %41 = call i32 @free(%struct.disk_devdesc* %40)
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* @D_PARTNONE, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %58

45:                                               ; preds = %33
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* @D_SLICENONE, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.zfs_probe_args, %struct.zfs_probe_args* %8, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i64*, i64** %5, align 8
  %53 = call i32 @zfs_probe(i32 %51, i64* %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %111

57:                                               ; preds = %49
  br label %58

58:                                               ; preds = %57, %45, %33
  br label %59

59:                                               ; preds = %58, %27
  %60 = getelementptr inbounds %struct.zfs_probe_args, %struct.zfs_probe_args* %8, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @DIOCGMEDIASIZE, align 4
  %63 = call i32 @ioctl(i32 %61, i32 %62, i64* %9)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %59
  %67 = getelementptr inbounds %struct.zfs_probe_args, %struct.zfs_probe_args* %8, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @DIOCGSECTORSIZE, align 4
  %70 = getelementptr inbounds %struct.zfs_probe_args, %struct.zfs_probe_args* %8, i32 0, i32 1
  %71 = call i32 @ioctl(i32 %68, i32 %69, i64* %70)
  store i32 %71, i32* %10, align 4
  br label %72

72:                                               ; preds = %66, %59
  %73 = load i32, i32* %10, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %97

75:                                               ; preds = %72
  %76 = load i8*, i8** %4, align 8
  %77 = getelementptr inbounds %struct.zfs_probe_args, %struct.zfs_probe_args* %8, i32 0, i32 2
  store i8* %76, i8** %77, align 8
  %78 = load i64*, i64** %5, align 8
  %79 = getelementptr inbounds %struct.zfs_probe_args, %struct.zfs_probe_args* %8, i32 0, i32 3
  store i64* %78, i64** %79, align 8
  %80 = load i64, i64* %9, align 8
  %81 = getelementptr inbounds %struct.zfs_probe_args, %struct.zfs_probe_args* %8, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = sdiv i64 %80, %82
  %84 = getelementptr inbounds %struct.zfs_probe_args, %struct.zfs_probe_args* %8, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* @zfs_diskread, align 4
  %87 = call %struct.ptable* @ptable_open(%struct.zfs_probe_args* %8, i64 %83, i64 %85, i32 %86)
  store %struct.ptable* %87, %struct.ptable** %7, align 8
  %88 = load %struct.ptable*, %struct.ptable** %7, align 8
  %89 = icmp ne %struct.ptable* %88, null
  br i1 %89, label %90, label %96

90:                                               ; preds = %75
  %91 = load %struct.ptable*, %struct.ptable** %7, align 8
  %92 = load i32, i32* @zfs_probe_partition, align 4
  %93 = call i32 @ptable_iterate(%struct.ptable* %91, %struct.zfs_probe_args* %8, i32 %92)
  %94 = load %struct.ptable*, %struct.ptable** %7, align 8
  %95 = call i32 @ptable_close(%struct.ptable* %94)
  br label %96

96:                                               ; preds = %90, %75
  br label %97

97:                                               ; preds = %96, %72
  %98 = getelementptr inbounds %struct.zfs_probe_args, %struct.zfs_probe_args* %8, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @close(i32 %99)
  %101 = load i64*, i64** %5, align 8
  %102 = icmp ne i64* %101, null
  br i1 %102, label %103, label %109

103:                                              ; preds = %97
  %104 = load i64*, i64** %5, align 8
  %105 = load i64, i64* %104, align 8
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %103
  %108 = load i32, i32* @ENXIO, align 4
  store i32 %108, i32* %10, align 4
  br label %109

109:                                              ; preds = %107, %103, %97
  %110 = load i32, i32* %10, align 4
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %109, %56, %25
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @free(%struct.disk_devdesc*) #1

declare dso_local i32 @zfs_probe(i32, i64*) #1

declare dso_local i32 @ioctl(i32, i32, i64*) #1

declare dso_local %struct.ptable* @ptable_open(%struct.zfs_probe_args*, i64, i64, i32) #1

declare dso_local i32 @ptable_iterate(%struct.ptable*, %struct.zfs_probe_args*, i32) #1

declare dso_local i32 @ptable_close(%struct.ptable*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

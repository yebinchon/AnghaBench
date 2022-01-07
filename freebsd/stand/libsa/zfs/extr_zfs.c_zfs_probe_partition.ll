; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/zfs/extr_zfs.c_zfs_probe_partition.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/zfs/extr_zfs.c_zfs_probe_partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptable_entry = type { i64, i64, i64 }
%struct.zfs_probe_args = type { i8*, i32, i32, i32 }
%struct.ptable = type { i32 }

@PART_FREEBSD = common dso_local global i64 0, align 8
@PART_FREEBSD_ZFS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"%s%s:\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@zfs_diskread = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, %struct.ptable_entry*)* @zfs_probe_partition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_probe_partition(i8* %0, i8* %1, %struct.ptable_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ptable_entry*, align 8
  %8 = alloca %struct.zfs_probe_args*, align 8
  %9 = alloca %struct.zfs_probe_args, align 8
  %10 = alloca %struct.ptable*, align 8
  %11 = alloca [32 x i8], align 16
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.ptable_entry* %2, %struct.ptable_entry** %7, align 8
  %13 = load %struct.ptable_entry*, %struct.ptable_entry** %7, align 8
  %14 = getelementptr inbounds %struct.ptable_entry, %struct.ptable_entry* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @PART_FREEBSD, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %3
  %19 = load %struct.ptable_entry*, %struct.ptable_entry** %7, align 8
  %20 = getelementptr inbounds %struct.ptable_entry, %struct.ptable_entry* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @PART_FREEBSD_ZFS, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %109

25:                                               ; preds = %18, %3
  %26 = load i8*, i8** %5, align 8
  %27 = bitcast i8* %26 to %struct.zfs_probe_args*
  store %struct.zfs_probe_args* %27, %struct.zfs_probe_args** %8, align 8
  %28 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %29 = load %struct.zfs_probe_args*, %struct.zfs_probe_args** %8, align 8
  %30 = getelementptr inbounds %struct.zfs_probe_args, %struct.zfs_probe_args* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.zfs_probe_args*, %struct.zfs_probe_args** %8, align 8
  %33 = getelementptr inbounds %struct.zfs_probe_args, %struct.zfs_probe_args* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @strlen(i8* %34)
  %36 = sub nsw i32 %35, 1
  %37 = call i32 @strncpy(i8* %28, i8* %31, i32 %36)
  %38 = load %struct.zfs_probe_args*, %struct.zfs_probe_args** %8, align 8
  %39 = getelementptr inbounds %struct.zfs_probe_args, %struct.zfs_probe_args* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @strlen(i8* %40)
  %42 = sub nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 %43
  store i8 0, i8* %44, align 1
  %45 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %46 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %47 = load i8*, i8** %6, align 8
  %48 = call i32 @sprintf(i8* %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %46, i8* %47)
  %49 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %50 = load i32, i32* @O_RDONLY, align 4
  %51 = call i32 @open(i8* %49, i32 %50)
  %52 = getelementptr inbounds %struct.zfs_probe_args, %struct.zfs_probe_args* %9, i32 0, i32 1
  store i32 %51, i32* %52, align 8
  %53 = getelementptr inbounds %struct.zfs_probe_args, %struct.zfs_probe_args* %9, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %56, label %57

56:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %109

57:                                               ; preds = %25
  %58 = getelementptr inbounds %struct.zfs_probe_args, %struct.zfs_probe_args* %9, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.zfs_probe_args*, %struct.zfs_probe_args** %8, align 8
  %61 = getelementptr inbounds %struct.zfs_probe_args, %struct.zfs_probe_args* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @zfs_probe(i32 %59, i32 %62)
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %57
  store i32 0, i32* %4, align 4
  br label %109

67:                                               ; preds = %57
  %68 = load %struct.ptable_entry*, %struct.ptable_entry** %7, align 8
  %69 = getelementptr inbounds %struct.ptable_entry, %struct.ptable_entry* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @PART_FREEBSD, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %105

73:                                               ; preds = %67
  %74 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %75 = getelementptr inbounds %struct.zfs_probe_args, %struct.zfs_probe_args* %9, i32 0, i32 0
  store i8* %74, i8** %75, align 8
  %76 = load %struct.zfs_probe_args*, %struct.zfs_probe_args** %8, align 8
  %77 = getelementptr inbounds %struct.zfs_probe_args, %struct.zfs_probe_args* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = getelementptr inbounds %struct.zfs_probe_args, %struct.zfs_probe_args* %9, i32 0, i32 3
  store i32 %78, i32* %79, align 8
  %80 = load %struct.zfs_probe_args*, %struct.zfs_probe_args** %8, align 8
  %81 = getelementptr inbounds %struct.zfs_probe_args, %struct.zfs_probe_args* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.zfs_probe_args, %struct.zfs_probe_args* %9, i32 0, i32 2
  store i32 %82, i32* %83, align 4
  %84 = load %struct.ptable_entry*, %struct.ptable_entry** %7, align 8
  %85 = getelementptr inbounds %struct.ptable_entry, %struct.ptable_entry* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.ptable_entry*, %struct.ptable_entry** %7, align 8
  %88 = getelementptr inbounds %struct.ptable_entry, %struct.ptable_entry* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = sub nsw i64 %86, %89
  %91 = add nsw i64 %90, 1
  %92 = load %struct.zfs_probe_args*, %struct.zfs_probe_args** %8, align 8
  %93 = getelementptr inbounds %struct.zfs_probe_args, %struct.zfs_probe_args* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @zfs_diskread, align 4
  %96 = call %struct.ptable* @ptable_open(%struct.zfs_probe_args* %9, i64 %91, i32 %94, i32 %95)
  store %struct.ptable* %96, %struct.ptable** %10, align 8
  %97 = load %struct.ptable*, %struct.ptable** %10, align 8
  %98 = icmp ne %struct.ptable* %97, null
  br i1 %98, label %99, label %104

99:                                               ; preds = %73
  %100 = load %struct.ptable*, %struct.ptable** %10, align 8
  %101 = call i32 @ptable_iterate(%struct.ptable* %100, %struct.zfs_probe_args* %9, i32 (i8*, i8*, %struct.ptable_entry*)* @zfs_probe_partition)
  %102 = load %struct.ptable*, %struct.ptable** %10, align 8
  %103 = call i32 @ptable_close(%struct.ptable* %102)
  br label %104

104:                                              ; preds = %99, %73
  br label %105

105:                                              ; preds = %104, %67
  %106 = getelementptr inbounds %struct.zfs_probe_args, %struct.zfs_probe_args* %9, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @close(i32 %107)
  store i32 0, i32* %4, align 4
  br label %109

109:                                              ; preds = %105, %66, %56, %24
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @zfs_probe(i32, i32) #1

declare dso_local %struct.ptable* @ptable_open(%struct.zfs_probe_args*, i64, i32, i32) #1

declare dso_local i32 @ptable_iterate(%struct.ptable*, %struct.zfs_probe_args*, i32 (i8*, i8*, %struct.ptable_entry*)*) #1

declare dso_local i32 @ptable_close(%struct.ptable*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

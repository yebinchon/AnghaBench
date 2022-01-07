; ModuleID = '/home/carl/AnghaBench/freebsd/stand/efi/boot1/extr_zfs_module.c_load.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/efi/boot1/extr_zfs_module.c_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i8* }
%struct.zfsmount = type { i32 }
%struct.stat = type { i64 }

@.str = private unnamed_addr constant [31 x i8] c"Failed to load pool '%s' (%d)\0A\00", align 1
@EFI_NOT_FOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to mount pool '%s' (%d)\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Failed to find '%s' on pool '%s' (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Failed to lookup '%s' on pool '%s' (%d)\0A\00", align 1
@EFI_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"Failed to stat '%s' on pool '%s' (%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [59 x i8] c"Failed to allocate load buffer %jd for pool '%s' for '%s' \00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"Failed to read node from %s (%d)\0A\00", align 1
@EFI_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_9__*, i8**, i64*)* @load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load(i8* %0, %struct.TYPE_9__* %1, i8** %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca %struct.zfsmount, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.stat, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i64* %3, i64** %9, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  store %struct.TYPE_8__* %18, %struct.TYPE_8__** %10, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %20 = call i32 @zfs_spa_init(%struct.TYPE_8__* %19)
  store i32 %20, i32* %14, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = load i32, i32* %14, align 4
  %27 = call i32 (i8*, i8*, ...) @DPRINTF(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %25, i32 %26)
  %28 = load i32, i32* @EFI_NOT_FOUND, align 4
  store i32 %28, i32* %5, align 4
  br label %117

29:                                               ; preds = %4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %31 = call i32 @zfs_mount(%struct.TYPE_8__* %30, i32 0, %struct.zfsmount* %11)
  store i32 %31, i32* %14, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %29
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load i32, i32* %14, align 4
  %38 = call i32 (i8*, i8*, ...) @DPRINTF(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %36, i32 %37)
  %39 = load i32, i32* @EFI_NOT_FOUND, align 4
  store i32 %39, i32* %5, align 4
  br label %117

40:                                               ; preds = %29
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 @zfs_lookup(%struct.zfsmount* %11, i8* %41, i32* %12)
  store i32 %42, i32* %14, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %64

44:                                               ; preds = %40
  %45 = load i32, i32* %14, align 4
  %46 = load i32, i32* @ENOENT, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %44
  %49 = load i8*, i8** %6, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = load i32, i32* %14, align 4
  %54 = call i32 (i8*, i8*, ...) @DPRINTF(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* %49, i8* %52, i32 %53)
  %55 = load i32, i32* @EFI_NOT_FOUND, align 4
  store i32 %55, i32* %5, align 4
  br label %117

56:                                               ; preds = %44
  %57 = load i8*, i8** %6, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = load i32, i32* %14, align 4
  %62 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i8* %57, i8* %60, i32 %61)
  %63 = load i32, i32* @EFI_INVALID_PARAMETER, align 4
  store i32 %63, i32* %5, align 4
  br label %117

64:                                               ; preds = %40
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %66 = call i32 @zfs_dnode_stat(%struct.TYPE_8__* %65, i32* %12, %struct.stat* %13)
  store i32 %66, i32* %14, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %64
  %69 = load i8*, i8** %6, align 8
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = load i32, i32* %14, align 4
  %74 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i8* %69, i8* %72, i32 %73)
  %75 = load i32, i32* @EFI_INVALID_PARAMETER, align 4
  store i32 %75, i32* %5, align 4
  br label %117

76:                                               ; preds = %64
  %77 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i8* @malloc(i64 %78)
  store i8* %79, i8** %15, align 8
  %80 = load i8*, i8** %15, align 8
  %81 = icmp eq i8* %80, null
  br i1 %81, label %82, label %94

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = trunc i64 %84 to i32
  %86 = sext i32 %85 to i64
  %87 = inttoptr i64 %86 to i8*
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = load i8*, i8** %6, align 8
  %92 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i64 0, i64 0), i8* %87, i8* %90, i8* %91)
  %93 = load i32, i32* @EFI_INVALID_PARAMETER, align 4
  store i32 %93, i32* %5, align 4
  br label %117

94:                                               ; preds = %76
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %96 = load i8*, i8** %15, align 8
  %97 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @dnode_read(%struct.TYPE_8__* %95, i32* %12, i32 0, i8* %96, i64 %98)
  store i32 %99, i32* %14, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %110

101:                                              ; preds = %94
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = load i32, i32* %14, align 4
  %106 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i8* %104, i32 %105)
  %107 = load i8*, i8** %15, align 8
  %108 = call i32 @free(i8* %107)
  %109 = load i32, i32* @EFI_INVALID_PARAMETER, align 4
  store i32 %109, i32* %5, align 4
  br label %117

110:                                              ; preds = %94
  %111 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64*, i64** %9, align 8
  store i64 %112, i64* %113, align 8
  %114 = load i8*, i8** %15, align 8
  %115 = load i8**, i8*** %8, align 8
  store i8* %114, i8** %115, align 8
  %116 = load i32, i32* @EFI_SUCCESS, align 4
  store i32 %116, i32* %5, align 4
  br label %117

117:                                              ; preds = %110, %101, %82, %68, %56, %48, %33, %22
  %118 = load i32, i32* %5, align 4
  ret i32 %118
}

declare dso_local i32 @zfs_spa_init(%struct.TYPE_8__*) #1

declare dso_local i32 @DPRINTF(i8*, i8*, ...) #1

declare dso_local i32 @zfs_mount(%struct.TYPE_8__*, i32, %struct.zfsmount*) #1

declare dso_local i32 @zfs_lookup(%struct.zfsmount*, i8*, i32*) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i32 @zfs_dnode_stat(%struct.TYPE_8__*, i32*, %struct.stat*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @dnode_read(%struct.TYPE_8__*, i32*, i32, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

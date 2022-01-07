; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_msdosfs/extr_dir.c_resetDosDirSection.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_msdosfs/extr_dir.c_resetDosDirSection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.bootblock = type { i32, i32, i32, i32, i64, i64 }
%struct.fatEntry = type { i64, i32 }

@FSOK = common dso_local global i32 0, align 4
@buffer = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [36 x i8] c"No space for directory buffer (%zu)\00", align 1
@FSFATAL = common dso_local global i32 0, align 4
@delbuf = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"No space for directory delbuf (%zu)\00", align 1
@rootDir = common dso_local global %struct.TYPE_4__* null, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"No space for directory entry\00", align 1
@FAT32 = common dso_local global i32 0, align 4
@CLUST_FIRST = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [52 x i8] c"Root directory starts with cluster out of range(%u)\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"Root directory doesn't start a cluster chain\00", align 1
@FAT_USED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @resetDosDirSection(%struct.bootblock* %0, %struct.fatEntry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bootblock*, align 8
  %5 = alloca %struct.fatEntry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.bootblock* %0, %struct.bootblock** %4, align 8
  store %struct.fatEntry* %1, %struct.fatEntry** %5, align 8
  %10 = load i32, i32* @FSOK, align 4
  store i32 %10, i32* %8, align 4
  %11 = load %struct.bootblock*, %struct.bootblock** %4, align 8
  %12 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = mul nsw i32 %13, 32
  store i32 %14, i32* %6, align 4
  %15 = load %struct.bootblock*, %struct.bootblock** %4, align 8
  %16 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.bootblock*, %struct.bootblock** %4, align 8
  %19 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = mul nsw i32 %17, %20
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i64 @MAX(i32 %22, i32 %23)
  store i64 %24, i64* %9, align 8
  %25 = call i32* @malloc(i64 %24)
  store i32* %25, i32** @buffer, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %2
  %28 = load i64, i64* %9, align 8
  %29 = call i32 (i8*, ...) @perr(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %28)
  %30 = load i32, i32* @FSFATAL, align 4
  store i32 %30, i32* %3, align 4
  br label %113

31:                                               ; preds = %2
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %9, align 8
  %34 = call i32* @malloc(i64 %33)
  store i32* %34, i32** @delbuf, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load i32*, i32** @buffer, align 8
  %38 = call i32 @free(i32* %37)
  %39 = load i64, i64* %9, align 8
  %40 = call i32 (i8*, ...) @perr(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %39)
  %41 = load i32, i32* @FSFATAL, align 4
  store i32 %41, i32* %3, align 4
  br label %113

42:                                               ; preds = %31
  %43 = call %struct.TYPE_4__* (...) @newDosDirEntry()
  store %struct.TYPE_4__* %43, %struct.TYPE_4__** @rootDir, align 8
  %44 = icmp eq %struct.TYPE_4__* %43, null
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = load i32*, i32** @buffer, align 8
  %47 = call i32 @free(i32* %46)
  %48 = load i32*, i32** @delbuf, align 8
  %49 = call i32 @free(i32* %48)
  %50 = call i32 (i8*, ...) @perr(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %51 = load i32, i32* @FSFATAL, align 4
  store i32 %51, i32* %3, align 4
  br label %113

52:                                               ; preds = %42
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rootDir, align 8
  %54 = call i32 @memset(%struct.TYPE_4__* %53, i32 0, i32 8)
  %55 = load %struct.bootblock*, %struct.bootblock** %4, align 8
  %56 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @FAT32, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %111

61:                                               ; preds = %52
  %62 = load %struct.bootblock*, %struct.bootblock** %4, align 8
  %63 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @CLUST_FIRST, align 8
  %66 = icmp ult i64 %64, %65
  br i1 %66, label %75, label %67

67:                                               ; preds = %61
  %68 = load %struct.bootblock*, %struct.bootblock** %4, align 8
  %69 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.bootblock*, %struct.bootblock** %4, align 8
  %72 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %71, i32 0, i32 5
  %73 = load i64, i64* %72, align 8
  %74 = icmp uge i64 %70, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %67, %61
  %76 = load %struct.bootblock*, %struct.bootblock** %4, align 8
  %77 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %76, i32 0, i32 4
  %78 = load i64, i64* %77, align 8
  %79 = call i32 (i8*, ...) @pfatal(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i64 %78)
  %80 = load i32, i32* @FSFATAL, align 4
  store i32 %80, i32* %3, align 4
  br label %113

81:                                               ; preds = %67
  %82 = load %struct.fatEntry*, %struct.fatEntry** %5, align 8
  %83 = load %struct.bootblock*, %struct.bootblock** %4, align 8
  %84 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %83, i32 0, i32 4
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %82, i64 %85
  %87 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.bootblock*, %struct.bootblock** %4, align 8
  %90 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %89, i32 0, i32 4
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %88, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %81
  %94 = call i32 (i8*, ...) @pfatal(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  %95 = load i32, i32* @FSFATAL, align 4
  store i32 %95, i32* %3, align 4
  br label %113

96:                                               ; preds = %81
  %97 = load i32, i32* @FAT_USED, align 4
  %98 = load %struct.fatEntry*, %struct.fatEntry** %5, align 8
  %99 = load %struct.bootblock*, %struct.bootblock** %4, align 8
  %100 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %99, i32 0, i32 4
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %98, i64 %101
  %103 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = or i32 %104, %97
  store i32 %105, i32* %103, align 8
  %106 = load %struct.bootblock*, %struct.bootblock** %4, align 8
  %107 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %106, i32 0, i32 4
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rootDir, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  store i64 %108, i64* %110, align 8
  br label %111

111:                                              ; preds = %96, %52
  %112 = load i32, i32* %8, align 4
  store i32 %112, i32* %3, align 4
  br label %113

113:                                              ; preds = %111, %93, %75, %45, %36, %27
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i32* @malloc(i64) #1

declare dso_local i64 @MAX(i32, i32) #1

declare dso_local i32 @perr(i8*, ...) #1

declare dso_local i32 @free(i32*) #1

declare dso_local %struct.TYPE_4__* @newDosDirEntry(...) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @pfatal(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libufs/extr_sblock.c_sbread.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libufs/extr_sblock.c_sbread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uufsd = type { i32, i32, i32, i32, %struct.fs, i32 }
%struct.fs = type { i64, i32, i32, i32, i32 }

@STDSB = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"non-existent or truncated superblock\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"no usable known superblock found\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"failed to allocate space for superblock information\00", align 1
@.str.3 = private unnamed_addr constant [112 x i8] c"The previous newfs operation on this volume did not complete.\0AYou must complete newfs before using this volume.\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"unknown superblock read error\00", align 1
@FS_UFS1_MAGIC = common dso_local global i64 0, align 8
@FS_UFS2_MAGIC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sbread(%struct.uufsd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uufsd*, align 8
  %4 = alloca %struct.fs*, align 8
  store %struct.uufsd* %0, %struct.uufsd** %3, align 8
  %5 = load %struct.uufsd*, %struct.uufsd** %3, align 8
  %6 = call i32 @ERROR(%struct.uufsd* %5, i8* null)
  %7 = load %struct.uufsd*, %struct.uufsd** %3, align 8
  %8 = getelementptr inbounds %struct.uufsd, %struct.uufsd* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @STDSB, align 4
  %11 = call i32 @sbget(i32 %9, %struct.fs** %4, i32 %10)
  store i32 %11, i32* @errno, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %33

13:                                               ; preds = %1
  %14 = load i32, i32* @errno, align 4
  switch i32 %14, label %27 [
    i32 130, label %15
    i32 129, label %18
    i32 128, label %21
    i32 131, label %24
  ]

15:                                               ; preds = %13
  %16 = load %struct.uufsd*, %struct.uufsd** %3, align 8
  %17 = call i32 @ERROR(%struct.uufsd* %16, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %30

18:                                               ; preds = %13
  %19 = load %struct.uufsd*, %struct.uufsd** %3, align 8
  %20 = call i32 @ERROR(%struct.uufsd* %19, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %30

21:                                               ; preds = %13
  %22 = load %struct.uufsd*, %struct.uufsd** %3, align 8
  %23 = call i32 @ERROR(%struct.uufsd* %22, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  br label %30

24:                                               ; preds = %13
  %25 = load %struct.uufsd*, %struct.uufsd** %3, align 8
  %26 = call i32 @ERROR(%struct.uufsd* %25, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.3, i64 0, i64 0))
  br label %30

27:                                               ; preds = %13
  %28 = load %struct.uufsd*, %struct.uufsd** %3, align 8
  %29 = call i32 @ERROR(%struct.uufsd* %28, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  store i32 130, i32* @errno, align 4
  br label %30

30:                                               ; preds = %27, %24, %21, %18, %15
  %31 = load %struct.uufsd*, %struct.uufsd** %3, align 8
  %32 = getelementptr inbounds %struct.uufsd, %struct.uufsd* %31, i32 0, i32 0
  store i32 0, i32* %32, align 8
  store i32 -1, i32* %2, align 4
  br label %85

33:                                               ; preds = %1
  %34 = load %struct.uufsd*, %struct.uufsd** %3, align 8
  %35 = getelementptr inbounds %struct.uufsd, %struct.uufsd* %34, i32 0, i32 4
  %36 = load %struct.fs*, %struct.fs** %4, align 8
  %37 = load %struct.fs*, %struct.fs** %4, align 8
  %38 = getelementptr inbounds %struct.fs, %struct.fs* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @memcpy(%struct.fs* %35, %struct.fs* %36, i32 %39)
  %41 = load %struct.fs*, %struct.fs** %4, align 8
  %42 = call i32 @free(%struct.fs* %41)
  %43 = load %struct.uufsd*, %struct.uufsd** %3, align 8
  %44 = getelementptr inbounds %struct.uufsd, %struct.uufsd* %43, i32 0, i32 4
  store %struct.fs* %44, %struct.fs** %4, align 8
  %45 = load %struct.fs*, %struct.fs** %4, align 8
  %46 = getelementptr inbounds %struct.fs, %struct.fs* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @FS_UFS1_MAGIC, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %33
  %51 = load %struct.uufsd*, %struct.uufsd** %3, align 8
  %52 = getelementptr inbounds %struct.uufsd, %struct.uufsd* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  br label %53

53:                                               ; preds = %50, %33
  %54 = load %struct.fs*, %struct.fs** %4, align 8
  %55 = getelementptr inbounds %struct.fs, %struct.fs* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @FS_UFS2_MAGIC, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load %struct.uufsd*, %struct.uufsd** %3, align 8
  %61 = getelementptr inbounds %struct.uufsd, %struct.uufsd* %60, i32 0, i32 0
  store i32 2, i32* %61, align 8
  br label %62

62:                                               ; preds = %59, %53
  %63 = load %struct.fs*, %struct.fs** %4, align 8
  %64 = getelementptr inbounds %struct.fs, %struct.fs* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.fs*, %struct.fs** %4, align 8
  %67 = call i32 @fsbtodb(%struct.fs* %66, i32 1)
  %68 = sdiv i32 %65, %67
  %69 = load %struct.uufsd*, %struct.uufsd** %3, align 8
  %70 = getelementptr inbounds %struct.uufsd, %struct.uufsd* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load %struct.fs*, %struct.fs** %4, align 8
  %72 = getelementptr inbounds %struct.fs, %struct.fs* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.uufsd*, %struct.uufsd** %3, align 8
  %75 = getelementptr inbounds %struct.uufsd, %struct.uufsd* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = sdiv i32 %73, %76
  %78 = load %struct.uufsd*, %struct.uufsd** %3, align 8
  %79 = getelementptr inbounds %struct.uufsd, %struct.uufsd* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  %80 = load %struct.fs*, %struct.fs** %4, align 8
  %81 = getelementptr inbounds %struct.fs, %struct.fs* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.uufsd*, %struct.uufsd** %3, align 8
  %84 = getelementptr inbounds %struct.uufsd, %struct.uufsd* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 4
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %62, %30
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @ERROR(%struct.uufsd*, i8*) #1

declare dso_local i32 @sbget(i32, %struct.fs**, i32) #1

declare dso_local i32 @memcpy(%struct.fs*, %struct.fs*, i32) #1

declare dso_local i32 @free(%struct.fs*) #1

declare dso_local i32 @fsbtodb(%struct.fs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

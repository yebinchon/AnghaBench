; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_gjournal.c_freeindir.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_gjournal.c_freeindir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64 }

@MAXBSIZE = common dso_local global i32 0, align 4
@diskp = common dso_local global %struct.TYPE_7__* null, align 8
@fs = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"bread: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32)* @freeindir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @freeindir(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* @MAXBSIZE, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** @diskp, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** @fs, align 8
  %15 = load i64, i64* %3, align 8
  %16 = call i32 @fsbtodb(%struct.TYPE_6__* %14, i64 %15)
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** @fs, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @bread(%struct.TYPE_7__* %13, i32 %16, i8* %12, i64 %19)
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** @diskp, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %22, %2
  %28 = bitcast i8* %12 to i64*
  store i64* %28, i64** %7, align 8
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %64, %27
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** @fs, align 8
  %32 = call i32 @NINDIR(%struct.TYPE_6__* %31)
  %33 = icmp slt i32 %30, %32
  br i1 %33, label %34, label %67

34:                                               ; preds = %29
  %35 = load i64*, i64** %7, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %67

42:                                               ; preds = %34
  %43 = load i32, i32* %4, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %42
  %46 = load i64*, i64** %7, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** @fs, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @blkfree(i64 %50, i64 %53)
  br label %63

55:                                               ; preds = %42
  %56 = load i64*, i64** %7, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* %4, align 4
  %62 = sub nsw i32 %61, 1
  call void @freeindir(i64 %60, i32 %62)
  br label %63

63:                                               ; preds = %55, %45
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %8, align 4
  br label %29

67:                                               ; preds = %41, %29
  %68 = load i64, i64* %3, align 8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** @fs, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @blkfree(i64 %68, i64 %71)
  %73 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %73)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @bread(%struct.TYPE_7__*, i32, i8*, i64) #2

declare dso_local i32 @fsbtodb(%struct.TYPE_6__*, i64) #2

declare dso_local i32 @err(i32, i8*, i32) #2

declare dso_local i32 @NINDIR(%struct.TYPE_6__*) #2

declare dso_local i32 @blkfree(i64, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

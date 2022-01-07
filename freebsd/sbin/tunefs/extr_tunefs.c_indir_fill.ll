; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/tunefs/extr_tunefs.c_indir_fill.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/tunefs/extr_tunefs.c_indir_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }

@MAXBSIZE = common dso_local global i32 0, align 4
@sblock = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@FS_UFS1_MAGIC = common dso_local global i64 0, align 8
@disk = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Failed to write indirect\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i32*)* @indir_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @indir_fill(i64 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %17 = load i32, i32* @MAXBSIZE, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %8, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %9, align 8
  %21 = trunc i64 %18 to i32
  %22 = call i32 @bzero(i8* %20, i32 %21)
  %23 = bitcast i8* %20 to i32*
  store i32* %23, i32** %10, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = bitcast i32* %24 to i8*
  %26 = bitcast i8* %25 to i64*
  store i64* %26, i64** %11, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %27

27:                                               ; preds = %78, %3
  %28 = load i32, i32* %15, align 4
  %29 = call i32 @NINDIR(%struct.TYPE_4__* @sblock)
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br label %35

35:                                               ; preds = %31, %27
  %36 = phi i1 [ false, %27 ], [ %34, %31 ]
  br i1 %36, label %37, label %81

37:                                               ; preds = %35
  %38 = call i64 (...) @journal_balloc()
  store i64 %38, i64* %12, align 8
  %39 = load i64, i64* %12, align 8
  %40 = icmp sle i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %91

42:                                               ; preds = %37
  %43 = load i32, i32* %14, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %14, align 4
  %45 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sblock, i32 0, i32 0), align 8
  %46 = load i64, i64* @FS_UFS1_MAGIC, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %42
  %49 = load i64, i64* %12, align 8
  %50 = trunc i64 %49 to i32
  %51 = load i32*, i32** %10, align 8
  %52 = getelementptr inbounds i32, i32* %51, i32 1
  store i32* %52, i32** %10, align 8
  store i32 %50, i32* %51, align 4
  br label %57

53:                                               ; preds = %42
  %54 = load i64, i64* %12, align 8
  %55 = load i64*, i64** %11, align 8
  %56 = getelementptr inbounds i64, i64* %55, i32 1
  store i64* %56, i64** %11, align 8
  store i64 %54, i64* %55, align 8
  br label %57

57:                                               ; preds = %53, %48
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %57
  %61 = load i64, i64* %12, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sub nsw i32 %62, 1
  %64 = load i32*, i32** %7, align 8
  %65 = call i32 @indir_fill(i64 %61, i32 %63, i32* %64)
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %13, align 4
  %67 = icmp sle i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %91

69:                                               ; preds = %60
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* %14, align 4
  %72 = add nsw i32 %71, %70
  store i32 %72, i32* %14, align 4
  br label %77

73:                                               ; preds = %57
  %74 = load i32*, i32** %7, align 8
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %73, %69
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %15, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %15, align 4
  br label %27

81:                                               ; preds = %35
  %82 = load i64, i64* %5, align 8
  %83 = call i32 @fsbtodb(%struct.TYPE_4__* @sblock, i64 %82)
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sblock, i32 0, i32 1), align 8
  %85 = call i64 @bwrite(i32* @disk, i32 %83, i8* %20, i32 %84)
  %86 = icmp sle i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %81
  %88 = call i32 @warn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %91

89:                                               ; preds = %81
  %90 = load i32, i32* %14, align 4
  store i32 %90, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %91

91:                                               ; preds = %89, %87, %68, %41
  %92 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %92)
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @bzero(i8*, i32) #2

declare dso_local i32 @NINDIR(%struct.TYPE_4__*) #2

declare dso_local i64 @journal_balloc(...) #2

declare dso_local i64 @bwrite(i32*, i32, i8*, i32) #2

declare dso_local i32 @fsbtodb(%struct.TYPE_4__*, i64) #2

declare dso_local i32 @warn(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

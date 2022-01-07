; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_suj.c_suj_find.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_suj.c_suj_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.direct = type { i64, i64, i64, i32 }

@MAXBSIZE = common dso_local global i32 0, align 4
@sujino = common dso_local global i64 0, align 8
@fs = common dso_local global i32 0, align 4
@disk = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Failed to read UFS_ROOTINO directory block %jd\0A\00", align 1
@SUJ_FILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32)* @suj_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @suj_find(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.direct*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load i32, i32* @MAXBSIZE, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %9, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %10, align 8
  %19 = load i64, i64* @sujino, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i32 1, i32* %14, align 4
  br label %88

22:                                               ; preds = %4
  %23 = load i32, i32* @fs, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @lfragtosize(i32 %23, i32 %24)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* @fs, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @fsbtodb(i32 %26, i32 %27)
  %29 = load i32, i32* %12, align 4
  %30 = call i64 @bread(i32* @disk, i32 %28, i8* %18, i32 %29)
  %31 = icmp sle i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %22
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @err_suj(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %32, %22
  store i32 0, i32* %13, align 4
  br label %36

36:                                               ; preds = %79, %35
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %87

40:                                               ; preds = %36
  %41 = load i32, i32* %13, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %18, i64 %42
  %44 = bitcast i8* %43 to %struct.direct*
  store %struct.direct* %44, %struct.direct** %11, align 8
  %45 = load %struct.direct*, %struct.direct** %11, align 8
  %46 = getelementptr inbounds %struct.direct, %struct.direct* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  br label %87

50:                                               ; preds = %40
  %51 = load %struct.direct*, %struct.direct** %11, align 8
  %52 = getelementptr inbounds %struct.direct, %struct.direct* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %79

56:                                               ; preds = %50
  %57 = load %struct.direct*, %struct.direct** %11, align 8
  %58 = getelementptr inbounds %struct.direct, %struct.direct* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* @SUJ_FILE, align 4
  %61 = call i64 @strlen(i32 %60)
  %62 = icmp ne i64 %59, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  br label %79

64:                                               ; preds = %56
  %65 = load %struct.direct*, %struct.direct** %11, align 8
  %66 = getelementptr inbounds %struct.direct, %struct.direct* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @SUJ_FILE, align 4
  %69 = load %struct.direct*, %struct.direct** %11, align 8
  %70 = getelementptr inbounds %struct.direct, %struct.direct* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = call i64 @bcmp(i32 %67, i32 %68, i64 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %64
  br label %79

75:                                               ; preds = %64
  %76 = load %struct.direct*, %struct.direct** %11, align 8
  %77 = getelementptr inbounds %struct.direct, %struct.direct* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* @sujino, align 8
  store i32 1, i32* %14, align 4
  br label %88

79:                                               ; preds = %74, %63, %55
  %80 = load %struct.direct*, %struct.direct** %11, align 8
  %81 = getelementptr inbounds %struct.direct, %struct.direct* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* %13, align 4
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %84, %82
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %13, align 4
  br label %36

87:                                               ; preds = %49, %36
  store i32 0, i32* %14, align 4
  br label %88

88:                                               ; preds = %87, %75, %21
  %89 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %89)
  %90 = load i32, i32* %14, align 4
  switch i32 %90, label %92 [
    i32 0, label %91
    i32 1, label %91
  ]

91:                                               ; preds = %88, %88
  ret void

92:                                               ; preds = %88
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @lfragtosize(i32, i32) #2

declare dso_local i64 @bread(i32*, i32, i8*, i32) #2

declare dso_local i32 @fsbtodb(i32, i32) #2

declare dso_local i32 @err_suj(i8*, i32) #2

declare dso_local i64 @strlen(i32) #2

declare dso_local i64 @bcmp(i32, i32, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

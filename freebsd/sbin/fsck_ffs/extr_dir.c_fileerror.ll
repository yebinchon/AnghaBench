; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_dir.c_fileerror.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_dir.c_fileerror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.dinode = type { i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@UFS_ROOTINO = common dso_local global i64 0, align 8
@maxino = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"out-of-range inode number %ju\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%s=%s\0A\00", align 1
@di_mode = common dso_local global i32 0, align 4
@IFMT = common dso_local global i32 0, align 4
@IFDIR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"DIR\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"FILE\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"NAME=%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fileerror(i64 %0, i64 %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %union.dinode*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load i32, i32* @MAXPATHLEN, align 4
  %12 = add nsw i32 %11, 1
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @pwarn(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @UFS_ROOTINO, align 8
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %3
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* @maxino, align 8
  %24 = icmp sgt i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %21, %3
  %26 = load i64, i64* %5, align 8
  %27 = inttoptr i64 %26 to i8*
  %28 = call i32 (i8*, i8*, ...) @pfatal(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %27)
  store i32 1, i32* %10, align 4
  br label %56

29:                                               ; preds = %21
  %30 = load i64, i64* %5, align 8
  %31 = call %union.dinode* @ginode(i64 %30)
  store %union.dinode* %31, %union.dinode** %7, align 8
  %32 = load i64, i64* %5, align 8
  %33 = load %union.dinode*, %union.dinode** %7, align 8
  %34 = call i32 @prtinode(i64 %32, %union.dinode* %33)
  %35 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %36 = load i64, i64* %4, align 8
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @getpathname(i8* %15, i64 %36, i64 %37)
  %39 = load %union.dinode*, %union.dinode** %7, align 8
  %40 = call i64 @ftypeok(%union.dinode* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %29
  %43 = load %union.dinode*, %union.dinode** %7, align 8
  %44 = load i32, i32* @di_mode, align 4
  %45 = call i32 @DIP(%union.dinode* %43, i32 %44)
  %46 = load i32, i32* @IFMT, align 4
  %47 = and i32 %45, %46
  %48 = load i32, i32* @IFDIR, align 4
  %49 = icmp eq i32 %47, %48
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)
  %52 = call i32 (i8*, i8*, ...) @pfatal(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %51, i8* %15)
  br label %55

53:                                               ; preds = %29
  %54 = call i32 (i8*, i8*, ...) @pfatal(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* %15)
  br label %55

55:                                               ; preds = %53, %42
  store i32 0, i32* %10, align 4
  br label %56

56:                                               ; preds = %55, %25
  %57 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %57)
  %58 = load i32, i32* %10, align 4
  switch i32 %58, label %60 [
    i32 0, label %59
    i32 1, label %59
  ]

59:                                               ; preds = %56, %56
  ret void

60:                                               ; preds = %56
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @pwarn(i8*, i8*) #2

declare dso_local i32 @pfatal(i8*, i8*, ...) #2

declare dso_local %union.dinode* @ginode(i64) #2

declare dso_local i32 @prtinode(i64, %union.dinode*) #2

declare dso_local i32 @printf(i8*) #2

declare dso_local i32 @getpathname(i8*, i64, i64) #2

declare dso_local i64 @ftypeok(%union.dinode*) #2

declare dso_local i32 @DIP(%union.dinode*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

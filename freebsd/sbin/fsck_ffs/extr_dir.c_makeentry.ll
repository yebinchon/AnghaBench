; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_dir.c_makeentry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_dir.c_makeentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.dinode = type { i32 }
%struct.inodesc = type { i32, i32, i64, i64, i32, i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@UFS_ROOTINO = common dso_local global i64 0, align 8
@maxino = common dso_local global i64 0, align 8
@DATA = common dso_local global i32 0, align 4
@mkentry = common dso_local global i32 0, align 4
@DONTKNOW = common dso_local global i32 0, align 4
@di_size = common dso_local global i32 0, align 4
@DIRBLKSIZ = common dso_local global i32 0, align 4
@ALTERED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @makeentry(i64 %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %union.dinode*, align 8
  %9 = alloca %struct.inodesc, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i32, i32* @MAXPATHLEN, align 4
  %14 = add nsw i32 %13, 1
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %10, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %11, align 8
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @UFS_ROOTINO, align 8
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %33, label %21

21:                                               ; preds = %3
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* @maxino, align 8
  %24 = icmp sge i64 %22, %23
  br i1 %24, label %33, label %25

25:                                               ; preds = %21
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* @UFS_ROOTINO, align 8
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* @maxino, align 8
  %32 = icmp sge i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29, %25, %21, %3
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %90

34:                                               ; preds = %29
  %35 = call i32 @memset(%struct.inodesc* %9, i32 0, i32 32)
  %36 = load i32, i32* @DATA, align 4
  %37 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %9, i32 0, i32 5
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* @mkentry, align 4
  %39 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %9, i32 0, i32 4
  store i32 %38, i32* %39, align 8
  %40 = load i64, i64* %5, align 8
  %41 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %9, i32 0, i32 3
  store i64 %40, i64* %41, align 8
  %42 = load i64, i64* %6, align 8
  %43 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %9, i32 0, i32 2
  store i64 %42, i64* %43, align 8
  %44 = load i32, i32* @DONTKNOW, align 4
  %45 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %9, i32 0, i32 1
  store i32 %44, i32* %45, align 4
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 @strdup(i8* %46)
  %48 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %9, i32 0, i32 0
  store i32 %47, i32* %48, align 8
  %49 = load i64, i64* %5, align 8
  %50 = call %union.dinode* @ginode(i64 %49)
  store %union.dinode* %50, %union.dinode** %8, align 8
  %51 = load %union.dinode*, %union.dinode** %8, align 8
  %52 = load i32, i32* @di_size, align 4
  %53 = call i32 @DIP(%union.dinode* %51, i32 %52)
  %54 = load i32, i32* @DIRBLKSIZ, align 4
  %55 = srem i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %34
  %58 = load %union.dinode*, %union.dinode** %8, align 8
  %59 = load i32, i32* @di_size, align 4
  %60 = load %union.dinode*, %union.dinode** %8, align 8
  %61 = load i32, i32* @di_size, align 4
  %62 = call i32 @DIP(%union.dinode* %60, i32 %61)
  %63 = load i32, i32* @DIRBLKSIZ, align 4
  %64 = call i32 @roundup(i32 %62, i32 %63)
  %65 = call i32 @DIP_SET(%union.dinode* %58, i32 %59, i32 %64)
  %66 = load %union.dinode*, %union.dinode** %8, align 8
  %67 = call i32 @inodirty(%union.dinode* %66)
  br label %68

68:                                               ; preds = %57, %34
  %69 = load %union.dinode*, %union.dinode** %8, align 8
  %70 = call i32 @ckinode(%union.dinode* %69, %struct.inodesc* %9)
  %71 = load i32, i32* @ALTERED, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  store i32 1, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %90

75:                                               ; preds = %68
  %76 = load i64, i64* %5, align 8
  %77 = load i64, i64* %5, align 8
  %78 = call i32 @getpathname(i8* %17, i64 %76, i64 %77)
  %79 = load i64, i64* %5, align 8
  %80 = call %union.dinode* @ginode(i64 %79)
  store %union.dinode* %80, %union.dinode** %8, align 8
  %81 = load %union.dinode*, %union.dinode** %8, align 8
  %82 = call i64 @expanddir(%union.dinode* %81, i8* %17)
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %75
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %90

85:                                               ; preds = %75
  %86 = load %union.dinode*, %union.dinode** %8, align 8
  %87 = call i32 @ckinode(%union.dinode* %86, %struct.inodesc* %9)
  %88 = load i32, i32* @ALTERED, align 4
  %89 = and i32 %87, %88
  store i32 %89, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %90

90:                                               ; preds = %85, %84, %74, %33
  %91 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %91)
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(%struct.inodesc*, i32, i32) #2

declare dso_local i32 @strdup(i8*) #2

declare dso_local %union.dinode* @ginode(i64) #2

declare dso_local i32 @DIP(%union.dinode*, i32) #2

declare dso_local i32 @DIP_SET(%union.dinode*, i32, i32) #2

declare dso_local i32 @roundup(i32, i32) #2

declare dso_local i32 @inodirty(%union.dinode*) #2

declare dso_local i32 @ckinode(%union.dinode*, %struct.inodesc*) #2

declare dso_local i32 @getpathname(i8*, i64, i64) #2

declare dso_local i64 @expanddir(%union.dinode*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_inode.c_prtinode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_inode.c_prtinode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.dinode = type { i32 }
%struct.passwd = type { i8* }

@.str = private unnamed_addr constant [8 x i8] c" I=%lu \00", align 1
@UFS_ROOTINO = common dso_local global i64 0, align 8
@maxino = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c" OWNER=\00", align 1
@di_uid = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%u \00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"MODE=%o\0A\00", align 1
@di_mode = common dso_local global i32 0, align 4
@preen = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@cdevname = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [10 x i8] c"SIZE=%ju \00", align 1
@di_size = common dso_local global i32 0, align 4
@di_mtime = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [21 x i8] c"MTIME=%12.12s %4.4s \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @prtinode(i64 %0, %union.dinode* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %union.dinode*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.passwd*, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store %union.dinode* %1, %union.dinode** %4, align 8
  %8 = load i64, i64* %3, align 8
  %9 = trunc i64 %8 to i32
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load i64, i64* %3, align 8
  %12 = load i64, i64* @UFS_ROOTINO, align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* @maxino, align 8
  %17 = icmp sgt i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %2
  br label %60

19:                                               ; preds = %14
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %21 = load %union.dinode*, %union.dinode** %4, align 8
  %22 = load i32, i32* @di_uid, align 4
  %23 = call i32 @DIP(%union.dinode* %21, i32 %22)
  %24 = call %struct.passwd* @getpwuid(i32 %23)
  store %struct.passwd* %24, %struct.passwd** %6, align 8
  %25 = icmp ne %struct.passwd* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = load %struct.passwd*, %struct.passwd** %6, align 8
  %28 = getelementptr inbounds %struct.passwd, %struct.passwd* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %29)
  br label %36

31:                                               ; preds = %19
  %32 = load %union.dinode*, %union.dinode** %4, align 8
  %33 = load i32, i32* @di_uid, align 4
  %34 = call i32 @DIP(%union.dinode* %32, i32 %33)
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %31, %26
  %37 = load %union.dinode*, %union.dinode** %4, align 8
  %38 = load i32, i32* @di_mode, align 4
  %39 = call i32 @DIP(%union.dinode* %37, i32 %38)
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %39)
  %41 = load i64, i64* @preen, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load i8*, i8** @cdevname, align 8
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %44)
  br label %46

46:                                               ; preds = %43, %36
  %47 = load %union.dinode*, %union.dinode** %4, align 8
  %48 = load i32, i32* @di_size, align 4
  %49 = call i32 @DIP(%union.dinode* %47, i32 %48)
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 %49)
  %51 = load %union.dinode*, %union.dinode** %4, align 8
  %52 = load i32, i32* @di_mtime, align 4
  %53 = call i32 @DIP(%union.dinode* %51, i32 %52)
  store i32 %53, i32* %7, align 4
  %54 = call i8* @ctime(i32* %7)
  store i8* %54, i8** %5, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 4
  %57 = load i8*, i8** %5, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 20
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i8* %56, i8* %58)
  br label %60

60:                                               ; preds = %46, %18
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local %struct.passwd* @getpwuid(i32) #1

declare dso_local i32 @DIP(%union.dinode*, i32) #1

declare dso_local i8* @ctime(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

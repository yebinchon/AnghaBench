; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_inode.c_clri.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_inode.c_clri.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }
%struct.inodesc = type { i64 }
%union.dinode = type { i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@di_mode = common dso_local global i32 0, align 4
@IFMT = common dso_local global i32 0, align 4
@IFDIR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"DIR\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"FILE\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@preen = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"CLEAR\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c" (CLEARED)\0A\00", align 1
@n_files = common dso_local global i32 0, align 4
@bkgrdflag = common dso_local global i64 0, align 8
@USTATE = common dso_local global i32 0, align 4
@cmd = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@di_nlink = common dso_local global i32 0, align 4
@debug = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [28 x i8] c"adjrefcnt ino %ld amt %lld\0A\00", align 1
@adjrefcnt = common dso_local global i32 0, align 4
@MIBSIZE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"ADJUST INODE\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clri(%struct.inodesc* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.inodesc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.dinode*, align 8
  store %struct.inodesc* %0, %struct.inodesc** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.inodesc*, %struct.inodesc** %4, align 8
  %9 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = call %union.dinode* @ginode(i64 %10)
  store %union.dinode* %11, %union.dinode** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %32

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = load %union.dinode*, %union.dinode** %7, align 8
  %17 = load i32, i32* @di_mode, align 4
  %18 = call i32 @DIP(%union.dinode* %16, i32 %17)
  %19 = load i32, i32* @IFMT, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* @IFDIR, align 4
  %22 = icmp eq i32 %20, %21
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %25 = call i32 @pwarn(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %15, i8* %24)
  %26 = load %struct.inodesc*, %struct.inodesc** %4, align 8
  %27 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %union.dinode*, %union.dinode** %7, align 8
  %30 = call i32 @prtinode(i64 %28, %union.dinode* %29)
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %32

32:                                               ; preds = %14, %3
  %33 = load i64, i64* @preen, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = call i32 @reply(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %87

38:                                               ; preds = %35, %32
  %39 = load i64, i64* @preen, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %38
  %44 = load i32, i32* @n_files, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* @n_files, align 4
  %46 = load i64, i64* @bkgrdflag, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %62

48:                                               ; preds = %43
  %49 = load %union.dinode*, %union.dinode** %7, align 8
  %50 = load %struct.inodesc*, %struct.inodesc** %4, align 8
  %51 = call i32 @ckinode(%union.dinode* %49, %struct.inodesc* %50)
  %52 = load i32, i32* @USTATE, align 4
  %53 = load %struct.inodesc*, %struct.inodesc** %4, align 8
  %54 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call %struct.TYPE_5__* @inoinfo(i64 %55)
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  store i32 %52, i32* %57, align 4
  %58 = load %union.dinode*, %union.dinode** %7, align 8
  %59 = call i32 @clearinode(%union.dinode* %58)
  %60 = load %union.dinode*, %union.dinode** %7, align 8
  %61 = call i32 @inodirty(%union.dinode* %60)
  br label %86

62:                                               ; preds = %43
  %63 = load %struct.inodesc*, %struct.inodesc** %4, align 8
  %64 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cmd, i32 0, i32 1), align 8
  %66 = load %union.dinode*, %union.dinode** %7, align 8
  %67 = load i32, i32* @di_nlink, align 4
  %68 = call i32 @DIP(%union.dinode* %66, i32 %67)
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cmd, i32 0, i32 0), align 8
  %70 = load i64, i64* @debug, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %62
  %73 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cmd, i32 0, i32 1), align 8
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cmd, i32 0, i32 0), align 8
  %75 = sext i32 %74 to i64
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i64 %73, i64 %75)
  br label %77

77:                                               ; preds = %72, %62
  %78 = load i32, i32* @adjrefcnt, align 4
  %79 = load i32, i32* @MIBSIZE, align 4
  %80 = call i32 @sysctl(i32 %78, i32 %79, i32 0, i32 0, %struct.TYPE_4__* @cmd, i32 16)
  %81 = icmp eq i32 %80, -1
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cmd, i32 0, i32 1), align 8
  %84 = call i32 @rwerror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i64 %83)
  br label %85

85:                                               ; preds = %82, %77
  br label %86

86:                                               ; preds = %85, %48
  br label %87

87:                                               ; preds = %86, %35
  ret void
}

declare dso_local %union.dinode* @ginode(i64) #1

declare dso_local i32 @pwarn(i8*, i8*, i8*) #1

declare dso_local i32 @DIP(%union.dinode*, i32) #1

declare dso_local i32 @prtinode(i64, %union.dinode*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @reply(i8*) #1

declare dso_local i32 @ckinode(%union.dinode*, %struct.inodesc*) #1

declare dso_local %struct.TYPE_5__* @inoinfo(i64) #1

declare dso_local i32 @clearinode(%union.dinode*) #1

declare dso_local i32 @inodirty(%union.dinode*) #1

declare dso_local i32 @sysctl(i32, i32, i32, i32, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @rwerror(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dump/extr_traverse.c_getino.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dump/extr_traverse.c_getino.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64 }
%union.dinode = type { i32 }
%struct.ufs1_dinode = type { i32 }
%struct.ufs2_dinode = type { i32 }

@getino.minino = internal global i64 0, align 8
@getino.maxino = internal global i64 0, align 8
@getino.inoblock = internal global i32* null, align 8
@sblock = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [31 x i8] c"cannot allocate inode memory.\0A\00", align 1
@curino = common dso_local global i64 0, align 8
@FS_UFS1_MAGIC = common dso_local global i64 0, align 8
@IFMT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %union.dinode* @getino(i64 %0, i32* %1) #0 {
  %3 = alloca %union.dinode*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ufs1_dinode*, align 8
  %7 = alloca %struct.ufs2_dinode*, align 8
  store i64 %0, i64* %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** @getino.inoblock, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sblock, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = call i32* @malloc(i64 %13)
  store i32* %14, i32** @getino.inoblock, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = call i32 @quit(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %10, %2
  %19 = load i64, i64* %4, align 8
  store i64 %19, i64* @curino, align 8
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* @getino.minino, align 8
  %22 = icmp sge i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* @getino.maxino, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %50

28:                                               ; preds = %23, %18
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sblock, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sblock, align 8
  %31 = load i64, i64* %4, align 8
  %32 = call i32 @ino_to_fsba(%struct.TYPE_5__* %30, i64 %31)
  %33 = call i32 @fsbtodb(%struct.TYPE_5__* %29, i32 %32)
  %34 = load i32*, i32** @getino.inoblock, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sblock, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  %39 = call i32 @blkread(i32 %33, i32* %34, i32 %38)
  %40 = load i64, i64* %4, align 8
  %41 = load i64, i64* %4, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sblock, align 8
  %43 = call i64 @INOPB(%struct.TYPE_5__* %42)
  %44 = srem i64 %41, %43
  %45 = sub nsw i64 %40, %44
  store i64 %45, i64* @getino.minino, align 8
  %46 = load i64, i64* @getino.minino, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sblock, align 8
  %48 = call i64 @INOPB(%struct.TYPE_5__* %47)
  %49 = add nsw i64 %46, %48
  store i64 %49, i64* @getino.maxino, align 8
  br label %50

50:                                               ; preds = %28, %27
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sblock, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @FS_UFS1_MAGIC, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %71

56:                                               ; preds = %50
  %57 = load i32*, i32** @getino.inoblock, align 8
  %58 = bitcast i32* %57 to %struct.ufs1_dinode*
  %59 = load i64, i64* %4, align 8
  %60 = load i64, i64* @getino.minino, align 8
  %61 = sub nsw i64 %59, %60
  %62 = getelementptr inbounds %struct.ufs1_dinode, %struct.ufs1_dinode* %58, i64 %61
  store %struct.ufs1_dinode* %62, %struct.ufs1_dinode** %6, align 8
  %63 = load %struct.ufs1_dinode*, %struct.ufs1_dinode** %6, align 8
  %64 = getelementptr inbounds %struct.ufs1_dinode, %struct.ufs1_dinode* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @IFMT, align 4
  %67 = and i32 %65, %66
  %68 = load i32*, i32** %5, align 8
  store i32 %67, i32* %68, align 4
  %69 = load %struct.ufs1_dinode*, %struct.ufs1_dinode** %6, align 8
  %70 = bitcast %struct.ufs1_dinode* %69 to %union.dinode*
  store %union.dinode* %70, %union.dinode** %3, align 8
  br label %86

71:                                               ; preds = %50
  %72 = load i32*, i32** @getino.inoblock, align 8
  %73 = bitcast i32* %72 to %struct.ufs2_dinode*
  %74 = load i64, i64* %4, align 8
  %75 = load i64, i64* @getino.minino, align 8
  %76 = sub nsw i64 %74, %75
  %77 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %73, i64 %76
  store %struct.ufs2_dinode* %77, %struct.ufs2_dinode** %7, align 8
  %78 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %7, align 8
  %79 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @IFMT, align 4
  %82 = and i32 %80, %81
  %83 = load i32*, i32** %5, align 8
  store i32 %82, i32* %83, align 4
  %84 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %7, align 8
  %85 = bitcast %struct.ufs2_dinode* %84 to %union.dinode*
  store %union.dinode* %85, %union.dinode** %3, align 8
  br label %86

86:                                               ; preds = %71, %56
  %87 = load %union.dinode*, %union.dinode** %3, align 8
  ret %union.dinode* %87
}

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @quit(i8*) #1

declare dso_local i32 @blkread(i32, i32*, i32) #1

declare dso_local i32 @fsbtodb(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @ino_to_fsba(%struct.TYPE_5__*, i64) #1

declare dso_local i64 @INOPB(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/newfs/extr_mkfs.c_iput.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/newfs/extr_mkfs.c_iput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i8* }
%struct.TYPE_18__ = type { i64, %struct.TYPE_17__, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_15__ = type { i64, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_20__ = type { i32 }
%union.dinode = type { i32 }
%union.dinodep = type { i32* }

@disk = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@part_ofs = common dso_local global i64 0, align 8
@sblock = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@acg = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@CG_MAGIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"cg 0: bad magic number\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"iput: cgput: %s\00", align 1
@fscs = common dso_local global %struct.TYPE_20__* null, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"iput: %s\0A\00", align 1
@FS_UFS1_MAGIC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iput(%union.dinode* %0, i32 %1) #0 {
  %3 = alloca %union.dinode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.dinodep, align 8
  store %union.dinode* %0, %union.dinode** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i64, i64* @part_ofs, align 8
  %7 = call i32 @cgtod(%struct.TYPE_18__* @sblock, i32 0)
  %8 = call i64 @fsbtodb(%struct.TYPE_18__* @sblock, i32 %7)
  %9 = add nsw i64 %6, %8
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @sblock, i32 0, i32 2), align 4
  %11 = call i32 @bread(%struct.TYPE_19__* @disk, i64 %9, i8* bitcast (%struct.TYPE_15__* @acg to i8*), i32 %10)
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @acg, i32 0, i32 0), align 8
  %13 = load i64, i64* @CG_MAGIC, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %17 = call i32 @exit(i32 31) #3
  unreachable

18:                                               ; preds = %2
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @acg, i32 0, i32 1, i32 0), align 8
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @acg, i32 0, i32 1, i32 0), align 8
  %21 = call i32 @cg_inosused(%struct.TYPE_15__* @acg)
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @setbit(i32 %21, i32 %22)
  %24 = call i64 @cgput(%struct.TYPE_19__* @disk, %struct.TYPE_15__* @acg)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = load i8*, i8** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @disk, i32 0, i32 0), align 8
  %28 = call i32 @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %27)
  br label %29

29:                                               ; preds = %26, %18
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @sblock, i32 0, i32 1, i32 0), align 8
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @sblock, i32 0, i32 1, i32 0), align 8
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** @fscs, align 8
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i64 0
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %34, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @getinode(%struct.TYPE_19__* @disk, %union.dinodep* %5, i32 %37)
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %44

40:                                               ; preds = %29
  %41 = load i8*, i8** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @disk, i32 0, i32 0), align 8
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %41)
  %43 = call i32 @exit(i32 32) #3
  unreachable

44:                                               ; preds = %29
  %45 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @sblock, i32 0, i32 0), align 8
  %46 = load i64, i64* @FS_UFS1_MAGIC, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = load %union.dinode*, %union.dinode** %3, align 8
  %50 = bitcast %union.dinode* %49 to i32*
  %51 = load i32, i32* %50, align 4
  %52 = bitcast %union.dinodep* %5 to i32**
  %53 = load i32*, i32** %52, align 8
  store i32 %51, i32* %53, align 4
  br label %60

54:                                               ; preds = %44
  %55 = load %union.dinode*, %union.dinode** %3, align 8
  %56 = bitcast %union.dinode* %55 to i32*
  %57 = load i32, i32* %56, align 4
  %58 = bitcast %union.dinodep* %5 to i32**
  %59 = load i32*, i32** %58, align 8
  store i32 %57, i32* %59, align 4
  br label %60

60:                                               ; preds = %54, %48
  %61 = call i32 @putinode(%struct.TYPE_19__* @disk)
  ret void
}

declare dso_local i32 @bread(%struct.TYPE_19__*, i64, i8*, i32) #1

declare dso_local i64 @fsbtodb(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @cgtod(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @setbit(i32, i32) #1

declare dso_local i32 @cg_inosused(%struct.TYPE_15__*) #1

declare dso_local i64 @cgput(%struct.TYPE_19__*, %struct.TYPE_15__*) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i32 @getinode(%struct.TYPE_19__*, %union.dinodep*, i32) #1

declare dso_local i32 @putinode(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/tunefs/extr_tunefs.c_journal_clear.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/tunefs/extr_tunefs.c_journal_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64 }
%union.dinodep = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64 }

@.str = private unnamed_addr constant [28 x i8] c"Journal file does not exist\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Clearing journal flags from inode %ju\0A\00", align 1
@disk = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Failed to get journal inode: %s\00", align 1
@sblock = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@FS_UFS1_MAGIC = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [34 x i8] c"Failed to write journal inode: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @journal_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @journal_clear() #0 {
  %1 = alloca %union.dinodep, align 8
  %2 = alloca i64, align 8
  %3 = call i64 (...) @journal_findfile()
  store i64 %3, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = icmp eq i64 %4, -1
  br i1 %5, label %9, label %6

6:                                                ; preds = %0
  %7 = load i64, i64* %2, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %6, %0
  %10 = call i32 @warnx(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %39

11:                                               ; preds = %6
  %12 = load i64, i64* %2, align 8
  %13 = trunc i64 %12 to i32
  %14 = call i32 @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %13)
  %15 = load i64, i64* %2, align 8
  %16 = call i64 @getinode(%struct.TYPE_10__* @disk, %union.dinodep* %1, i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %11
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @disk, i32 0, i32 0), align 4
  %20 = call i32 @warn(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %19)
  br label %39

21:                                               ; preds = %11
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @sblock, i32 0, i32 0), align 8
  %23 = load i64, i64* @FS_UFS1_MAGIC, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = bitcast %union.dinodep* %1 to %struct.TYPE_7__**
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  br label %33

29:                                               ; preds = %21
  %30 = bitcast %union.dinodep* %1 to %struct.TYPE_8__**
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  br label %33

33:                                               ; preds = %29, %25
  %34 = call i64 @putinode(%struct.TYPE_10__* @disk)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @disk, i32 0, i32 0), align 4
  %38 = call i32 @warn(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %9, %18, %36, %33
  ret void
}

declare dso_local i64 @journal_findfile(...) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i64 @getinode(%struct.TYPE_10__*, %union.dinodep*, i64) #1

declare dso_local i32 @warn(i8*, i32) #1

declare dso_local i64 @putinode(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

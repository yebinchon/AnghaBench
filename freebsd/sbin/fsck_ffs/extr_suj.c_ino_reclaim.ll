; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_suj.c_ino_reclaim.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_suj.c_ino_reclaim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%union.dinode = type { i32 }

@UFS_ROOTINO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"Attempting to free UFS_ROOTINO\0A\00", align 1
@debug = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"Truncating and freeing ino %ju, nlink %d, mode %o\0A\00", align 1
@di_nlink = common dso_local global i32 0, align 4
@di_mode = common dso_local global i32 0, align 4
@IFMT = common dso_local global i32 0, align 4
@IFDIR = common dso_local global i32 0, align 4
@ino_free_children = common dso_local global i32 0, align 4
@blk_free_visit = common dso_local global i32 0, align 4
@VISIT_EXT = common dso_local global i32 0, align 4
@VISIT_INDIR = common dso_local global i32 0, align 4
@di_gen = common dso_local global i32 0, align 4
@fs = common dso_local global %struct.TYPE_2__* null, align 8
@FS_UFS1_MAGIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.dinode*, i64, i32)* @ino_reclaim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ino_reclaim(%union.dinode* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %union.dinode*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %union.dinode* %0, %union.dinode** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* @UFS_ROOTINO, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = call i32 @err_suj(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %3
  %14 = load i64, i64* @debug, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %13
  %17 = load i64, i64* %5, align 8
  %18 = trunc i64 %17 to i32
  %19 = load %union.dinode*, %union.dinode** %4, align 8
  %20 = load i32, i32* @di_nlink, align 4
  %21 = call i32 @DIP(%union.dinode* %19, i32 %20)
  %22 = load %union.dinode*, %union.dinode** %4, align 8
  %23 = load i32, i32* @di_mode, align 4
  %24 = call i32 @DIP(%union.dinode* %22, i32 %23)
  %25 = call i32 @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %18, i32 %21, i32 %24)
  br label %26

26:                                               ; preds = %16, %13
  %27 = load %union.dinode*, %union.dinode** %4, align 8
  %28 = load i32, i32* @di_mode, align 4
  %29 = call i32 @DIP(%union.dinode* %27, i32 %28)
  %30 = load i32, i32* @IFMT, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* @IFDIR, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %26
  %35 = load %union.dinode*, %union.dinode** %4, align 8
  %36 = load i64, i64* %5, align 8
  %37 = load i32, i32* @ino_free_children, align 4
  %38 = call i32 @ino_visit(%union.dinode* %35, i64 %36, i32 %37, i32 0)
  br label %39

39:                                               ; preds = %34, %26
  %40 = load %union.dinode*, %union.dinode** %4, align 8
  %41 = load i32, i32* @di_nlink, align 4
  %42 = call i32 @DIP_SET(%union.dinode* %40, i32 %41, i32 0)
  %43 = load %union.dinode*, %union.dinode** %4, align 8
  %44 = load i64, i64* %5, align 8
  %45 = load i32, i32* @blk_free_visit, align 4
  %46 = load i32, i32* @VISIT_EXT, align 4
  %47 = load i32, i32* @VISIT_INDIR, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @ino_visit(%union.dinode* %43, i64 %44, i32 %45, i32 %48)
  %50 = load %union.dinode*, %union.dinode** %4, align 8
  %51 = load i32, i32* @di_gen, align 4
  %52 = call i32 @DIP(%union.dinode* %50, i32 %51)
  store i32 %52, i32* %7, align 4
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fs, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @FS_UFS1_MAGIC, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %39
  %59 = load %union.dinode*, %union.dinode** %4, align 8
  %60 = call i32 @bzero(%union.dinode* %59, i32 4)
  br label %64

61:                                               ; preds = %39
  %62 = load %union.dinode*, %union.dinode** %4, align 8
  %63 = call i32 @bzero(%union.dinode* %62, i32 4)
  br label %64

64:                                               ; preds = %61, %58
  %65 = load %union.dinode*, %union.dinode** %4, align 8
  %66 = load i32, i32* @di_gen, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @DIP_SET(%union.dinode* %65, i32 %66, i32 %67)
  %69 = load i64, i64* %5, align 8
  %70 = call i32 @ino_dirty(i64 %69)
  %71 = load i64, i64* %5, align 8
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @ino_free(i64 %71, i32 %72)
  ret void
}

declare dso_local i32 @err_suj(i8*) #1

declare dso_local i32 @printf(i8*, i32, i32, i32) #1

declare dso_local i32 @DIP(%union.dinode*, i32) #1

declare dso_local i32 @ino_visit(%union.dinode*, i64, i32, i32) #1

declare dso_local i32 @DIP_SET(%union.dinode*, i32, i32) #1

declare dso_local i32 @bzero(%union.dinode*, i32) #1

declare dso_local i32 @ino_dirty(i64) #1

declare dso_local i32 @ino_free(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

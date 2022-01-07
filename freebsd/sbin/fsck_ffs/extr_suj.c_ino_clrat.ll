; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_suj.c_ino_clrat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_suj.c_ino_clrat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.dinode = type { i32 }
%struct.direct = type { i64 }

@debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"Clearing inode %ju from parent %ju at offset %jd\0A\00", align 1
@fs = common dso_local global i32 0, align 4
@di_size = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Inode %ju does not exist in %ju at %jd\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32, i64)* @ino_clrat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ino_clrat(i64 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %union.dinode*, align 8
  %8 = alloca %struct.direct*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %15 = load i64, i64* @debug, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %3
  %18 = load i64, i64* %6, align 8
  %19 = trunc i64 %18 to i32
  %20 = load i64, i64* %4, align 8
  %21 = trunc i64 %20 to i32
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %17, %3
  %25 = load i32, i32* @fs, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @lblkno(i32 %25, i32 %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* @fs, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @blkoff(i32 %28, i32 %29)
  store i32 %30, i32* %14, align 4
  %31 = load i64, i64* %4, align 8
  %32 = call %union.dinode* @ino_read(i64 %31)
  store %union.dinode* %32, %union.dinode** %7, align 8
  %33 = load %union.dinode*, %union.dinode** %7, align 8
  %34 = load i64, i64* %4, align 8
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @ino_blkatoff(%union.dinode* %33, i64 %34, i32 %35, i32* %13)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* @fs, align 4
  %38 = load %union.dinode*, %union.dinode** %7, align 8
  %39 = load i32, i32* @di_size, align 4
  %40 = call i32 @DIP(%union.dinode* %38, i32 %39)
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @sblksize(i32 %37, i32 %40, i32 %41)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %12, align 4
  %45 = call i32* @dblk_read(i32 %43, i32 %44)
  store i32* %45, i32** %10, align 8
  %46 = load i32*, i32** %10, align 8
  %47 = load i32, i32* %14, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = bitcast i32* %49 to %struct.direct*
  store %struct.direct* %50, %struct.direct** %8, align 8
  %51 = load %struct.direct*, %struct.direct** %8, align 8
  %52 = getelementptr inbounds %struct.direct, %struct.direct* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %6, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %24
  %57 = load i64, i64* %6, align 8
  %58 = trunc i64 %57 to i32
  %59 = load i64, i64* %4, align 8
  %60 = trunc i64 %59 to i32
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @errx(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %58, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %56, %24
  %64 = load %struct.direct*, %struct.direct** %8, align 8
  %65 = getelementptr inbounds %struct.direct, %struct.direct* %64, i32 0, i32 0
  store i64 0, i64* %65, align 8
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @dblk_dirty(i32 %66)
  ret void
}

declare dso_local i32 @printf(i8*, i32, i32, i32) #1

declare dso_local i32 @lblkno(i32, i32) #1

declare dso_local i32 @blkoff(i32, i32) #1

declare dso_local %union.dinode* @ino_read(i64) #1

declare dso_local i32 @ino_blkatoff(%union.dinode*, i64, i32, i32*) #1

declare dso_local i32 @sblksize(i32, i32, i32) #1

declare dso_local i32 @DIP(%union.dinode*, i32) #1

declare dso_local i32* @dblk_read(i32, i32) #1

declare dso_local i32 @errx(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @dblk_dirty(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

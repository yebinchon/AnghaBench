; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_suj.c_ino_decr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_suj.c_ino_decr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.dinode = type { i32 }

@di_nlink = common dso_local global i32 0, align 4
@di_mode = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Inode %d link count %d invalid\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Inode %d has a link of %d with 0 mode\0A\00", align 1
@IFMT = common dso_local global i32 0, align 4
@IFDIR = common dso_local global i32 0, align 4
@debug = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"ino %ju not enough links to live %d < %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @ino_decr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ino_decr(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %union.dinode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = call %union.dinode* @ino_read(i64 %7)
  store %union.dinode* %8, %union.dinode** %3, align 8
  %9 = load %union.dinode*, %union.dinode** %3, align 8
  %10 = load i32, i32* @di_nlink, align 4
  %11 = call i32 @DIP(%union.dinode* %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load %union.dinode*, %union.dinode** %3, align 8
  %13 = load i32, i32* @di_mode, align 4
  %14 = call i32 @DIP(%union.dinode* %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 1
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load i64, i64* %2, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @err_suj(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %18, i32 %19)
  br label %21

21:                                               ; preds = %17, %1
  %22 = load i32, i32* %6, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i64, i64* %2, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @err_suj(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %25, i32 %26)
  br label %28

28:                                               ; preds = %24, %21
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @IFMT, align 4
  %33 = and i32 %31, %32
  %34 = load i32, i32* @IFDIR, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  store i32 2, i32* %4, align 4
  br label %38

37:                                               ; preds = %28
  store i32 1, i32* %4, align 4
  br label %38

38:                                               ; preds = %37, %36
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %56

42:                                               ; preds = %38
  %43 = load i64, i64* @debug, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load i64, i64* %2, align 8
  %47 = trunc i64 %46 to i32
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %47, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %45, %42
  %52 = load %union.dinode*, %union.dinode** %3, align 8
  %53 = load i64, i64* %2, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @ino_reclaim(%union.dinode* %52, i64 %53, i32 %54)
  br label %63

56:                                               ; preds = %38
  %57 = load %union.dinode*, %union.dinode** %3, align 8
  %58 = load i32, i32* @di_nlink, align 4
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @DIP_SET(%union.dinode* %57, i32 %58, i32 %59)
  %61 = load i64, i64* %2, align 8
  %62 = call i32 @ino_dirty(i64 %61)
  br label %63

63:                                               ; preds = %56, %51
  ret void
}

declare dso_local %union.dinode* @ino_read(i64) #1

declare dso_local i32 @DIP(%union.dinode*, i32) #1

declare dso_local i32 @err_suj(i8*, i64, i32) #1

declare dso_local i32 @printf(i8*, i32, i32, i32) #1

declare dso_local i32 @ino_reclaim(%union.dinode*, i64, i32) #1

declare dso_local i32 @DIP_SET(%union.dinode*, i32, i32) #1

declare dso_local i32 @ino_dirty(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

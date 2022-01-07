; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_suj.c_suj_verifyino.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_suj.c_suj_verifyino.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%union.dinode = type { i32 }

@di_nlink = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Invalid link count %d for journal inode %ju\0A\00", align 1
@sujino = common dso_local global i64 0, align 8
@di_flags = common dso_local global i32 0, align 4
@SF_IMMUTABLE = common dso_local global i32 0, align 4
@SF_NOUNLINK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Invalid flags 0x%X for journal inode %ju\0A\00", align 1
@di_mode = common dso_local global i32 0, align 4
@IFREG = common dso_local global i32 0, align 4
@IREAD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Invalid mode %o for journal inode %ju\0A\00", align 1
@di_size = common dso_local global i32 0, align 4
@SUJ_MIN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"Invalid size %jd for journal inode %ju\0A\00", align 1
@di_modrev = common dso_local global i32 0, align 4
@fs = common dso_local global %struct.TYPE_2__* null, align 8
@.str.4 = private unnamed_addr constant [48 x i8] c"Journal timestamp does not match fs mount time\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.dinode*)* @suj_verifyino to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @suj_verifyino(%union.dinode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.dinode*, align 8
  store %union.dinode* %0, %union.dinode** %3, align 8
  %4 = load %union.dinode*, %union.dinode** %3, align 8
  %5 = load i32, i32* @di_nlink, align 4
  %6 = call i32 @DIP(%union.dinode* %4, i32 %5)
  %7 = icmp ne i32 %6, 1
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load %union.dinode*, %union.dinode** %3, align 8
  %10 = load i32, i32* @di_nlink, align 4
  %11 = call i32 @DIP(%union.dinode* %9, i32 %10)
  %12 = load i64, i64* @sujino, align 8
  %13 = trunc i64 %12 to i32
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %13)
  store i32 -1, i32* %2, align 4
  br label %73

15:                                               ; preds = %1
  %16 = load %union.dinode*, %union.dinode** %3, align 8
  %17 = load i32, i32* @di_flags, align 4
  %18 = call i32 @DIP(%union.dinode* %16, i32 %17)
  %19 = load i32, i32* @SF_IMMUTABLE, align 4
  %20 = load i32, i32* @SF_NOUNLINK, align 4
  %21 = or i32 %19, %20
  %22 = and i32 %18, %21
  %23 = load i32, i32* @SF_IMMUTABLE, align 4
  %24 = load i32, i32* @SF_NOUNLINK, align 4
  %25 = or i32 %23, %24
  %26 = icmp ne i32 %22, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %15
  %28 = load %union.dinode*, %union.dinode** %3, align 8
  %29 = load i32, i32* @di_flags, align 4
  %30 = call i32 @DIP(%union.dinode* %28, i32 %29)
  %31 = load i64, i64* @sujino, align 8
  %32 = trunc i64 %31 to i32
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %30, i32 %32)
  store i32 -1, i32* %2, align 4
  br label %73

34:                                               ; preds = %15
  %35 = load %union.dinode*, %union.dinode** %3, align 8
  %36 = load i32, i32* @di_mode, align 4
  %37 = call i32 @DIP(%union.dinode* %35, i32 %36)
  %38 = load i32, i32* @IFREG, align 4
  %39 = load i32, i32* @IREAD, align 4
  %40 = or i32 %38, %39
  %41 = icmp ne i32 %37, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %34
  %43 = load %union.dinode*, %union.dinode** %3, align 8
  %44 = load i32, i32* @di_mode, align 4
  %45 = call i32 @DIP(%union.dinode* %43, i32 %44)
  %46 = load i64, i64* @sujino, align 8
  %47 = trunc i64 %46 to i32
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %45, i32 %47)
  store i32 -1, i32* %2, align 4
  br label %73

49:                                               ; preds = %34
  %50 = load %union.dinode*, %union.dinode** %3, align 8
  %51 = load i32, i32* @di_size, align 4
  %52 = call i32 @DIP(%union.dinode* %50, i32 %51)
  %53 = load i32, i32* @SUJ_MIN, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %49
  %56 = load %union.dinode*, %union.dinode** %3, align 8
  %57 = load i32, i32* @di_size, align 4
  %58 = call i32 @DIP(%union.dinode* %56, i32 %57)
  %59 = load i64, i64* @sujino, align 8
  %60 = trunc i64 %59 to i32
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %58, i32 %60)
  store i32 -1, i32* %2, align 4
  br label %73

62:                                               ; preds = %49
  %63 = load %union.dinode*, %union.dinode** %3, align 8
  %64 = load i32, i32* @di_modrev, align 4
  %65 = call i32 @DIP(%union.dinode* %63, i32 %64)
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fs, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %65, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %62
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %73

72:                                               ; preds = %62
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %72, %70, %55, %42, %27, %8
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @DIP(%union.dinode*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

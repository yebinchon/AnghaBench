; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_suj.c_ino_adjblks.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_suj.c_ino_adjblks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.suj_ino = type { i64 }
%union.dinode = type { i32 }

@di_mode = common dso_local global i32 0, align 4
@visitlbn = common dso_local global i64 0, align 8
@null_visit = common dso_local global i32 0, align 4
@VISIT_INDIR = common dso_local global i32 0, align 4
@VISIT_EXT = common dso_local global i32 0, align 4
@fs = common dso_local global i32 0, align 4
@UFS_NDADDR = common dso_local global i64 0, align 8
@di_size = common dso_local global i32 0, align 4
@di_blocks = common dso_local global i32 0, align 4
@debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"ino %ju adjusting block count from %jd to %jd\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.suj_ino*)* @ino_adjblks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ino_adjblks(%struct.suj_ino* %0) #0 {
  %2 = alloca %struct.suj_ino*, align 8
  %3 = alloca %union.dinode*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.suj_ino* %0, %struct.suj_ino** %2, align 8
  %9 = load %struct.suj_ino*, %struct.suj_ino** %2, align 8
  %10 = getelementptr inbounds %struct.suj_ino, %struct.suj_ino* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %8, align 8
  %12 = load i64, i64* %8, align 8
  %13 = call %union.dinode* @ino_read(i64 %12)
  store %union.dinode* %13, %union.dinode** %3, align 8
  %14 = load %union.dinode*, %union.dinode** %3, align 8
  %15 = load i32, i32* @di_mode, align 4
  %16 = call i64 @DIP(%union.dinode* %14, i32 %15)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %77

19:                                               ; preds = %1
  store i64 0, i64* @visitlbn, align 8
  %20 = load %union.dinode*, %union.dinode** %3, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load i32, i32* @null_visit, align 4
  %23 = load i32, i32* @VISIT_INDIR, align 4
  %24 = load i32, i32* @VISIT_EXT, align 4
  %25 = or i32 %23, %24
  %26 = call i64 @ino_visit(%union.dinode* %20, i64 %21, i32 %22, i32 %25)
  store i64 %26, i64* %5, align 8
  %27 = load i32, i32* @fs, align 4
  %28 = load i64, i64* %5, align 8
  %29 = call i64 @fsbtodb(i32 %27, i64 %28)
  store i64 %29, i64* %4, align 8
  %30 = load i64, i64* @visitlbn, align 8
  %31 = load i64, i64* @UFS_NDADDR, align 8
  %32 = icmp sge i64 %30, %31
  br i1 %32, label %33, label %52

33:                                               ; preds = %19
  %34 = load %union.dinode*, %union.dinode** %3, align 8
  %35 = load i32, i32* @di_size, align 4
  %36 = call i64 @DIP(%union.dinode* %34, i32 %35)
  store i64 %36, i64* %6, align 8
  %37 = load i32, i32* @fs, align 4
  %38 = load i64, i64* @visitlbn, align 8
  %39 = add nsw i64 %38, 1
  %40 = call i64 @lblktosize(i32 %37, i64 %39)
  store i64 %40, i64* %7, align 8
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* %7, align 8
  %43 = icmp sgt i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %33
  %45 = load i64, i64* %7, align 8
  store i64 %45, i64* %6, align 8
  br label %46

46:                                               ; preds = %44, %33
  %47 = load %struct.suj_ino*, %struct.suj_ino** %2, align 8
  %48 = getelementptr inbounds %struct.suj_ino, %struct.suj_ino* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %6, align 8
  %51 = call i32 @ino_trunc(i64 %49, i64 %50)
  br label %77

52:                                               ; preds = %19
  %53 = load i64, i64* %4, align 8
  %54 = load %union.dinode*, %union.dinode** %3, align 8
  %55 = load i32, i32* @di_blocks, align 4
  %56 = call i64 @DIP(%union.dinode* %54, i32 %55)
  %57 = icmp eq i64 %53, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %77

59:                                               ; preds = %52
  %60 = load i64, i64* @debug, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %59
  %63 = load i64, i64* %8, align 8
  %64 = trunc i64 %63 to i32
  %65 = load %union.dinode*, %union.dinode** %3, align 8
  %66 = load i32, i32* @di_blocks, align 4
  %67 = call i64 @DIP(%union.dinode* %65, i32 %66)
  %68 = load i64, i64* %4, align 8
  %69 = call i32 @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %64, i64 %67, i64 %68)
  br label %70

70:                                               ; preds = %62, %59
  %71 = load %union.dinode*, %union.dinode** %3, align 8
  %72 = load i32, i32* @di_blocks, align 4
  %73 = load i64, i64* %4, align 8
  %74 = call i32 @DIP_SET(%union.dinode* %71, i32 %72, i64 %73)
  %75 = load i64, i64* %8, align 8
  %76 = call i32 @ino_dirty(i64 %75)
  br label %77

77:                                               ; preds = %70, %58, %46, %18
  ret void
}

declare dso_local %union.dinode* @ino_read(i64) #1

declare dso_local i64 @DIP(%union.dinode*, i32) #1

declare dso_local i64 @ino_visit(%union.dinode*, i64, i32, i32) #1

declare dso_local i64 @fsbtodb(i32, i64) #1

declare dso_local i64 @lblktosize(i32, i64) #1

declare dso_local i32 @ino_trunc(i64, i64) #1

declare dso_local i32 @printf(i8*, i32, i64, i64) #1

declare dso_local i32 @DIP_SET(%union.dinode*, i32, i64) #1

declare dso_local i32 @ino_dirty(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

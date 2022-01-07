; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_pass5.c_update_maps.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_pass5.c_update_maps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs = type { i32, i32 }
%struct.cg = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@sblock = common dso_local global %struct.fs zeroinitializer, align 4
@CHAR_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"LOST %d DIRECTORIES\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"DIR\00", align 1
@freedirs = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"FILE\00", align 1
@freefiles = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"FRAG\00", align 1
@freeblks = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_maps(%struct.cg* %0, %struct.cg* %1, i32 %2) #0 {
  %4 = alloca %struct.cg*, align 8
  %5 = alloca %struct.cg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.fs*, align 8
  store %struct.cg* %0, %struct.cg** %4, align 8
  store %struct.cg* %1, %struct.cg** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.fs* @sblock, %struct.fs** %9, align 8
  %10 = load %struct.fs*, %struct.fs** %9, align 8
  %11 = getelementptr inbounds %struct.fs, %struct.fs* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @CHAR_BIT, align 4
  %14 = call i32 @howmany(i32 %12, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.cg*, %struct.cg** %4, align 8
  %16 = getelementptr inbounds %struct.cg, %struct.cg* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.cg*, %struct.cg** %5, align 8
  %20 = getelementptr inbounds %struct.cg, %struct.cg* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sub nsw i32 %18, %22
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %3
  %27 = load i32, i32* %8, align 4
  %28 = sub nsw i32 0, %27
  %29 = call i32 @pfatal(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %28)
  store i32 0, i32* %8, align 4
  br label %30

30:                                               ; preds = %26, %3
  %31 = load i32, i32* %8, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %50

33:                                               ; preds = %30
  %34 = load %struct.cg*, %struct.cg** %5, align 8
  %35 = call i32 @cg_inosused(%struct.cg* %34)
  %36 = load %struct.cg*, %struct.cg** %4, align 8
  %37 = call i32 @cg_inosused(%struct.cg* %36)
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.cg*, %struct.cg** %4, align 8
  %40 = getelementptr inbounds %struct.cg, %struct.cg* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.fs*, %struct.fs** %9, align 8
  %43 = getelementptr inbounds %struct.fs, %struct.fs* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 %41, %44
  %46 = load i32, i32* @freedirs, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @check_maps(i32 %35, i32 %37, i32 %38, i32 %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32 0, i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %33, %30
  %51 = load %struct.cg*, %struct.cg** %5, align 8
  %52 = call i32 @cg_inosused(%struct.cg* %51)
  %53 = load %struct.cg*, %struct.cg** %4, align 8
  %54 = call i32 @cg_inosused(%struct.cg* %53)
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.cg*, %struct.cg** %4, align 8
  %57 = getelementptr inbounds %struct.cg, %struct.cg* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.fs*, %struct.fs** %9, align 8
  %60 = getelementptr inbounds %struct.fs, %struct.fs* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = mul nsw i32 %58, %61
  %63 = load i32, i32* @freefiles, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load %struct.fs*, %struct.fs** %9, align 8
  %66 = getelementptr inbounds %struct.fs, %struct.fs* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @check_maps(i32 %52, i32 %54, i32 %55, i32 %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %63, i32 %64, i32 %67, i32 %68)
  %70 = load %struct.cg*, %struct.cg** %4, align 8
  %71 = call i32 @cg_blksfree(%struct.cg* %70)
  %72 = load %struct.cg*, %struct.cg** %5, align 8
  %73 = call i32 @cg_blksfree(%struct.cg* %72)
  %74 = load %struct.fs*, %struct.fs** %9, align 8
  %75 = getelementptr inbounds %struct.fs, %struct.fs* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @CHAR_BIT, align 4
  %78 = call i32 @howmany(i32 %76, i32 %77)
  %79 = load %struct.cg*, %struct.cg** %4, align 8
  %80 = getelementptr inbounds %struct.cg, %struct.cg* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.fs*, %struct.fs** %9, align 8
  %83 = getelementptr inbounds %struct.fs, %struct.fs* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = mul nsw i32 %81, %84
  %86 = load i32, i32* @freeblks, align 4
  %87 = load %struct.fs*, %struct.fs** %9, align 8
  %88 = getelementptr inbounds %struct.fs, %struct.fs* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @check_maps(i32 %71, i32 %73, i32 %78, i32 %85, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %86, i32 0, i32 %89, i32 %90)
  ret void
}

declare dso_local i32 @howmany(i32, i32) #1

declare dso_local i32 @pfatal(i8*, i32) #1

declare dso_local i32 @check_maps(i32, i32, i32, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @cg_inosused(%struct.cg*) #1

declare dso_local i32 @cg_blksfree(%struct.cg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

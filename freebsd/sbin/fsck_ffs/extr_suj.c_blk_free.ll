; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_suj.c_blk_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_suj.c_blk_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.suj_cg = type { i32, %struct.cg* }
%struct.cg = type { i32 }

@debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"Freeing %d frags at blk %jd mask 0x%x\0A\00", align 1
@fs = common dso_local global %struct.TYPE_6__* null, align 8
@freeblocks = common dso_local global i32 0, align 4
@freefrags = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @blk_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blk_free(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.suj_cg*, align 8
  %10 = alloca %struct.cg*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load i64, i64* @debug, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18, i32 %19)
  br label %21

21:                                               ; preds = %16, %3
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** @fs, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @dtog(%struct.TYPE_6__* %22, i32 %23)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = call %struct.suj_cg* @cg_lookup(i32 %25)
  store %struct.suj_cg* %26, %struct.suj_cg** %9, align 8
  %27 = load %struct.suj_cg*, %struct.suj_cg** %9, align 8
  %28 = getelementptr inbounds %struct.suj_cg, %struct.suj_cg* %27, i32 0, i32 1
  %29 = load %struct.cg*, %struct.cg** %28, align 8
  store %struct.cg* %29, %struct.cg** %10, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** @fs, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i64 @dtogd(%struct.TYPE_6__* %30, i32 %31)
  store i64 %32, i64* %8, align 8
  %33 = load %struct.cg*, %struct.cg** %10, align 8
  %34 = call i32* @cg_blksfree(%struct.cg* %33)
  store i32* %34, i32** %13, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** @fs, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %35, %38
  br i1 %39, label %40, label %53

40:                                               ; preds = %21
  %41 = load i32, i32* %5, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %40
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** @fs, align 8
  %45 = load i64, i64* %8, align 8
  %46 = call i64 @fragstoblks(%struct.TYPE_6__* %44, i64 %45)
  store i64 %46, i64* %7, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** @fs, align 8
  %48 = load i32*, i32** %13, align 8
  %49 = load i64, i64* %7, align 8
  %50 = call i32 @ffs_setblock(%struct.TYPE_6__* %47, i32* %48, i64 %49)
  %51 = load i32, i32* @freeblocks, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* @freeblocks, align 4
  br label %86

53:                                               ; preds = %40, %21
  store i32 0, i32* %11, align 4
  br label %54

54:                                               ; preds = %82, %53
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %85

58:                                               ; preds = %54
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* %11, align 4
  %61 = shl i32 1, %60
  %62 = and i32 %59, %61
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %81

64:                                               ; preds = %58
  %65 = load i32*, i32** %13, align 8
  %66 = load i64, i64* %8, align 8
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %66, %68
  %70 = call i64 @isclr(i32* %65, i64 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %64
  %73 = load i32, i32* @freefrags, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* @freefrags, align 4
  %75 = load i32*, i32** %13, align 8
  %76 = load i64, i64* %8, align 8
  %77 = load i32, i32* %11, align 4
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %76, %78
  %80 = call i32 @setbit(i32* %75, i64 %79)
  br label %81

81:                                               ; preds = %72, %64, %58
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %11, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %11, align 4
  br label %54

85:                                               ; preds = %54
  br label %86

86:                                               ; preds = %85, %43
  %87 = load %struct.suj_cg*, %struct.suj_cg** %9, align 8
  %88 = getelementptr inbounds %struct.suj_cg, %struct.suj_cg* %87, i32 0, i32 0
  store i32 1, i32* %88, align 8
  ret void
}

declare dso_local i32 @printf(i8*, i32, i32, i32) #1

declare dso_local i32 @dtog(%struct.TYPE_6__*, i32) #1

declare dso_local %struct.suj_cg* @cg_lookup(i32) #1

declare dso_local i64 @dtogd(%struct.TYPE_6__*, i32) #1

declare dso_local i32* @cg_blksfree(%struct.cg*) #1

declare dso_local i64 @fragstoblks(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @ffs_setblock(%struct.TYPE_6__*, i32*, i64) #1

declare dso_local i64 @isclr(i32*, i64) #1

declare dso_local i32 @setbit(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

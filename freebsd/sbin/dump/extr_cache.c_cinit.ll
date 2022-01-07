; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dump/extr_cache.c_cinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dump/extr_cache.c_cinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_4__*, i64, i64 }

@sblock = common dso_local global %struct.TYPE_5__* null, align 8
@BLKFACTOR = common dso_local global i32 0, align 4
@BlockSize = common dso_local global i32 0, align 4
@MAXBSIZE = common dso_local global i32 0, align 4
@cachesize = common dso_local global i32 0, align 4
@NBlocks = common dso_local global i32 0, align 4
@HFACTOR = common dso_local global i32 0, align 4
@HSize = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Cache %d MB, blocksize = %d\0A\00", align 1
@BlockHash = common dso_local global %struct.TYPE_4__** null, align 8
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_ANON = common dso_local global i32 0, align 4
@DataBase = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cinit() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sblock, align 8
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @BLKFACTOR, align 4
  %8 = mul nsw i32 %6, %7
  store i32 %8, i32* @BlockSize, align 4
  %9 = load i32, i32* @MAXBSIZE, align 4
  %10 = icmp sgt i32 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %0
  %12 = load i32, i32* @MAXBSIZE, align 4
  store i32 %12, i32* @BlockSize, align 4
  br label %13

13:                                               ; preds = %11, %0
  %14 = load i32, i32* @cachesize, align 4
  %15 = load i32, i32* @BlockSize, align 4
  %16 = sdiv i32 %14, %15
  store i32 %16, i32* @NBlocks, align 4
  %17 = load i32, i32* @NBlocks, align 4
  %18 = load i32, i32* @HFACTOR, align 4
  %19 = sdiv i32 %17, %18
  store i32 %19, i32* @HSize, align 4
  %20 = load i32, i32* @NBlocks, align 4
  %21 = load i32, i32* @BlockSize, align 4
  %22 = mul nsw i32 %20, %21
  %23 = sdiv i32 %22, 1048576
  %24 = load i32, i32* @BlockSize, align 4
  %25 = call i32 @msg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24)
  %26 = load i32, i32* @NBlocks, align 4
  %27 = call i8* @calloc(i32 24, i32 %26)
  %28 = bitcast i8* %27 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %28, %struct.TYPE_4__** %3, align 8
  %29 = load i32, i32* @HSize, align 4
  %30 = call i8* @calloc(i32 8, i32 %29)
  %31 = bitcast i8* %30 to %struct.TYPE_4__**
  store %struct.TYPE_4__** %31, %struct.TYPE_4__*** @BlockHash, align 8
  %32 = load i32, i32* @NBlocks, align 4
  %33 = load i32, i32* @BlockSize, align 4
  %34 = mul nsw i32 %32, %33
  %35 = load i32, i32* @PROT_READ, align 4
  %36 = load i32, i32* @PROT_WRITE, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @MAP_ANON, align 4
  %39 = call i64 @mmap(i32* null, i32 %34, i32 %37, i32 %38, i32 -1, i32 0)
  store i64 %39, i64* @DataBase, align 8
  store i32 0, i32* %1, align 4
  br label %40

40:                                               ; preds = %82, %13
  %41 = load i32, i32* %1, align 4
  %42 = load i32, i32* @NBlocks, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %85

44:                                               ; preds = %40
  %45 = load i64, i64* @DataBase, align 8
  %46 = load i32, i32* %1, align 4
  %47 = load i32, i32* @BlockSize, align 4
  %48 = mul nsw i32 %46, %47
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %45, %49
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %52 = load i32, i32* %1, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  store i64 %50, i64* %55, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %57 = load i32, i32* %1, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  store i64 -1, i64* %60, align 8
  %61 = load i32, i32* %1, align 4
  %62 = load i32, i32* @HFACTOR, align 4
  %63 = sdiv i32 %61, %62
  store i32 %63, i32* %2, align 4
  %64 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @BlockHash, align 8
  %65 = load i32, i32* %2, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %64, i64 %66
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %70 = load i32, i32* %1, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  store %struct.TYPE_4__* %68, %struct.TYPE_4__** %73, align 8
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %75 = load i32, i32* %1, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i64 %76
  %78 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @BlockHash, align 8
  %79 = load i32, i32* %2, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %78, i64 %80
  store %struct.TYPE_4__* %77, %struct.TYPE_4__** %81, align 8
  br label %82

82:                                               ; preds = %44
  %83 = load i32, i32* %1, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %1, align 4
  br label %40

85:                                               ; preds = %40
  ret void
}

declare dso_local i32 @msg(i8*, i32, i32) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i64 @mmap(i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

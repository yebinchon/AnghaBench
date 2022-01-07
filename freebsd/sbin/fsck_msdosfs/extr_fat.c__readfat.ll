; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_msdosfs/extr_fat.c__readfat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_msdosfs/extr_fat.c__readfat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bootblock = type { i32, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"No space for FAT sectors (%zu)\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Unable to read FAT\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.bootblock*, i32, i32**)* @_readfat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_readfat(i32 %0, %struct.bootblock* %1, i32 %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.bootblock*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.bootblock* %1, %struct.bootblock** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32** %3, i32*** %9, align 8
  %11 = load %struct.bootblock*, %struct.bootblock** %7, align 8
  %12 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.bootblock*, %struct.bootblock** %7, align 8
  %15 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32* @calloc(i32 %13, i32 %16)
  %18 = load i32**, i32*** %9, align 8
  store i32* %17, i32** %18, align 8
  %19 = load i32**, i32*** %9, align 8
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %4
  %23 = load %struct.bootblock*, %struct.bootblock** %7, align 8
  %24 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = call i32 (i8*, ...) @perr(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %26)
  store i32 0, i32* %5, align 4
  br label %79

28:                                               ; preds = %4
  %29 = load %struct.bootblock*, %struct.bootblock** %7, align 8
  %30 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.bootblock*, %struct.bootblock** %7, align 8
  %34 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = mul nsw i32 %32, %35
  %37 = add nsw i32 %31, %36
  store i32 %37, i32* %10, align 4
  %38 = load %struct.bootblock*, %struct.bootblock** %7, align 8
  %39 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %10, align 4
  %42 = mul nsw i32 %41, %40
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @SEEK_SET, align 4
  %46 = call i32 @lseek(i32 %43, i32 %44, i32 %45)
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %28
  %50 = call i32 (i8*, ...) @perr(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %75

51:                                               ; preds = %28
  %52 = load i32, i32* %6, align 4
  %53 = load i32**, i32*** %9, align 8
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.bootblock*, %struct.bootblock** %7, align 8
  %56 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.bootblock*, %struct.bootblock** %7, align 8
  %59 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = mul nsw i32 %57, %60
  %62 = call i64 @read(i32 %52, i32* %54, i32 %61)
  %63 = load %struct.bootblock*, %struct.bootblock** %7, align 8
  %64 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.bootblock*, %struct.bootblock** %7, align 8
  %67 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = mul nsw i32 %65, %68
  %70 = sext i32 %69 to i64
  %71 = icmp ne i64 %62, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %51
  %73 = call i32 (i8*, ...) @perr(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %75

74:                                               ; preds = %51
  store i32 1, i32* %5, align 4
  br label %79

75:                                               ; preds = %72, %49
  %76 = load i32**, i32*** %9, align 8
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 @free(i32* %77)
  store i32 0, i32* %5, align 4
  br label %79

79:                                               ; preds = %75, %74, %22
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i32 @perr(i8*, ...) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i64 @read(i32, i32*, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

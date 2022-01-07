; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_msdosfs/extr_fat.c_checkclnum.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_msdosfs/extr_fat.c_checkclnum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bootblock = type { i32, i32, i32, i32 }

@CLUST_RSRVD = common dso_local global i32 0, align 4
@CLUST_FREE = common dso_local global i32 0, align 4
@FSOK = common dso_local global i32 0, align 4
@CLUST_BAD = common dso_local global i32 0, align 4
@CLUST_FIRST = common dso_local global i32 0, align 4
@CLUST_EOFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"Cluster %u in FAT %d continues with %s cluster number %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"out of range\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"reserved\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"Truncate\00", align 1
@CLUST_EOF = common dso_local global i32 0, align 4
@FSFATMOD = common dso_local global i32 0, align 4
@FSERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bootblock*, i32, i32, i32*)* @checkclnum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @checkclnum(%struct.bootblock* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bootblock*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.bootblock* %0, %struct.bootblock** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %10 = load i32*, i32** %9, align 8
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @CLUST_RSRVD, align 4
  %13 = load %struct.bootblock*, %struct.bootblock** %6, align 8
  %14 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %12, %15
  %17 = icmp sge i32 %11, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %4
  %19 = load %struct.bootblock*, %struct.bootblock** %6, align 8
  %20 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = xor i32 %21, -1
  %23 = load i32*, i32** %9, align 8
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %22
  store i32 %25, i32* %23, align 4
  br label %26

26:                                               ; preds = %18, %4
  %27 = load i32*, i32** %9, align 8
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @CLUST_FREE, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load %struct.bootblock*, %struct.bootblock** %6, align 8
  %33 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  %36 = load i32, i32* @FSOK, align 4
  store i32 %36, i32* %5, align 4
  br label %91

37:                                               ; preds = %26
  %38 = load i32*, i32** %9, align 8
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @CLUST_BAD, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load %struct.bootblock*, %struct.bootblock** %6, align 8
  %44 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  %47 = load i32, i32* @FSOK, align 4
  store i32 %47, i32* %5, align 4
  br label %91

48:                                               ; preds = %37
  %49 = load i32*, i32** %9, align 8
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @CLUST_FIRST, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %65, label %53

53:                                               ; preds = %48
  %54 = load i32*, i32** %9, align 8
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.bootblock*, %struct.bootblock** %6, align 8
  %57 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp sge i32 %55, %58
  br i1 %59, label %60, label %89

60:                                               ; preds = %53
  %61 = load i32*, i32** %9, align 8
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @CLUST_EOFS, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %89

65:                                               ; preds = %60, %48
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i32*, i32** %9, align 8
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @CLUST_RSRVD, align 4
  %71 = icmp slt i32 %69, %70
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %74 = load i32*, i32** %9, align 8
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.bootblock*, %struct.bootblock** %6, align 8
  %77 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %75, %78
  %80 = call i32 @pwarn(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %66, i32 %67, i8* %73, i32 %79)
  %81 = call i64 @ask(i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %65
  %84 = load i32, i32* @CLUST_EOF, align 4
  %85 = load i32*, i32** %9, align 8
  store i32 %84, i32* %85, align 4
  %86 = load i32, i32* @FSFATMOD, align 4
  store i32 %86, i32* %5, align 4
  br label %91

87:                                               ; preds = %65
  %88 = load i32, i32* @FSERROR, align 4
  store i32 %88, i32* %5, align 4
  br label %91

89:                                               ; preds = %60, %53
  %90 = load i32, i32* @FSOK, align 4
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %89, %87, %83, %42, %31
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i32 @pwarn(i8*, i32, i32, i8*, i32) #1

declare dso_local i64 @ask(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

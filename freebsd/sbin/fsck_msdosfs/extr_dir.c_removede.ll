; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_msdosfs/extr_dir.c_removede.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_msdosfs/extr_dir.c_removede.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bootblock = type { i32 }
%struct.fatEntry = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"Invalid long filename entry for %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"Invalid long filename entry at end of directory %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"Invalid long filename entry for volume label\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"Remove\00", align 1
@buffer = common dso_local global i32* null, align 8
@FSFATAL = common dso_local global i64 0, align 8
@CLUST_FIRST = common dso_local global i64 0, align 8
@SLOT_DELETED = common dso_local global i32 0, align 4
@FSDIRMOD = common dso_local global i32 0, align 4
@FSERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.bootblock*, %struct.fatEntry*, i32*, i32*, i64, i64, i64, i8*, i32)* @removede to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @removede(i32 %0, %struct.bootblock* %1, %struct.fatEntry* %2, i32* %3, i32* %4, i64 %5, i64 %6, i64 %7, i8* %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.bootblock*, align 8
  %14 = alloca %struct.fatEntry*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  store i32 %0, i32* %12, align 4
  store %struct.bootblock* %1, %struct.bootblock** %13, align 8
  store %struct.fatEntry* %2, %struct.fatEntry** %14, align 8
  store i32* %3, i32** %15, align 8
  store i32* %4, i32** %16, align 8
  store i64 %5, i64* %17, align 8
  store i64 %6, i64* %18, align 8
  store i64 %7, i64* %19, align 8
  store i8* %8, i8** %20, align 8
  store i32 %9, i32* %21, align 4
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %31 [
    i32 0, label %23
    i32 1, label %26
    i32 2, label %29
  ]

23:                                               ; preds = %10
  %24 = load i8*, i8** %20, align 8
  %25 = call i32 (i8*, ...) @pwarn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %24)
  br label %31

26:                                               ; preds = %10
  %27 = load i8*, i8** %20, align 8
  %28 = call i32 (i8*, ...) @pwarn(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i8* %27)
  br label %31

29:                                               ; preds = %10
  %30 = call i32 (i8*, ...) @pwarn(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  br label %31

31:                                               ; preds = %10, %29, %26, %23
  %32 = call i64 @ask(i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %92

34:                                               ; preds = %31
  %35 = load i64, i64* %17, align 8
  %36 = load i64, i64* %19, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %70

38:                                               ; preds = %34
  %39 = load i32, i32* %12, align 4
  %40 = load %struct.bootblock*, %struct.bootblock** %13, align 8
  %41 = load %struct.fatEntry*, %struct.fatEntry** %14, align 8
  %42 = load i64, i64* %17, align 8
  %43 = load i32*, i32** %15, align 8
  %44 = load i32*, i32** @buffer, align 8
  %45 = ptrtoint i32* %43 to i64
  %46 = ptrtoint i32* %44 to i64
  %47 = sub i64 %45, %46
  %48 = sdiv exact i64 %47, 4
  %49 = trunc i64 %48 to i32
  %50 = load i64, i64* %18, align 8
  %51 = load i32*, i32** %16, align 8
  %52 = load i32*, i32** @buffer, align 8
  %53 = ptrtoint i32* %51 to i64
  %54 = ptrtoint i32* %52 to i64
  %55 = sub i64 %53, %54
  %56 = sdiv exact i64 %55, 4
  %57 = trunc i64 %56 to i32
  %58 = load i64, i64* %18, align 8
  %59 = load i64, i64* %19, align 8
  %60 = icmp eq i64 %58, %59
  %61 = zext i1 %60 to i32
  %62 = call i64 @delete(i32 %39, %struct.bootblock* %40, %struct.fatEntry* %41, i64 %42, i32 %49, i64 %50, i32 %57, i32 %61)
  %63 = load i64, i64* @FSFATAL, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %38
  %66 = load i64, i64* @FSFATAL, align 8
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %11, align 4
  br label %94

68:                                               ; preds = %38
  %69 = load i32*, i32** @buffer, align 8
  store i32* %69, i32** %15, align 8
  br label %70

70:                                               ; preds = %68, %34
  %71 = load i64, i64* %18, align 8
  %72 = load i64, i64* %19, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %78, label %74

74:                                               ; preds = %70
  %75 = load i64, i64* %17, align 8
  %76 = load i64, i64* @CLUST_FIRST, align 8
  %77 = icmp slt i64 %75, %76
  br i1 %77, label %78, label %90

78:                                               ; preds = %74, %70
  br label %79

79:                                               ; preds = %86, %78
  %80 = load i32*, i32** %15, align 8
  %81 = load i32*, i32** %16, align 8
  %82 = icmp ult i32* %80, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %79
  %84 = load i32, i32* @SLOT_DELETED, align 4
  %85 = load i32*, i32** %15, align 8
  store i32 %84, i32* %85, align 4
  br label %86

86:                                               ; preds = %83
  %87 = load i32*, i32** %15, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 32
  store i32* %88, i32** %15, align 8
  br label %79

89:                                               ; preds = %79
  br label %90

90:                                               ; preds = %89, %74
  %91 = load i32, i32* @FSDIRMOD, align 4
  store i32 %91, i32* %11, align 4
  br label %94

92:                                               ; preds = %31
  %93 = load i32, i32* @FSERROR, align 4
  store i32 %93, i32* %11, align 4
  br label %94

94:                                               ; preds = %92, %90, %65
  %95 = load i32, i32* %11, align 4
  ret i32 %95
}

declare dso_local i32 @pwarn(i8*, ...) #1

declare dso_local i64 @ask(i32, i8*) #1

declare dso_local i64 @delete(i32, %struct.bootblock*, %struct.fatEntry*, i64, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

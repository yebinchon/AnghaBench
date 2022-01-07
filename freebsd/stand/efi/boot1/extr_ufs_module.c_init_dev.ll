; ModuleID = '/home/carl/AnghaBench/freebsd/stand/efi/boot1/extr_ufs_module.c_init_dev.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/efi/boot1/extr_ufs_module.c_init_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.disklabel = type { i64, i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }

@BSD_LABEL_BUFFER = common dso_local global i32 0, align 4
@devinfo = common dso_local global %struct.TYPE_10__* null, align 8
@__dmadat = common dso_local global i32 0, align 4
@dmadat = common dso_local global i32* null, align 8
@DEV_BSIZE = common dso_local global i32 0, align 4
@BSD_MAGIC = common dso_local global i64 0, align 8
@BSD_LABEL_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*)* @init_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_dev(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.disklabel*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %10 = load i32, i32* @BSD_LABEL_BUFFER, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %4, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %5, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  store %struct.TYPE_10__* %14, %struct.TYPE_10__** @devinfo, align 8
  store i32* @__dmadat, i32** @dmadat, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devinfo, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  store i64 0, i64* %16, align 8
  %17 = call i32 @fsread(i32 0, i32* null, i32 0)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp sge i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %99

22:                                               ; preds = %1
  %23 = load i32, i32* @BSD_LABEL_BUFFER, align 4
  %24 = load i32, i32* @DEV_BSIZE, align 4
  %25 = sdiv i32 %23, %24
  %26 = call i64 @dskread(i8* %13, i32 0, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %99

29:                                               ; preds = %22
  store %struct.disklabel* null, %struct.disklabel** %6, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devinfo, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %29
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @BSD_LABEL_BUFFER, align 4
  %42 = sdiv i32 %41, 2
  %43 = icmp sle i32 %40, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %13, i64 %46
  %48 = bitcast i8* %47 to %struct.disklabel*
  store %struct.disklabel* %48, %struct.disklabel** %6, align 8
  br label %49

49:                                               ; preds = %44, %39, %29
  %50 = load %struct.disklabel*, %struct.disklabel** %6, align 8
  %51 = icmp eq %struct.disklabel* %50, null
  br i1 %51, label %64, label %52

52:                                               ; preds = %49
  %53 = load %struct.disklabel*, %struct.disklabel** %6, align 8
  %54 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @BSD_MAGIC, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %64, label %58

58:                                               ; preds = %52
  %59 = load %struct.disklabel*, %struct.disklabel** %6, align 8
  %60 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @BSD_MAGIC, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %58, %52, %49
  %65 = load i64, i64* @BSD_LABEL_OFFSET, align 8
  %66 = getelementptr inbounds i8, i8* %13, i64 %65
  %67 = bitcast i8* %66 to %struct.disklabel*
  store %struct.disklabel* %67, %struct.disklabel** %6, align 8
  br label %68

68:                                               ; preds = %64, %58
  %69 = load %struct.disklabel*, %struct.disklabel** %6, align 8
  %70 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @BSD_MAGIC, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %88, label %74

74:                                               ; preds = %68
  %75 = load %struct.disklabel*, %struct.disklabel** %6, align 8
  %76 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @BSD_MAGIC, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %88, label %80

80:                                               ; preds = %74
  %81 = load %struct.disklabel*, %struct.disklabel** %6, align 8
  %82 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %81, i32 0, i32 2
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i64 0
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %80, %74, %68
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %99

89:                                               ; preds = %80
  %90 = load %struct.disklabel*, %struct.disklabel** %6, align 8
  %91 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %90, i32 0, i32 2
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i64 0
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devinfo, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  store i64 %95, i64* %97, align 8
  %98 = call i32 @fsread(i32 0, i32* null, i32 0)
  store i32 %98, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %99

99:                                               ; preds = %89, %88, %28, %20
  %100 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %100)
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @fsread(i32, i32*, i32) #2

declare dso_local i64 @dskread(i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/devmatch/extr_devmatch.c_read_hints.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/devmatch/extr_devmatch.c_read_hints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64 }

@O_RDONLY = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"Can't open %s for reading\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Can't fstat %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"not enough space to read hints file of %ju bytes\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Can't read in %ju bytes from %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64*)* @read_hints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @read_hints(i8* %0, i64* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.stat, align 8
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = load i32, i32* @O_RDONLY, align 4
  %11 = call i32 @open(i8* %9, i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load i64, i64* @errno, align 8
  %16 = load i64, i64* @ENOENT, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i8* null, i8** %3, align 8
  br label %66

19:                                               ; preds = %14
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 (i32, i8*, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %20)
  br label %22

22:                                               ; preds = %19, %2
  %23 = load i32, i32* %7, align 4
  %24 = call i64 @fstat(i32 %23, %struct.stat* %8)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 (i32, i8*, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %27)
  br label %29

29:                                               ; preds = %26, %22
  %30 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i8* @malloc(i64 %31)
  store i8* %32, i8** %6, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to i8*
  %41 = call i32 (i32, i8*, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i8* %40)
  br label %42

42:                                               ; preds = %35, %29
  %43 = load i32, i32* %7, align 4
  %44 = load i8*, i8** %6, align 8
  %45 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i64 @read(i32 %43, i8* %44, i64 %46)
  %48 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %47, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %42
  %52 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = trunc i64 %53 to i32
  %55 = sext i32 %54 to i64
  %56 = inttoptr i64 %55 to i8*
  %57 = load i8*, i8** %4, align 8
  %58 = call i32 (i32, i8*, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8* %56, i8* %57)
  br label %59

59:                                               ; preds = %51, %42
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @close(i32 %60)
  %62 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64*, i64** %5, align 8
  store i64 %63, i64* %64, align 8
  %65 = load i8*, i8** %6, align 8
  store i8* %65, i8** %3, align 8
  br label %66

66:                                               ; preds = %59, %18
  %67 = load i8*, i8** %3, align 8
  ret i8* %67
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @err(i32, i8*, i8*, ...) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @read(i32, i8*, i64) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/lib/geom/part/extr_geom_part.c_gpart_bootfile_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/geom/part/extr_geom_part.c_gpart_bootfile_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i32 }

@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"%s: not a regular file\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"%s: empty file\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"%s: file too big (%zu limit)\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64*)* @gpart_bootfile_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @gpart_bootfile_read(i8* %0, i64* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.stat, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64* %1, i64** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i32 @stat(i8* %8, %struct.stat* %5)
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, i32* @EXIT_FAILURE, align 4
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 (i32, i8*, ...) @err(i32 %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %13)
  br label %15

15:                                               ; preds = %11, %2
  %16 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @S_ISREG(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* @EXIT_FAILURE, align 4
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 (i32, i8*, i8*, ...) @errx(i32 %21, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %22)
  br label %24

24:                                               ; preds = %20, %15
  %25 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i32, i32* @EXIT_FAILURE, align 4
  %30 = load i8*, i8** %3, align 8
  %31 = call i32 (i32, i8*, i8*, ...) @errx(i32 %29, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %30)
  br label %32

32:                                               ; preds = %28, %24
  %33 = load i64*, i64** %4, align 8
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64*, i64** %4, align 8
  %40 = load i64, i64* %39, align 8
  %41 = icmp sgt i64 %38, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = load i32, i32* @EXIT_FAILURE, align 4
  %44 = load i8*, i8** %3, align 8
  %45 = load i64*, i64** %4, align 8
  %46 = load i64, i64* %45, align 8
  %47 = call i32 (i32, i8*, i8*, ...) @errx(i32 %43, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %44, i64 %46)
  br label %48

48:                                               ; preds = %42, %36, %32
  %49 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64*, i64** %4, align 8
  store i64 %50, i64* %51, align 8
  %52 = load i8*, i8** %3, align 8
  %53 = load i32, i32* @O_RDONLY, align 4
  %54 = call i32 @open(i8* %52, i32 %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %57, label %61

57:                                               ; preds = %48
  %58 = load i32, i32* @EXIT_FAILURE, align 4
  %59 = load i8*, i8** %3, align 8
  %60 = call i32 (i32, i8*, ...) @err(i32 %58, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %59)
  br label %61

61:                                               ; preds = %57, %48
  %62 = load i64*, i64** %4, align 8
  %63 = load i64, i64* %62, align 8
  %64 = call i8* @malloc(i64 %63)
  store i8* %64, i8** %6, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = icmp eq i8* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load i32, i32* @EXIT_FAILURE, align 4
  %69 = call i32 (i32, i8*, ...) @err(i32 %68, i8* null)
  br label %70

70:                                               ; preds = %67, %61
  %71 = load i32, i32* %7, align 4
  %72 = load i8*, i8** %6, align 8
  %73 = load i64*, i64** %4, align 8
  %74 = load i64, i64* %73, align 8
  %75 = call i64 @read(i32 %71, i8* %72, i64 %74)
  %76 = load i64*, i64** %4, align 8
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %75, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %70
  %80 = load i32, i32* @EXIT_FAILURE, align 4
  %81 = load i8*, i8** %3, align 8
  %82 = call i32 (i32, i8*, ...) @err(i32 %80, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %81)
  br label %83

83:                                               ; preds = %79, %70
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @close(i32 %84)
  %86 = load i8*, i8** %6, align 8
  ret i8* %86
}

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @errx(i32, i8*, i8*, ...) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @read(i32, i8*, i64) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

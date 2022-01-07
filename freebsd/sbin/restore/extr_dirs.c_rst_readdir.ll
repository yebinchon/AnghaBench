; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/restore/extr_dirs.c_rst_readdir.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/restore/extr_dirs.c_rst_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.direct = type { i64, i64, i32 }
%struct.TYPE_3__ = type { i64, i64, i64, i32 }

@DIRBLKSIZ = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"error reading directory\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"corrupted directory: bad reclen %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@maxino = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [34 x i8] c"corrupted directory: bad inum %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.direct* @rst_readdir(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.direct*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.direct*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  br label %5

5:                                                ; preds = %95, %37, %1
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %29

10:                                               ; preds = %5
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @DIRBLKSIZ, align 8
  %18 = call i64 @read(i32 %13, i64 %16, i64 %17)
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  store i64 %18, i64* %20, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp sle i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %10
  %26 = load i32, i32* @stderr, align 4
  %27 = call i32 (i32, i8*, ...) @dprintf(i32 %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store %struct.direct* null, %struct.direct** %2, align 8
  br label %103

28:                                               ; preds = %10
  br label %29

29:                                               ; preds = %28, %5
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp sge i64 %32, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %29
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  br label %5

40:                                               ; preds = %29
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %43, %46
  %48 = inttoptr i64 %47 to %struct.direct*
  store %struct.direct* %48, %struct.direct** %4, align 8
  %49 = load %struct.direct*, %struct.direct** %4, align 8
  %50 = getelementptr inbounds %struct.direct, %struct.direct* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %64, label %53

53:                                               ; preds = %40
  %54 = load %struct.direct*, %struct.direct** %4, align 8
  %55 = getelementptr inbounds %struct.direct, %struct.direct* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @DIRBLKSIZ, align 8
  %58 = add nsw i64 %57, 1
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = sub nsw i64 %58, %61
  %63 = icmp sgt i64 %56, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %53, %40
  %65 = load i32, i32* @stderr, align 4
  %66 = load %struct.direct*, %struct.direct** %4, align 8
  %67 = getelementptr inbounds %struct.direct, %struct.direct* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 (i32, i8*, ...) @dprintf(i32 %65, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %68)
  store %struct.direct* null, %struct.direct** %2, align 8
  br label %103

70:                                               ; preds = %53
  %71 = load %struct.direct*, %struct.direct** %4, align 8
  %72 = getelementptr inbounds %struct.direct, %struct.direct* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %76, %73
  store i64 %77, i64* %75, align 8
  %78 = load %struct.direct*, %struct.direct** %4, align 8
  %79 = getelementptr inbounds %struct.direct, %struct.direct* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %70
  %83 = load %struct.direct*, %struct.direct** %4, align 8
  %84 = getelementptr inbounds %struct.direct, %struct.direct* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = call i64 @strcmp(i32 %85, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  store %struct.direct* null, %struct.direct** %2, align 8
  br label %103

89:                                               ; preds = %82, %70
  %90 = load %struct.direct*, %struct.direct** %4, align 8
  %91 = getelementptr inbounds %struct.direct, %struct.direct* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @maxino, align 8
  %94 = icmp sge i64 %92, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %89
  %96 = load i32, i32* @stderr, align 4
  %97 = load %struct.direct*, %struct.direct** %4, align 8
  %98 = getelementptr inbounds %struct.direct, %struct.direct* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = call i32 (i32, i8*, ...) @dprintf(i32 %96, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i64 %99)
  br label %5

101:                                              ; preds = %89
  %102 = load %struct.direct*, %struct.direct** %4, align 8
  store %struct.direct* %102, %struct.direct** %2, align 8
  br label %103

103:                                              ; preds = %101, %88, %64, %25
  %104 = load %struct.direct*, %struct.direct** %2, align 8
  ret %struct.direct* %104
}

declare dso_local i64 @read(i32, i64, i64) #1

declare dso_local i32 @dprintf(i32, i8*, ...) #1

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

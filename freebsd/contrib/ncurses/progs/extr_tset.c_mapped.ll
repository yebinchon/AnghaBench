; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ncurses/progs/extr_tset.c_mapped.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ncurses/progs/extr_tset.c_mapped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32, i8*, %struct.TYPE_3__* }

@maplist = common dso_local global %struct.TYPE_3__* null, align 8
@TRUE = common dso_local global i32 0, align 4
@ospeed = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @mapped to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @mapped(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** @maplist, align 8
  store %struct.TYPE_3__* %6, %struct.TYPE_3__** %4, align 8
  br label %7

7:                                                ; preds = %79, %1
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = icmp ne %struct.TYPE_3__* %8, null
  br i1 %9, label %10, label %83

10:                                               ; preds = %7
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %10
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = call i32 @strcmp(i64 %18, i8* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %78, label %22

22:                                               ; preds = %15, %10
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %68 [
    i32 0, label %26
    i32 132, label %28
    i32 131, label %36
    i32 130, label %44
    i32 129, label %52
    i32 128, label %60
  ]

26:                                               ; preds = %22
  %27 = load i32, i32* @TRUE, align 4
  store i32 %27, i32* %5, align 4
  br label %70

28:                                               ; preds = %22
  %29 = load i64, i64* @ospeed, align 8
  %30 = trunc i64 %29 to i32
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %30, %33
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %5, align 4
  br label %70

36:                                               ; preds = %22
  %37 = load i64, i64* @ospeed, align 8
  %38 = trunc i64 %37 to i32
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = icmp sge i32 %38, %41
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %5, align 4
  br label %70

44:                                               ; preds = %22
  %45 = load i64, i64* @ospeed, align 8
  %46 = trunc i64 %45 to i32
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = icmp sgt i32 %46, %49
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %5, align 4
  br label %70

52:                                               ; preds = %22
  %53 = load i64, i64* @ospeed, align 8
  %54 = trunc i64 %53 to i32
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = icmp sle i32 %54, %57
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %5, align 4
  br label %70

60:                                               ; preds = %22
  %61 = load i64, i64* @ospeed, align 8
  %62 = trunc i64 %61 to i32
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = icmp slt i32 %62, %65
  %67 = zext i1 %66 to i32
  store i32 %67, i32* %5, align 4
  br label %70

68:                                               ; preds = %22
  %69 = load i32, i32* @FALSE, align 4
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %68, %60, %52, %44, %36, %28, %26
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 3
  %76 = load i8*, i8** %75, align 8
  store i8* %76, i8** %2, align 8
  br label %85

77:                                               ; preds = %70
  br label %78

78:                                               ; preds = %77, %15
  br label %79

79:                                               ; preds = %78
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 4
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  store %struct.TYPE_3__* %82, %struct.TYPE_3__** %4, align 8
  br label %7

83:                                               ; preds = %7
  %84 = load i8*, i8** %3, align 8
  store i8* %84, i8** %2, align 8
  br label %85

85:                                               ; preds = %83, %73
  %86 = load i8*, i8** %2, align 8
  ret i8* %86
}

declare dso_local i32 @strcmp(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

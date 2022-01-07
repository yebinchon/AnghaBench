; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_zalloc_malloc.c_Realloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_zalloc_malloc.c_Realloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@MALLOCALIGN = common dso_local global i32 0, align 4
@DidAtExit = common dso_local global i32 0, align 4
@MallocCount = common dso_local global i64 0, align 8
@MallocMax = common dso_local global i64 0, align 8
@mallocstats = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @Realloc(i8* %0, i64 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_2__*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i64, i64* %6, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = call i8* @Malloc(i64 %12, i8* %13, i32 %14)
  store i8* %15, i8** %9, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %53

17:                                               ; preds = %4
  %18 = load i8*, i8** %5, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %51

20:                                               ; preds = %17
  %21 = load i8*, i8** %5, align 8
  %22 = load i32, i32* @MALLOCALIGN, align 4
  %23 = sext i32 %22 to i64
  %24 = sub i64 0, %23
  %25 = getelementptr inbounds i8, i8* %21, i64 %24
  %26 = bitcast i8* %25 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %26, %struct.TYPE_2__** %11, align 8
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @MALLOCALIGN, align 4
  %31 = sub nsw i32 %29, %30
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %10, align 8
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* %6, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %20
  %37 = load i8*, i8** %5, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = load i64, i64* %10, align 8
  %40 = call i32 @bcopy(i8* %37, i8* %38, i64 %39)
  br label %46

41:                                               ; preds = %20
  %42 = load i8*, i8** %5, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @bcopy(i8* %42, i8* %43, i64 %44)
  br label %46

46:                                               ; preds = %41, %36
  %47 = load i8*, i8** %5, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @Free(i8* %47, i8* %48, i32 %49)
  br label %52

51:                                               ; preds = %17
  br label %52

52:                                               ; preds = %51, %46
  br label %53

53:                                               ; preds = %52, %4
  %54 = load i8*, i8** %9, align 8
  ret i8* %54
}

declare dso_local i8* @Malloc(i64, i8*, i32) #1

declare dso_local i32 @bcopy(i8*, i8*, i64) #1

declare dso_local i32 @Free(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

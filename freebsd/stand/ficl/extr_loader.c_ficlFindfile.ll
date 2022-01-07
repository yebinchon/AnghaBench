; ModuleID = '/home/carl/AnghaBench/freebsd/stand/ficl/extr_loader.c_ficlFindfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/ficl/extr_loader.c_ficlFindfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.preloaded_file = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"Error: out of memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ficlFindfile(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.preloaded_file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @stackPopINT(i32 %12)
  store i32 %13, i32* %9, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @stackPopPtr(i32 %16)
  %18 = inttoptr i64 %17 to i8*
  store i8* %18, i8** %6, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @stackPopINT(i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @stackPopPtr(i32 %25)
  %27 = inttoptr i64 %26 to i8*
  store i8* %27, i8** %5, align 8
  %28 = load i32, i32* %8, align 4
  %29 = add nsw i32 %28, 1
  %30 = call i64 @ficlMalloc(i32 %29)
  %31 = inttoptr i64 %30 to i8*
  store i8* %31, i8** %3, align 8
  %32 = load i8*, i8** %3, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %1
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %36 = call i32 @vmThrowErr(%struct.TYPE_5__* %35, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %1
  %38 = load i8*, i8** %3, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @strncpy(i8* %38, i8* %39, i32 %40)
  %42 = load i8*, i8** %3, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  store i8 0, i8* %45, align 1
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %46, 1
  %48 = call i64 @ficlMalloc(i32 %47)
  %49 = inttoptr i64 %48 to i8*
  store i8* %49, i8** %4, align 8
  %50 = load i8*, i8** %4, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %37
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %54 = call i32 @vmThrowErr(%struct.TYPE_5__* %53, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %55

55:                                               ; preds = %52, %37
  %56 = load i8*, i8** %4, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @strncpy(i8* %56, i8* %57, i32 %58)
  %60 = load i8*, i8** %4, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  store i8 0, i8* %63, align 1
  %64 = load i8*, i8** %3, align 8
  %65 = load i8*, i8** %4, align 8
  %66 = call %struct.preloaded_file* @file_findfile(i8* %64, i8* %65)
  store %struct.preloaded_file* %66, %struct.preloaded_file** %7, align 8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.preloaded_file*, %struct.preloaded_file** %7, align 8
  %71 = call i32 @stackPushPtr(i32 %69, %struct.preloaded_file* %70)
  ret void
}

declare dso_local i32 @stackPopINT(i32) #1

declare dso_local i64 @stackPopPtr(i32) #1

declare dso_local i64 @ficlMalloc(i32) #1

declare dso_local i32 @vmThrowErr(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local %struct.preloaded_file* @file_findfile(i8*, i8*) #1

declare dso_local i32 @stackPushPtr(i32, %struct.preloaded_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

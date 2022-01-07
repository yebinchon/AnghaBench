; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mtree/extr_excludes.c_read_excludes_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mtree/extr_excludes.c_read_excludes_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exclude = type { i8*, i32 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@FPARSELN_UNESCCOMM = common dso_local global i32 0, align 4
@FPARSELN_UNESCCONT = common dso_local global i32 0, align 4
@FPARSELN_UNESCESC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"memory allocation error\00", align 1
@excludes = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @read_excludes_file(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.exclude*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = call i32* @fopen(i8* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %7, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i8*, i8** %2, align 8
  %12 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %11)
  br label %13

13:                                               ; preds = %10, %1
  br label %14

14:                                               ; preds = %50, %29, %13
  %15 = load i32*, i32** %3, align 8
  %16 = load i32, i32* @FPARSELN_UNESCCOMM, align 4
  %17 = load i32, i32* @FPARSELN_UNESCCONT, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @FPARSELN_UNESCESC, align 4
  %20 = or i32 %18, %19
  %21 = call i8* @fparseln(i32* %15, i32* null, i32* null, i32* null, i32 %20)
  store i8* %21, i8** %4, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %54

23:                                               ; preds = %14
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %14

30:                                               ; preds = %23
  %31 = call %struct.exclude* @malloc(i32 16)
  store %struct.exclude* %31, %struct.exclude** %5, align 8
  %32 = icmp eq %struct.exclude* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = call i32 @mtree_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %30
  %36 = load i8*, i8** %4, align 8
  %37 = load %struct.exclude*, %struct.exclude** %5, align 8
  %38 = getelementptr inbounds %struct.exclude, %struct.exclude* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  %39 = load %struct.exclude*, %struct.exclude** %5, align 8
  %40 = getelementptr inbounds %struct.exclude, %struct.exclude* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i32* @strchr(i8* %41, i8 signext 47)
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %35
  %45 = load %struct.exclude*, %struct.exclude** %5, align 8
  %46 = getelementptr inbounds %struct.exclude, %struct.exclude* %45, i32 0, i32 1
  store i32 1, i32* %46, align 8
  br label %50

47:                                               ; preds = %35
  %48 = load %struct.exclude*, %struct.exclude** %5, align 8
  %49 = getelementptr inbounds %struct.exclude, %struct.exclude* %48, i32 0, i32 1
  store i32 0, i32* %49, align 8
  br label %50

50:                                               ; preds = %47, %44
  %51 = load %struct.exclude*, %struct.exclude** %5, align 8
  %52 = load i32, i32* @link, align 4
  %53 = call i32 @LIST_INSERT_HEAD(i32* @excludes, %struct.exclude* %51, i32 %52)
  br label %14

54:                                               ; preds = %14
  %55 = load i32*, i32** %3, align 8
  %56 = call i32 @fclose(i32* %55)
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i8* @fparseln(i32*, i32*, i32*, i32*, i32) #1

declare dso_local %struct.exclude* @malloc(i32) #1

declare dso_local i32 @mtree_err(i8*) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.exclude*, i32) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

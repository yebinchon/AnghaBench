; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libfetch/extr_file.c_fetchPutFile.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libfetch/extr_file.c_fetchPutFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.url = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"ae\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"w+e\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @fetchPutFile(%struct.url* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.url*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store %struct.url* %0, %struct.url** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = call i64 @CHECK_FLAG(i8 signext 97)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load %struct.url*, %struct.url** %4, align 8
  %11 = getelementptr inbounds %struct.url, %struct.url* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32* @fopen(i32 %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %13, i32** %6, align 8
  br label %19

14:                                               ; preds = %2
  %15 = load %struct.url*, %struct.url** %4, align 8
  %16 = getelementptr inbounds %struct.url, %struct.url* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32* @fopen(i32 %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i32* %18, i32** %6, align 8
  br label %19

19:                                               ; preds = %14, %9
  %20 = load i32*, i32** %6, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = call i32 (...) @fetch_syserr()
  store i32* null, i32** %3, align 8
  br label %43

24:                                               ; preds = %19
  %25 = load %struct.url*, %struct.url** %4, align 8
  %26 = getelementptr inbounds %struct.url, %struct.url* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %24
  %30 = load i32*, i32** %6, align 8
  %31 = load %struct.url*, %struct.url** %4, align 8
  %32 = getelementptr inbounds %struct.url, %struct.url* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @SEEK_SET, align 4
  %35 = call i32 @fseeko(i32* %30, i32 %33, i32 %34)
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %41

37:                                               ; preds = %29
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 @fclose(i32* %38)
  %40 = call i32 (...) @fetch_syserr()
  store i32* null, i32** %3, align 8
  br label %43

41:                                               ; preds = %29, %24
  %42 = load i32*, i32** %6, align 8
  store i32* %42, i32** %3, align 8
  br label %43

43:                                               ; preds = %41, %37, %22
  %44 = load i32*, i32** %3, align 8
  ret i32* %44
}

declare dso_local i64 @CHECK_FLAG(i8 signext) #1

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @fetch_syserr(...) #1

declare dso_local i32 @fseeko(i32*, i32, i32) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

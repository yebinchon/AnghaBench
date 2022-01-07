; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/programs/extr_fileio.c_FIO_listFile.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/programs/extr_fileio.c_FIO_listFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [27 x i8] c"Error while parsing \22%s\22 \0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"File \22%s\22 not compressed by zstd \0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"File \22%s\22 is truncated \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32)* @FIO_listFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FIO_listFile(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = call i32 @memset(i32* %8, i32 0, i32 4)
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 @getFileInfo(i32* %8, i8* %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  switch i32 %13, label %40 [
    i32 131, label %14
    i32 130, label %17
    i32 132, label %25
    i32 128, label %31
    i32 129, label %39
  ]

14:                                               ; preds = %3
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 @DISPLAYLEVEL(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %15)
  br label %41

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 (i8*, ...) @DISPLAYOUT(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %18)
  %20 = load i32, i32* %7, align 4
  %21 = icmp sgt i32 %20, 2
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = call i32 (i8*, ...) @DISPLAYOUT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %17
  store i32 1, i32* %4, align 4
  br label %60

25:                                               ; preds = %3
  %26 = load i32, i32* %7, align 4
  %27 = icmp sgt i32 %26, 2
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = call i32 (i8*, ...) @DISPLAYOUT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %25
  store i32 1, i32* %4, align 4
  br label %60

31:                                               ; preds = %3
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 (i8*, ...) @DISPLAYOUT(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %32)
  %34 = load i32, i32* %7, align 4
  %35 = icmp sgt i32 %34, 2
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = call i32 (i8*, ...) @DISPLAYOUT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %31
  store i32 1, i32* %4, align 4
  br label %60

39:                                               ; preds = %3
  br label %40

40:                                               ; preds = %3, %39
  br label %41

41:                                               ; preds = %40, %14
  %42 = load i8*, i8** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @displayInfo(i8* %42, i32* %8, i32 %43)
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @FIO_addFInfo(i32 %46, i32 %47)
  %49 = load i32*, i32** %5, align 8
  store i32 %48, i32* %49, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp eq i32 %50, 129
  br i1 %51, label %55, label %52

52:                                               ; preds = %41
  %53 = load i32, i32* %9, align 4
  %54 = icmp eq i32 %53, 131
  br label %55

55:                                               ; preds = %52, %41
  %56 = phi i1 [ true, %41 ], [ %54, %52 ]
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert(i32 %57)
  %59 = load i32, i32* %9, align 4
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %55, %38, %30, %24
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @getFileInfo(i32*, i8*) #1

declare dso_local i32 @DISPLAYLEVEL(i32, i8*, i8*) #1

declare dso_local i32 @DISPLAYOUT(i8*, ...) #1

declare dso_local i32 @displayInfo(i8*, i32*, i32) #1

declare dso_local i32 @FIO_addFInfo(i32, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

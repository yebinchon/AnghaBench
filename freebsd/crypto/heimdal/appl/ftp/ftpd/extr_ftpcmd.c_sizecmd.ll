; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftpd/extr_ftpcmd.c_sizecmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftpd/extr_ftpcmd.c_sizecmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32, i64 }

@type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"%s: not a plain file.\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@EOF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"SIZE not implemented for Type %c.\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"?AEIL\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @sizecmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sizecmd(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.stat, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.stat, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i32, i32* @type, align 4
  switch i32 %8, label %69 [
    i32 128, label %9
    i32 129, label %9
    i32 130, label %26
  ]

9:                                                ; preds = %1, %1
  %10 = load i8*, i8** %2, align 8
  %11 = call i32 @stat(i8* %10, %struct.stat* %3)
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @S_ISREG(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %13, %9
  %19 = load i8*, i8** %2, align 8
  %20 = call i32 (i32, i8*, ...) @reply(i32 550, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %19)
  br label %25

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = call i32 (i32, i8*, ...) @reply(i32 213, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64 %23)
  br label %25

25:                                               ; preds = %21, %18
  br label %76

26:                                               ; preds = %1
  %27 = load i8*, i8** %2, align 8
  %28 = call i32* @fopen(i8* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %28, i32** %4, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i8*, i8** %2, align 8
  %33 = call i32 @perror_reply(i32 550, i8* %32)
  br label %76

34:                                               ; preds = %26
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @fileno(i32* %35)
  %37 = call i32 @fstat(i32 %36, %struct.stat* %7)
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @S_ISREG(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %39, %34
  %45 = load i8*, i8** %2, align 8
  %46 = call i32 (i32, i8*, ...) @reply(i32 550, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %45)
  %47 = load i32*, i32** %4, align 8
  %48 = call i32 @fclose(i32* %47)
  br label %76

49:                                               ; preds = %39
  store i64 0, i64* %6, align 8
  br label %50

50:                                               ; preds = %61, %49
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @getc(i32* %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* @EOF, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %50
  %56 = load i32, i32* %5, align 4
  %57 = icmp eq i32 %56, 10
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i64, i64* %6, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %6, align 8
  br label %61

61:                                               ; preds = %58, %55
  %62 = load i64, i64* %6, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %6, align 8
  br label %50

64:                                               ; preds = %50
  %65 = load i32*, i32** %4, align 8
  %66 = call i32 @fclose(i32* %65)
  %67 = load i64, i64* %6, align 8
  %68 = call i32 (i32, i8*, ...) @reply(i32 213, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64 %67)
  br label %76

69:                                               ; preds = %1
  %70 = load i32, i32* @type, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [6 x i8], [6 x i8]* @.str.4, i64 0, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = call i32 (i32, i8*, ...) @reply(i32 504, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %31, %44, %69, %64, %25
  ret void
}

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @reply(i32, i8*, ...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @perror_reply(i32, i8*) #1

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @fileno(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @getc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

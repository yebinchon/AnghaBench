; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_getpublickey.c_getpublicandprivatekey.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_getpublickey.c_getpublicandprivatekey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PKFILE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\09 \00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Bad record in %s -- %s\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c" \09#\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Bad record in %s val problem - %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getpublicandprivatekey(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [1024 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** @PKFILE, align 8
  %12 = call i32* @fopen(i8* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %12, i32** %8, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %84

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %83, %65, %44, %39, %32, %16
  %18 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %19 = load i32*, i32** %8, align 8
  %20 = call i8* @fgets(i8* %18, i32 1024, i32* %19)
  store i8* %20, i8** %7, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32*, i32** %8, align 8
  %25 = call i32 @fclose(i32* %24)
  store i32 0, i32* %3, align 4
  br label %84

26:                                               ; preds = %17
  %27 = load i8*, i8** %7, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 35
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %17

33:                                               ; preds = %26
  %34 = load i8*, i8** %7, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 43
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %17

40:                                               ; preds = %33
  %41 = call i8* @strsep(i8** %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* %41, i8** %9, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load i32, i32* @stderr, align 4
  %46 = load i8*, i8** @PKFILE, align 8
  %47 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %48 = call i32 (i32, i8*, ...) @fprintf(i32 %45, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %46, i8* %47)
  br label %17

49:                                               ; preds = %40
  br label %50

50:                                               ; preds = %60, %49
  %51 = call i8* @strsep(i8** %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i8* %51, i8** %10, align 8
  br label %52

52:                                               ; preds = %50
  %53 = load i8*, i8** %10, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load i8*, i8** %10, align 8
  %57 = load i8, i8* %56, align 1
  %58 = icmp ne i8 %57, 0
  %59 = xor i1 %58, true
  br label %60

60:                                               ; preds = %55, %52
  %61 = phi i1 [ false, %52 ], [ %59, %55 ]
  br i1 %61, label %50, label %62

62:                                               ; preds = %60
  %63 = load i8*, i8** %10, align 8
  %64 = icmp eq i8* %63, null
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = load i32, i32* @stderr, align 4
  %67 = load i8*, i8** @PKFILE, align 8
  %68 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %69 = call i32 (i32, i8*, ...) @fprintf(i32 %66, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i8* %67, i8* %68)
  br label %17

70:                                               ; preds = %62
  %71 = load i8*, i8** %9, align 8
  %72 = load i8*, i8** %4, align 8
  %73 = call i64 @strcmp(i8* %71, i8* %72)
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %70
  %76 = load i8*, i8** %5, align 8
  %77 = load i8*, i8** %10, align 8
  %78 = call i32 @strcpy(i8* %76, i8* %77)
  %79 = load i32*, i32** %8, align 8
  %80 = call i32 @fclose(i32* %79)
  store i32 1, i32* %3, align 4
  br label %84

81:                                               ; preds = %70
  br label %82

82:                                               ; preds = %81
  br label %83

83:                                               ; preds = %82
  br label %17

84:                                               ; preds = %75, %23, %15
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i8* @fgets(i8*, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

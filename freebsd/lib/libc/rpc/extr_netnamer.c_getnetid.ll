; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_netnamer.c_getnetid.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_netnamer.c_getnetid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NETIDFILE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\09 \00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Bad record in %s -- %s\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c" \09#\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Bad record in %s val problem - %s\00", align 1
@NETID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getnetid(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [1024 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %11, align 4
  %12 = load i8*, i8** @NETIDFILE, align 8
  %13 = call i32* @fopen(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %13, i32** %10, align 8
  %14 = load i32*, i32** %10, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %93

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %83, %67, %46, %41, %34, %17
  %19 = load i32*, i32** %10, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %84

21:                                               ; preds = %18
  %22 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %23 = load i32*, i32** %10, align 8
  %24 = call i8* @fgets(i8* %22, i32 1024, i32* %23)
  store i8* %24, i8** %7, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 0, i32* %11, align 4
  br label %85

28:                                               ; preds = %21
  %29 = load i8*, i8** %7, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 35
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %18

35:                                               ; preds = %28
  %36 = load i8*, i8** %7, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 43
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %18

42:                                               ; preds = %35
  %43 = call i8* @strsep(i8** %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* %43, i8** %8, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = icmp eq i8* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load i32, i32* @stderr, align 4
  %48 = load i8*, i8** @NETIDFILE, align 8
  %49 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %50 = call i32 (i32, i8*, ...) @fprintf(i32 %47, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %48, i8* %49)
  br label %18

51:                                               ; preds = %42
  br label %52

52:                                               ; preds = %62, %51
  %53 = call i8* @strsep(i8** %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i8* %53, i8** %9, align 8
  br label %54

54:                                               ; preds = %52
  %55 = load i8*, i8** %9, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load i8*, i8** %9, align 8
  %59 = load i8, i8* %58, align 1
  %60 = icmp ne i8 %59, 0
  %61 = xor i1 %60, true
  br label %62

62:                                               ; preds = %57, %54
  %63 = phi i1 [ false, %54 ], [ %61, %57 ]
  br i1 %63, label %52, label %64

64:                                               ; preds = %62
  %65 = load i8*, i8** %9, align 8
  %66 = icmp eq i8* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %64
  %68 = load i32, i32* @stderr, align 4
  %69 = load i8*, i8** @NETIDFILE, align 8
  %70 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %71 = call i32 (i32, i8*, ...) @fprintf(i32 %68, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i8* %69, i8* %70)
  br label %18

72:                                               ; preds = %64
  %73 = load i8*, i8** %8, align 8
  %74 = load i8*, i8** %4, align 8
  %75 = call i64 @strcmp(i8* %73, i8* %74)
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load i8*, i8** %5, align 8
  %79 = load i8*, i8** %9, align 8
  %80 = call i32 @strcpy(i8* %78, i8* %79)
  store i32 1, i32* %11, align 4
  br label %85

81:                                               ; preds = %72
  br label %82

82:                                               ; preds = %81
  br label %83

83:                                               ; preds = %82
  br label %18

84:                                               ; preds = %18
  br label %85

85:                                               ; preds = %84, %77, %27
  %86 = load i32*, i32** %10, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load i32*, i32** %10, align 8
  %90 = call i32 @fclose(i32* %89)
  br label %91

91:                                               ; preds = %88, %85
  %92 = load i32, i32* %11, align 4
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %91, %16
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i8* @fgets(i8*, i32, i32*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

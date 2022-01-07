; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_main.c_strdump.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_main.c_strdump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"      %*s = \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"NULL\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\\a\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\\b\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\\n\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"\\r\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"\\x%02X\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c" (length %d)\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c" [\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"%04X\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c" (count %d\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c",unknown %d bytes\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32, i32)* @strdump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @strdump(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load i8*, i8** %6, align 8
  store i8* %15, i8** %9, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 (i8*, ...) @logprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %16, i8* %17)
  %19 = load i8*, i8** %6, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = call i32 (i8*, ...) @logprintf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %115

23:                                               ; preds = %4
  %24 = call i32 (i8*, ...) @logprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %25

25:                                               ; preds = %58, %23
  %26 = load i8*, i8** %6, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %59

30:                                               ; preds = %25
  %31 = load i8*, i8** %6, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %6, align 8
  %33 = load i8, i8* %31, align 1
  %34 = sext i8 %33 to i32
  %35 = and i32 255, %34
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  switch i32 %36, label %45 [
    i32 7, label %37
    i32 8, label %39
    i32 10, label %41
    i32 13, label %43
  ]

37:                                               ; preds = %30
  %38 = call i32 (i8*, ...) @logprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %58

39:                                               ; preds = %30
  %40 = call i32 (i8*, ...) @logprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %58

41:                                               ; preds = %30
  %42 = call i32 (i8*, ...) @logprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %58

43:                                               ; preds = %30
  %44 = call i32 (i8*, ...) @logprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %58

45:                                               ; preds = %30
  %46 = load i32, i32* %10, align 4
  %47 = icmp uge i32 %46, 32
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load i32, i32* %10, align 4
  %50 = icmp ult i32 %49, 127
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32, i32* %10, align 4
  %53 = call i32 (i8*, ...) @logprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 %52)
  br label %57

54:                                               ; preds = %48, %45
  %55 = load i32, i32* %10, align 4
  %56 = call i32 (i8*, ...) @logprintf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %54, %51
  br label %58

58:                                               ; preds = %57, %43, %41, %39, %37
  br label %25

59:                                               ; preds = %25
  %60 = call i32 (i8*, ...) @logprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %61 = load i8*, i8** %9, align 8
  %62 = icmp eq i8* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  br label %68

64:                                               ; preds = %59
  %65 = load i8*, i8** %9, align 8
  %66 = call i64 @strlen(i8* %65)
  %67 = trunc i64 %66 to i32
  br label %68

68:                                               ; preds = %64, %63
  %69 = phi i32 [ -1, %63 ], [ %67, %64 ]
  %70 = call i32 (i8*, ...) @logprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %113

73:                                               ; preds = %68
  store i32 0, i32* %14, align 4
  %74 = load i8*, i8** %9, align 8
  store i8* %74, i8** %6, align 8
  %75 = load i8*, i8** %6, align 8
  %76 = call i64 @strlen(i8* %75)
  store i64 %76, i64* %11, align 8
  %77 = call i32 (i8*, ...) @logprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  br label %78

78:                                               ; preds = %89, %73
  %79 = load i8*, i8** %6, align 8
  %80 = load i64, i64* %11, align 8
  %81 = call i32 @_utf8_to_unicode(i32* %12, i8* %79, i64 %80)
  store i32 %81, i32* %13, align 4
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %102

83:                                               ; preds = %78
  %84 = load i8*, i8** %6, align 8
  %85 = load i8*, i8** %9, align 8
  %86 = icmp ne i8* %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = call i32 (i8*, ...) @logprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  br label %89

89:                                               ; preds = %87, %83
  %90 = load i32, i32* %12, align 4
  %91 = call i32 (i8*, ...) @logprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* %13, align 4
  %93 = load i8*, i8** %6, align 8
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds i8, i8* %93, i64 %94
  store i8* %95, i8** %6, align 8
  %96 = load i32, i32* %13, align 4
  %97 = sext i32 %96 to i64
  %98 = load i64, i64* %11, align 8
  %99 = sub i64 %98, %97
  store i64 %99, i64* %11, align 8
  %100 = load i32, i32* %14, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %14, align 4
  br label %78

102:                                              ; preds = %78
  %103 = call i32 (i8*, ...) @logprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  %104 = load i32, i32* %14, align 4
  %105 = call i32 (i8*, ...) @logprintf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i32 %104)
  %106 = load i32, i32* %13, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %102
  %109 = load i64, i64* %11, align 8
  %110 = call i32 (i8*, ...) @logprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), i64 %109)
  br label %111

111:                                              ; preds = %108, %102
  %112 = call i32 (i8*, ...) @logprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  br label %113

113:                                              ; preds = %111, %68
  %114 = call i32 (i8*, ...) @logprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  br label %115

115:                                              ; preds = %113, %21
  ret void
}

declare dso_local i32 @logprintf(i8*, ...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @_utf8_to_unicode(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

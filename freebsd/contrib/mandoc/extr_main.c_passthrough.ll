; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_main.c_passthrough.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_main.c_passthrough.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.passthrough.synb = private unnamed_addr constant [25 x i8] c"S\08SY\08YN\08NO\08OP\08PS\08SI\08IS\08S\00", align 16
@__const.passthrough.synr = private unnamed_addr constant [9 x i8] c"SYNOPSIS\00", align 1
@stdout = common dso_local global i32 0, align 4
@EOF = common dso_local global i64 0, align 8
@MANDOCERR_FFLUSH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@MANDOCERR_FDOPEN = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@MANDOCERR_WRITE = common dso_local global i32 0, align 4
@MANDOCERR_GETLINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @passthrough to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @passthrough(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [25 x i8], align 16
  %6 = alloca [9 x i8], align 1
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %15 = bitcast [25 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %15, i8* align 16 getelementptr inbounds ([25 x i8], [25 x i8]* @__const.passthrough.synb, i32 0, i32 0), i64 25, i1 false)
  %16 = bitcast [9 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %16, i8* align 1 getelementptr inbounds ([9 x i8], [9 x i8]* @__const.passthrough.synr, i32 0, i32 0), i64 9, i1 false)
  store i32* null, i32** %7, align 8
  store i8* null, i8** %8, align 8
  store i64 0, i64* %10, align 8
  %17 = load i32, i32* @stdout, align 4
  %18 = call i64 @fflush(i32 %17)
  %19 = load i64, i64* @EOF, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load i32, i32* @MANDOCERR_FFLUSH, align 4
  %23 = load i32, i32* @errno, align 4
  %24 = call i32 @strerror(i32 %23)
  %25 = call i32 @mandoc_msg(i32 %22, i32 0, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %114

26:                                               ; preds = %2
  %27 = load i32, i32* %3, align 4
  %28 = call i32* @fdopen(i32 %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %28, i32** %7, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @close(i32 %31)
  %33 = load i32, i32* @MANDOCERR_FDOPEN, align 4
  %34 = load i32, i32* @errno, align 4
  %35 = call i32 @strerror(i32 %34)
  %36 = call i32 @mandoc_msg(i32 %33, i32 0, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %114

37:                                               ; preds = %26
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %38

38:                                               ; preds = %102, %80, %37
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @getline(i8** %8, i64* %10, i32* %39)
  store i32 %40, i32* %11, align 4
  %41 = icmp ne i32 %40, -1
  br i1 %41, label %42, label %103

42:                                               ; preds = %38
  %43 = load i32, i32* %13, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %13, align 4
  %45 = load i8*, i8** %8, align 8
  store i8* %45, i8** %9, align 8
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %82

48:                                               ; preds = %42
  %49 = load i32, i32* %14, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %69

51:                                               ; preds = %48
  %52 = load i8*, i8** %9, align 8
  %53 = load i8, i8* %52, align 1
  %54 = call i64 @isspace(i8 zeroext %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %51
  br label %114

57:                                               ; preds = %51
  br label %58

58:                                               ; preds = %63, %57
  %59 = load i8*, i8** %9, align 8
  %60 = load i8, i8* %59, align 1
  %61 = call i64 @isspace(i8 zeroext %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load i8*, i8** %9, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %9, align 8
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %11, align 4
  br label %58

68:                                               ; preds = %58
  br label %81

69:                                               ; preds = %48
  %70 = load i8*, i8** %9, align 8
  %71 = getelementptr inbounds [25 x i8], [25 x i8]* %5, i64 0, i64 0
  %72 = call i64 @strcmp(i8* %70, i8* %71)
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %69
  %75 = load i8*, i8** %9, align 8
  %76 = getelementptr inbounds [9 x i8], [9 x i8]* %6, i64 0, i64 0
  %77 = call i64 @strcmp(i8* %75, i8* %76)
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74, %69
  store i32 1, i32* %14, align 4
  br label %80

80:                                               ; preds = %79, %74
  br label %38

81:                                               ; preds = %68
  br label %82

82:                                               ; preds = %81, %42
  br label %83

83:                                               ; preds = %98, %82
  %84 = load i32, i32* %11, align 4
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %102

86:                                               ; preds = %83
  %87 = load i32, i32* @STDOUT_FILENO, align 4
  %88 = load i8*, i8** %9, align 8
  %89 = load i32, i32* %11, align 4
  %90 = call i32 @write(i32 %87, i8* %88, i32 %89)
  store i32 %90, i32* %12, align 4
  %91 = icmp eq i32 %90, -1
  br i1 %91, label %92, label %97

92:                                               ; preds = %86
  %93 = load i32, i32* @MANDOCERR_WRITE, align 4
  %94 = load i32, i32* @errno, align 4
  %95 = call i32 @strerror(i32 %94)
  %96 = call i32 @mandoc_msg(i32 %93, i32 0, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %95)
  br label %114

97:                                               ; preds = %86
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* %11, align 4
  %101 = sub nsw i32 %100, %99
  store i32 %101, i32* %11, align 4
  br label %83

102:                                              ; preds = %83
  br label %38

103:                                              ; preds = %38
  %104 = load i32*, i32** %7, align 8
  %105 = call i64 @ferror(i32* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %103
  %108 = load i32, i32* @MANDOCERR_GETLINE, align 4
  %109 = load i32, i32* %13, align 4
  %110 = load i32, i32* @errno, align 4
  %111 = call i32 @strerror(i32 %110)
  %112 = call i32 @mandoc_msg(i32 %108, i32 %109, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %111)
  br label %113

113:                                              ; preds = %107, %103
  br label %114

114:                                              ; preds = %113, %92, %56, %30, %21
  %115 = load i8*, i8** %8, align 8
  %116 = call i32 @free(i8* %115)
  %117 = load i32*, i32** %7, align 8
  %118 = icmp ne i32* %117, null
  br i1 %118, label %119, label %122

119:                                              ; preds = %114
  %120 = load i32*, i32** %7, align 8
  %121 = call i32 @fclose(i32* %120)
  br label %122

122:                                              ; preds = %119, %114
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @fflush(i32) #2

declare dso_local i32 @mandoc_msg(i32, i32, i32, i8*, i32) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i32* @fdopen(i32, i8*) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @getline(i8**, i64*, i32*) #2

declare dso_local i64 @isspace(i8 zeroext) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @write(i32, i8*, i32) #2

declare dso_local i64 @ferror(i32*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @fclose(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

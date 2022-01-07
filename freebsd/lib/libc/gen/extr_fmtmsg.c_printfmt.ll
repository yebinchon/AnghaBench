; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_fmtmsg.c_printfmt.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_fmtmsg.c_printfmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MM_NULLLBL = common dso_local global i8* null, align 8
@MM_NULLTXT = common dso_local global i8* null, align 8
@MM_NULLACT = common dso_local global i8* null, align 8
@MM_NULLTAG = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"label\00", align 1
@INSERT_COLON = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"severity\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"action\00", align 1
@INSERT_NEWLINE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"TO FIX: \00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"tag\00", align 1
@INSERT_SPACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64, i8*, i32, i8*, i8*, i8*)* @printfmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @printfmt(i8* %0, i64 %1, i8* %2, i32 %3, i8* %4, i8* %5, i8* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  store i8* %0, i8** %9, align 8
  store i64 %1, i64* %10, align 8
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  store i64 32, i64* %16, align 8
  %20 = load i8*, i8** %11, align 8
  %21 = load i8*, i8** @MM_NULLLBL, align 8
  %22 = icmp ne i8* %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %7
  %24 = load i8*, i8** %11, align 8
  %25 = call i64 @strlen(i8* %24)
  %26 = load i64, i64* %16, align 8
  %27 = add i64 %26, %25
  store i64 %27, i64* %16, align 8
  br label %28

28:                                               ; preds = %23, %7
  %29 = load i32, i32* %12, align 4
  %30 = call i8* @sevinfo(i32 %29)
  store i8* %30, i8** %19, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load i8*, i8** %19, align 8
  %34 = call i64 @strlen(i8* %33)
  %35 = load i64, i64* %16, align 8
  %36 = add i64 %35, %34
  store i64 %36, i64* %16, align 8
  br label %37

37:                                               ; preds = %32, %28
  %38 = load i8*, i8** %13, align 8
  %39 = load i8*, i8** @MM_NULLTXT, align 8
  %40 = icmp ne i8* %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = load i8*, i8** %13, align 8
  %43 = call i64 @strlen(i8* %42)
  %44 = load i64, i64* %16, align 8
  %45 = add i64 %44, %43
  store i64 %45, i64* %16, align 8
  br label %46

46:                                               ; preds = %41, %37
  %47 = load i8*, i8** %14, align 8
  %48 = load i8*, i8** @MM_NULLACT, align 8
  %49 = icmp ne i8* %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = load i8*, i8** %14, align 8
  %52 = call i64 @strlen(i8* %51)
  %53 = load i64, i64* %16, align 8
  %54 = add i64 %53, %52
  store i64 %54, i64* %16, align 8
  br label %55

55:                                               ; preds = %50, %46
  %56 = load i8*, i8** %15, align 8
  %57 = load i8*, i8** @MM_NULLTAG, align 8
  %58 = icmp ne i8* %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load i8*, i8** %15, align 8
  %61 = call i64 @strlen(i8* %60)
  %62 = load i64, i64* %16, align 8
  %63 = add i64 %62, %61
  store i64 %63, i64* %16, align 8
  br label %64

64:                                               ; preds = %59, %55
  %65 = load i64, i64* %16, align 8
  %66 = call i8* @malloc(i64 %65)
  store i8* %66, i8** %18, align 8
  %67 = icmp eq i8* %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  store i8* null, i8** %8, align 8
  br label %156

69:                                               ; preds = %64
  %70 = load i8*, i8** %18, align 8
  store i8 0, i8* %70, align 1
  br label %71

71:                                               ; preds = %152, %69
  %72 = load i8*, i8** %9, align 8
  %73 = call i8* @nextcomp(i8* %72)
  store i8* %73, i8** %17, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %153

75:                                               ; preds = %71
  %76 = load i8*, i8** %17, align 8
  %77 = call i64 @strcmp(i8* %76, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %75
  %80 = load i8*, i8** %11, align 8
  %81 = load i8*, i8** @MM_NULLLBL, align 8
  %82 = icmp ne i8* %80, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %79
  %84 = load i32, i32* @INSERT_COLON, align 4
  %85 = load i8*, i8** %18, align 8
  %86 = load i8*, i8** %11, align 8
  %87 = load i64, i64* %16, align 8
  %88 = call i32 @strlcat(i8* %85, i8* %86, i64 %87)
  br label %152

89:                                               ; preds = %79, %75
  %90 = load i8*, i8** %17, align 8
  %91 = call i64 @strcmp(i8* %90, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %89
  %94 = load i8*, i8** %19, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %103

96:                                               ; preds = %93
  %97 = load i32, i32* @INSERT_COLON, align 4
  %98 = load i8*, i8** %18, align 8
  %99 = load i32, i32* %12, align 4
  %100 = call i8* @sevinfo(i32 %99)
  %101 = load i64, i64* %16, align 8
  %102 = call i32 @strlcat(i8* %98, i8* %100, i64 %101)
  br label %151

103:                                              ; preds = %93, %89
  %104 = load i8*, i8** %17, align 8
  %105 = call i64 @strcmp(i8* %104, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %117

107:                                              ; preds = %103
  %108 = load i8*, i8** %13, align 8
  %109 = load i8*, i8** @MM_NULLTXT, align 8
  %110 = icmp ne i8* %108, %109
  br i1 %110, label %111, label %117

111:                                              ; preds = %107
  %112 = load i32, i32* @INSERT_COLON, align 4
  %113 = load i8*, i8** %18, align 8
  %114 = load i8*, i8** %13, align 8
  %115 = load i64, i64* %16, align 8
  %116 = call i32 @strlcat(i8* %113, i8* %114, i64 %115)
  br label %150

117:                                              ; preds = %107, %103
  %118 = load i8*, i8** %17, align 8
  %119 = call i64 @strcmp(i8* %118, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %134

121:                                              ; preds = %117
  %122 = load i8*, i8** %14, align 8
  %123 = load i8*, i8** @MM_NULLACT, align 8
  %124 = icmp ne i8* %122, %123
  br i1 %124, label %125, label %134

125:                                              ; preds = %121
  %126 = load i32, i32* @INSERT_NEWLINE, align 4
  %127 = load i8*, i8** %18, align 8
  %128 = load i64, i64* %16, align 8
  %129 = call i32 @strlcat(i8* %127, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i64 %128)
  %130 = load i8*, i8** %18, align 8
  %131 = load i8*, i8** %14, align 8
  %132 = load i64, i64* %16, align 8
  %133 = call i32 @strlcat(i8* %130, i8* %131, i64 %132)
  br label %149

134:                                              ; preds = %121, %117
  %135 = load i8*, i8** %17, align 8
  %136 = call i64 @strcmp(i8* %135, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %138, label %148

138:                                              ; preds = %134
  %139 = load i8*, i8** %15, align 8
  %140 = load i8*, i8** @MM_NULLTAG, align 8
  %141 = icmp ne i8* %139, %140
  br i1 %141, label %142, label %148

142:                                              ; preds = %138
  %143 = load i32, i32* @INSERT_SPACE, align 4
  %144 = load i8*, i8** %18, align 8
  %145 = load i8*, i8** %15, align 8
  %146 = load i64, i64* %16, align 8
  %147 = call i32 @strlcat(i8* %144, i8* %145, i64 %146)
  br label %148

148:                                              ; preds = %142, %138, %134
  br label %149

149:                                              ; preds = %148, %125
  br label %150

150:                                              ; preds = %149, %111
  br label %151

151:                                              ; preds = %150, %96
  br label %152

152:                                              ; preds = %151, %83
  br label %71

153:                                              ; preds = %71
  %154 = load i32, i32* @INSERT_NEWLINE, align 4
  %155 = load i8*, i8** %18, align 8
  store i8* %155, i8** %8, align 8
  br label %156

156:                                              ; preds = %153, %68
  %157 = load i8*, i8** %8, align 8
  ret i8* %157
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @sevinfo(i32) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i8* @nextcomp(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @strlcat(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

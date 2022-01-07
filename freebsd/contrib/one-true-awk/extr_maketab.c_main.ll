; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_maketab.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_maketab.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xx = type { i32, i8* }

@.str = private unnamed_addr constant [20 x i8] c"#include <stdio.h>\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"#include \22awk.h\22\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"#include \22ytab.h\22\0A\0A\00", align 1
@SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@names = common dso_local global i8** null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"usage: maketab YTAB_H\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"maketab can't open %s!\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"static char *printname[%d] = {\0A\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"%1c %s %s %d\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"define\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"YYSTYPE_IS_DECLARED\00", align 1
@FIRSTTOKEN = common dso_local global i32 0, align 4
@LASTTOKEN = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [26 x i8] c"\09(char *) \22%s\22,\09/* %d */\0A\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"};\0A\0A\00", align 1
@proc = common dso_local global %struct.xx* null, align 8
@table = common dso_local global i8** null, align 8
@.str.13 = private unnamed_addr constant [41 x i8] c"\0ACell *(*proctab[%d])(Node **, int) = {\0A\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"\09nullproc,\09/* %s */\0A\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"\09%s,\09/* %s */\0A\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"char *tokname(int n)\0A\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"\09static char buf[100];\0A\0A\00", align 1
@.str.19 = private unnamed_addr constant [41 x i8] c"\09if (n < FIRSTTOKEN || n > LASTTOKEN) {\0A\00", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"\09\09sprintf(buf, \22token %%d\22, n);\0A\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"\09\09return buf;\0A\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"\09}\0A\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"\09return printname[n-FIRSTTOKEN];\0A\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.xx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i32*, align 8
  %12 = alloca [200 x i8], align 16
  %13 = alloca [200 x i8], align 16
  %14 = alloca [200 x i8], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %18 = load i32, i32* @SIZE, align 4
  store i32 %18, i32* %7, align 4
  br label %19

19:                                               ; preds = %23, %2
  %20 = load i32, i32* %7, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* %7, align 4
  %22 = icmp sge i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load i8**, i8*** @names, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8*, i8** %24, i64 %26
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** %27, align 8
  br label %19

28:                                               ; preds = %19
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 2
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i32, i32* @stderr, align 4
  %33 = call i32 (i32, i8*, ...) @fprintf(i32 %32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %34 = call i32 @exit(i32 1) #3
  unreachable

35:                                               ; preds = %28
  %36 = load i8**, i8*** %5, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 1
  %38 = load i8*, i8** %37, align 8
  %39 = call i32* @fopen(i8* %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i32* %39, i32** %11, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %35
  %42 = load i32, i32* @stderr, align 4
  %43 = load i8**, i8*** %5, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 1
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 (i32, i8*, ...) @fprintf(i32 %42, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i8* %45)
  %47 = call i32 @exit(i32 1) #3
  unreachable

48:                                               ; preds = %35
  %49 = load i32, i32* @SIZE, align 4
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %49)
  store i32 0, i32* %7, align 4
  br label %51

51:                                               ; preds = %86, %85, %76, %71, %48
  %52 = getelementptr inbounds [200 x i8], [200 x i8]* %12, i64 0, i64 0
  %53 = load i32*, i32** %11, align 8
  %54 = call i32* @fgets(i8* %52, i32 200, i32* %53)
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %112

56:                                               ; preds = %51
  %57 = getelementptr inbounds [200 x i8], [200 x i8]* %12, i64 0, i64 0
  %58 = getelementptr inbounds [200 x i8], [200 x i8]* %14, i64 0, i64 0
  %59 = getelementptr inbounds [200 x i8], [200 x i8]* %13, i64 0, i64 0
  %60 = call i32 @sscanf(i8* %57, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8* %10, i8* %58, i8* %59, i32* %9)
  store i32 %60, i32* %8, align 4
  %61 = load i8, i8* %10, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp ne i32 %62, 35
  br i1 %63, label %71, label %64

64:                                               ; preds = %56
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 4
  br i1 %66, label %67, label %72

67:                                               ; preds = %64
  %68 = getelementptr inbounds [200 x i8], [200 x i8]* %14, i64 0, i64 0
  %69 = call i64 @strcmp(i8* %68, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %67, %56
  br label %51

72:                                               ; preds = %67, %64
  %73 = getelementptr inbounds [200 x i8], [200 x i8]* %13, i64 0, i64 0
  %74 = call i64 @strcmp(i8* %73, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  br label %51

77:                                               ; preds = %72
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* @FIRSTTOKEN, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %85, label %81

81:                                               ; preds = %77
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @LASTTOKEN, align 4
  %84 = icmp sgt i32 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %81, %77
  br label %51

86:                                               ; preds = %81
  %87 = getelementptr inbounds [200 x i8], [200 x i8]* %13, i64 0, i64 0
  %88 = call i64 @strlen(i8* %87)
  %89 = add nsw i64 %88, 1
  %90 = call i64 @malloc(i64 %89)
  %91 = inttoptr i64 %90 to i8*
  %92 = load i8**, i8*** @names, align 8
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* @FIRSTTOKEN, align 4
  %95 = sub nsw i32 %93, %94
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8*, i8** %92, i64 %96
  store i8* %91, i8** %97, align 8
  %98 = load i8**, i8*** @names, align 8
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* @FIRSTTOKEN, align 4
  %101 = sub nsw i32 %99, %100
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8*, i8** %98, i64 %102
  %104 = load i8*, i8** %103, align 8
  %105 = getelementptr inbounds [200 x i8], [200 x i8]* %13, i64 0, i64 0
  %106 = call i32 @strcpy(i8* %104, i8* %105)
  %107 = getelementptr inbounds [200 x i8], [200 x i8]* %13, i64 0, i64 0
  %108 = load i32, i32* %9, align 4
  %109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0), i8* %107, i32 %108)
  %110 = load i32, i32* %7, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %7, align 4
  br label %51

112:                                              ; preds = %51
  %113 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %114 = load %struct.xx*, %struct.xx** @proc, align 8
  store %struct.xx* %114, %struct.xx** %6, align 8
  br label %115

115:                                              ; preds = %132, %112
  %116 = load %struct.xx*, %struct.xx** %6, align 8
  %117 = getelementptr inbounds %struct.xx, %struct.xx* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %135

120:                                              ; preds = %115
  %121 = load %struct.xx*, %struct.xx** %6, align 8
  %122 = getelementptr inbounds %struct.xx, %struct.xx* %121, i32 0, i32 1
  %123 = load i8*, i8** %122, align 8
  %124 = load i8**, i8*** @table, align 8
  %125 = load %struct.xx*, %struct.xx** %6, align 8
  %126 = getelementptr inbounds %struct.xx, %struct.xx* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @FIRSTTOKEN, align 4
  %129 = sub nsw i32 %127, %128
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8*, i8** %124, i64 %130
  store i8* %123, i8** %131, align 8
  br label %132

132:                                              ; preds = %120
  %133 = load %struct.xx*, %struct.xx** %6, align 8
  %134 = getelementptr inbounds %struct.xx, %struct.xx* %133, i32 1
  store %struct.xx* %134, %struct.xx** %6, align 8
  br label %115

135:                                              ; preds = %115
  %136 = load i32, i32* @SIZE, align 4
  %137 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i64 0, i64 0), i32 %136)
  store i32 0, i32* %7, align 4
  br label %138

138:                                              ; preds = %169, %135
  %139 = load i32, i32* %7, align 4
  %140 = load i32, i32* @SIZE, align 4
  %141 = icmp slt i32 %139, %140
  br i1 %141, label %142, label %172

142:                                              ; preds = %138
  %143 = load i8**, i8*** @table, align 8
  %144 = load i32, i32* %7, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8*, i8** %143, i64 %145
  %147 = load i8*, i8** %146, align 8
  %148 = icmp eq i8* %147, null
  br i1 %148, label %149, label %156

149:                                              ; preds = %142
  %150 = load i8**, i8*** @names, align 8
  %151 = load i32, i32* %7, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8*, i8** %150, i64 %152
  %154 = load i8*, i8** %153, align 8
  %155 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i8* %154)
  br label %168

156:                                              ; preds = %142
  %157 = load i8**, i8*** @table, align 8
  %158 = load i32, i32* %7, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8*, i8** %157, i64 %159
  %161 = load i8*, i8** %160, align 8
  %162 = load i8**, i8*** @names, align 8
  %163 = load i32, i32* %7, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8*, i8** %162, i64 %164
  %166 = load i8*, i8** %165, align 8
  %167 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i8* %161, i8* %166)
  br label %168

168:                                              ; preds = %156, %149
  br label %169

169:                                              ; preds = %168
  %170 = load i32, i32* %7, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %7, align 4
  br label %138

172:                                              ; preds = %138
  %173 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %174 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0))
  %175 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0))
  %176 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i64 0, i64 0))
  %177 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.19, i64 0, i64 0))
  %178 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i64 0, i64 0))
  %179 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0))
  %180 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0))
  %181 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.23, i64 0, i64 0))
  %182 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i32 @sscanf(i8*, i8*, i8*, i8*, i8*, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

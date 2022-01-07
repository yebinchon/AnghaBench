; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mansearch.c_expr_and.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mansearch.c_expr_and.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expr = type { %struct.expr*, %struct.expr*, i32 }
%struct.mansearch = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"missing term before closing parenthesis\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-o\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"-a\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"ignoring -a after %s\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"ignoring initial -a\00", align 1
@EXPR_AND = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"ignoring trailing %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.expr* (%struct.mansearch*, i32, i8**, i32*)* @expr_and to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.expr* @expr_and(%struct.mansearch* %0, i32 %1, i8** %2, i32* %3) #0 {
  %5 = alloca %struct.mansearch*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.expr*, align 8
  %10 = alloca %struct.expr*, align 8
  %11 = alloca i32, align 4
  store %struct.mansearch* %0, %struct.mansearch** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 1, i32* %11, align 4
  store %struct.expr* null, %struct.expr** %10, align 8
  store %struct.expr* null, %struct.expr** %9, align 8
  br label %12

12:                                               ; preds = %122, %91, %70, %4
  %13 = load i32*, i32** %8, align 8
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %123

17:                                               ; preds = %12
  %18 = load i8**, i8*** %7, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8*, i8** %18, i64 %21
  %23 = load i8*, i8** %22, align 8
  %24 = call i64 @strcmp(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %17
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %26
  store i32 0, i32* %11, align 4
  br label %123

32:                                               ; preds = %17
  %33 = load i8**, i8*** %7, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8*, i8** %33, i64 %36
  %38 = load i8*, i8** %37, align 8
  %39 = call i64 @strcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  br label %123

42:                                               ; preds = %32
  %43 = load i8**, i8*** %7, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8*, i8** %43, i64 %46
  %48 = load i8*, i8** %47, align 8
  %49 = call i64 @strcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %48)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %74

51:                                               ; preds = %42
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %70

54:                                               ; preds = %51
  %55 = load i32*, i32** %8, align 8
  %56 = load i32, i32* %55, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %54
  %59 = load i8**, i8*** %7, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = load i32, i32* %60, align 4
  %62 = sub nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %59, i64 %63
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8* %65)
  br label %69

67:                                               ; preds = %54
  %68 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  br label %69

69:                                               ; preds = %67, %58
  br label %70

70:                                               ; preds = %69, %51
  store i32 1, i32* %11, align 4
  %71 = load i32*, i32** %8, align 8
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  br label %12

74:                                               ; preds = %42
  %75 = load i32, i32* %11, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  br label %123

78:                                               ; preds = %74
  %79 = load %struct.expr*, %struct.expr** %10, align 8
  %80 = icmp eq %struct.expr* %79, null
  br i1 %80, label %81, label %92

81:                                               ; preds = %78
  %82 = load %struct.mansearch*, %struct.mansearch** %5, align 8
  %83 = load i32, i32* %6, align 4
  %84 = load i8**, i8*** %7, align 8
  %85 = load i32*, i32** %8, align 8
  %86 = call i8* @exprterm(%struct.mansearch* %82, i32 %83, i8** %84, i32* %85)
  %87 = bitcast i8* %86 to %struct.expr*
  store %struct.expr* %87, %struct.expr** %10, align 8
  %88 = load %struct.expr*, %struct.expr** %10, align 8
  %89 = icmp ne %struct.expr* %88, null
  br i1 %89, label %90, label %91

90:                                               ; preds = %81
  store i32 0, i32* %11, align 4
  br label %91

91:                                               ; preds = %90, %81
  br label %12

92:                                               ; preds = %78
  store i32 0, i32* %11, align 4
  %93 = load %struct.expr*, %struct.expr** %9, align 8
  %94 = icmp eq %struct.expr* %93, null
  br i1 %94, label %95, label %105

95:                                               ; preds = %92
  %96 = call %struct.expr* @mandoc_calloc(i32 1, i32 24)
  store %struct.expr* %96, %struct.expr** %9, align 8
  %97 = load i32, i32* @EXPR_AND, align 4
  %98 = load %struct.expr*, %struct.expr** %9, align 8
  %99 = getelementptr inbounds %struct.expr, %struct.expr* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 8
  %100 = load %struct.expr*, %struct.expr** %9, align 8
  %101 = getelementptr inbounds %struct.expr, %struct.expr* %100, i32 0, i32 0
  store %struct.expr* null, %struct.expr** %101, align 8
  %102 = load %struct.expr*, %struct.expr** %10, align 8
  %103 = load %struct.expr*, %struct.expr** %9, align 8
  %104 = getelementptr inbounds %struct.expr, %struct.expr* %103, i32 0, i32 1
  store %struct.expr* %102, %struct.expr** %104, align 8
  br label %105

105:                                              ; preds = %95, %92
  %106 = load %struct.mansearch*, %struct.mansearch** %5, align 8
  %107 = load i32, i32* %6, align 4
  %108 = load i8**, i8*** %7, align 8
  %109 = load i32*, i32** %8, align 8
  %110 = call i8* @exprterm(%struct.mansearch* %106, i32 %107, i8** %108, i32* %109)
  %111 = bitcast i8* %110 to %struct.expr*
  %112 = load %struct.expr*, %struct.expr** %10, align 8
  %113 = getelementptr inbounds %struct.expr, %struct.expr* %112, i32 0, i32 0
  store %struct.expr* %111, %struct.expr** %113, align 8
  %114 = load %struct.expr*, %struct.expr** %10, align 8
  %115 = getelementptr inbounds %struct.expr, %struct.expr* %114, i32 0, i32 0
  %116 = load %struct.expr*, %struct.expr** %115, align 8
  %117 = icmp ne %struct.expr* %116, null
  br i1 %117, label %118, label %122

118:                                              ; preds = %105
  %119 = load %struct.expr*, %struct.expr** %10, align 8
  %120 = getelementptr inbounds %struct.expr, %struct.expr* %119, i32 0, i32 0
  %121 = load %struct.expr*, %struct.expr** %120, align 8
  store %struct.expr* %121, %struct.expr** %10, align 8
  store i32 0, i32* %11, align 4
  br label %122

122:                                              ; preds = %118, %105
  br label %12

123:                                              ; preds = %77, %41, %31, %12
  %124 = load i32, i32* %11, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %139

126:                                              ; preds = %123
  %127 = load i32*, i32** %8, align 8
  %128 = load i32, i32* %127, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %139

130:                                              ; preds = %126
  %131 = load i8**, i8*** %7, align 8
  %132 = load i32*, i32** %8, align 8
  %133 = load i32, i32* %132, align 4
  %134 = sub nsw i32 %133, 1
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8*, i8** %131, i64 %135
  %137 = load i8*, i8** %136, align 8
  %138 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i8* %137)
  br label %139

139:                                              ; preds = %130, %126, %123
  %140 = load %struct.expr*, %struct.expr** %9, align 8
  %141 = icmp eq %struct.expr* %140, null
  br i1 %141, label %142, label %144

142:                                              ; preds = %139
  %143 = load %struct.expr*, %struct.expr** %10, align 8
  br label %146

144:                                              ; preds = %139
  %145 = load %struct.expr*, %struct.expr** %9, align 8
  br label %146

146:                                              ; preds = %144, %142
  %147 = phi %struct.expr* [ %143, %142 ], [ %145, %144 ]
  ret %struct.expr* %147
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i8* @exprterm(%struct.mansearch*, i32, i8**, i32*) #1

declare dso_local %struct.expr* @mandoc_calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

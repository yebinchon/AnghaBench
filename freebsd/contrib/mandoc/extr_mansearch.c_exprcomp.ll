; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mansearch.c_exprcomp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mansearch.c_exprcomp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expr = type { %struct.expr*, %struct.expr*, i32 }
%struct.mansearch = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"missing term before closing parenthesis\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"ignoring unmatched right parenthesis\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"-o\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"ignoring -o after %s\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"ignoring initial -o\00", align 1
@EXPR_OR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"ignoring trailing %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.expr* (%struct.mansearch*, i32, i8**, i32*)* @exprcomp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.expr* @exprcomp(%struct.mansearch* %0, i32 %1, i8** %2, i32* %3) #0 {
  %5 = alloca %struct.expr*, align 8
  %6 = alloca %struct.mansearch*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.expr*, align 8
  %11 = alloca %struct.expr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mansearch* %0, %struct.mansearch** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load i32*, i32** %9, align 8
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store %struct.expr* null, %struct.expr** %5, align 8
  br label %140

19:                                               ; preds = %4
  store i32 1, i32* %12, align 4
  store %struct.expr* null, %struct.expr** %11, align 8
  store %struct.expr* null, %struct.expr** %10, align 8
  br label %20

20:                                               ; preds = %103, %83, %76, %43, %19
  %21 = load i32*, i32** %9, align 8
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %115

25:                                               ; preds = %20
  %26 = load i8**, i8*** %8, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8*, i8** %26, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = call i64 @strcmp(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %25
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %34
  store i32 0, i32* %12, align 4
  %40 = load i32, i32* %13, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  br label %115

43:                                               ; preds = %39
  %44 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i32*, i32** %9, align 8
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  br label %20

48:                                               ; preds = %25
  %49 = load i8**, i8*** %8, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %49, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = call i64 @strcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %54)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %80

57:                                               ; preds = %48
  %58 = load i32, i32* %12, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %76

60:                                               ; preds = %57
  %61 = load i32*, i32** %9, align 8
  %62 = load i32, i32* %61, align 4
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %60
  %65 = load i8**, i8*** %8, align 8
  %66 = load i32*, i32** %9, align 8
  %67 = load i32, i32* %66, align 4
  %68 = sub nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8*, i8** %65, i64 %69
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8* %71)
  br label %75

73:                                               ; preds = %60
  %74 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  br label %75

75:                                               ; preds = %73, %64
  br label %76

76:                                               ; preds = %75, %57
  store i32 1, i32* %12, align 4
  %77 = load i32*, i32** %9, align 8
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 4
  br label %20

80:                                               ; preds = %48
  store i32 0, i32* %12, align 4
  %81 = load %struct.expr*, %struct.expr** %11, align 8
  %82 = icmp eq %struct.expr* %81, null
  br i1 %82, label %83, label %90

83:                                               ; preds = %80
  %84 = load %struct.mansearch*, %struct.mansearch** %6, align 8
  %85 = load i32, i32* %7, align 4
  %86 = load i8**, i8*** %8, align 8
  %87 = load i32*, i32** %9, align 8
  %88 = call i8* @expr_and(%struct.mansearch* %84, i32 %85, i8** %86, i32* %87)
  %89 = bitcast i8* %88 to %struct.expr*
  store %struct.expr* %89, %struct.expr** %11, align 8
  br label %20

90:                                               ; preds = %80
  %91 = load %struct.expr*, %struct.expr** %10, align 8
  %92 = icmp eq %struct.expr* %91, null
  br i1 %92, label %93, label %103

93:                                               ; preds = %90
  %94 = call %struct.expr* @mandoc_calloc(i32 1, i32 24)
  store %struct.expr* %94, %struct.expr** %10, align 8
  %95 = load i32, i32* @EXPR_OR, align 4
  %96 = load %struct.expr*, %struct.expr** %10, align 8
  %97 = getelementptr inbounds %struct.expr, %struct.expr* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 8
  %98 = load %struct.expr*, %struct.expr** %10, align 8
  %99 = getelementptr inbounds %struct.expr, %struct.expr* %98, i32 0, i32 0
  store %struct.expr* null, %struct.expr** %99, align 8
  %100 = load %struct.expr*, %struct.expr** %11, align 8
  %101 = load %struct.expr*, %struct.expr** %10, align 8
  %102 = getelementptr inbounds %struct.expr, %struct.expr* %101, i32 0, i32 1
  store %struct.expr* %100, %struct.expr** %102, align 8
  br label %103

103:                                              ; preds = %93, %90
  %104 = load %struct.mansearch*, %struct.mansearch** %6, align 8
  %105 = load i32, i32* %7, align 4
  %106 = load i8**, i8*** %8, align 8
  %107 = load i32*, i32** %9, align 8
  %108 = call i8* @expr_and(%struct.mansearch* %104, i32 %105, i8** %106, i32* %107)
  %109 = bitcast i8* %108 to %struct.expr*
  %110 = load %struct.expr*, %struct.expr** %11, align 8
  %111 = getelementptr inbounds %struct.expr, %struct.expr* %110, i32 0, i32 0
  store %struct.expr* %109, %struct.expr** %111, align 8
  %112 = load %struct.expr*, %struct.expr** %11, align 8
  %113 = getelementptr inbounds %struct.expr, %struct.expr* %112, i32 0, i32 0
  %114 = load %struct.expr*, %struct.expr** %113, align 8
  store %struct.expr* %114, %struct.expr** %11, align 8
  br label %20

115:                                              ; preds = %42, %20
  %116 = load i32, i32* %12, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %131

118:                                              ; preds = %115
  %119 = load i32*, i32** %9, align 8
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %131

122:                                              ; preds = %118
  %123 = load i8**, i8*** %8, align 8
  %124 = load i32*, i32** %9, align 8
  %125 = load i32, i32* %124, align 4
  %126 = sub nsw i32 %125, 1
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8*, i8** %123, i64 %127
  %129 = load i8*, i8** %128, align 8
  %130 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i8* %129)
  br label %131

131:                                              ; preds = %122, %118, %115
  %132 = load %struct.expr*, %struct.expr** %10, align 8
  %133 = icmp eq %struct.expr* %132, null
  br i1 %133, label %134, label %136

134:                                              ; preds = %131
  %135 = load %struct.expr*, %struct.expr** %11, align 8
  br label %138

136:                                              ; preds = %131
  %137 = load %struct.expr*, %struct.expr** %10, align 8
  br label %138

138:                                              ; preds = %136, %134
  %139 = phi %struct.expr* [ %135, %134 ], [ %137, %136 ]
  store %struct.expr* %139, %struct.expr** %5, align 8
  br label %140

140:                                              ; preds = %138, %18
  %141 = load %struct.expr*, %struct.expr** %5, align 8
  ret %struct.expr* %141
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i8* @expr_and(%struct.mansearch*, i32, i8**, i32*) #1

declare dso_local %struct.expr* @mandoc_calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

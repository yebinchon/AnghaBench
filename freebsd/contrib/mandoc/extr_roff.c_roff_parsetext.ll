; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_roff.c_roff_parsetext.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_roff.c_roff_parsetext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roff = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32* }
%struct.buf = type { i8*, i32 }

@roffit_lines = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s\0A.%s\00", align 1
@roffit_macro = common dso_local global i8* null, align 8
@ROFF_REPARSE = common dso_local global i32 0, align 4
@roffce_node = common dso_local global i32* null, align 8
@roffce_lines = common dso_local global i32 0, align 4
@ROFF_NEXT_SIBLING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"-\\\00", align 1
@ESCAPE_ERROR = common dso_local global i32 0, align 4
@ASCII_HYPH = common dso_local global i8 0, align 1
@ROFF_CONT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.roff*, %struct.buf*, i32, i32*)* @roff_parsetext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @roff_parsetext(%struct.roff* %0, %struct.buf* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.roff*, align 8
  %7 = alloca %struct.buf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.roff* %0, %struct.roff** %6, align 8
  store %struct.buf* %1, %struct.buf** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %15 = load i32, i32* @roffit_lines, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %38

17:                                               ; preds = %4
  %18 = load %struct.buf*, %struct.buf** %7, align 8
  %19 = getelementptr inbounds %struct.buf, %struct.buf* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = load i8*, i8** @roffit_macro, align 8
  %22 = call i32 @mandoc_asprintf(i8** %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %20, i8* %21)
  store i32 %22, i32* %13, align 4
  %23 = load %struct.buf*, %struct.buf** %7, align 8
  %24 = getelementptr inbounds %struct.buf, %struct.buf* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @free(i8* %25)
  %27 = load i8*, i8** %12, align 8
  %28 = load %struct.buf*, %struct.buf** %7, align 8
  %29 = getelementptr inbounds %struct.buf, %struct.buf* %28, i32 0, i32 0
  store i8* %27, i8** %29, align 8
  %30 = load i32, i32* %13, align 4
  %31 = add nsw i32 %30, 1
  %32 = load %struct.buf*, %struct.buf** %7, align 8
  %33 = getelementptr inbounds %struct.buf, %struct.buf* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 8
  %34 = load i32*, i32** %9, align 8
  store i32 0, i32* %34, align 4
  %35 = load i8*, i8** @roffit_macro, align 8
  %36 = call i32 @free(i8* %35)
  store i32 0, i32* @roffit_lines, align 4
  %37 = load i32, i32* @ROFF_REPARSE, align 4
  store i32 %37, i32* %5, align 4
  br label %150

38:                                               ; preds = %4
  %39 = load i32, i32* @roffit_lines, align 4
  %40 = icmp sgt i32 %39, 1
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* @roffit_lines, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* @roffit_lines, align 4
  br label %44

44:                                               ; preds = %41, %38
  br label %45

45:                                               ; preds = %44
  %46 = load i32*, i32** @roffce_node, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %76

48:                                               ; preds = %45
  %49 = load %struct.buf*, %struct.buf** %7, align 8
  %50 = getelementptr inbounds %struct.buf, %struct.buf* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %76

58:                                               ; preds = %48
  %59 = load i32, i32* @roffce_lines, align 4
  %60 = icmp slt i32 %59, 1
  br i1 %60, label %61, label %72

61:                                               ; preds = %58
  %62 = load i32*, i32** @roffce_node, align 8
  %63 = load %struct.roff*, %struct.roff** %6, align 8
  %64 = getelementptr inbounds %struct.roff, %struct.roff* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  store i32* %62, i32** %66, align 8
  %67 = load i32, i32* @ROFF_NEXT_SIBLING, align 4
  %68 = load %struct.roff*, %struct.roff** %6, align 8
  %69 = getelementptr inbounds %struct.roff, %struct.roff* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  store i32 %67, i32* %71, align 8
  store i32 0, i32* @roffce_lines, align 4
  store i32* null, i32** @roffce_node, align 8
  br label %75

72:                                               ; preds = %58
  %73 = load i32, i32* @roffce_lines, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* @roffce_lines, align 4
  br label %75

75:                                               ; preds = %72, %61
  br label %76

76:                                               ; preds = %75, %48, %45
  %77 = load %struct.buf*, %struct.buf** %7, align 8
  %78 = getelementptr inbounds %struct.buf, %struct.buf* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  store i8* %82, i8** %12, align 8
  store i8* %82, i8** %11, align 8
  br label %83

83:                                               ; preds = %145, %126, %121, %76
  %84 = load i8*, i8** %12, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %148

88:                                               ; preds = %83
  %89 = load i8*, i8** %12, align 8
  %90 = call i64 @strcspn(i8* %89, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i64 %90, i64* %10, align 8
  %91 = load i64, i64* %10, align 8
  %92 = load i8*, i8** %12, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 %91
  store i8* %93, i8** %12, align 8
  %94 = load i8*, i8** %12, align 8
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %88
  br label %148

99:                                               ; preds = %88
  %100 = load i8*, i8** %12, align 8
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %102, 92
  br i1 %103, label %104, label %122

104:                                              ; preds = %99
  %105 = load i8*, i8** %12, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %12, align 8
  %107 = call i32 @mandoc_escape(i8** %12, i32* null, i32* null)
  store i32 %107, i32* %14, align 4
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* @ESCAPE_ERROR, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %104
  br label %148

112:                                              ; preds = %104
  br label %113

113:                                              ; preds = %118, %112
  %114 = load i8*, i8** %12, align 8
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 %116, 45
  br i1 %117, label %118, label %121

118:                                              ; preds = %113
  %119 = load i8*, i8** %12, align 8
  %120 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %120, i8** %12, align 8
  br label %113

121:                                              ; preds = %113
  br label %83

122:                                              ; preds = %99
  %123 = load i8*, i8** %12, align 8
  %124 = load i8*, i8** %11, align 8
  %125 = icmp eq i8* %123, %124
  br i1 %125, label %126, label %129

126:                                              ; preds = %122
  %127 = load i8*, i8** %12, align 8
  %128 = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %128, i8** %12, align 8
  br label %83

129:                                              ; preds = %122
  br label %130

130:                                              ; preds = %129
  %131 = load i8*, i8** %12, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 -1
  %133 = load i8, i8* %132, align 1
  %134 = call i64 @isalpha(i8 zeroext %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %145

136:                                              ; preds = %130
  %137 = load i8*, i8** %12, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 1
  %139 = load i8, i8* %138, align 1
  %140 = call i64 @isalpha(i8 zeroext %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %136
  %143 = load i8, i8* @ASCII_HYPH, align 1
  %144 = load i8*, i8** %12, align 8
  store i8 %143, i8* %144, align 1
  br label %145

145:                                              ; preds = %142, %136, %130
  %146 = load i8*, i8** %12, align 8
  %147 = getelementptr inbounds i8, i8* %146, i32 1
  store i8* %147, i8** %12, align 8
  br label %83

148:                                              ; preds = %111, %98, %83
  %149 = load i32, i32* @ROFF_CONT, align 4
  store i32 %149, i32* %5, align 4
  br label %150

150:                                              ; preds = %148, %17
  %151 = load i32, i32* %5, align 4
  ret i32 %151
}

declare dso_local i32 @mandoc_asprintf(i8**, i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i32 @mandoc_escape(i8**, i32*, i32*) #1

declare dso_local i64 @isalpha(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

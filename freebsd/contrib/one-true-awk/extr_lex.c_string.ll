; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_lex.c_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_lex.c_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@string.buf = internal global i8* null, align 8
@string.bufsz = internal global i32 500, align 4
@.str = private unnamed_addr constant [25 x i8] c"out of space for strings\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"out of space for string %.10s...\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"non-terminated string %.10s...\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"giving up\00", align 1
@lineno = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@CON = common dso_local global i32 0, align 4
@STR = common dso_local global i32 0, align 4
@DONTFREE = common dso_local global i32 0, align 4
@symtab = common dso_local global i32 0, align 4
@yylval = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@STRING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @string() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [100 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = load i8*, i8** @string.buf, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %0
  %11 = load i32, i32* @string.bufsz, align 4
  %12 = call i64 @malloc(i32 %11)
  %13 = inttoptr i64 %12 to i8*
  store i8* %13, i8** @string.buf, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = call i32 (i8*, ...) @FATAL(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %10, %0
  %18 = load i8*, i8** @string.buf, align 8
  store i8* %18, i8** %5, align 8
  br label %19

19:                                               ; preds = %167, %17
  %20 = call i32 (...) @input()
  store i32 %20, i32* %2, align 4
  %21 = icmp ne i32 %20, 34
  br i1 %21, label %22, label %168

22:                                               ; preds = %19
  %23 = load i8*, i8** %5, align 8
  %24 = load i8*, i8** @string.buf, align 8
  %25 = ptrtoint i8* %23 to i64
  %26 = ptrtoint i8* %24 to i64
  %27 = sub i64 %25, %26
  %28 = add nsw i64 %27, 2
  %29 = trunc i64 %28 to i32
  %30 = call i32 @adjbuf(i8** @string.buf, i32* @string.bufsz, i32 %29, i32 500, i8** %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %22
  %33 = load i8*, i8** @string.buf, align 8
  %34 = call i32 (i8*, ...) @FATAL(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %33)
  br label %35

35:                                               ; preds = %32, %22
  %36 = load i32, i32* %2, align 4
  switch i32 %36, label %162 [
    i32 10, label %37
    i32 13, label %37
    i32 0, label %37
    i32 92, label %48
  ]

37:                                               ; preds = %35, %35, %35
  %38 = load i8*, i8** %5, align 8
  store i8 0, i8* %38, align 1
  %39 = load i8*, i8** @string.buf, align 8
  %40 = call i32 @SYNTAX(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %39)
  %41 = load i32, i32* %2, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = call i32 (i8*, ...) @FATAL(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %37
  %46 = load i32, i32* @lineno, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* @lineno, align 4
  br label %167

48:                                               ; preds = %35
  %49 = call i32 (...) @input()
  store i32 %49, i32* %2, align 4
  %50 = load i32, i32* %2, align 4
  switch i32 %50, label %156 [
    i32 34, label %51
    i32 110, label %54
    i32 116, label %57
    i32 102, label %60
    i32 114, label %63
    i32 98, label %66
    i32 118, label %69
    i32 97, label %72
    i32 92, label %75
    i32 48, label %78
    i32 49, label %78
    i32 50, label %78
    i32 51, label %78
    i32 52, label %78
    i32 53, label %78
    i32 54, label %78
    i32 55, label %78
    i32 120, label %109
  ]

51:                                               ; preds = %48
  %52 = load i8*, i8** %5, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %5, align 8
  store i8 34, i8* %52, align 1
  br label %161

54:                                               ; preds = %48
  %55 = load i8*, i8** %5, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %5, align 8
  store i8 10, i8* %55, align 1
  br label %161

57:                                               ; preds = %48
  %58 = load i8*, i8** %5, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %5, align 8
  store i8 9, i8* %58, align 1
  br label %161

60:                                               ; preds = %48
  %61 = load i8*, i8** %5, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %5, align 8
  store i8 12, i8* %61, align 1
  br label %161

63:                                               ; preds = %48
  %64 = load i8*, i8** %5, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %5, align 8
  store i8 13, i8* %64, align 1
  br label %161

66:                                               ; preds = %48
  %67 = load i8*, i8** %5, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %5, align 8
  store i8 8, i8* %67, align 1
  br label %161

69:                                               ; preds = %48
  %70 = load i8*, i8** %5, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %5, align 8
  store i8 11, i8* %70, align 1
  br label %161

72:                                               ; preds = %48
  %73 = load i8*, i8** %5, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %5, align 8
  store i8 7, i8* %73, align 1
  br label %161

75:                                               ; preds = %48
  %76 = load i8*, i8** %5, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %5, align 8
  store i8 92, i8* %76, align 1
  br label %161

78:                                               ; preds = %48, %48, %48, %48, %48, %48, %48, %48
  %79 = load i32, i32* %2, align 4
  %80 = sub nsw i32 %79, 48
  store i32 %80, i32* %3, align 4
  %81 = call i32 (...) @peek()
  store i32 %81, i32* %2, align 4
  %82 = icmp sge i32 %81, 48
  br i1 %82, label %83, label %104

83:                                               ; preds = %78
  %84 = load i32, i32* %2, align 4
  %85 = icmp slt i32 %84, 56
  br i1 %85, label %86, label %104

86:                                               ; preds = %83
  %87 = load i32, i32* %3, align 4
  %88 = mul nsw i32 8, %87
  %89 = call i32 (...) @input()
  %90 = add nsw i32 %88, %89
  %91 = sub nsw i32 %90, 48
  store i32 %91, i32* %3, align 4
  %92 = call i32 (...) @peek()
  store i32 %92, i32* %2, align 4
  %93 = icmp sge i32 %92, 48
  br i1 %93, label %94, label %103

94:                                               ; preds = %86
  %95 = load i32, i32* %2, align 4
  %96 = icmp slt i32 %95, 56
  br i1 %96, label %97, label %103

97:                                               ; preds = %94
  %98 = load i32, i32* %3, align 4
  %99 = mul nsw i32 8, %98
  %100 = call i32 (...) @input()
  %101 = add nsw i32 %99, %100
  %102 = sub nsw i32 %101, 48
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %97, %94, %86
  br label %104

104:                                              ; preds = %103, %83, %78
  %105 = load i32, i32* %3, align 4
  %106 = trunc i32 %105 to i8
  %107 = load i8*, i8** %5, align 8
  %108 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %108, i8** %5, align 8
  store i8 %106, i8* %107, align 1
  br label %161

109:                                              ; preds = %48
  %110 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  store i8* %110, i8** %7, align 8
  br label %111

111:                                              ; preds = %145, %109
  %112 = call i32 (...) @input()
  store i32 %112, i32* %2, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %111
  %115 = load i8*, i8** %7, align 8
  %116 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %117 = ptrtoint i8* %115 to i64
  %118 = ptrtoint i8* %116 to i64
  %119 = sub i64 %117, %118
  %120 = icmp slt i64 %119, 98
  br label %121

121:                                              ; preds = %114, %111
  %122 = phi i1 [ false, %111 ], [ %120, %114 ]
  br i1 %122, label %123, label %146

123:                                              ; preds = %121
  %124 = load i32, i32* %2, align 4
  %125 = call i32 @isdigit(i32 %124) #3
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %139, label %127

127:                                              ; preds = %123
  %128 = load i32, i32* %2, align 4
  %129 = icmp sge i32 %128, 97
  br i1 %129, label %130, label %133

130:                                              ; preds = %127
  %131 = load i32, i32* %2, align 4
  %132 = icmp sle i32 %131, 102
  br i1 %132, label %139, label %133

133:                                              ; preds = %130, %127
  %134 = load i32, i32* %2, align 4
  %135 = icmp sge i32 %134, 65
  br i1 %135, label %136, label %144

136:                                              ; preds = %133
  %137 = load i32, i32* %2, align 4
  %138 = icmp sle i32 %137, 70
  br i1 %138, label %139, label %144

139:                                              ; preds = %136, %130, %123
  %140 = load i32, i32* %2, align 4
  %141 = trunc i32 %140 to i8
  %142 = load i8*, i8** %7, align 8
  %143 = getelementptr inbounds i8, i8* %142, i32 1
  store i8* %143, i8** %7, align 8
  store i8 %141, i8* %142, align 1
  br label %145

144:                                              ; preds = %136, %133
  br label %146

145:                                              ; preds = %139
  br label %111

146:                                              ; preds = %144, %121
  %147 = load i8*, i8** %7, align 8
  store i8 0, i8* %147, align 1
  %148 = load i32, i32* %2, align 4
  %149 = call i32 @unput(i32 %148)
  %150 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %151 = call i32 @sscanf(i8* %150, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32* %3)
  %152 = load i32, i32* %3, align 4
  %153 = trunc i32 %152 to i8
  %154 = load i8*, i8** %5, align 8
  %155 = getelementptr inbounds i8, i8* %154, i32 1
  store i8* %155, i8** %5, align 8
  store i8 %153, i8* %154, align 1
  br label %161

156:                                              ; preds = %48
  %157 = load i32, i32* %2, align 4
  %158 = trunc i32 %157 to i8
  %159 = load i8*, i8** %5, align 8
  %160 = getelementptr inbounds i8, i8* %159, i32 1
  store i8* %160, i8** %5, align 8
  store i8 %158, i8* %159, align 1
  br label %161

161:                                              ; preds = %156, %146, %104, %75, %72, %69, %66, %63, %60, %57, %54, %51
  br label %167

162:                                              ; preds = %35
  %163 = load i32, i32* %2, align 4
  %164 = trunc i32 %163 to i8
  %165 = load i8*, i8** %5, align 8
  %166 = getelementptr inbounds i8, i8* %165, i32 1
  store i8* %166, i8** %5, align 8
  store i8 %164, i8* %165, align 1
  br label %167

167:                                              ; preds = %162, %161, %45
  br label %19

168:                                              ; preds = %19
  %169 = load i8*, i8** %5, align 8
  store i8 0, i8* %169, align 1
  %170 = load i8*, i8** @string.buf, align 8
  %171 = call i8* @tostring(i8* %170)
  store i8* %171, i8** %4, align 8
  %172 = load i8*, i8** %5, align 8
  %173 = getelementptr inbounds i8, i8* %172, i32 1
  store i8* %173, i8** %5, align 8
  store i8 32, i8* %172, align 1
  %174 = load i8*, i8** %5, align 8
  %175 = getelementptr inbounds i8, i8* %174, i32 1
  store i8* %175, i8** %5, align 8
  store i8 0, i8* %174, align 1
  %176 = load i8*, i8** @string.buf, align 8
  %177 = load i8*, i8** %4, align 8
  %178 = load i32, i32* @CON, align 4
  %179 = load i32, i32* @STR, align 4
  %180 = or i32 %178, %179
  %181 = load i32, i32* @DONTFREE, align 4
  %182 = or i32 %180, %181
  %183 = load i32, i32* @symtab, align 4
  %184 = call i32 @setsymtab(i8* %176, i8* %177, double 0.000000e+00, i32 %182, i32 %183)
  store i32 %184, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yylval, i32 0, i32 0), align 4
  %185 = load i32, i32* @STRING, align 4
  %186 = call i32 @RET(i32 %185)
  %187 = load i32, i32* %1, align 4
  ret i32 %187
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @FATAL(i8*, ...) #1

declare dso_local i32 @input(...) #1

declare dso_local i32 @adjbuf(i8**, i32*, i32, i32, i8**, i8*) #1

declare dso_local i32 @SYNTAX(i8*, i8*) #1

declare dso_local i32 @peek(...) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isdigit(i32) #2

declare dso_local i32 @unput(i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i8* @tostring(i8*) #1

declare dso_local i32 @setsymtab(i8*, i8*, double, i32, i32) #1

declare dso_local i32 @RET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

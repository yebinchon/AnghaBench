; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_parser.c_ucl_lex_json_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_parser.c_ucl_lex_json_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucl_parser = type { i32 }
%struct.ucl_chunk = type { i8*, i8* }

@UCL_ESYNTAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"unexpected newline\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"unexpected control character\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"unfinished escape character\00", align 1
@UCL_CHARACTER_ESCAPE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"invalid utf escape\00", align 1
@UCL_CHARACTER_UCL_UNSAFE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"no quote at the end of json string\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucl_parser*, %struct.ucl_chunk*, i32*, i32*, i32*)* @ucl_lex_json_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucl_lex_json_string(%struct.ucl_parser* %0, %struct.ucl_chunk* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ucl_parser*, align 8
  %8 = alloca %struct.ucl_chunk*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  store %struct.ucl_parser* %0, %struct.ucl_parser** %7, align 8
  store %struct.ucl_chunk* %1, %struct.ucl_chunk** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load %struct.ucl_chunk*, %struct.ucl_chunk** %8, align 8
  %16 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %12, align 8
  br label %18

18:                                               ; preds = %157, %129, %5
  %19 = load i8*, i8** %12, align 8
  %20 = load %struct.ucl_chunk*, %struct.ucl_chunk** %8, align 8
  %21 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ult i8* %19, %22
  br i1 %23, label %24, label %161

24:                                               ; preds = %18
  %25 = load i8*, i8** %12, align 8
  %26 = load i8, i8* %25, align 1
  store i8 %26, i8* %13, align 1
  %27 = load i8, i8* %13, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp slt i32 %28, 31
  br i1 %29, label %30, label %47

30:                                               ; preds = %24
  %31 = load i8, i8* %13, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp eq i32 %32, 10
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load %struct.ucl_parser*, %struct.ucl_parser** %7, align 8
  %36 = load i32, i32* @UCL_ESYNTAX, align 4
  %37 = load %struct.ucl_parser*, %struct.ucl_parser** %7, align 8
  %38 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %37, i32 0, i32 0
  %39 = call i32 @ucl_set_err(%struct.ucl_parser* %35, i32 %36, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* %38)
  br label %46

40:                                               ; preds = %30
  %41 = load %struct.ucl_parser*, %struct.ucl_parser** %7, align 8
  %42 = load i32, i32* @UCL_ESYNTAX, align 4
  %43 = load %struct.ucl_parser*, %struct.ucl_parser** %7, align 8
  %44 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %43, i32 0, i32 0
  %45 = call i32 @ucl_set_err(%struct.ucl_parser* %41, i32 %42, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32* %44)
  br label %46

46:                                               ; preds = %40, %34
  store i32 0, i32* %6, align 4
  br label %167

47:                                               ; preds = %24
  %48 = load i8, i8* %13, align 1
  %49 = zext i8 %48 to i32
  %50 = icmp eq i32 %49, 92
  br i1 %50, label %51, label %132

51:                                               ; preds = %47
  %52 = load %struct.ucl_chunk*, %struct.ucl_chunk** %8, align 8
  %53 = load i8*, i8** %12, align 8
  %54 = call i32 @ucl_chunk_skipc(%struct.ucl_chunk* %52, i8* %53)
  %55 = load i8*, i8** %12, align 8
  %56 = load i8, i8* %55, align 1
  store i8 %56, i8* %13, align 1
  %57 = load i8*, i8** %12, align 8
  %58 = load %struct.ucl_chunk*, %struct.ucl_chunk** %8, align 8
  %59 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = icmp uge i8* %57, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %51
  %63 = load %struct.ucl_parser*, %struct.ucl_parser** %7, align 8
  %64 = load i32, i32* @UCL_ESYNTAX, align 4
  %65 = load %struct.ucl_parser*, %struct.ucl_parser** %7, align 8
  %66 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %65, i32 0, i32 0
  %67 = call i32 @ucl_set_err(%struct.ucl_parser* %63, i32 %64, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32* %66)
  store i32 0, i32* %6, align 4
  br label %167

68:                                               ; preds = %51
  %69 = load i8, i8* %13, align 1
  %70 = load i32, i32* @UCL_CHARACTER_ESCAPE, align 4
  %71 = call i64 @ucl_test_character(i8 zeroext %69, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %128

73:                                               ; preds = %68
  %74 = load i8, i8* %13, align 1
  %75 = zext i8 %74 to i32
  %76 = icmp eq i32 %75, 117
  br i1 %76, label %77, label %123

77:                                               ; preds = %73
  %78 = load %struct.ucl_chunk*, %struct.ucl_chunk** %8, align 8
  %79 = load i8*, i8** %12, align 8
  %80 = call i32 @ucl_chunk_skipc(%struct.ucl_chunk* %78, i8* %79)
  store i32 0, i32* %14, align 4
  br label %81

81:                                               ; preds = %107, %77
  %82 = load i32, i32* %14, align 4
  %83 = icmp slt i32 %82, 4
  br i1 %83, label %84, label %90

84:                                               ; preds = %81
  %85 = load i8*, i8** %12, align 8
  %86 = load %struct.ucl_chunk*, %struct.ucl_chunk** %8, align 8
  %87 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %86, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  %89 = icmp ult i8* %85, %88
  br label %90

90:                                               ; preds = %84, %81
  %91 = phi i1 [ false, %81 ], [ %89, %84 ]
  br i1 %91, label %92, label %110

92:                                               ; preds = %90
  %93 = load i8*, i8** %12, align 8
  %94 = load i8, i8* %93, align 1
  %95 = call i32 @isxdigit(i8 zeroext %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %103, label %97

97:                                               ; preds = %92
  %98 = load %struct.ucl_parser*, %struct.ucl_parser** %7, align 8
  %99 = load i32, i32* @UCL_ESYNTAX, align 4
  %100 = load %struct.ucl_parser*, %struct.ucl_parser** %7, align 8
  %101 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %100, i32 0, i32 0
  %102 = call i32 @ucl_set_err(%struct.ucl_parser* %98, i32 %99, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32* %101)
  store i32 0, i32* %6, align 4
  br label %167

103:                                              ; preds = %92
  %104 = load %struct.ucl_chunk*, %struct.ucl_chunk** %8, align 8
  %105 = load i8*, i8** %12, align 8
  %106 = call i32 @ucl_chunk_skipc(%struct.ucl_chunk* %104, i8* %105)
  br label %107

107:                                              ; preds = %103
  %108 = load i32, i32* %14, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %14, align 4
  br label %81

110:                                              ; preds = %90
  %111 = load i8*, i8** %12, align 8
  %112 = load %struct.ucl_chunk*, %struct.ucl_chunk** %8, align 8
  %113 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %112, i32 0, i32 1
  %114 = load i8*, i8** %113, align 8
  %115 = icmp uge i8* %111, %114
  br i1 %115, label %116, label %122

116:                                              ; preds = %110
  %117 = load %struct.ucl_parser*, %struct.ucl_parser** %7, align 8
  %118 = load i32, i32* @UCL_ESYNTAX, align 4
  %119 = load %struct.ucl_parser*, %struct.ucl_parser** %7, align 8
  %120 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %119, i32 0, i32 0
  %121 = call i32 @ucl_set_err(%struct.ucl_parser* %117, i32 %118, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32* %120)
  store i32 0, i32* %6, align 4
  br label %167

122:                                              ; preds = %110
  br label %127

123:                                              ; preds = %73
  %124 = load %struct.ucl_chunk*, %struct.ucl_chunk** %8, align 8
  %125 = load i8*, i8** %12, align 8
  %126 = call i32 @ucl_chunk_skipc(%struct.ucl_chunk* %124, i8* %125)
  br label %127

127:                                              ; preds = %123, %122
  br label %128

128:                                              ; preds = %127, %68
  br label %129

129:                                              ; preds = %128
  %130 = load i32*, i32** %9, align 8
  store i32 1, i32* %130, align 4
  %131 = load i32*, i32** %10, align 8
  store i32 1, i32* %131, align 4
  br label %18

132:                                              ; preds = %47
  %133 = load i8, i8* %13, align 1
  %134 = zext i8 %133 to i32
  %135 = icmp eq i32 %134, 34
  br i1 %135, label %136, label %140

136:                                              ; preds = %132
  %137 = load %struct.ucl_chunk*, %struct.ucl_chunk** %8, align 8
  %138 = load i8*, i8** %12, align 8
  %139 = call i32 @ucl_chunk_skipc(%struct.ucl_chunk* %137, i8* %138)
  store i32 1, i32* %6, align 4
  br label %167

140:                                              ; preds = %132
  %141 = load i8, i8* %13, align 1
  %142 = load i32, i32* @UCL_CHARACTER_UCL_UNSAFE, align 4
  %143 = call i64 @ucl_test_character(i8 zeroext %141, i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %140
  %146 = load i32*, i32** %10, align 8
  store i32 1, i32* %146, align 4
  br label %154

147:                                              ; preds = %140
  %148 = load i8, i8* %13, align 1
  %149 = zext i8 %148 to i32
  %150 = icmp eq i32 %149, 36
  br i1 %150, label %151, label %153

151:                                              ; preds = %147
  %152 = load i32*, i32** %11, align 8
  store i32 1, i32* %152, align 4
  br label %153

153:                                              ; preds = %151, %147
  br label %154

154:                                              ; preds = %153, %145
  br label %155

155:                                              ; preds = %154
  br label %156

156:                                              ; preds = %155
  br label %157

157:                                              ; preds = %156
  %158 = load %struct.ucl_chunk*, %struct.ucl_chunk** %8, align 8
  %159 = load i8*, i8** %12, align 8
  %160 = call i32 @ucl_chunk_skipc(%struct.ucl_chunk* %158, i8* %159)
  br label %18

161:                                              ; preds = %18
  %162 = load %struct.ucl_parser*, %struct.ucl_parser** %7, align 8
  %163 = load i32, i32* @UCL_ESYNTAX, align 4
  %164 = load %struct.ucl_parser*, %struct.ucl_parser** %7, align 8
  %165 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %164, i32 0, i32 0
  %166 = call i32 @ucl_set_err(%struct.ucl_parser* %162, i32 %163, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32* %165)
  store i32 0, i32* %6, align 4
  br label %167

167:                                              ; preds = %161, %136, %116, %97, %62, %46
  %168 = load i32, i32* %6, align 4
  ret i32 %168
}

declare dso_local i32 @ucl_set_err(%struct.ucl_parser*, i32, i8*, i32*) #1

declare dso_local i32 @ucl_chunk_skipc(%struct.ucl_chunk*, i8*) #1

declare dso_local i64 @ucl_test_character(i8 zeroext, i32) #1

declare dso_local i32 @isxdigit(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

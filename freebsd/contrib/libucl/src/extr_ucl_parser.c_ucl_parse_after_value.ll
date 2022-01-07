; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_parser.c_ucl_parse_after_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_parser.c_ucl_parse_after_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucl_parser = type { i32, %struct.ucl_stack*, %struct.TYPE_2__* }
%struct.ucl_stack = type { i64, %struct.TYPE_2__*, %struct.ucl_stack* }
%struct.TYPE_2__ = type { i64 }
%struct.ucl_chunk = type { i8*, i8*, i32 }

@UCL_CHARACTER_WHITESPACE = common dso_local global i32 0, align 4
@UCL_CHARACTER_VALUE_END = common dso_local global i32 0, align 4
@UCL_ESYNTAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"end of array or object detected without corresponding start\00", align 1
@UCL_OBJECT = common dso_local global i64 0, align 8
@UCL_ARRAY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"unexpected terminating symbol detected\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"delimiter is missing\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucl_parser*, %struct.ucl_chunk*)* @ucl_parse_after_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucl_parse_after_value(%struct.ucl_parser* %0, %struct.ucl_chunk* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ucl_parser*, align 8
  %5 = alloca %struct.ucl_chunk*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ucl_stack*, align 8
  store %struct.ucl_parser* %0, %struct.ucl_parser** %4, align 8
  store %struct.ucl_chunk* %1, %struct.ucl_chunk** %5, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.ucl_chunk*, %struct.ucl_chunk** %5, align 8
  %10 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %6, align 8
  br label %12

12:                                               ; preds = %202, %2
  %13 = load i8*, i8** %6, align 8
  %14 = load %struct.ucl_chunk*, %struct.ucl_chunk** %5, align 8
  %15 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %14, i32 0, i32 1
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ult i8* %13, %16
  br i1 %17, label %18, label %203

18:                                               ; preds = %12
  %19 = load i8*, i8** %6, align 8
  %20 = load i8, i8* %19, align 1
  %21 = load i32, i32* @UCL_CHARACTER_WHITESPACE, align 4
  %22 = call i64 @ucl_test_character(i8 zeroext %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load %struct.ucl_chunk*, %struct.ucl_chunk** %5, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @ucl_chunk_skipc(%struct.ucl_chunk* %25, i8* %26)
  br label %202

28:                                               ; preds = %18
  %29 = load %struct.ucl_chunk*, %struct.ucl_chunk** %5, align 8
  %30 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = icmp sge i32 %31, 2
  br i1 %32, label %33, label %51

33:                                               ; preds = %28
  %34 = load i8*, i8** %6, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  %36 = load i8, i8* %35, align 1
  %37 = load i8*, i8** %6, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  %39 = load i8, i8* %38, align 1
  %40 = call i64 @ucl_lex_is_comment(i8 zeroext %36, i8 zeroext %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %33
  %43 = load %struct.ucl_parser*, %struct.ucl_parser** %4, align 8
  %44 = call i32 @ucl_skip_comments(%struct.ucl_parser* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %204

47:                                               ; preds = %42
  store i32 1, i32* %7, align 4
  %48 = load %struct.ucl_chunk*, %struct.ucl_chunk** %5, align 8
  %49 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  store i8* %50, i8** %6, align 8
  br label %201

51:                                               ; preds = %33, %28
  %52 = load i8*, i8** %6, align 8
  %53 = load i8, i8* %52, align 1
  %54 = load i32, i32* @UCL_CHARACTER_VALUE_END, align 4
  %55 = call i64 @ucl_test_character(i8 zeroext %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %190

57:                                               ; preds = %51
  %58 = load i8*, i8** %6, align 8
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = icmp eq i32 %60, 125
  br i1 %61, label %67, label %62

62:                                               ; preds = %57
  %63 = load i8*, i8** %6, align 8
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = icmp eq i32 %65, 93
  br i1 %66, label %67, label %185

67:                                               ; preds = %62, %57
  %68 = load %struct.ucl_parser*, %struct.ucl_parser** %4, align 8
  %69 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %68, i32 0, i32 1
  %70 = load %struct.ucl_stack*, %struct.ucl_stack** %69, align 8
  %71 = icmp eq %struct.ucl_stack* %70, null
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = load %struct.ucl_parser*, %struct.ucl_parser** %4, align 8
  %74 = load i32, i32* @UCL_ESYNTAX, align 4
  %75 = load %struct.ucl_parser*, %struct.ucl_parser** %4, align 8
  %76 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %75, i32 0, i32 0
  %77 = call i32 @ucl_set_err(%struct.ucl_parser* %73, i32 %74, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32* %76)
  store i32 0, i32* %3, align 4
  br label %204

78:                                               ; preds = %67
  %79 = load i8*, i8** %6, align 8
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = icmp eq i32 %81, 125
  br i1 %82, label %83, label %93

83:                                               ; preds = %78
  %84 = load %struct.ucl_parser*, %struct.ucl_parser** %4, align 8
  %85 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %84, i32 0, i32 1
  %86 = load %struct.ucl_stack*, %struct.ucl_stack** %85, align 8
  %87 = getelementptr inbounds %struct.ucl_stack, %struct.ucl_stack* %86, i32 0, i32 1
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @UCL_OBJECT, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %108, label %93

93:                                               ; preds = %83, %78
  %94 = load i8*, i8** %6, align 8
  %95 = load i8, i8* %94, align 1
  %96 = zext i8 %95 to i32
  %97 = icmp eq i32 %96, 93
  br i1 %97, label %98, label %168

98:                                               ; preds = %93
  %99 = load %struct.ucl_parser*, %struct.ucl_parser** %4, align 8
  %100 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %99, i32 0, i32 1
  %101 = load %struct.ucl_stack*, %struct.ucl_stack** %100, align 8
  %102 = getelementptr inbounds %struct.ucl_stack, %struct.ucl_stack* %101, i32 0, i32 1
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @UCL_ARRAY, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %168

108:                                              ; preds = %98, %83
  %109 = load %struct.ucl_parser*, %struct.ucl_parser** %4, align 8
  %110 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %109, i32 0, i32 1
  %111 = load %struct.ucl_stack*, %struct.ucl_stack** %110, align 8
  store %struct.ucl_stack* %111, %struct.ucl_stack** %8, align 8
  %112 = load %struct.ucl_stack*, %struct.ucl_stack** %8, align 8
  %113 = getelementptr inbounds %struct.ucl_stack, %struct.ucl_stack* %112, i32 0, i32 2
  %114 = load %struct.ucl_stack*, %struct.ucl_stack** %113, align 8
  %115 = load %struct.ucl_parser*, %struct.ucl_parser** %4, align 8
  %116 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %115, i32 0, i32 1
  store %struct.ucl_stack* %114, %struct.ucl_stack** %116, align 8
  %117 = load %struct.ucl_stack*, %struct.ucl_stack** %8, align 8
  %118 = call i32 @UCL_FREE(i32 24, %struct.ucl_stack* %117)
  %119 = load %struct.ucl_parser*, %struct.ucl_parser** %4, align 8
  %120 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %119, i32 0, i32 2
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = icmp ne %struct.TYPE_2__* %121, null
  br i1 %122, label %123, label %129

123:                                              ; preds = %108
  %124 = load %struct.ucl_parser*, %struct.ucl_parser** %4, align 8
  %125 = load %struct.ucl_parser*, %struct.ucl_parser** %4, align 8
  %126 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %125, i32 0, i32 2
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %126, align 8
  %128 = call i32 @ucl_attach_comment(%struct.ucl_parser* %124, %struct.TYPE_2__* %127, i32 1)
  br label %129

129:                                              ; preds = %123, %108
  br label %130

130:                                              ; preds = %154, %129
  %131 = load %struct.ucl_parser*, %struct.ucl_parser** %4, align 8
  %132 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %131, i32 0, i32 1
  %133 = load %struct.ucl_stack*, %struct.ucl_stack** %132, align 8
  %134 = icmp ne %struct.ucl_stack* %133, null
  br i1 %134, label %135, label %167

135:                                              ; preds = %130
  %136 = load %struct.ucl_parser*, %struct.ucl_parser** %4, align 8
  %137 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %136, i32 0, i32 1
  %138 = load %struct.ucl_stack*, %struct.ucl_stack** %137, align 8
  store %struct.ucl_stack* %138, %struct.ucl_stack** %8, align 8
  %139 = load %struct.ucl_stack*, %struct.ucl_stack** %8, align 8
  %140 = getelementptr inbounds %struct.ucl_stack, %struct.ucl_stack* %139, i32 0, i32 2
  %141 = load %struct.ucl_stack*, %struct.ucl_stack** %140, align 8
  %142 = icmp eq %struct.ucl_stack* %141, null
  br i1 %142, label %153, label %143

143:                                              ; preds = %135
  %144 = load %struct.ucl_stack*, %struct.ucl_stack** %8, align 8
  %145 = getelementptr inbounds %struct.ucl_stack, %struct.ucl_stack* %144, i32 0, i32 2
  %146 = load %struct.ucl_stack*, %struct.ucl_stack** %145, align 8
  %147 = getelementptr inbounds %struct.ucl_stack, %struct.ucl_stack* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.ucl_stack*, %struct.ucl_stack** %8, align 8
  %150 = getelementptr inbounds %struct.ucl_stack, %struct.ucl_stack* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = icmp eq i64 %148, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %143, %135
  br label %167

154:                                              ; preds = %143
  %155 = load %struct.ucl_stack*, %struct.ucl_stack** %8, align 8
  %156 = getelementptr inbounds %struct.ucl_stack, %struct.ucl_stack* %155, i32 0, i32 2
  %157 = load %struct.ucl_stack*, %struct.ucl_stack** %156, align 8
  %158 = load %struct.ucl_parser*, %struct.ucl_parser** %4, align 8
  %159 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %158, i32 0, i32 1
  store %struct.ucl_stack* %157, %struct.ucl_stack** %159, align 8
  %160 = load %struct.ucl_stack*, %struct.ucl_stack** %8, align 8
  %161 = getelementptr inbounds %struct.ucl_stack, %struct.ucl_stack* %160, i32 0, i32 1
  %162 = load %struct.TYPE_2__*, %struct.TYPE_2__** %161, align 8
  %163 = load %struct.ucl_parser*, %struct.ucl_parser** %4, align 8
  %164 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %163, i32 0, i32 2
  store %struct.TYPE_2__* %162, %struct.TYPE_2__** %164, align 8
  %165 = load %struct.ucl_stack*, %struct.ucl_stack** %8, align 8
  %166 = call i32 @UCL_FREE(i32 24, %struct.ucl_stack* %165)
  br label %130

167:                                              ; preds = %153, %130
  br label %174

168:                                              ; preds = %98, %93
  %169 = load %struct.ucl_parser*, %struct.ucl_parser** %4, align 8
  %170 = load i32, i32* @UCL_ESYNTAX, align 4
  %171 = load %struct.ucl_parser*, %struct.ucl_parser** %4, align 8
  %172 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %171, i32 0, i32 0
  %173 = call i32 @ucl_set_err(%struct.ucl_parser* %169, i32 %170, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32* %172)
  store i32 0, i32* %3, align 4
  br label %204

174:                                              ; preds = %167
  %175 = load %struct.ucl_parser*, %struct.ucl_parser** %4, align 8
  %176 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %175, i32 0, i32 1
  %177 = load %struct.ucl_stack*, %struct.ucl_stack** %176, align 8
  %178 = icmp eq %struct.ucl_stack* %177, null
  br i1 %178, label %179, label %180

179:                                              ; preds = %174
  store i32 1, i32* %3, align 4
  br label %204

180:                                              ; preds = %174
  %181 = load %struct.ucl_chunk*, %struct.ucl_chunk** %5, align 8
  %182 = load i8*, i8** %6, align 8
  %183 = call i32 @ucl_chunk_skipc(%struct.ucl_chunk* %181, i8* %182)
  br label %184

184:                                              ; preds = %180
  store i32 1, i32* %7, align 4
  br label %189

185:                                              ; preds = %62
  store i32 1, i32* %7, align 4
  %186 = load %struct.ucl_chunk*, %struct.ucl_chunk** %5, align 8
  %187 = load i8*, i8** %6, align 8
  %188 = call i32 @ucl_chunk_skipc(%struct.ucl_chunk* %186, i8* %187)
  br label %189

189:                                              ; preds = %185, %184
  br label %200

190:                                              ; preds = %51
  %191 = load i32, i32* %7, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %199, label %193

193:                                              ; preds = %190
  %194 = load %struct.ucl_parser*, %struct.ucl_parser** %4, align 8
  %195 = load i32, i32* @UCL_ESYNTAX, align 4
  %196 = load %struct.ucl_parser*, %struct.ucl_parser** %4, align 8
  %197 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %196, i32 0, i32 0
  %198 = call i32 @ucl_set_err(%struct.ucl_parser* %194, i32 %195, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32* %197)
  store i32 0, i32* %3, align 4
  br label %204

199:                                              ; preds = %190
  store i32 1, i32* %3, align 4
  br label %204

200:                                              ; preds = %189
  br label %201

201:                                              ; preds = %200, %47
  br label %202

202:                                              ; preds = %201, %24
  br label %12

203:                                              ; preds = %12
  store i32 1, i32* %3, align 4
  br label %204

204:                                              ; preds = %203, %199, %193, %179, %168, %72, %46
  %205 = load i32, i32* %3, align 4
  ret i32 %205
}

declare dso_local i64 @ucl_test_character(i8 zeroext, i32) #1

declare dso_local i32 @ucl_chunk_skipc(%struct.ucl_chunk*, i8*) #1

declare dso_local i64 @ucl_lex_is_comment(i8 zeroext, i8 zeroext) #1

declare dso_local i32 @ucl_skip_comments(%struct.ucl_parser*) #1

declare dso_local i32 @ucl_set_err(%struct.ucl_parser*, i32, i8*, i32*) #1

declare dso_local i32 @UCL_FREE(i32, %struct.ucl_stack*) #1

declare dso_local i32 @ucl_attach_comment(%struct.ucl_parser*, %struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

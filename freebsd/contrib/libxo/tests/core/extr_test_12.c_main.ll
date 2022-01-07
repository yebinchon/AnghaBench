; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libxo/tests/core/extr_test_12.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libxo/tests/core/extr_test_12.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XOEF_RETAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"xml\00", align 1
@XO_STYLE_XML = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"json\00", align 1
@XO_STYLE_JSON = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@XO_STYLE_TEXT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"html\00", align 1
@XO_STYLE_HTML = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"no-color\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"pretty\00", align 1
@XOF_PRETTY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"xpath\00", align 1
@XOF_XPATH = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@XOF_INFO = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"no-retain\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"big\00", align 1
@XOF_UNITS = common dso_local global i32 0, align 4
@XOF_COLOR = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [4 x i8] c"top\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"{C:fg-red,bg-green}Merry XMas!!{C:}\0A\00", align 1
@.str.13 = private unnamed_addr constant [81 x i8] c"One {C:fg-yellow,bg-blue}{:animal}{C:}, Two {C:fg-green,bg-yellow}{:animal}{C:}\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"fish\00", align 1
@.str.15 = private unnamed_addr constant [86 x i8] c"The {C:fg-red}{k:name}{C:reset} is {C:/fg-%s}{:color}{C:reset} til {:time/%02d:%02d}\0A\00", align 1
@.str.16 = private unnamed_addr constant [89 x i8] c"My {C:fg-red}{:hand}{C:reset} hand is {C:/fg-%s}{:color}{C:reset} til {:time/%02d:%02d}\0A\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"thing\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"green\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"left\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"blue\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"2by4\00", align 1
@.str.22 = private unnamed_addr constant [31 x i8] c"There is {:4x4} in {:2morrow}\0A\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"truck\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"tomorrow\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 10, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %13 = load i32, i32* @XOEF_RETAIN, align 4
  store i32 %13, i32* %9, align 4
  store i32 1, i32* %10, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i8**, i8*** %5, align 8
  %16 = call i32 @xo_parse_args(i32 %14, i8** %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %202

20:                                               ; preds = %2
  store i32 1, i32* %4, align 4
  br label %21

21:                                               ; preds = %162, %20
  %22 = load i8**, i8*** %5, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8*, i8** %22, i64 %24
  %26 = load i8*, i8** %25, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %165

28:                                               ; preds = %21
  %29 = load i8**, i8*** %5, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8*, i8** %29, i64 %31
  %33 = load i8*, i8** %32, align 8
  %34 = call i64 @xo_streq(i8* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  %37 = load i32, i32* @XO_STYLE_XML, align 4
  %38 = call i32 @xo_set_style(i32* null, i32 %37)
  br label %161

39:                                               ; preds = %28
  %40 = load i8**, i8*** %5, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %40, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = call i64 @xo_streq(i8* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %39
  %48 = load i32, i32* @XO_STYLE_JSON, align 4
  %49 = call i32 @xo_set_style(i32* null, i32 %48)
  br label %160

50:                                               ; preds = %39
  %51 = load i8**, i8*** %5, align 8
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %51, i64 %53
  %55 = load i8*, i8** %54, align 8
  %56 = call i64 @xo_streq(i8* %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %50
  %59 = load i32, i32* @XO_STYLE_TEXT, align 4
  %60 = call i32 @xo_set_style(i32* null, i32 %59)
  br label %159

61:                                               ; preds = %50
  %62 = load i8**, i8*** %5, align 8
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8*, i8** %62, i64 %64
  %66 = load i8*, i8** %65, align 8
  %67 = call i64 @xo_streq(i8* %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %61
  %70 = load i32, i32* @XO_STYLE_HTML, align 4
  %71 = call i32 @xo_set_style(i32* null, i32 %70)
  br label %158

72:                                               ; preds = %61
  %73 = load i8**, i8*** %5, align 8
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8*, i8** %73, i64 %75
  %77 = load i8*, i8** %76, align 8
  %78 = call i64 @xo_streq(i8* %77, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %72
  store i32 0, i32* %10, align 4
  br label %157

81:                                               ; preds = %72
  %82 = load i8**, i8*** %5, align 8
  %83 = load i32, i32* %4, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8*, i8** %82, i64 %84
  %86 = load i8*, i8** %85, align 8
  %87 = call i64 @xo_streq(i8* %86, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %81
  %90 = load i32, i32* @XOF_PRETTY, align 4
  %91 = call i32 @xo_set_flags(i32* null, i32 %90)
  br label %156

92:                                               ; preds = %81
  %93 = load i8**, i8*** %5, align 8
  %94 = load i32, i32* %4, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8*, i8** %93, i64 %95
  %97 = load i8*, i8** %96, align 8
  %98 = call i64 @xo_streq(i8* %97, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %92
  %101 = load i32, i32* @XOF_XPATH, align 4
  %102 = call i32 @xo_set_flags(i32* null, i32 %101)
  br label %155

103:                                              ; preds = %92
  %104 = load i8**, i8*** %5, align 8
  %105 = load i32, i32* %4, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8*, i8** %104, i64 %106
  %108 = load i8*, i8** %107, align 8
  %109 = call i64 @xo_streq(i8* %108, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %103
  %112 = load i32, i32* @XOF_INFO, align 4
  %113 = call i32 @xo_set_flags(i32* null, i32 %112)
  br label %154

114:                                              ; preds = %103
  %115 = load i8**, i8*** %5, align 8
  %116 = load i32, i32* %4, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8*, i8** %115, i64 %117
  %119 = load i8*, i8** %118, align 8
  %120 = call i64 @xo_streq(i8* %119, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %114
  %123 = load i32, i32* @XOEF_RETAIN, align 4
  %124 = xor i32 %123, -1
  %125 = load i32, i32* %9, align 4
  %126 = and i32 %125, %124
  store i32 %126, i32* %9, align 4
  br label %153

127:                                              ; preds = %114
  %128 = load i8**, i8*** %5, align 8
  %129 = load i32, i32* %4, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8*, i8** %128, i64 %130
  %132 = load i8*, i8** %131, align 8
  %133 = call i64 @xo_streq(i8* %132, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %152

135:                                              ; preds = %127
  %136 = load i8**, i8*** %5, align 8
  %137 = load i32, i32* %4, align 4
  %138 = add nsw i32 %137, 1
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8*, i8** %136, i64 %139
  %141 = load i8*, i8** %140, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %143, label %151

143:                                              ; preds = %135
  %144 = load i8**, i8*** %5, align 8
  %145 = load i32, i32* %4, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %4, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8*, i8** %144, i64 %147
  %149 = load i8*, i8** %148, align 8
  %150 = call i32 @atoi(i8* %149)
  store i32 %150, i32* %7, align 4
  br label %151

151:                                              ; preds = %143, %135
  br label %152

152:                                              ; preds = %151, %127
  br label %153

153:                                              ; preds = %152, %122
  br label %154

154:                                              ; preds = %153, %111
  br label %155

155:                                              ; preds = %154, %100
  br label %156

156:                                              ; preds = %155, %89
  br label %157

157:                                              ; preds = %156, %80
  br label %158

158:                                              ; preds = %157, %69
  br label %159

159:                                              ; preds = %158, %58
  br label %160

160:                                              ; preds = %159, %47
  br label %161

161:                                              ; preds = %160, %36
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %4, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %4, align 4
  br label %21

165:                                              ; preds = %21
  %166 = load i32, i32* @XOF_UNITS, align 4
  %167 = call i32 @xo_set_flags(i32* null, i32 %166)
  %168 = load i32, i32* %10, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %165
  %171 = load i32, i32* @XOF_COLOR, align 4
  %172 = call i32 @xo_set_flags(i32* null, i32 %171)
  br label %173

173:                                              ; preds = %170, %165
  %174 = load i32, i32* @stdout, align 4
  %175 = call i32 @xo_set_file(i32 %174)
  %176 = call i32 @xo_open_container(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  %177 = call i32 @xo_open_container(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %178 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0))
  %179 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  store i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.15, i64 0, i64 0), i8** %11, align 8
  store i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.16, i64 0, i64 0), i8** %12, align 8
  store i32 0, i32* %6, align 4
  br label %180

180:                                              ; preds = %192, %173
  %181 = load i32, i32* %6, align 4
  %182 = load i32, i32* %7, align 4
  %183 = icmp slt i32 %181, %182
  br i1 %183, label %184, label %195

184:                                              ; preds = %180
  %185 = call i32 @xo_open_instance(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0))
  %186 = load i32, i32* %9, align 4
  %187 = load i8*, i8** %11, align 8
  %188 = call i32 @xo_emit_f(i32 %186, i8* %187, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i32 2, i32 15)
  %189 = load i32, i32* %9, align 4
  %190 = load i8*, i8** %12, align 8
  %191 = call i32 @xo_emit_f(i32 %189, i8* %190, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i32 3, i32 45)
  br label %192

192:                                              ; preds = %184
  %193 = load i32, i32* %6, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %6, align 4
  br label %180

195:                                              ; preds = %180
  %196 = call i32 @xo_open_container(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0))
  %197 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0))
  %198 = call i32 @xo_close_container(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0))
  %199 = call i32 @xo_close_container(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %200 = call i32 @xo_close_container_h(i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  %201 = call i32 (...) @xo_finish()
  store i32 0, i32* %3, align 4
  br label %202

202:                                              ; preds = %195, %19
  %203 = load i32, i32* %3, align 4
  ret i32 %203
}

declare dso_local i32 @xo_parse_args(i32, i8**) #1

declare dso_local i64 @xo_streq(i8*, i8*) #1

declare dso_local i32 @xo_set_style(i32*, i32) #1

declare dso_local i32 @xo_set_flags(i32*, i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @xo_set_file(i32) #1

declare dso_local i32 @xo_open_container(i8*) #1

declare dso_local i32 @xo_emit(i8*, ...) #1

declare dso_local i32 @xo_open_instance(i8*) #1

declare dso_local i32 @xo_emit_f(i32, i8*, i8*, i8*, i8*, i32, i32) #1

declare dso_local i32 @xo_close_container(i8*) #1

declare dso_local i32 @xo_close_container_h(i32*, i8*) #1

declare dso_local i32 @xo_finish(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

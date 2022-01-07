; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_roff.c_roff_getarg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_roff.c_roff_getarg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roff = type { i32 }
%struct.buf = type { i8*, i32*, i64 }

@ASCII_ESC = common dso_local global i8 0, align 1
@MANDOCERR_ARG_QUOTE = common dso_local global i32 0, align 4
@MANDOCERR_SPACE_EOL = common dso_local global i32 0, align 4
@ROFF_IGN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @roff_getarg(%struct.roff* %0, i8** %1, i32 %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.roff*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.buf, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.roff* %0, %struct.roff** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %17 = load i8**, i8*** %7, align 8
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %12, align 8
  store i32 0, i32* %15, align 4
  %19 = load i8*, i8** %12, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 34, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  store i32 1, i32* %15, align 4
  %24 = load i8*, i8** %12, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %12, align 8
  br label %26

26:                                               ; preds = %23, %4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  %27 = load i8*, i8** %12, align 8
  store i8* %27, i8** %11, align 8
  br label %28

28:                                               ; preds = %119, %26
  %29 = load i8*, i8** %11, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 0, %31
  br i1 %32, label %33, label %122

33:                                               ; preds = %28
  %34 = load i32, i32* %14, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %33
  %37 = load i8*, i8** %11, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  %39 = load i8, i8* %38, align 1
  %40 = load i8*, i8** %11, align 8
  %41 = load i32, i32* %14, align 4
  %42 = sub nsw i32 0, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %40, i64 %43
  store i8 %39, i8* %44, align 1
  br label %45

45:                                               ; preds = %36, %33
  %46 = load i8*, i8** %11, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 92, %49
  br i1 %50, label %51, label %86

51:                                               ; preds = %45
  %52 = load i8*, i8** %11, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  switch i32 %55, label %84 [
    i32 97, label %56
    i32 116, label %56
    i32 92, label %66
    i32 32, label %77
  ]

56:                                               ; preds = %51, %51
  %57 = load i8*, i8** %11, align 8
  %58 = load i32, i32* %14, align 4
  %59 = sub nsw i32 0, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %57, i64 %60
  store i8 9, i8* %61, align 1
  %62 = load i32, i32* %14, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %14, align 4
  %64 = load i8*, i8** %11, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %11, align 8
  br label %85

66:                                               ; preds = %51
  store i32 1, i32* %13, align 4
  %67 = load i8, i8* @ASCII_ESC, align 1
  %68 = load i8*, i8** %11, align 8
  %69 = load i32, i32* %14, align 4
  %70 = sub nsw i32 0, %69
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %68, i64 %71
  store i8 %67, i8* %72, align 1
  %73 = load i32, i32* %14, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %14, align 4
  %75 = load i8*, i8** %11, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %11, align 8
  br label %85

77:                                               ; preds = %51
  %78 = load i32, i32* %15, align 4
  %79 = icmp eq i32 0, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i8*, i8** %11, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %11, align 8
  br label %83

83:                                               ; preds = %80, %77
  br label %85

84:                                               ; preds = %51
  br label %85

85:                                               ; preds = %84, %83, %66, %56
  br label %118

86:                                               ; preds = %45
  %87 = load i32, i32* %15, align 4
  %88 = icmp eq i32 0, %87
  br i1 %88, label %89, label %97

89:                                               ; preds = %86
  %90 = load i8*, i8** %11, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 0
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 32, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %89
  store i32 1, i32* %16, align 4
  br label %122

96:                                               ; preds = %89
  br label %117

97:                                               ; preds = %86
  %98 = load i8*, i8** %11, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 0
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp eq i32 34, %101
  br i1 %102, label %103, label %116

103:                                              ; preds = %97
  %104 = load i8*, i8** %11, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 1
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp eq i32 34, %107
  br i1 %108, label %109, label %114

109:                                              ; preds = %103
  %110 = load i32, i32* %14, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %14, align 4
  %112 = load i8*, i8** %11, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %11, align 8
  br label %115

114:                                              ; preds = %103
  store i32 2, i32* %15, align 4
  br label %122

115:                                              ; preds = %109
  br label %116

116:                                              ; preds = %115, %97
  br label %117

117:                                              ; preds = %116, %96
  br label %118

118:                                              ; preds = %117, %85
  br label %119

119:                                              ; preds = %118
  %120 = load i8*, i8** %11, align 8
  %121 = getelementptr inbounds i8, i8* %120, i32 1
  store i8* %121, i8** %11, align 8
  br label %28

122:                                              ; preds = %114, %95, %28
  %123 = load i32, i32* %15, align 4
  %124 = icmp eq i32 1, %123
  br i1 %124, label %125, label %131

125:                                              ; preds = %122
  %126 = load i32, i32* @MANDOCERR_ARG_QUOTE, align 4
  %127 = load i32, i32* %8, align 4
  %128 = load i32*, i32** %9, align 8
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @mandoc_msg(i32 %126, i32 %127, i32 %129, i32* null)
  br label %131

131:                                              ; preds = %125, %122
  %132 = load i32, i32* %14, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %131
  %135 = load i8*, i8** %11, align 8
  %136 = load i32, i32* %14, align 4
  %137 = sub nsw i32 0, %136
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %135, i64 %138
  store i8 0, i8* %139, align 1
  br label %140

140:                                              ; preds = %134, %131
  %141 = load i8*, i8** %11, align 8
  %142 = load i8, i8* %141, align 1
  %143 = sext i8 %142 to i32
  %144 = icmp ne i32 0, %143
  br i1 %144, label %145, label %157

145:                                              ; preds = %140
  %146 = load i8*, i8** %11, align 8
  %147 = getelementptr inbounds i8, i8* %146, i32 1
  store i8* %147, i8** %11, align 8
  store i8 0, i8* %146, align 1
  br label %148

148:                                              ; preds = %153, %145
  %149 = load i8*, i8** %11, align 8
  %150 = load i8, i8* %149, align 1
  %151 = sext i8 %150 to i32
  %152 = icmp eq i32 32, %151
  br i1 %152, label %153, label %156

153:                                              ; preds = %148
  %154 = load i8*, i8** %11, align 8
  %155 = getelementptr inbounds i8, i8* %154, i32 1
  store i8* %155, i8** %11, align 8
  br label %148

156:                                              ; preds = %148
  br label %157

157:                                              ; preds = %156, %140
  %158 = load i8*, i8** %11, align 8
  %159 = load i8*, i8** %12, align 8
  %160 = ptrtoint i8* %158 to i64
  %161 = ptrtoint i8* %159 to i64
  %162 = sub i64 %160, %161
  %163 = trunc i64 %162 to i32
  %164 = load i32, i32* %15, align 4
  %165 = icmp ne i32 %164, 0
  %166 = zext i1 %165 to i64
  %167 = select i1 %165, i32 1, i32 0
  %168 = add nsw i32 %163, %167
  %169 = load i32*, i32** %9, align 8
  %170 = load i32, i32* %169, align 4
  %171 = add nsw i32 %170, %168
  store i32 %171, i32* %169, align 4
  %172 = load i8*, i8** %11, align 8
  %173 = load i8**, i8*** %7, align 8
  store i8* %172, i8** %173, align 8
  %174 = load i8*, i8** %11, align 8
  %175 = load i8, i8* %174, align 1
  %176 = sext i8 %175 to i32
  %177 = icmp eq i32 0, %176
  br i1 %177, label %178, label %193

178:                                              ; preds = %157
  %179 = load i32, i32* %16, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %187, label %181

181:                                              ; preds = %178
  %182 = load i8*, i8** %11, align 8
  %183 = getelementptr inbounds i8, i8* %182, i64 -1
  %184 = load i8, i8* %183, align 1
  %185 = sext i8 %184 to i32
  %186 = icmp eq i32 32, %185
  br i1 %186, label %187, label %193

187:                                              ; preds = %181, %178
  %188 = load i32, i32* @MANDOCERR_SPACE_EOL, align 4
  %189 = load i32, i32* %8, align 4
  %190 = load i32*, i32** %9, align 8
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @mandoc_msg(i32 %188, i32 %189, i32 %191, i32* null)
  br label %193

193:                                              ; preds = %187, %181, %157
  %194 = load i8*, i8** %12, align 8
  %195 = call i8* @mandoc_strdup(i8* %194)
  store i8* %195, i8** %12, align 8
  %196 = load i32, i32* %13, align 4
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %193
  %199 = load i8*, i8** %12, align 8
  store i8* %199, i8** %5, align 8
  br label %224

200:                                              ; preds = %193
  %201 = load i8*, i8** %12, align 8
  %202 = getelementptr inbounds %struct.buf, %struct.buf* %10, i32 0, i32 0
  store i8* %201, i8** %202, align 8
  %203 = load i8*, i8** %12, align 8
  %204 = call i64 @strlen(i8* %203)
  %205 = add nsw i64 %204, 1
  %206 = getelementptr inbounds %struct.buf, %struct.buf* %10, i32 0, i32 2
  store i64 %205, i64* %206, align 8
  %207 = getelementptr inbounds %struct.buf, %struct.buf* %10, i32 0, i32 1
  store i32* null, i32** %207, align 8
  %208 = load %struct.roff*, %struct.roff** %6, align 8
  %209 = load i32, i32* %8, align 4
  %210 = load i8, i8* @ASCII_ESC, align 1
  %211 = call i32 @roff_expand(%struct.roff* %208, %struct.buf* %10, i32 %209, i32 0, i8 signext %210)
  %212 = load i32, i32* @ROFF_IGN, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %221

215:                                              ; preds = %200
  %216 = getelementptr inbounds %struct.buf, %struct.buf* %10, i32 0, i32 0
  %217 = load i8*, i8** %216, align 8
  %218 = call i32 @free(i8* %217)
  %219 = call i8* @mandoc_strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %220 = getelementptr inbounds %struct.buf, %struct.buf* %10, i32 0, i32 0
  store i8* %219, i8** %220, align 8
  br label %221

221:                                              ; preds = %215, %200
  %222 = getelementptr inbounds %struct.buf, %struct.buf* %10, i32 0, i32 0
  %223 = load i8*, i8** %222, align 8
  store i8* %223, i8** %5, align 8
  br label %224

224:                                              ; preds = %221, %198
  %225 = load i8*, i8** %5, align 8
  ret i8* %225
}

declare dso_local i32 @mandoc_msg(i32, i32, i32, i32*) #1

declare dso_local i8* @mandoc_strdup(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @roff_expand(%struct.roff*, %struct.buf*, i32, i32, i8 signext) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

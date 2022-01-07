; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_term.c_term_strlen.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_term.c_term_strlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termp = type { i64 (%struct.termp*, i32)*, i32, i32 }

@term_strlen.rej = internal constant [5 x i8] c"\\\87\88\89\00", align 1
@TERMENC_ASCII = common dso_local global i32 0, align 4
@TERMTYPE_PDF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"pdf\00", align 1
@TERMTYPE_PS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"ps\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"ascii\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"utf8\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @term_strlen(%struct.termp* %0, i8* %1) #0 {
  %3 = alloca %struct.termp*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.termp* %0, %struct.termp** %3, align 8
  store i8* %1, i8** %4, align 8
  store i64 0, i64* %5, align 8
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %231, %183, %155, %151, %118, %88, %58, %2
  %15 = load i8*, i8** %4, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 0, %17
  br i1 %18, label %19, label %232

19:                                               ; preds = %14
  %20 = load i8*, i8** %4, align 8
  %21 = call i64 @strcspn(i8* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @term_strlen.rej, i64 0, i64 0))
  store i64 %21, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %22

22:                                               ; preds = %34, %19
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* %6, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %22
  %27 = load %struct.termp*, %struct.termp** %3, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %4, align 8
  %30 = load i8, i8* %28, align 1
  %31 = call i64 @cond_width(%struct.termp* %27, i8 signext %30, i32* %9)
  %32 = load i64, i64* %5, align 8
  %33 = add i64 %32, %31
  store i64 %33, i64* %5, align 8
  br label %34

34:                                               ; preds = %26
  %35 = load i64, i64* %7, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %7, align 8
  br label %22

37:                                               ; preds = %22
  %38 = load i8*, i8** %4, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  switch i32 %40, label %230 [
    i32 92, label %41
    i32 135, label %216
    i32 136, label %223
  ]

41:                                               ; preds = %37
  %42 = load i8*, i8** %4, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %4, align 8
  store i8* null, i8** %12, align 8
  %44 = call i32 @mandoc_escape(i8** %4, i8** %11, i32* %8)
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %13, align 4
  switch i32 %45, label %155 [
    i32 128, label %46
    i32 133, label %52
    i32 130, label %60
    i32 129, label %89
    i32 134, label %93
    i32 131, label %118
    i32 132, label %119
  ]

46:                                               ; preds = %41
  %47 = load i8*, i8** %11, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  %49 = load i32, i32* %8, align 4
  %50 = sub nsw i32 %49, 1
  %51 = call i32 @mchars_num2uc(i8* %48, i32 %50)
  store i32 %51, i32* %10, align 4
  br label %156

52:                                               ; preds = %41
  %53 = load i8*, i8** %11, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @mchars_num2char(i8* %53, i32 %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %14

59:                                               ; preds = %52
  br label %156

60:                                               ; preds = %41
  %61 = load %struct.termp*, %struct.termp** %3, align 8
  %62 = getelementptr inbounds %struct.termp, %struct.termp* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @TERMENC_ASCII, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %60
  %67 = load i8*, i8** %11, align 8
  %68 = load i32, i32* %8, align 4
  %69 = call i8* @mchars_spec2str(i8* %67, i32 %68, i64* %6)
  store i8* %69, i8** %12, align 8
  %70 = load i8*, i8** %12, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  br label %156

73:                                               ; preds = %66
  br label %88

74:                                               ; preds = %60
  %75 = load i8*, i8** %11, align 8
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @mchars_spec2cp(i8* %75, i32 %76)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %74
  %81 = load %struct.termp*, %struct.termp** %3, align 8
  %82 = load i32, i32* %10, align 4
  %83 = trunc i32 %82 to i8
  %84 = call i64 @cond_width(%struct.termp* %81, i8 signext %83, i32* %9)
  %85 = load i64, i64* %5, align 8
  %86 = add i64 %85, %84
  store i64 %86, i64* %5, align 8
  br label %87

87:                                               ; preds = %80, %74
  br label %88

88:                                               ; preds = %87, %73
  br label %14

89:                                               ; preds = %41
  %90 = load i8*, i8** %11, align 8
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  store i32 %92, i32* %10, align 4
  br label %156

93:                                               ; preds = %41
  %94 = load %struct.termp*, %struct.termp** %3, align 8
  %95 = getelementptr inbounds %struct.termp, %struct.termp* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @TERMTYPE_PDF, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  store i64 3, i64* %6, align 8
  br label %117

100:                                              ; preds = %93
  %101 = load %struct.termp*, %struct.termp** %3, align 8
  %102 = getelementptr inbounds %struct.termp, %struct.termp* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @TERMTYPE_PS, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %100
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %12, align 8
  store i64 2, i64* %6, align 8
  br label %116

107:                                              ; preds = %100
  %108 = load %struct.termp*, %struct.termp** %3, align 8
  %109 = getelementptr inbounds %struct.termp, %struct.termp* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @TERMENC_ASCII, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %107
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %12, align 8
  store i64 5, i64* %6, align 8
  br label %115

114:                                              ; preds = %107
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %12, align 8
  store i64 4, i64* %6, align 8
  br label %115

115:                                              ; preds = %114, %113
  br label %116

116:                                              ; preds = %115, %106
  br label %117

117:                                              ; preds = %116, %99
  br label %156

118:                                              ; preds = %41
  store i32 1, i32* %9, align 4
  br label %14

119:                                              ; preds = %41
  store i64 0, i64* %6, align 8
  %120 = load i8*, i8** %11, align 8
  %121 = load i32, i32* %8, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8, i8* %120, i64 %122
  store i8* %123, i8** %12, align 8
  br label %124

124:                                              ; preds = %150, %133, %119
  %125 = load i8*, i8** %11, align 8
  %126 = load i8*, i8** %12, align 8
  %127 = icmp ult i8* %125, %126
  br i1 %127, label %128, label %151

128:                                              ; preds = %124
  %129 = load i8*, i8** %11, align 8
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp eq i32 %131, 92
  br i1 %132, label %133, label %135

133:                                              ; preds = %128
  %134 = call i32 @mandoc_escape(i8** %11, i8** null, i32* null)
  br label %124

135:                                              ; preds = %128
  %136 = load %struct.termp*, %struct.termp** %3, align 8
  %137 = getelementptr inbounds %struct.termp, %struct.termp* %136, i32 0, i32 0
  %138 = load i64 (%struct.termp*, i32)*, i64 (%struct.termp*, i32)** %137, align 8
  %139 = load %struct.termp*, %struct.termp** %3, align 8
  %140 = load i8*, i8** %11, align 8
  %141 = getelementptr inbounds i8, i8* %140, i32 1
  store i8* %141, i8** %11, align 8
  %142 = load i8, i8* %140, align 1
  %143 = sext i8 %142 to i32
  %144 = call i64 %138(%struct.termp* %139, i32 %143)
  store i64 %144, i64* %7, align 8
  %145 = load i64, i64* %6, align 8
  %146 = load i64, i64* %7, align 8
  %147 = icmp ult i64 %145, %146
  br i1 %147, label %148, label %150

148:                                              ; preds = %135
  %149 = load i64, i64* %7, align 8
  store i64 %149, i64* %6, align 8
  br label %150

150:                                              ; preds = %148, %135
  br label %124

151:                                              ; preds = %124
  %152 = load i64, i64* %6, align 8
  %153 = load i64, i64* %5, align 8
  %154 = add i64 %153, %152
  store i64 %154, i64* %5, align 8
  br label %14

155:                                              ; preds = %41
  br label %14

156:                                              ; preds = %117, %89, %72, %59, %46
  %157 = load i8*, i8** %12, align 8
  %158 = icmp eq i8* %157, null
  br i1 %158, label %159, label %191

159:                                              ; preds = %156
  %160 = load %struct.termp*, %struct.termp** %3, align 8
  %161 = getelementptr inbounds %struct.termp, %struct.termp* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @TERMENC_ASCII, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %170

165:                                              ; preds = %159
  %166 = load i32, i32* %10, align 4
  %167 = call i8* @ascii_uc2str(i32 %166)
  store i8* %167, i8** %12, align 8
  %168 = load i8*, i8** %12, align 8
  %169 = call i64 @strlen(i8* %168)
  store i64 %169, i64* %6, align 8
  br label %190

170:                                              ; preds = %159
  %171 = load i32, i32* %10, align 4
  %172 = icmp slt i32 %171, 32
  br i1 %172, label %173, label %176

173:                                              ; preds = %170
  %174 = load i32, i32* %10, align 4
  %175 = icmp ne i32 %174, 9
  br i1 %175, label %182, label %176

176:                                              ; preds = %173, %170
  %177 = load i32, i32* %10, align 4
  %178 = icmp sgt i32 %177, 126
  br i1 %178, label %179, label %183

179:                                              ; preds = %176
  %180 = load i32, i32* %10, align 4
  %181 = icmp slt i32 %180, 160
  br i1 %181, label %182, label %183

182:                                              ; preds = %179, %173
  store i32 65533, i32* %10, align 4
  br label %183

183:                                              ; preds = %182, %179, %176
  %184 = load %struct.termp*, %struct.termp** %3, align 8
  %185 = load i32, i32* %10, align 4
  %186 = trunc i32 %185 to i8
  %187 = call i64 @cond_width(%struct.termp* %184, i8 signext %186, i32* %9)
  %188 = load i64, i64* %5, align 8
  %189 = add i64 %188, %187
  store i64 %189, i64* %5, align 8
  br label %14

190:                                              ; preds = %165
  br label %191

191:                                              ; preds = %190, %156
  %192 = load i32, i32* %9, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %191
  store i32 0, i32* %9, align 4
  br label %231

195:                                              ; preds = %191
  store i64 0, i64* %7, align 8
  br label %196

196:                                              ; preds = %212, %195
  %197 = load i64, i64* %7, align 8
  %198 = load i64, i64* %6, align 8
  %199 = icmp ult i64 %197, %198
  br i1 %199, label %200, label %215

200:                                              ; preds = %196
  %201 = load %struct.termp*, %struct.termp** %3, align 8
  %202 = getelementptr inbounds %struct.termp, %struct.termp* %201, i32 0, i32 0
  %203 = load i64 (%struct.termp*, i32)*, i64 (%struct.termp*, i32)** %202, align 8
  %204 = load %struct.termp*, %struct.termp** %3, align 8
  %205 = load i8*, i8** %12, align 8
  %206 = getelementptr inbounds i8, i8* %205, i32 1
  store i8* %206, i8** %12, align 8
  %207 = load i8, i8* %205, align 1
  %208 = sext i8 %207 to i32
  %209 = call i64 %203(%struct.termp* %204, i32 %208)
  %210 = load i64, i64* %5, align 8
  %211 = add i64 %210, %209
  store i64 %211, i64* %5, align 8
  br label %212

212:                                              ; preds = %200
  %213 = load i64, i64* %7, align 8
  %214 = add i64 %213, 1
  store i64 %214, i64* %7, align 8
  br label %196

215:                                              ; preds = %196
  br label %231

216:                                              ; preds = %37
  %217 = load %struct.termp*, %struct.termp** %3, align 8
  %218 = call i64 @cond_width(%struct.termp* %217, i8 signext 32, i32* %9)
  %219 = load i64, i64* %5, align 8
  %220 = add i64 %219, %218
  store i64 %220, i64* %5, align 8
  %221 = load i8*, i8** %4, align 8
  %222 = getelementptr inbounds i8, i8* %221, i32 1
  store i8* %222, i8** %4, align 8
  br label %231

223:                                              ; preds = %37
  %224 = load %struct.termp*, %struct.termp** %3, align 8
  %225 = call i64 @cond_width(%struct.termp* %224, i8 signext 45, i32* %9)
  %226 = load i64, i64* %5, align 8
  %227 = add i64 %226, %225
  store i64 %227, i64* %5, align 8
  %228 = load i8*, i8** %4, align 8
  %229 = getelementptr inbounds i8, i8* %228, i32 1
  store i8* %229, i8** %4, align 8
  br label %231

230:                                              ; preds = %37
  br label %231

231:                                              ; preds = %230, %223, %216, %215, %194
  br label %14

232:                                              ; preds = %14
  %233 = load i64, i64* %5, align 8
  ret i64 %233
}

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i64 @cond_width(%struct.termp*, i8 signext, i32*) #1

declare dso_local i32 @mandoc_escape(i8**, i8**, i32*) #1

declare dso_local i32 @mchars_num2uc(i8*, i32) #1

declare dso_local i32 @mchars_num2char(i8*, i32) #1

declare dso_local i8* @mchars_spec2str(i8*, i32, i64*) #1

declare dso_local i32 @mchars_spec2cp(i8*, i32) #1

declare dso_local i8* @ascii_uc2str(i32) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

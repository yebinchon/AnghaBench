; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openpam/lib/libpam/extr_openpam_set_option.c_openpam_set_option.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openpam/lib/libpam/extr_openpam_set_option.c_openpam_set_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i8** }

@PAM_SYSTEM_ERR = common dso_local global i32 0, align 4
@PAM_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%.*s=%s\00", align 1
@PAM_BUF_ERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @openpam_set_option(%struct.TYPE_4__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @ENTERS(i8* %13)
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %16 = icmp eq %struct.TYPE_4__* %15, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %3
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = icmp eq %struct.TYPE_5__* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load i8*, i8** %6, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %22, %17, %3
  %26 = load i32, i32* @PAM_SYSTEM_ERR, align 4
  %27 = call i32 @RETURNC(i32 %26)
  br label %28

28:                                               ; preds = %25, %22
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  store %struct.TYPE_5__* %31, %struct.TYPE_5__** %8, align 8
  store i64 0, i64* %11, align 8
  br label %32

32:                                               ; preds = %48, %28
  %33 = load i8*, i8** %6, align 8
  %34 = load i64, i64* %11, align 8
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %32
  %40 = load i8*, i8** %6, align 8
  %41 = load i64, i64* %11, align 8
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 61
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %51

47:                                               ; preds = %39
  br label %48

48:                                               ; preds = %47
  %49 = load i64, i64* %11, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %11, align 8
  br label %32

51:                                               ; preds = %46, %32
  store i32 0, i32* %12, align 4
  br label %52

52:                                               ; preds = %98, %51
  %53 = load i32, i32* %12, align 4
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %101

58:                                               ; preds = %52
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i8**, i8*** %60, align 8
  %62 = load i32, i32* %12, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %61, i64 %63
  %65 = load i8*, i8** %64, align 8
  %66 = load i8*, i8** %6, align 8
  %67 = load i64, i64* %11, align 8
  %68 = call i64 @strncmp(i8* %65, i8* %66, i64 %67)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %97

70:                                               ; preds = %58
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = load i8**, i8*** %72, align 8
  %74 = load i32, i32* %12, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8*, i8** %73, i64 %75
  %77 = load i8*, i8** %76, align 8
  %78 = load i64, i64* %11, align 8
  %79 = getelementptr inbounds i8, i8* %77, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %96, label %83

83:                                               ; preds = %70
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = load i8**, i8*** %85, align 8
  %87 = load i32, i32* %12, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8*, i8** %86, i64 %88
  %90 = load i8*, i8** %89, align 8
  %91 = load i64, i64* %11, align 8
  %92 = getelementptr inbounds i8, i8* %90, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 61
  br i1 %95, label %96, label %97

96:                                               ; preds = %83, %70
  br label %101

97:                                               ; preds = %83, %58
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %12, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %12, align 4
  br label %52

101:                                              ; preds = %96, %52
  %102 = load i8*, i8** %7, align 8
  %103 = icmp eq i8* %102, null
  br i1 %103, label %104, label %155

104:                                              ; preds = %101
  %105 = load i32, i32* %12, align 4
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp eq i32 %105, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %104
  %111 = load i32, i32* @PAM_SUCCESS, align 4
  %112 = call i32 @RETURNC(i32 %111)
  br label %113

113:                                              ; preds = %110, %104
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 1
  %116 = load i8**, i8*** %115, align 8
  %117 = load i32, i32* %12, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8*, i8** %116, i64 %118
  %120 = load i8*, i8** %119, align 8
  %121 = call i32 @free(i8* %120)
  br label %122

122:                                              ; preds = %143, %113
  %123 = load i32, i32* %12, align 4
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = icmp slt i32 %123, %126
  br i1 %127, label %128, label %146

128:                                              ; preds = %122
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 1
  %131 = load i8**, i8*** %130, align 8
  %132 = load i32, i32* %12, align 4
  %133 = add nsw i32 %132, 1
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8*, i8** %131, i64 %134
  %136 = load i8*, i8** %135, align 8
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 1
  %139 = load i8**, i8*** %138, align 8
  %140 = load i32, i32* %12, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8*, i8** %139, i64 %141
  store i8* %136, i8** %142, align 8
  br label %143

143:                                              ; preds = %128
  %144 = load i32, i32* %12, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %12, align 4
  br label %122

146:                                              ; preds = %122
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 1
  %149 = load i8**, i8*** %148, align 8
  %150 = load i32, i32* %12, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8*, i8** %149, i64 %151
  store i8* null, i8** %152, align 8
  %153 = load i32, i32* @PAM_SUCCESS, align 4
  %154 = call i32 @RETURNC(i32 %153)
  br label %155

155:                                              ; preds = %146, %101
  %156 = load i64, i64* %11, align 8
  %157 = trunc i64 %156 to i32
  %158 = load i8*, i8** %6, align 8
  %159 = load i8*, i8** %7, align 8
  %160 = call i64 @asprintf(i8** %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %157, i8* %158, i8* %159)
  %161 = icmp slt i64 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %155
  %163 = load i32, i32* @PAM_BUF_ERR, align 4
  %164 = call i32 @RETURNC(i32 %163)
  br label %165

165:                                              ; preds = %162, %155
  %166 = load i32, i32* %12, align 4
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = icmp eq i32 %166, %169
  br i1 %170, label %171, label %208

171:                                              ; preds = %165
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 1
  %174 = load i8**, i8*** %173, align 8
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = add nsw i32 %177, 2
  %179 = sext i32 %178 to i64
  %180 = mul i64 8, %179
  %181 = trunc i64 %180 to i32
  %182 = call i8** @realloc(i8** %174, i32 %181)
  store i8** %182, i8*** %10, align 8
  %183 = load i8**, i8*** %10, align 8
  %184 = icmp eq i8** %183, null
  br i1 %184, label %185, label %190

185:                                              ; preds = %171
  %186 = load i8*, i8** %9, align 8
  %187 = call i32 @FREE(i8* %186)
  %188 = load i32, i32* @PAM_BUF_ERR, align 4
  %189 = call i32 @RETURNC(i32 %188)
  br label %190

190:                                              ; preds = %185, %171
  %191 = load i8*, i8** %9, align 8
  %192 = load i8**, i8*** %10, align 8
  %193 = load i32, i32* %12, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i8*, i8** %192, i64 %194
  store i8* %191, i8** %195, align 8
  %196 = load i8**, i8*** %10, align 8
  %197 = load i32, i32* %12, align 4
  %198 = add nsw i32 %197, 1
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i8*, i8** %196, i64 %199
  store i8* null, i8** %200, align 8
  %201 = load i8**, i8*** %10, align 8
  %202 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 1
  store i8** %201, i8*** %203, align 8
  %204 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %205, align 8
  br label %224

208:                                              ; preds = %165
  %209 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 1
  %211 = load i8**, i8*** %210, align 8
  %212 = load i32, i32* %12, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i8*, i8** %211, i64 %213
  %215 = load i8*, i8** %214, align 8
  %216 = call i32 @FREE(i8* %215)
  %217 = load i8*, i8** %9, align 8
  %218 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i32 0, i32 1
  %220 = load i8**, i8*** %219, align 8
  %221 = load i32, i32* %12, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i8*, i8** %220, i64 %222
  store i8* %217, i8** %223, align 8
  br label %224

224:                                              ; preds = %208, %190
  %225 = load i32, i32* @PAM_SUCCESS, align 4
  %226 = call i32 @RETURNC(i32 %225)
  %227 = load i32, i32* %4, align 4
  ret i32 %227
}

declare dso_local i32 @ENTERS(i8*) #1

declare dso_local i32 @RETURNC(i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @asprintf(i8**, i8*, i32, i8*, i8*) #1

declare dso_local i8** @realloc(i8**, i32) #1

declare dso_local i32 @FREE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

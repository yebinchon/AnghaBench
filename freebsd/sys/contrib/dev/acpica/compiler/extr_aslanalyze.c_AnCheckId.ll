; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslanalyze.c_AnCheckId.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslanalyze.c_AnCheckId.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8* }

@PARSEOP_STRING_LITERAL = common dso_local global i64 0, align 8
@ASL_ERROR = common dso_local global i32 0, align 4
@ASL_MSG_NULL_STRING = common dso_local global i32 0, align 4
@ASL_MSG_LEADING_ASTERISK = common dso_local global i32 0, align 4
@ASL_TYPE_CID = common dso_local global i64 0, align 8
@ASL_MSG_ALPHANUMERIC_STRING = common dso_local global i32 0, align 4
@ASL_MSG_HID_LENGTH = common dso_local global i32 0, align 4
@ASL_MSG_UPPER_CASE = common dso_local global i32 0, align 4
@ASL_MSG_HID_PREFIX = common dso_local global i32 0, align 4
@ASL_MSG_HID_SUFFIX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AnCheckId(%struct.TYPE_8__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @PARSEOP_STRING_LITERAL, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %220

14:                                               ; preds = %2
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @strlen(i8* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %14
  %24 = load i32, i32* @ASL_ERROR, align 4
  %25 = load i32, i32* @ASL_MSG_NULL_STRING, align 4
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %27 = call i32 @AslError(i32 %24, i32 %25, %struct.TYPE_8__* %26, i8* null)
  br label %220

28:                                               ; preds = %14
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 42
  br i1 %36, label %37, label %47

37:                                               ; preds = %28
  %38 = load i32, i32* @ASL_ERROR, align 4
  %39 = load i32, i32* @ASL_MSG_LEADING_ASTERISK, align 4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @AslError(i32 %38, i32 %39, %struct.TYPE_8__* %40, i8* %45)
  br label %220

47:                                               ; preds = %28
  %48 = load i64, i64* %4, align 8
  %49 = load i64, i64* @ASL_TYPE_CID, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  br label %220

52:                                               ; preds = %47
  store i64 0, i64* %5, align 8
  br label %53

53:                                               ; preds = %86, %52
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = load i64, i64* %5, align 8
  %60 = getelementptr inbounds i8, i8* %58, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = icmp ne i8 %61, 0
  br i1 %62, label %63, label %89

63:                                               ; preds = %53
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = load i64, i64* %5, align 8
  %70 = getelementptr inbounds i8, i8* %68, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = call i32 @isalnum(i32 %72) #3
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %85, label %75

75:                                               ; preds = %63
  %76 = load i32, i32* @ASL_ERROR, align 4
  %77 = load i32, i32* @ASL_MSG_ALPHANUMERIC_STRING, align 4
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @AslError(i32 %76, i32 %77, %struct.TYPE_8__* %78, i8* %83)
  br label %220

85:                                               ; preds = %63
  br label %86

86:                                               ; preds = %85
  %87 = load i64, i64* %5, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %5, align 8
  br label %53

89:                                               ; preds = %53
  %90 = load i32, i32* %6, align 4
  %91 = icmp slt i32 %90, 7
  br i1 %91, label %95, label %92

92:                                               ; preds = %89
  %93 = load i32, i32* %6, align 4
  %94 = icmp sgt i32 %93, 8
  br i1 %94, label %95, label %105

95:                                               ; preds = %92, %89
  %96 = load i32, i32* @ASL_ERROR, align 4
  %97 = load i32, i32* @ASL_MSG_HID_LENGTH, align 4
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 @AslError(i32 %96, i32 %97, %struct.TYPE_8__* %98, i8* %103)
  br label %220

105:                                              ; preds = %92
  %106 = load i32, i32* %6, align 4
  %107 = icmp eq i32 %106, 7
  br i1 %107, label %108, label %141

108:                                              ; preds = %105
  store i64 0, i64* %5, align 8
  br label %109

109:                                              ; preds = %137, %108
  %110 = load i64, i64* %5, align 8
  %111 = icmp ult i64 %110, 3
  br i1 %111, label %112, label %140

112:                                              ; preds = %109
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = load i8*, i8** %116, align 8
  %118 = load i64, i64* %5, align 8
  %119 = getelementptr inbounds i8, i8* %117, i64 %118
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = call i32 @isupper(i32 %121) #3
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %136, label %124

124:                                              ; preds = %112
  %125 = load i32, i32* @ASL_ERROR, align 4
  %126 = load i32, i32* @ASL_MSG_UPPER_CASE, align 4
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = load i8*, i8** %131, align 8
  %133 = load i64, i64* %5, align 8
  %134 = getelementptr inbounds i8, i8* %132, i64 %133
  %135 = call i32 @AslError(i32 %125, i32 %126, %struct.TYPE_8__* %127, i8* %134)
  br label %220

136:                                              ; preds = %112
  br label %137

137:                                              ; preds = %136
  %138 = load i64, i64* %5, align 8
  %139 = add i64 %138, 1
  store i64 %139, i64* %5, align 8
  br label %109

140:                                              ; preds = %109
  br label %186

141:                                              ; preds = %105
  store i64 0, i64* %5, align 8
  br label %142

142:                                              ; preds = %182, %141
  %143 = load i64, i64* %5, align 8
  %144 = icmp ult i64 %143, 4
  br i1 %144, label %145, label %185

145:                                              ; preds = %142
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  %150 = load i8*, i8** %149, align 8
  %151 = load i64, i64* %5, align 8
  %152 = getelementptr inbounds i8, i8* %150, i64 %151
  %153 = load i8, i8* %152, align 1
  %154 = sext i8 %153 to i32
  %155 = call i32 @isupper(i32 %154) #3
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %181, label %157

157:                                              ; preds = %145
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  %162 = load i8*, i8** %161, align 8
  %163 = load i64, i64* %5, align 8
  %164 = getelementptr inbounds i8, i8* %162, i64 %163
  %165 = load i8, i8* %164, align 1
  %166 = sext i8 %165 to i32
  %167 = call i32 @isdigit(i32 %166) #3
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %181, label %169

169:                                              ; preds = %157
  %170 = load i32, i32* @ASL_ERROR, align 4
  %171 = load i32, i32* @ASL_MSG_HID_PREFIX, align 4
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 0
  %177 = load i8*, i8** %176, align 8
  %178 = load i64, i64* %5, align 8
  %179 = getelementptr inbounds i8, i8* %177, i64 %178
  %180 = call i32 @AslError(i32 %170, i32 %171, %struct.TYPE_8__* %172, i8* %179)
  br label %220

181:                                              ; preds = %157, %145
  br label %182

182:                                              ; preds = %181
  %183 = load i64, i64* %5, align 8
  %184 = add i64 %183, 1
  store i64 %184, i64* %5, align 8
  br label %142

185:                                              ; preds = %142
  br label %186

186:                                              ; preds = %185, %140
  br label %187

187:                                              ; preds = %217, %186
  %188 = load i64, i64* %5, align 8
  %189 = load i32, i32* %6, align 4
  %190 = sext i32 %189 to i64
  %191 = icmp ult i64 %188, %190
  br i1 %191, label %192, label %220

192:                                              ; preds = %187
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 0
  %197 = load i8*, i8** %196, align 8
  %198 = load i64, i64* %5, align 8
  %199 = getelementptr inbounds i8, i8* %197, i64 %198
  %200 = load i8, i8* %199, align 1
  %201 = sext i8 %200 to i32
  %202 = call i32 @isxdigit(i32 %201) #3
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %216, label %204

204:                                              ; preds = %192
  %205 = load i32, i32* @ASL_ERROR, align 4
  %206 = load i32, i32* @ASL_MSG_HID_SUFFIX, align 4
  %207 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %208 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 0
  %212 = load i8*, i8** %211, align 8
  %213 = load i64, i64* %5, align 8
  %214 = getelementptr inbounds i8, i8* %212, i64 %213
  %215 = call i32 @AslError(i32 %205, i32 %206, %struct.TYPE_8__* %207, i8* %214)
  br label %220

216:                                              ; preds = %192
  br label %217

217:                                              ; preds = %216
  %218 = load i64, i64* %5, align 8
  %219 = add i64 %218, 1
  store i64 %219, i64* %5, align 8
  br label %187

220:                                              ; preds = %13, %23, %37, %51, %75, %95, %124, %169, %204, %187
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @AslError(i32, i32, %struct.TYPE_8__*, i8*) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isalnum(i32) #2

; Function Attrs: nounwind readonly
declare dso_local i32 @isupper(i32) #2

; Function Attrs: nounwind readonly
declare dso_local i32 @isdigit(i32) #2

; Function Attrs: nounwind readonly
declare dso_local i32 @isxdigit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

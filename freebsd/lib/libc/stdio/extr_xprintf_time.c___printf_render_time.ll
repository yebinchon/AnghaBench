; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_xprintf_time.c___printf_render_time.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_xprintf_time.c___printf_render_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__printf_io = type { i32 }
%struct.printf_info = type { i32, i64, i64, i64 }
%struct.timeval = type { i64, i32 }
%struct.timespec = type { i64, i32 }

@YEAR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"%jdy\00", align 1
@DAY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"%jdd\00", align 1
@HOUR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"%jdh\00", align 1
@MINUTE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"%jdm\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%jds\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%jd\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c".%.*d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__printf_render_time(%struct.__printf_io* %0, %struct.printf_info* %1, i8** %2) #0 {
  %4 = alloca %struct.__printf_io*, align 8
  %5 = alloca %struct.printf_info*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca [100 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca %struct.timeval*, align 8
  %10 = alloca %struct.timespec*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.__printf_io* %0, %struct.__printf_io** %4, align 8
  store %struct.printf_info* %1, %struct.printf_info** %5, align 8
  store i8** %2, i8*** %6, align 8
  %18 = load %struct.printf_info*, %struct.printf_info** %5, align 8
  %19 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %3
  %23 = load i8**, i8*** %6, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 0
  %25 = load i8*, i8** %24, align 8
  %26 = bitcast i8* %25 to %struct.timeval**
  %27 = load %struct.timeval*, %struct.timeval** %26, align 8
  store %struct.timeval* %27, %struct.timeval** %9, align 8
  %28 = load %struct.timeval*, %struct.timeval** %9, align 8
  %29 = getelementptr inbounds %struct.timeval, %struct.timeval* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %12, align 8
  %31 = load %struct.timeval*, %struct.timeval** %9, align 8
  %32 = getelementptr inbounds %struct.timeval, %struct.timeval* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = mul nsw i32 %33, 1000
  store i32 %34, i32* %16, align 4
  store i32 6, i32* %15, align 4
  br label %61

35:                                               ; preds = %3
  %36 = load %struct.printf_info*, %struct.printf_info** %5, align 8
  %37 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %35
  %41 = load i8**, i8*** %6, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 0
  %43 = load i8*, i8** %42, align 8
  %44 = bitcast i8* %43 to %struct.timespec**
  %45 = load %struct.timespec*, %struct.timespec** %44, align 8
  store %struct.timespec* %45, %struct.timespec** %10, align 8
  %46 = load %struct.timespec*, %struct.timespec** %10, align 8
  %47 = getelementptr inbounds %struct.timespec, %struct.timespec* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %12, align 8
  %49 = load %struct.timespec*, %struct.timespec** %10, align 8
  %50 = getelementptr inbounds %struct.timespec, %struct.timespec* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %16, align 4
  store i32 9, i32* %15, align 4
  br label %60

52:                                               ; preds = %35
  %53 = load i8**, i8*** %6, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 0
  %55 = load i8*, i8** %54, align 8
  %56 = bitcast i8* %55 to i64**
  %57 = load i64*, i64** %56, align 8
  store i64* %57, i64** %11, align 8
  %58 = load i64*, i64** %11, align 8
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %12, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %15, align 4
  br label %60

60:                                               ; preds = %52, %40
  br label %61

61:                                               ; preds = %60, %22
  %62 = load %struct.printf_info*, %struct.printf_info** %5, align 8
  %63 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %61
  %67 = load %struct.printf_info*, %struct.printf_info** %5, align 8
  %68 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %85

71:                                               ; preds = %66, %61
  %72 = load %struct.printf_info*, %struct.printf_info** %5, align 8
  %73 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp sge i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = load %struct.printf_info*, %struct.printf_info** %5, align 8
  %78 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  store i32 %79, i32* %15, align 4
  br label %80

80:                                               ; preds = %76, %71
  %81 = load i32, i32* %15, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  store i32 0, i32* %16, align 4
  br label %84

84:                                               ; preds = %83, %80
  br label %85

85:                                               ; preds = %84, %66
  %86 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0
  store i8* %86, i8** %8, align 8
  %87 = load %struct.printf_info*, %struct.printf_info** %5, align 8
  %88 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %196

91:                                               ; preds = %85
  %92 = load i64, i64* %12, align 8
  store i64 %92, i64* %13, align 8
  %93 = load i64, i64* %12, align 8
  %94 = load i64, i64* @YEAR, align 8
  %95 = icmp sge i64 %93, %94
  br i1 %95, label %96, label %109

96:                                               ; preds = %91
  %97 = load i8*, i8** %8, align 8
  %98 = load i64, i64* %12, align 8
  %99 = load i64, i64* @YEAR, align 8
  %100 = sdiv i64 %98, %99
  %101 = trunc i64 %100 to i32
  %102 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %97, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %101)
  %103 = load i8*, i8** %8, align 8
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds i8, i8* %103, i64 %104
  store i8* %105, i8** %8, align 8
  %106 = load i64, i64* @YEAR, align 8
  %107 = load i64, i64* %12, align 8
  %108 = srem i64 %107, %106
  store i64 %108, i64* %12, align 8
  br label %109

109:                                              ; preds = %96, %91
  %110 = load i64, i64* %13, align 8
  %111 = load i64, i64* @DAY, align 8
  %112 = icmp sge i64 %110, %111
  br i1 %112, label %113, label %132

113:                                              ; preds = %109
  %114 = load i64, i64* %12, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %113
  %117 = load i32, i32* %15, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %132

119:                                              ; preds = %116, %113
  %120 = load i8*, i8** %8, align 8
  %121 = load i64, i64* %12, align 8
  %122 = load i64, i64* @DAY, align 8
  %123 = sdiv i64 %121, %122
  %124 = trunc i64 %123 to i32
  %125 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %120, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %124)
  %126 = load i8*, i8** %8, align 8
  %127 = sext i32 %125 to i64
  %128 = getelementptr inbounds i8, i8* %126, i64 %127
  store i8* %128, i8** %8, align 8
  %129 = load i64, i64* @DAY, align 8
  %130 = load i64, i64* %12, align 8
  %131 = srem i64 %130, %129
  store i64 %131, i64* %12, align 8
  br label %132

132:                                              ; preds = %119, %116, %109
  %133 = load i64, i64* %13, align 8
  %134 = load i64, i64* @HOUR, align 8
  %135 = icmp sge i64 %133, %134
  br i1 %135, label %136, label %155

136:                                              ; preds = %132
  %137 = load i64, i64* %12, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %142, label %139

139:                                              ; preds = %136
  %140 = load i32, i32* %15, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %155

142:                                              ; preds = %139, %136
  %143 = load i8*, i8** %8, align 8
  %144 = load i64, i64* %12, align 8
  %145 = load i64, i64* @HOUR, align 8
  %146 = sdiv i64 %144, %145
  %147 = trunc i64 %146 to i32
  %148 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %143, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %147)
  %149 = load i8*, i8** %8, align 8
  %150 = sext i32 %148 to i64
  %151 = getelementptr inbounds i8, i8* %149, i64 %150
  store i8* %151, i8** %8, align 8
  %152 = load i64, i64* @HOUR, align 8
  %153 = load i64, i64* %12, align 8
  %154 = srem i64 %153, %152
  store i64 %154, i64* %12, align 8
  br label %155

155:                                              ; preds = %142, %139, %132
  %156 = load i64, i64* %13, align 8
  %157 = load i64, i64* @MINUTE, align 8
  %158 = icmp sge i64 %156, %157
  br i1 %158, label %159, label %178

159:                                              ; preds = %155
  %160 = load i64, i64* %12, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %165, label %162

162:                                              ; preds = %159
  %163 = load i32, i32* %15, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %178

165:                                              ; preds = %162, %159
  %166 = load i8*, i8** %8, align 8
  %167 = load i64, i64* %12, align 8
  %168 = load i64, i64* @MINUTE, align 8
  %169 = sdiv i64 %167, %168
  %170 = trunc i64 %169 to i32
  %171 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %166, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %170)
  %172 = load i8*, i8** %8, align 8
  %173 = sext i32 %171 to i64
  %174 = getelementptr inbounds i8, i8* %172, i64 %173
  store i8* %174, i8** %8, align 8
  %175 = load i64, i64* @MINUTE, align 8
  %176 = load i64, i64* %12, align 8
  %177 = srem i64 %176, %175
  store i64 %177, i64* %12, align 8
  br label %178

178:                                              ; preds = %165, %162, %155
  %179 = load i64, i64* %12, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %187, label %181

181:                                              ; preds = %178
  %182 = load i64, i64* %13, align 8
  %183 = icmp eq i64 %182, 0
  br i1 %183, label %187, label %184

184:                                              ; preds = %181
  %185 = load i32, i32* %15, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %195

187:                                              ; preds = %184, %181, %178
  %188 = load i8*, i8** %8, align 8
  %189 = load i64, i64* %12, align 8
  %190 = trunc i64 %189 to i32
  %191 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %188, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %190)
  %192 = load i8*, i8** %8, align 8
  %193 = sext i32 %191 to i64
  %194 = getelementptr inbounds i8, i8* %192, i64 %193
  store i8* %194, i8** %8, align 8
  br label %195

195:                                              ; preds = %187, %184
  br label %204

196:                                              ; preds = %85
  %197 = load i8*, i8** %8, align 8
  %198 = load i64, i64* %12, align 8
  %199 = trunc i64 %198 to i32
  %200 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %197, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %199)
  %201 = load i8*, i8** %8, align 8
  %202 = sext i32 %200 to i64
  %203 = getelementptr inbounds i8, i8* %201, i64 %202
  store i8* %203, i8** %8, align 8
  br label %204

204:                                              ; preds = %196, %195
  %205 = load i32, i32* %15, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %226

207:                                              ; preds = %204
  %208 = load i32, i32* %15, align 4
  store i32 %208, i32* %14, align 4
  br label %209

209:                                              ; preds = %215, %207
  %210 = load i32, i32* %14, align 4
  %211 = icmp slt i32 %210, 9
  br i1 %211, label %212, label %218

212:                                              ; preds = %209
  %213 = load i32, i32* %16, align 4
  %214 = sdiv i32 %213, 10
  store i32 %214, i32* %16, align 4
  br label %215

215:                                              ; preds = %212
  %216 = load i32, i32* %14, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %14, align 4
  br label %209

218:                                              ; preds = %209
  %219 = load i8*, i8** %8, align 8
  %220 = load i32, i32* %15, align 4
  %221 = load i32, i32* %16, align 4
  %222 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %219, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %220, i32 %221)
  %223 = load i8*, i8** %8, align 8
  %224 = sext i32 %222 to i64
  %225 = getelementptr inbounds i8, i8* %223, i64 %224
  store i8* %225, i8** %8, align 8
  br label %226

226:                                              ; preds = %218, %204
  %227 = load %struct.__printf_io*, %struct.__printf_io** %4, align 8
  %228 = load %struct.printf_info*, %struct.printf_info** %5, align 8
  %229 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0
  %230 = load i8*, i8** %8, align 8
  %231 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0
  %232 = ptrtoint i8* %230 to i64
  %233 = ptrtoint i8* %231 to i64
  %234 = sub i64 %232, %233
  %235 = trunc i64 %234 to i32
  %236 = call i32 @__printf_out(%struct.__printf_io* %227, %struct.printf_info* %228, i8* %229, i32 %235)
  store i32 %236, i32* %17, align 4
  %237 = load %struct.__printf_io*, %struct.__printf_io** %4, align 8
  %238 = call i32 @__printf_flush(%struct.__printf_io* %237)
  %239 = load i32, i32* %17, align 4
  ret i32 %239
}

declare dso_local i32 @sprintf(i8*, i8*, i32, ...) #1

declare dso_local i32 @__printf_out(%struct.__printf_io*, %struct.printf_info*, i8*, i32) #1

declare dso_local i32 @__printf_flush(%struct.__printf_io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

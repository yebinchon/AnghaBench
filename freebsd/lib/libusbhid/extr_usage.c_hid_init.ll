; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libusbhid/extr_usage.c_hid_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libusbhid/extr_usage.c_hid_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usage_page = type { i64, i64, i8*, i32, %struct.usage_page* }

@_PATH_HIDTABLE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c" * %[^\0A]\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c" 0x%x %[^\0A]\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c" %d %[^\0A]\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"file %s, line %d, syntax error\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"strdup\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"realloc\00", align 1
@npages = common dso_local global i32 0, align 4
@npagesmax = common dso_local global i32 0, align 4
@pages = common dso_local global %struct.usage_page* null, align 8
@.str.8 = private unnamed_addr constant [6 x i8] c"alloc\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hid_init(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca [100 x i8], align 16
  %5 = alloca [100 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.usage_page*, align 8
  store i8* %0, i8** %2, align 8
  store %struct.usage_page* null, %struct.usage_page** %10, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i8*, i8** @_PATH_HIDTABLE, align 8
  store i8* %14, i8** %2, align 8
  br label %15

15:                                               ; preds = %13, %1
  %16 = load i8*, i8** %2, align 8
  %17 = call i32* @fopen(i8* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %17, i32** %3, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i8*, i8** %2, align 8
  %22 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %21)
  br label %23

23:                                               ; preds = %20, %15
  store i32 1, i32* %9, align 4
  br label %24

24:                                               ; preds = %239, %23
  %25 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  %26 = load i32*, i32** %3, align 8
  %27 = call i32* @fgets(i8* %25, i32 100, i32* %26)
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %242

30:                                               ; preds = %24
  %31 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  %32 = load i8, i8* %31, align 16
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 35
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %239

36:                                               ; preds = %30
  %37 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  store i8* %37, i8** %6, align 8
  br label %38

38:                                               ; preds = %51, %36
  %39 = load i8*, i8** %6, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load i8*, i8** %6, align 8
  %45 = load i8, i8* %44, align 1
  %46 = call i64 @isspace(i8 signext %45)
  %47 = icmp ne i64 %46, 0
  br label %48

48:                                               ; preds = %43, %38
  %49 = phi i1 [ false, %38 ], [ %47, %43 ]
  br i1 %49, label %50, label %54

50:                                               ; preds = %48
  br label %51

51:                                               ; preds = %50
  %52 = load i8*, i8** %6, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %6, align 8
  br label %38

54:                                               ; preds = %48
  %55 = load i8*, i8** %6, align 8
  %56 = load i8, i8* %55, align 1
  %57 = icmp ne i8 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %54
  br label %239

59:                                               ; preds = %54
  %60 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  %61 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %62 = call i32 (i8*, i8*, ...) @sscanf(i8* %60, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %61)
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  store i32 -1, i32* %8, align 4
  br label %80

65:                                               ; preds = %59
  %66 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  %67 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %68 = call i32 (i8*, i8*, ...) @sscanf(i8* %66, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32* %8, i8* %67)
  %69 = icmp ne i32 %68, 2
  br i1 %69, label %70, label %79

70:                                               ; preds = %65
  %71 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  %72 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %73 = call i32 (i8*, i8*, ...) @sscanf(i8* %71, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32* %8, i8* %72)
  %74 = icmp ne i32 %73, 2
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = load i8*, i8** %2, align 8
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @errx(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i8* %76, i32 %77)
  br label %79

79:                                               ; preds = %75, %70, %65
  br label %80

80:                                               ; preds = %79, %64
  %81 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  store i8* %81, i8** %6, align 8
  br label %82

82:                                               ; preds = %99, %80
  %83 = load i8*, i8** %6, align 8
  %84 = load i8, i8* %83, align 1
  %85 = icmp ne i8 %84, 0
  br i1 %85, label %86, label %102

86:                                               ; preds = %82
  %87 = load i8*, i8** %6, align 8
  %88 = load i8, i8* %87, align 1
  %89 = call i64 @isspace(i8 signext %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %86
  %92 = load i8*, i8** %6, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 46
  br i1 %95, label %96, label %98

96:                                               ; preds = %91, %86
  %97 = load i8*, i8** %6, align 8
  store i8 95, i8* %97, align 1
  br label %98

98:                                               ; preds = %96, %91
  br label %99

99:                                               ; preds = %98
  %100 = load i8*, i8** %6, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %6, align 8
  br label %82

102:                                              ; preds = %82
  %103 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %104 = call i8* @strdup(i8* %103)
  store i8* %104, i8** %7, align 8
  %105 = load i8*, i8** %7, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %109, label %107

107:                                              ; preds = %102
  %108 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  br label %109

109:                                              ; preds = %107, %102
  %110 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  %111 = load i8, i8* %110, align 16
  %112 = call i64 @isspace(i8 signext %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %176

114:                                              ; preds = %109
  %115 = load %struct.usage_page*, %struct.usage_page** %10, align 8
  %116 = icmp ne %struct.usage_page* %115, null
  br i1 %116, label %121, label %117

117:                                              ; preds = %114
  %118 = load i8*, i8** %2, align 8
  %119 = load i32, i32* %9, align 4
  %120 = call i32 @errx(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i8* %118, i32 %119)
  br label %121

121:                                              ; preds = %117, %114
  %122 = load %struct.usage_page*, %struct.usage_page** %10, align 8
  %123 = getelementptr inbounds %struct.usage_page, %struct.usage_page* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.usage_page*, %struct.usage_page** %10, align 8
  %126 = getelementptr inbounds %struct.usage_page, %struct.usage_page* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = icmp uge i64 %124, %127
  br i1 %128, label %129, label %153

129:                                              ; preds = %121
  %130 = load %struct.usage_page*, %struct.usage_page** %10, align 8
  %131 = getelementptr inbounds %struct.usage_page, %struct.usage_page* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = add i64 %132, 10
  store i64 %133, i64* %131, align 8
  %134 = load %struct.usage_page*, %struct.usage_page** %10, align 8
  %135 = getelementptr inbounds %struct.usage_page, %struct.usage_page* %134, i32 0, i32 4
  %136 = load %struct.usage_page*, %struct.usage_page** %135, align 8
  %137 = load %struct.usage_page*, %struct.usage_page** %10, align 8
  %138 = getelementptr inbounds %struct.usage_page, %struct.usage_page* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = mul i64 %139, 4
  %141 = trunc i64 %140 to i32
  %142 = call i8* @realloc(%struct.usage_page* %136, i32 %141)
  %143 = bitcast i8* %142 to %struct.usage_page*
  %144 = load %struct.usage_page*, %struct.usage_page** %10, align 8
  %145 = getelementptr inbounds %struct.usage_page, %struct.usage_page* %144, i32 0, i32 4
  store %struct.usage_page* %143, %struct.usage_page** %145, align 8
  %146 = load %struct.usage_page*, %struct.usage_page** %10, align 8
  %147 = getelementptr inbounds %struct.usage_page, %struct.usage_page* %146, i32 0, i32 4
  %148 = load %struct.usage_page*, %struct.usage_page** %147, align 8
  %149 = icmp ne %struct.usage_page* %148, null
  br i1 %149, label %152, label %150

150:                                              ; preds = %129
  %151 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  br label %152

152:                                              ; preds = %150, %129
  br label %153

153:                                              ; preds = %152, %121
  %154 = load i8*, i8** %7, align 8
  %155 = load %struct.usage_page*, %struct.usage_page** %10, align 8
  %156 = getelementptr inbounds %struct.usage_page, %struct.usage_page* %155, i32 0, i32 4
  %157 = load %struct.usage_page*, %struct.usage_page** %156, align 8
  %158 = load %struct.usage_page*, %struct.usage_page** %10, align 8
  %159 = getelementptr inbounds %struct.usage_page, %struct.usage_page* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = getelementptr inbounds %struct.usage_page, %struct.usage_page* %157, i64 %160
  %162 = getelementptr inbounds %struct.usage_page, %struct.usage_page* %161, i32 0, i32 2
  store i8* %154, i8** %162, align 8
  %163 = load i32, i32* %8, align 4
  %164 = load %struct.usage_page*, %struct.usage_page** %10, align 8
  %165 = getelementptr inbounds %struct.usage_page, %struct.usage_page* %164, i32 0, i32 4
  %166 = load %struct.usage_page*, %struct.usage_page** %165, align 8
  %167 = load %struct.usage_page*, %struct.usage_page** %10, align 8
  %168 = getelementptr inbounds %struct.usage_page, %struct.usage_page* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = getelementptr inbounds %struct.usage_page, %struct.usage_page* %166, i64 %169
  %171 = getelementptr inbounds %struct.usage_page, %struct.usage_page* %170, i32 0, i32 3
  store i32 %163, i32* %171, align 8
  %172 = load %struct.usage_page*, %struct.usage_page** %10, align 8
  %173 = getelementptr inbounds %struct.usage_page, %struct.usage_page* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = add i64 %174, 1
  store i64 %175, i64* %173, align 8
  br label %238

176:                                              ; preds = %109
  %177 = load i32, i32* @npages, align 4
  %178 = load i32, i32* @npagesmax, align 4
  %179 = icmp sge i32 %177, %178
  br i1 %179, label %180, label %206

180:                                              ; preds = %176
  %181 = load %struct.usage_page*, %struct.usage_page** @pages, align 8
  %182 = icmp eq %struct.usage_page* %181, null
  br i1 %182, label %183, label %190

183:                                              ; preds = %180
  store i32 5, i32* @npagesmax, align 4
  %184 = load i32, i32* @npagesmax, align 4
  %185 = sext i32 %184 to i64
  %186 = mul i64 %185, 40
  %187 = trunc i64 %186 to i32
  %188 = call i8* @malloc(i32 %187)
  %189 = bitcast i8* %188 to %struct.usage_page*
  store %struct.usage_page* %189, %struct.usage_page** @pages, align 8
  br label %200

190:                                              ; preds = %180
  %191 = load i32, i32* @npagesmax, align 4
  %192 = add nsw i32 %191, 5
  store i32 %192, i32* @npagesmax, align 4
  %193 = load %struct.usage_page*, %struct.usage_page** @pages, align 8
  %194 = load i32, i32* @npagesmax, align 4
  %195 = sext i32 %194 to i64
  %196 = mul i64 %195, 40
  %197 = trunc i64 %196 to i32
  %198 = call i8* @realloc(%struct.usage_page* %193, i32 %197)
  %199 = bitcast i8* %198 to %struct.usage_page*
  store %struct.usage_page* %199, %struct.usage_page** @pages, align 8
  br label %200

200:                                              ; preds = %190, %183
  %201 = load %struct.usage_page*, %struct.usage_page** @pages, align 8
  %202 = icmp ne %struct.usage_page* %201, null
  br i1 %202, label %205, label %203

203:                                              ; preds = %200
  %204 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  br label %205

205:                                              ; preds = %203, %200
  br label %206

206:                                              ; preds = %205, %176
  %207 = load %struct.usage_page*, %struct.usage_page** @pages, align 8
  %208 = load i32, i32* @npages, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* @npages, align 4
  %210 = sext i32 %208 to i64
  %211 = getelementptr inbounds %struct.usage_page, %struct.usage_page* %207, i64 %210
  store %struct.usage_page* %211, %struct.usage_page** %10, align 8
  %212 = load i8*, i8** %7, align 8
  %213 = load %struct.usage_page*, %struct.usage_page** %10, align 8
  %214 = getelementptr inbounds %struct.usage_page, %struct.usage_page* %213, i32 0, i32 2
  store i8* %212, i8** %214, align 8
  %215 = load i32, i32* %8, align 4
  %216 = load %struct.usage_page*, %struct.usage_page** %10, align 8
  %217 = getelementptr inbounds %struct.usage_page, %struct.usage_page* %216, i32 0, i32 3
  store i32 %215, i32* %217, align 8
  %218 = load %struct.usage_page*, %struct.usage_page** %10, align 8
  %219 = getelementptr inbounds %struct.usage_page, %struct.usage_page* %218, i32 0, i32 0
  store i64 0, i64* %219, align 8
  %220 = load %struct.usage_page*, %struct.usage_page** %10, align 8
  %221 = getelementptr inbounds %struct.usage_page, %struct.usage_page* %220, i32 0, i32 1
  store i64 10, i64* %221, align 8
  %222 = load %struct.usage_page*, %struct.usage_page** %10, align 8
  %223 = getelementptr inbounds %struct.usage_page, %struct.usage_page* %222, i32 0, i32 1
  %224 = load i64, i64* %223, align 8
  %225 = mul i64 %224, 4
  %226 = trunc i64 %225 to i32
  %227 = call i8* @malloc(i32 %226)
  %228 = bitcast i8* %227 to %struct.usage_page*
  %229 = load %struct.usage_page*, %struct.usage_page** %10, align 8
  %230 = getelementptr inbounds %struct.usage_page, %struct.usage_page* %229, i32 0, i32 4
  store %struct.usage_page* %228, %struct.usage_page** %230, align 8
  %231 = load %struct.usage_page*, %struct.usage_page** %10, align 8
  %232 = getelementptr inbounds %struct.usage_page, %struct.usage_page* %231, i32 0, i32 4
  %233 = load %struct.usage_page*, %struct.usage_page** %232, align 8
  %234 = icmp ne %struct.usage_page* %233, null
  br i1 %234, label %237, label %235

235:                                              ; preds = %206
  %236 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  br label %237

237:                                              ; preds = %235, %206
  br label %238

238:                                              ; preds = %237, %153
  br label %239

239:                                              ; preds = %238, %58, %35
  %240 = load i32, i32* %9, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %9, align 4
  br label %24

242:                                              ; preds = %29
  %243 = load i32*, i32** %3, align 8
  %244 = call i32 @fclose(i32* %243)
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @sscanf(i8*, i8*, ...) #1

declare dso_local i32 @errx(i32, i8*, i8*, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @realloc(%struct.usage_page*, i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

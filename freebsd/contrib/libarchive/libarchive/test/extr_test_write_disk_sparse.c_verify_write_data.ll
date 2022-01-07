; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_write_disk_sparse.c_verify_write_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_write_disk_sparse.c_verify_write_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.stat = type { i64 }
%struct.archive_entry = type { i32 }

@verify_write_data.data = internal constant [27 x i8] c"abcdefghijklmnopqrstuvwxyz\00", align 16
@.str = private unnamed_addr constant [7 x i8] c"sparse\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"non-sparse\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"test_write_data\00", align 1
@AE_IFREG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"offset: %d, %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.archive*, i32)* @verify_write_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @verify_write_data(%struct.archive* %0, i32 %1) #0 {
  %3 = alloca %struct.archive*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.stat, align 8
  %6 = alloca %struct.archive_entry*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  store %struct.archive* %0, %struct.archive** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 65536, i64* %7, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0)
  store i8* %15, i8** %10, align 8
  %16 = load i64, i64* %7, align 8
  %17 = call i8* @malloc(i64 %16)
  store i8* %17, i8** %8, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = icmp ne i8* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load i8*, i8** %8, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %254

25:                                               ; preds = %2
  %26 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %26, %struct.archive_entry** %6, align 8
  %27 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %28 = icmp ne %struct.archive_entry* %27, null
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %32 = load i64, i64* %7, align 8
  %33 = mul i64 8, %32
  %34 = trunc i64 %33 to i32
  %35 = call i32 @archive_entry_set_size(%struct.archive_entry* %31, i32 %34)
  %36 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %37 = call i32 @archive_entry_set_pathname(%struct.archive_entry* %36, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %38 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %39 = load i32, i32* @AE_IFREG, align 4
  %40 = or i32 %39, 493
  %41 = call i32 @archive_entry_set_mode(%struct.archive_entry* %38, i32 %40)
  %42 = load %struct.archive*, %struct.archive** %3, align 8
  %43 = load %struct.archive*, %struct.archive** %3, align 8
  %44 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %45 = call i32 @archive_write_header(%struct.archive* %43, %struct.archive_entry* %44)
  %46 = call i32 @assertEqualIntA(%struct.archive* %42, i32 0, i32 %45)
  %47 = load i8*, i8** %8, align 8
  %48 = load i64, i64* %7, align 8
  %49 = call i32 @memset(i8* %47, i32 0, i64 %48)
  %50 = load i8*, i8** %8, align 8
  %51 = call i32 @memcpy(i8* %50, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @verify_write_data.data, i64 0, i64 0), i32 27)
  %52 = load i8*, i8** %10, align 8
  %53 = call i32 (i8*, ...) @failure(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %52)
  %54 = load i64, i64* %7, align 8
  %55 = load %struct.archive*, %struct.archive** %3, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = load i64, i64* %7, align 8
  %58 = call signext i8 @archive_write_data(%struct.archive* %55, i8* %56, i64 %57)
  %59 = call i32 @assertEqualInt(i64 %54, i8 signext %58)
  %60 = load i8*, i8** %8, align 8
  %61 = load i64, i64* %7, align 8
  %62 = call i32 @memset(i8* %60, i32 0, i64 %61)
  %63 = load i8*, i8** %8, align 8
  %64 = load i64, i64* %7, align 8
  %65 = udiv i64 %64, 2
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = getelementptr inbounds i8, i8* %66, i64 -3
  %68 = call i32 @memcpy(i8* %67, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @verify_write_data.data, i64 0, i64 0), i32 27)
  %69 = load i8*, i8** %10, align 8
  %70 = call i32 (i8*, ...) @failure(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %69)
  %71 = load i64, i64* %7, align 8
  %72 = load %struct.archive*, %struct.archive** %3, align 8
  %73 = load i8*, i8** %8, align 8
  %74 = load i64, i64* %7, align 8
  %75 = call signext i8 @archive_write_data(%struct.archive* %72, i8* %73, i64 %74)
  %76 = call i32 @assertEqualInt(i64 %71, i8 signext %75)
  %77 = load i8*, i8** %8, align 8
  %78 = load i64, i64* %7, align 8
  %79 = call i32 @memset(i8* %77, i32 0, i64 %78)
  %80 = load i8*, i8** %8, align 8
  %81 = load i64, i64* %7, align 8
  %82 = getelementptr inbounds i8, i8* %80, i64 %81
  %83 = getelementptr inbounds i8, i8* %82, i64 -27
  %84 = call i32 @memcpy(i8* %83, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @verify_write_data.data, i64 0, i64 0), i32 27)
  %85 = load i8*, i8** %10, align 8
  %86 = call i32 (i8*, ...) @failure(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %85)
  %87 = load i64, i64* %7, align 8
  %88 = load %struct.archive*, %struct.archive** %3, align 8
  %89 = load i8*, i8** %8, align 8
  %90 = load i64, i64* %7, align 8
  %91 = call signext i8 @archive_write_data(%struct.archive* %88, i8* %89, i64 %90)
  %92 = call i32 @assertEqualInt(i64 %87, i8 signext %91)
  %93 = load i8*, i8** %10, align 8
  %94 = call i32 (i8*, ...) @failure(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %93)
  %95 = load %struct.archive*, %struct.archive** %3, align 8
  %96 = load %struct.archive*, %struct.archive** %3, align 8
  %97 = call i32 @archive_write_finish_entry(%struct.archive* %96)
  %98 = call i32 @assertEqualIntA(%struct.archive* %95, i32 0, i32 %97)
  %99 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %100 = call i32 @archive_entry_pathname(%struct.archive_entry* %99)
  %101 = call i64 @stat(i32 %100, %struct.stat* %5)
  %102 = icmp eq i64 0, %101
  %103 = zext i1 %102 to i32
  %104 = call i32 @assert(i32 %103)
  %105 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* %7, align 8
  %108 = mul i64 8, %107
  %109 = trunc i64 %108 to i8
  %110 = call i32 @assertEqualInt(i64 %106, i8 signext %109)
  %111 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %112 = call i32 @archive_entry_pathname(%struct.archive_entry* %111)
  %113 = call i32* @fopen(i32 %112, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store i32* %113, i32** %11, align 8
  %114 = load i32*, i32** %11, align 8
  %115 = icmp ne i32* %114, null
  %116 = zext i1 %115 to i32
  %117 = call i32 @assert(i32 %116)
  %118 = load i32*, i32** %11, align 8
  %119 = icmp eq i32* %118, null
  br i1 %119, label %120, label %123

120:                                              ; preds = %25
  %121 = load i8*, i8** %8, align 8
  %122 = call i32 @free(i8* %121)
  br label %254

123:                                              ; preds = %25
  %124 = load i64, i64* %7, align 8
  %125 = load i8*, i8** %8, align 8
  %126 = load i64, i64* %7, align 8
  %127 = load i32*, i32** %11, align 8
  %128 = call signext i8 @fread(i8* %125, i32 1, i64 %126, i32* %127)
  %129 = call i32 @assertEqualInt(i64 %124, i8 signext %128)
  %130 = load i8*, i8** %10, align 8
  %131 = call i32 (i8*, ...) @failure(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %130)
  %132 = load i8*, i8** %8, align 8
  %133 = call i32 @assertEqualMem(i8* %132, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @verify_write_data.data, i64 0, i64 0), i32 27)
  %134 = load i8*, i8** %8, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 27
  store i8* %135, i8** %9, align 8
  br label %136

136:                                              ; preds = %157, %123
  %137 = load i8*, i8** %9, align 8
  %138 = load i8*, i8** %8, align 8
  %139 = load i64, i64* %7, align 8
  %140 = getelementptr inbounds i8, i8* %138, i64 %139
  %141 = icmp ult i8* %137, %140
  br i1 %141, label %142, label %160

142:                                              ; preds = %136
  %143 = load i8*, i8** %9, align 8
  %144 = load i8*, i8** %8, align 8
  %145 = ptrtoint i8* %143 to i64
  %146 = ptrtoint i8* %144 to i64
  %147 = sub i64 %145, %146
  %148 = trunc i64 %147 to i32
  %149 = load i8*, i8** %10, align 8
  %150 = call i32 (i8*, ...) @failure(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %148, i8* %149)
  %151 = load i8*, i8** %9, align 8
  %152 = load i8, i8* %151, align 1
  %153 = call i32 @assertEqualInt(i64 0, i8 signext %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %156, label %155

155:                                              ; preds = %142
  br label %160

156:                                              ; preds = %142
  br label %157

157:                                              ; preds = %156
  %158 = load i8*, i8** %9, align 8
  %159 = getelementptr inbounds i8, i8* %158, i32 1
  store i8* %159, i8** %9, align 8
  br label %136

160:                                              ; preds = %155, %136
  %161 = load i64, i64* %7, align 8
  %162 = load i8*, i8** %8, align 8
  %163 = load i64, i64* %7, align 8
  %164 = load i32*, i32** %11, align 8
  %165 = call signext i8 @fread(i8* %162, i32 1, i64 %163, i32* %164)
  %166 = call i32 @assertEqualInt(i64 %161, i8 signext %165)
  %167 = load i8*, i8** %8, align 8
  store i8* %167, i8** %9, align 8
  br label %168

168:                                              ; preds = %203, %160
  %169 = load i8*, i8** %9, align 8
  %170 = load i8*, i8** %8, align 8
  %171 = load i64, i64* %7, align 8
  %172 = getelementptr inbounds i8, i8* %170, i64 %171
  %173 = icmp ult i8* %169, %172
  br i1 %173, label %174, label %206

174:                                              ; preds = %168
  %175 = load i8*, i8** %9, align 8
  %176 = load i8*, i8** %8, align 8
  %177 = ptrtoint i8* %175 to i64
  %178 = ptrtoint i8* %176 to i64
  %179 = sub i64 %177, %178
  %180 = trunc i64 %179 to i32
  %181 = load i8*, i8** %10, align 8
  %182 = call i32 (i8*, ...) @failure(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %180, i8* %181)
  %183 = load i8*, i8** %9, align 8
  %184 = load i8*, i8** %8, align 8
  %185 = load i64, i64* %7, align 8
  %186 = udiv i64 %185, 2
  %187 = getelementptr inbounds i8, i8* %184, i64 %186
  %188 = getelementptr inbounds i8, i8* %187, i64 -3
  %189 = icmp eq i8* %183, %188
  br i1 %189, label %190, label %195

190:                                              ; preds = %174
  %191 = load i8*, i8** %9, align 8
  %192 = call i32 @assertEqualMem(i8* %191, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @verify_write_data.data, i64 0, i64 0), i32 27)
  %193 = load i8*, i8** %9, align 8
  %194 = getelementptr inbounds i8, i8* %193, i64 27
  store i8* %194, i8** %9, align 8
  br label %202

195:                                              ; preds = %174
  %196 = load i8*, i8** %9, align 8
  %197 = load i8, i8* %196, align 1
  %198 = call i32 @assertEqualInt(i64 0, i8 signext %197)
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %201, label %200

200:                                              ; preds = %195
  br label %206

201:                                              ; preds = %195
  br label %202

202:                                              ; preds = %201, %190
  br label %203

203:                                              ; preds = %202
  %204 = load i8*, i8** %9, align 8
  %205 = getelementptr inbounds i8, i8* %204, i32 1
  store i8* %205, i8** %9, align 8
  br label %168

206:                                              ; preds = %200, %168
  %207 = load i64, i64* %7, align 8
  %208 = load i8*, i8** %8, align 8
  %209 = load i64, i64* %7, align 8
  %210 = load i32*, i32** %11, align 8
  %211 = call signext i8 @fread(i8* %208, i32 1, i64 %209, i32* %210)
  %212 = call i32 @assertEqualInt(i64 %207, i8 signext %211)
  %213 = load i8*, i8** %8, align 8
  store i8* %213, i8** %9, align 8
  br label %214

214:                                              ; preds = %236, %206
  %215 = load i8*, i8** %9, align 8
  %216 = load i8*, i8** %8, align 8
  %217 = load i64, i64* %7, align 8
  %218 = getelementptr inbounds i8, i8* %216, i64 %217
  %219 = getelementptr inbounds i8, i8* %218, i64 -27
  %220 = icmp ult i8* %215, %219
  br i1 %220, label %221, label %239

221:                                              ; preds = %214
  %222 = load i8*, i8** %9, align 8
  %223 = load i8*, i8** %8, align 8
  %224 = ptrtoint i8* %222 to i64
  %225 = ptrtoint i8* %223 to i64
  %226 = sub i64 %224, %225
  %227 = trunc i64 %226 to i32
  %228 = load i8*, i8** %10, align 8
  %229 = call i32 (i8*, ...) @failure(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %227, i8* %228)
  %230 = load i8*, i8** %9, align 8
  %231 = load i8, i8* %230, align 1
  %232 = call i32 @assertEqualInt(i64 0, i8 signext %231)
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %235, label %234

234:                                              ; preds = %221
  br label %239

235:                                              ; preds = %221
  br label %236

236:                                              ; preds = %235
  %237 = load i8*, i8** %9, align 8
  %238 = getelementptr inbounds i8, i8* %237, i32 1
  store i8* %238, i8** %9, align 8
  br label %214

239:                                              ; preds = %234, %214
  %240 = load i8*, i8** %10, align 8
  %241 = call i32 (i8*, ...) @failure(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %240)
  %242 = load i8*, i8** %8, align 8
  %243 = load i64, i64* %7, align 8
  %244 = getelementptr inbounds i8, i8* %242, i64 %243
  %245 = getelementptr inbounds i8, i8* %244, i64 -27
  %246 = call i32 @assertEqualMem(i8* %245, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @verify_write_data.data, i64 0, i64 0), i32 27)
  %247 = load i32*, i32** %11, align 8
  %248 = call signext i8 @fclose(i32* %247)
  %249 = call i32 @assertEqualInt(i64 0, i8 signext %248)
  %250 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %251 = call i32 @archive_entry_free(%struct.archive_entry* %250)
  %252 = load i8*, i8** %8, align 8
  %253 = call i32 @free(i8* %252)
  br label %254

254:                                              ; preds = %239, %120, %24
  ret void
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.archive_entry* @archive_entry_new(...) #1

declare dso_local i32 @archive_entry_set_size(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_entry_set_pathname(%struct.archive_entry*, i8*) #1

declare dso_local i32 @archive_entry_set_mode(%struct.archive_entry*, i32) #1

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #1

declare dso_local i32 @archive_write_header(%struct.archive*, %struct.archive_entry*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @failure(i8*, ...) #1

declare dso_local i32 @assertEqualInt(i64, i8 signext) #1

declare dso_local signext i8 @archive_write_data(%struct.archive*, i8*, i64) #1

declare dso_local i32 @archive_write_finish_entry(%struct.archive*) #1

declare dso_local i64 @stat(i32, %struct.stat*) #1

declare dso_local i32 @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local signext i8 @fread(i8*, i32, i64, i32*) #1

declare dso_local i32 @assertEqualMem(i8*, i8*, i32) #1

declare dso_local signext i8 @fclose(i32*) #1

declare dso_local i32 @archive_entry_free(%struct.archive_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

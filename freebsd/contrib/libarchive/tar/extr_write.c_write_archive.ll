; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/tar/extr_write.c_write_archive.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/tar/extr_write.c_write_archive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.bsdtar = type { i32, i32, i8**, i32, i32, %struct.archive*, i32*, i32*, i32*, i32, i32*, i64 }
%struct.archive_entry = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"cannot allocate memory\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"cannot create link resolver\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Cannot create read_disk object\00", align 1
@excluded_callback = common dso_local global i32* null, align 8
@metadata_filter = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Missing argument for -C\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Meaningless argument for -C: ''\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@OPTFLAG_TOTALS = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"Total bytes written: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.archive*, %struct.bsdtar*)* @write_archive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_archive(%struct.archive* %0, %struct.bsdtar* %1) #0 {
  %3 = alloca %struct.archive*, align 8
  %4 = alloca %struct.bsdtar*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.archive_entry*, align 8
  %7 = alloca %struct.archive_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.archive_entry*, align 8
  %10 = alloca %struct.archive*, align 8
  store %struct.archive* %0, %struct.archive** %3, align 8
  store %struct.bsdtar* %1, %struct.bsdtar** %4, align 8
  %11 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %12 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %11, i32 0, i32 0
  store i32 65536, i32* %12, align 8
  br label %13

13:                                               ; preds = %22, %2
  %14 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %15 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %19 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %18, i32 0, i32 11
  %20 = load i64, i64* %19, align 8
  %21 = icmp ult i64 %17, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %13
  %23 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %24 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = mul nsw i32 %25, 2
  store i32 %26, i32* %24, align 8
  br label %13

27:                                               ; preds = %13
  %28 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %29 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, 16384
  store i32 %31, i32* %29, align 8
  %32 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %33 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32* @malloc(i32 %34)
  %36 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %37 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %36, i32 0, i32 7
  store i32* %35, i32** %37, align 8
  %38 = icmp eq i32* %35, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %27
  %40 = call i32 @lafe_errc(i32 1, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %27
  %42 = call i32* (...) @archive_entry_linkresolver_new()
  %43 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %44 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %43, i32 0, i32 6
  store i32* %42, i32** %44, align 8
  %45 = icmp eq i32* %42, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = call i32 @lafe_errc(i32 1, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %41
  %49 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %50 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %49, i32 0, i32 6
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.archive*, %struct.archive** %3, align 8
  %53 = call i32 @archive_format(%struct.archive* %52)
  %54 = call i32 @archive_entry_linkresolver_set_strategy(i32* %51, i32 %53)
  %55 = call %struct.archive* (...) @archive_read_disk_new()
  %56 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %57 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %56, i32 0, i32 5
  store %struct.archive* %55, %struct.archive** %57, align 8
  %58 = icmp eq %struct.archive* %55, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %48
  %60 = call i32 @lafe_errc(i32 1, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %48
  %62 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %63 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  switch i32 %64, label %75 [
    i32 72, label %65
    i32 76, label %70
  ]

65:                                               ; preds = %61
  %66 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %67 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %66, i32 0, i32 5
  %68 = load %struct.archive*, %struct.archive** %67, align 8
  %69 = call i32 @archive_read_disk_set_symlink_hybrid(%struct.archive* %68)
  br label %80

70:                                               ; preds = %61
  %71 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %72 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %71, i32 0, i32 5
  %73 = load %struct.archive*, %struct.archive** %72, align 8
  %74 = call i32 @archive_read_disk_set_symlink_logical(%struct.archive* %73)
  br label %80

75:                                               ; preds = %61
  %76 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %77 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %76, i32 0, i32 5
  %78 = load %struct.archive*, %struct.archive** %77, align 8
  %79 = call i32 @archive_read_disk_set_symlink_physical(%struct.archive* %78)
  br label %80

80:                                               ; preds = %75, %70, %65
  %81 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %82 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %81, i32 0, i32 5
  %83 = load %struct.archive*, %struct.archive** %82, align 8
  %84 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %85 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %84, i32 0, i32 10
  %86 = load i32*, i32** %85, align 8
  %87 = load i32*, i32** @excluded_callback, align 8
  %88 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %89 = call i32 @archive_read_disk_set_matching(%struct.archive* %83, i32* %86, i32* %87, %struct.bsdtar* %88)
  %90 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %91 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %90, i32 0, i32 5
  %92 = load %struct.archive*, %struct.archive** %91, align 8
  %93 = load i32*, i32** @metadata_filter, align 8
  %94 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %95 = call i32 @archive_read_disk_set_metadata_filter_callback(%struct.archive* %92, i32* %93, %struct.bsdtar* %94)
  %96 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %97 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %96, i32 0, i32 5
  %98 = load %struct.archive*, %struct.archive** %97, align 8
  %99 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %100 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %99, i32 0, i32 9
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @archive_read_disk_set_behavior(%struct.archive* %98, i32 %101)
  %103 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %104 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %103, i32 0, i32 5
  %105 = load %struct.archive*, %struct.archive** %104, align 8
  %106 = call i32 @archive_read_disk_set_standard_lookup(%struct.archive* %105)
  %107 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %108 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %107, i32 0, i32 8
  %109 = load i32*, i32** %108, align 8
  %110 = icmp ne i32* %109, null
  br i1 %110, label %111, label %115

111:                                              ; preds = %80
  %112 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %113 = load %struct.archive*, %struct.archive** %3, align 8
  %114 = call i32 @archive_names_from_file(%struct.bsdtar* %112, %struct.archive* %113)
  br label %115

115:                                              ; preds = %111, %80
  br label %116

116:                                              ; preds = %202, %115
  %117 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %118 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %117, i32 0, i32 2
  %119 = load i8**, i8*** %118, align 8
  %120 = load i8*, i8** %119, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %122, label %207

122:                                              ; preds = %116
  %123 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %124 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %123, i32 0, i32 2
  %125 = load i8**, i8*** %124, align 8
  %126 = load i8*, i8** %125, align 8
  store i8* %126, i8** %5, align 8
  %127 = load i8*, i8** %5, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 0
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp eq i32 %130, 45
  br i1 %131, label %132, label %174

132:                                              ; preds = %122
  %133 = load i8*, i8** %5, align 8
  %134 = getelementptr inbounds i8, i8* %133, i64 1
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp eq i32 %136, 67
  br i1 %137, label %138, label %174

138:                                              ; preds = %132
  %139 = load i8*, i8** %5, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 2
  store i8* %140, i8** %5, align 8
  %141 = load i8*, i8** %5, align 8
  %142 = load i8, i8* %141, align 1
  %143 = sext i8 %142 to i32
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %170

145:                                              ; preds = %138
  %146 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %147 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %146, i32 0, i32 2
  %148 = load i8**, i8*** %147, align 8
  %149 = getelementptr inbounds i8*, i8** %148, i32 1
  store i8** %149, i8*** %147, align 8
  %150 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %151 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %150, i32 0, i32 2
  %152 = load i8**, i8*** %151, align 8
  %153 = load i8*, i8** %152, align 8
  store i8* %153, i8** %5, align 8
  %154 = load i8*, i8** %5, align 8
  %155 = icmp eq i8* %154, null
  br i1 %155, label %156, label %160

156:                                              ; preds = %145
  %157 = call i32 (i32, i8*, ...) @lafe_warnc(i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %158 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %159 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %158, i32 0, i32 3
  store i32 1, i32* %159, align 8
  br label %292

160:                                              ; preds = %145
  %161 = load i8*, i8** %5, align 8
  %162 = load i8, i8* %161, align 1
  %163 = sext i8 %162 to i32
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %160
  %166 = call i32 (i32, i8*, ...) @lafe_warnc(i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %167 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %168 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %167, i32 0, i32 3
  store i32 1, i32* %168, align 8
  br label %292

169:                                              ; preds = %160
  br label %170

170:                                              ; preds = %169, %138
  %171 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %172 = load i8*, i8** %5, align 8
  %173 = call i32 @set_chdir(%struct.bsdtar* %171, i8* %172)
  br label %202

174:                                              ; preds = %132, %122
  %175 = load i8*, i8** %5, align 8
  %176 = load i8, i8* %175, align 1
  %177 = sext i8 %176 to i32
  %178 = icmp ne i32 %177, 47
  br i1 %178, label %179, label %182

179:                                              ; preds = %174
  %180 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %181 = call i32 @do_chdir(%struct.bsdtar* %180)
  br label %182

182:                                              ; preds = %179, %174
  %183 = load i8*, i8** %5, align 8
  %184 = load i8, i8* %183, align 1
  %185 = sext i8 %184 to i32
  %186 = icmp eq i32 %185, 64
  br i1 %186, label %187, label %196

187:                                              ; preds = %182
  %188 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %189 = load %struct.archive*, %struct.archive** %3, align 8
  %190 = load i8*, i8** %5, align 8
  %191 = getelementptr inbounds i8, i8* %190, i64 1
  %192 = call i64 @append_archive_filename(%struct.bsdtar* %188, %struct.archive* %189, i8* %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %187
  br label %207

195:                                              ; preds = %187
  br label %201

196:                                              ; preds = %182
  %197 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %198 = load %struct.archive*, %struct.archive** %3, align 8
  %199 = load i8*, i8** %5, align 8
  %200 = call i32 @write_hierarchy(%struct.bsdtar* %197, %struct.archive* %198, i8* %199)
  br label %201

201:                                              ; preds = %196, %195
  br label %202

202:                                              ; preds = %201, %170
  %203 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %204 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %203, i32 0, i32 2
  %205 = load i8**, i8*** %204, align 8
  %206 = getelementptr inbounds i8*, i8** %205, i32 1
  store i8** %206, i8*** %204, align 8
  br label %116

207:                                              ; preds = %194, %116
  %208 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %209 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %208, i32 0, i32 5
  %210 = load %struct.archive*, %struct.archive** %209, align 8
  %211 = call i32 @archive_read_disk_set_matching(%struct.archive* %210, i32* null, i32* null, %struct.bsdtar* null)
  %212 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %213 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %212, i32 0, i32 5
  %214 = load %struct.archive*, %struct.archive** %213, align 8
  %215 = call i32 @archive_read_disk_set_metadata_filter_callback(%struct.archive* %214, i32* null, %struct.bsdtar* null)
  store %struct.archive_entry* null, %struct.archive_entry** %6, align 8
  %216 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %217 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %216, i32 0, i32 6
  %218 = load i32*, i32** %217, align 8
  %219 = call i32 @archive_entry_linkify(i32* %218, %struct.archive_entry** %6, %struct.archive_entry** %7)
  br label %220

220:                                              ; preds = %274, %207
  %221 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %222 = icmp ne %struct.archive_entry* %221, null
  br i1 %222, label %223, label %281

223:                                              ; preds = %220
  %224 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %225 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %224, i32 0, i32 5
  %226 = load %struct.archive*, %struct.archive** %225, align 8
  store %struct.archive* %226, %struct.archive** %10, align 8
  %227 = load %struct.archive*, %struct.archive** %10, align 8
  %228 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %229 = call i32 @archive_entry_sourcepath(%struct.archive_entry* %228)
  %230 = call i32 @archive_read_disk_open(%struct.archive* %227, i32 %229)
  store i32 %230, i32* %8, align 4
  %231 = load i32, i32* %8, align 4
  %232 = load i32, i32* @ARCHIVE_OK, align 4
  %233 = icmp ne i32 %231, %232
  br i1 %233, label %234, label %242

234:                                              ; preds = %223
  %235 = load %struct.archive*, %struct.archive** %10, align 8
  %236 = call i32 @archive_errno(%struct.archive* %235)
  %237 = load %struct.archive*, %struct.archive** %10, align 8
  %238 = call i8* @archive_error_string(%struct.archive* %237)
  %239 = call i32 (i32, i8*, ...) @lafe_warnc(i32 %236, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %238)
  %240 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %241 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %240, i32 0, i32 3
  store i32 1, i32* %241, align 8
  br label %274

242:                                              ; preds = %223
  %243 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %243, %struct.archive_entry** %9, align 8
  %244 = load %struct.archive*, %struct.archive** %10, align 8
  %245 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %246 = call i32 @archive_read_next_header2(%struct.archive* %244, %struct.archive_entry* %245)
  store i32 %246, i32* %8, align 4
  %247 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %248 = call i32 @archive_entry_free(%struct.archive_entry* %247)
  %249 = load i32, i32* %8, align 4
  %250 = load i32, i32* @ARCHIVE_OK, align 4
  %251 = icmp ne i32 %249, %250
  br i1 %251, label %252, label %267

252:                                              ; preds = %242
  %253 = load %struct.archive*, %struct.archive** %10, align 8
  %254 = call i32 @archive_errno(%struct.archive* %253)
  %255 = load %struct.archive*, %struct.archive** %10, align 8
  %256 = call i8* @archive_error_string(%struct.archive* %255)
  %257 = call i32 (i32, i8*, ...) @lafe_warnc(i32 %254, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %256)
  %258 = load i32, i32* %8, align 4
  %259 = load i32, i32* @ARCHIVE_FATAL, align 4
  %260 = icmp eq i32 %258, %259
  br i1 %260, label %261, label %264

261:                                              ; preds = %252
  %262 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %263 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %262, i32 0, i32 3
  store i32 1, i32* %263, align 8
  br label %264

264:                                              ; preds = %261, %252
  %265 = load %struct.archive*, %struct.archive** %10, align 8
  %266 = call i32 @archive_read_close(%struct.archive* %265)
  br label %274

267:                                              ; preds = %242
  %268 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %269 = load %struct.archive*, %struct.archive** %3, align 8
  %270 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %271 = call i32 @write_file(%struct.bsdtar* %268, %struct.archive* %269, %struct.archive_entry* %270)
  %272 = load %struct.archive*, %struct.archive** %10, align 8
  %273 = call i32 @archive_read_close(%struct.archive* %272)
  br label %274

274:                                              ; preds = %267, %264, %234
  %275 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %276 = call i32 @archive_entry_free(%struct.archive_entry* %275)
  store %struct.archive_entry* null, %struct.archive_entry** %6, align 8
  %277 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %278 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %277, i32 0, i32 6
  %279 = load i32*, i32** %278, align 8
  %280 = call i32 @archive_entry_linkify(i32* %279, %struct.archive_entry** %6, %struct.archive_entry** %7)
  br label %220

281:                                              ; preds = %220
  %282 = load %struct.archive*, %struct.archive** %3, align 8
  %283 = call i64 @archive_write_close(%struct.archive* %282)
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %291

285:                                              ; preds = %281
  %286 = load %struct.archive*, %struct.archive** %3, align 8
  %287 = call i8* @archive_error_string(%struct.archive* %286)
  %288 = call i32 (i32, i8*, ...) @lafe_warnc(i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %287)
  %289 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %290 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %289, i32 0, i32 3
  store i32 1, i32* %290, align 8
  br label %291

291:                                              ; preds = %285, %281
  br label %292

292:                                              ; preds = %291, %165, %156
  %293 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %294 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %293, i32 0, i32 7
  %295 = load i32*, i32** %294, align 8
  %296 = call i32 @free(i32* %295)
  %297 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %298 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %297, i32 0, i32 6
  %299 = load i32*, i32** %298, align 8
  %300 = call i32 @archive_entry_linkresolver_free(i32* %299)
  %301 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %302 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %301, i32 0, i32 6
  store i32* null, i32** %302, align 8
  %303 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %304 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %303, i32 0, i32 5
  %305 = load %struct.archive*, %struct.archive** %304, align 8
  %306 = call i32 @archive_read_free(%struct.archive* %305)
  %307 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %308 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %307, i32 0, i32 5
  store %struct.archive* null, %struct.archive** %308, align 8
  %309 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %310 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %309, i32 0, i32 4
  %311 = load i32, i32* %310, align 4
  %312 = load i32, i32* @OPTFLAG_TOTALS, align 4
  %313 = and i32 %311, %312
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %321

315:                                              ; preds = %292
  %316 = load i32, i32* @stderr, align 4
  %317 = load %struct.archive*, %struct.archive** %3, align 8
  %318 = call i32 @archive_filter_bytes(%struct.archive* %317, i32 -1)
  %319 = call i8* @tar_i64toa(i32 %318)
  %320 = call i32 @fprintf(i32 %316, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i8* %319)
  br label %321

321:                                              ; preds = %315, %292
  %322 = load %struct.archive*, %struct.archive** %3, align 8
  %323 = call i32 @archive_write_free(%struct.archive* %322)
  ret void
}

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @lafe_errc(i32, i32, i8*) #1

declare dso_local i32* @archive_entry_linkresolver_new(...) #1

declare dso_local i32 @archive_entry_linkresolver_set_strategy(i32*, i32) #1

declare dso_local i32 @archive_format(%struct.archive*) #1

declare dso_local %struct.archive* @archive_read_disk_new(...) #1

declare dso_local i32 @archive_read_disk_set_symlink_hybrid(%struct.archive*) #1

declare dso_local i32 @archive_read_disk_set_symlink_logical(%struct.archive*) #1

declare dso_local i32 @archive_read_disk_set_symlink_physical(%struct.archive*) #1

declare dso_local i32 @archive_read_disk_set_matching(%struct.archive*, i32*, i32*, %struct.bsdtar*) #1

declare dso_local i32 @archive_read_disk_set_metadata_filter_callback(%struct.archive*, i32*, %struct.bsdtar*) #1

declare dso_local i32 @archive_read_disk_set_behavior(%struct.archive*, i32) #1

declare dso_local i32 @archive_read_disk_set_standard_lookup(%struct.archive*) #1

declare dso_local i32 @archive_names_from_file(%struct.bsdtar*, %struct.archive*) #1

declare dso_local i32 @lafe_warnc(i32, i8*, ...) #1

declare dso_local i32 @set_chdir(%struct.bsdtar*, i8*) #1

declare dso_local i32 @do_chdir(%struct.bsdtar*) #1

declare dso_local i64 @append_archive_filename(%struct.bsdtar*, %struct.archive*, i8*) #1

declare dso_local i32 @write_hierarchy(%struct.bsdtar*, %struct.archive*, i8*) #1

declare dso_local i32 @archive_entry_linkify(i32*, %struct.archive_entry**, %struct.archive_entry**) #1

declare dso_local i32 @archive_read_disk_open(%struct.archive*, i32) #1

declare dso_local i32 @archive_entry_sourcepath(%struct.archive_entry*) #1

declare dso_local i32 @archive_errno(%struct.archive*) #1

declare dso_local i8* @archive_error_string(%struct.archive*) #1

declare dso_local %struct.archive_entry* @archive_entry_new(...) #1

declare dso_local i32 @archive_read_next_header2(%struct.archive*, %struct.archive_entry*) #1

declare dso_local i32 @archive_entry_free(%struct.archive_entry*) #1

declare dso_local i32 @archive_read_close(%struct.archive*) #1

declare dso_local i32 @write_file(%struct.bsdtar*, %struct.archive*, %struct.archive_entry*) #1

declare dso_local i64 @archive_write_close(%struct.archive*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @archive_entry_linkresolver_free(i32*) #1

declare dso_local i32 @archive_read_free(%struct.archive*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @tar_i64toa(i32) #1

declare dso_local i32 @archive_filter_bytes(%struct.archive*, i32) #1

declare dso_local i32 @archive_write_free(%struct.archive*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

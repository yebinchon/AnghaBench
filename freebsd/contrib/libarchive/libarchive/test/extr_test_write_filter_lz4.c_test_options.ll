; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_write_filter_lz4.c_test_options.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_write_filter_lz4.c_test_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry = type { i32 }
%struct.archive = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"lz4 writing not supported on this platform\00", align 1
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_FILTER_LZ4 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"lz4\00", align 1
@AE_IFREG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"file%03d\00", align 1
@.str.3 = private unnamed_addr constant [91 x i8] c"Can't verify lz4 writing by reading back; lz4 reading not fully supported on this platform\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @test_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_options(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.archive_entry*, align 8
  %4 = alloca %struct.archive*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca [16 x i8], align 16
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %13, align 4
  %15 = call %struct.archive* (...) @archive_write_new()
  store %struct.archive* %15, %struct.archive** %4, align 8
  %16 = icmp ne %struct.archive* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.archive*, %struct.archive** %4, align 8
  %20 = call i32 @archive_write_add_filter_lz4(%struct.archive* %19)
  store i32 %20, i32* %12, align 4
  %21 = call i32* (...) @archive_liblz4_version()
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %40

23:                                               ; preds = %1
  %24 = call i32 (...) @canLz4()
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %23
  %27 = call i32 @skipping(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @ARCHIVE_WARN, align 4
  %29 = load i32, i32* %12, align 4
  %30 = call i32 @assertEqualInt(i32 %28, i32 %29)
  %31 = load i32, i32* @ARCHIVE_OK, align 4
  %32 = load %struct.archive*, %struct.archive** %4, align 8
  %33 = call i32 @archive_write_free(%struct.archive* %32)
  %34 = call i32 @assertEqualInt(i32 %31, i32 %33)
  br label %228

35:                                               ; preds = %23
  %36 = load i32, i32* @ARCHIVE_WARN, align 4
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @assertEqualInt(i32 %36, i32 %37)
  store i32 1, i32* %13, align 4
  br label %39

39:                                               ; preds = %35
  br label %44

40:                                               ; preds = %1
  %41 = load i32, i32* @ARCHIVE_OK, align 4
  %42 = load i32, i32* %12, align 4
  %43 = call i32 @assertEqualInt(i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %40, %39
  %45 = load i32, i32* @ARCHIVE_OK, align 4
  %46 = load %struct.archive*, %struct.archive** %4, align 8
  %47 = call i32 @archive_write_free(%struct.archive* %46)
  %48 = call i32 @assertEqualInt(i32 %45, i32 %47)
  store i64 2000000, i64* %7, align 8
  %49 = load i64, i64* %7, align 8
  %50 = call i64 @malloc(i64 %49)
  %51 = inttoptr i64 %50 to i8*
  store i8* %51, i8** %5, align 8
  %52 = icmp ne i8* null, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  store i64 10000, i64* %8, align 8
  %55 = load i64, i64* %8, align 8
  %56 = call i64 @calloc(i32 1, i64 %55)
  %57 = inttoptr i64 %56 to i8*
  store i8* %57, i8** %6, align 8
  %58 = icmp ne i8* null, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  store i32 10, i32* %14, align 4
  %61 = call %struct.archive* (...) @archive_write_new()
  store %struct.archive* %61, %struct.archive** %4, align 8
  %62 = icmp ne %struct.archive* %61, null
  %63 = zext i1 %62 to i32
  %64 = call i32 @assert(i32 %63)
  %65 = load %struct.archive*, %struct.archive** %4, align 8
  %66 = load i32, i32* @ARCHIVE_OK, align 4
  %67 = load %struct.archive*, %struct.archive** %4, align 8
  %68 = call i32 @archive_write_set_format_ustar(%struct.archive* %67)
  %69 = call i32 @assertEqualIntA(%struct.archive* %65, i32 %66, i32 %68)
  %70 = load %struct.archive*, %struct.archive** %4, align 8
  %71 = load i32, i32* %13, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %44
  %74 = load i32, i32* @ARCHIVE_WARN, align 4
  br label %77

75:                                               ; preds = %44
  %76 = load i32, i32* @ARCHIVE_OK, align 4
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi i32 [ %74, %73 ], [ %76, %75 ]
  %79 = load %struct.archive*, %struct.archive** %4, align 8
  %80 = call i32 @archive_write_add_filter_lz4(%struct.archive* %79)
  %81 = call i32 @assertEqualIntA(%struct.archive* %70, i32 %78, i32 %80)
  %82 = load %struct.archive*, %struct.archive** %4, align 8
  %83 = load i32, i32* @ARCHIVE_OK, align 4
  %84 = load %struct.archive*, %struct.archive** %4, align 8
  %85 = load i8*, i8** %2, align 8
  %86 = call i32 @archive_write_set_options(%struct.archive* %84, i8* %85)
  %87 = call i32 @assertEqualIntA(%struct.archive* %82, i32 %83, i32 %86)
  %88 = load %struct.archive*, %struct.archive** %4, align 8
  %89 = load i32, i32* @ARCHIVE_OK, align 4
  %90 = load %struct.archive*, %struct.archive** %4, align 8
  %91 = call i32 @archive_write_set_bytes_per_block(%struct.archive* %90, i32 1024)
  %92 = call i32 @assertEqualIntA(%struct.archive* %88, i32 %89, i32 %91)
  %93 = load %struct.archive*, %struct.archive** %4, align 8
  %94 = load i32, i32* @ARCHIVE_OK, align 4
  %95 = load %struct.archive*, %struct.archive** %4, align 8
  %96 = call i32 @archive_write_set_bytes_in_last_block(%struct.archive* %95, i32 1024)
  %97 = call i32 @assertEqualIntA(%struct.archive* %93, i32 %94, i32 %96)
  %98 = load i32, i32* @ARCHIVE_FILTER_LZ4, align 4
  %99 = load %struct.archive*, %struct.archive** %4, align 8
  %100 = call i32 @archive_filter_code(%struct.archive* %99, i32 0)
  %101 = call i32 @assertEqualInt(i32 %98, i32 %100)
  %102 = load %struct.archive*, %struct.archive** %4, align 8
  %103 = call i32 @archive_filter_name(%struct.archive* %102, i32 0)
  %104 = call i32 @assertEqualString(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %103)
  %105 = load %struct.archive*, %struct.archive** %4, align 8
  %106 = load i32, i32* @ARCHIVE_OK, align 4
  %107 = load %struct.archive*, %struct.archive** %4, align 8
  %108 = load i8*, i8** %5, align 8
  %109 = load i64, i64* %7, align 8
  %110 = call i32 @archive_write_open_memory(%struct.archive* %107, i8* %108, i64 %109, i64* %10)
  %111 = call i32 @assertEqualIntA(%struct.archive* %105, i32 %106, i32 %110)
  %112 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %112, %struct.archive_entry** %3, align 8
  %113 = icmp ne %struct.archive_entry* %112, null
  %114 = zext i1 %113 to i32
  %115 = call i32 @assert(i32 %114)
  %116 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %117 = load i32, i32* @AE_IFREG, align 4
  %118 = call i32 @archive_entry_set_filetype(%struct.archive_entry* %116, i32 %117)
  %119 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %120 = load i64, i64* %8, align 8
  %121 = call i32 @archive_entry_set_size(%struct.archive_entry* %119, i64 %120)
  store i32 0, i32* %11, align 4
  br label %122

122:                                              ; preds = %147, %77
  %123 = load i32, i32* %11, align 4
  %124 = load i32, i32* %14, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %150

126:                                              ; preds = %122
  %127 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %128 = load i32, i32* %11, align 4
  %129 = call i32 @sprintf(i8* %127, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %128)
  %130 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %131 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %132 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %130, i8* %131)
  %133 = load %struct.archive*, %struct.archive** %4, align 8
  %134 = load i32, i32* @ARCHIVE_OK, align 4
  %135 = load %struct.archive*, %struct.archive** %4, align 8
  %136 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %137 = call i32 @archive_write_header(%struct.archive* %135, %struct.archive_entry* %136)
  %138 = call i32 @assertEqualIntA(%struct.archive* %133, i32 %134, i32 %137)
  %139 = load i64, i64* %8, align 8
  %140 = load %struct.archive*, %struct.archive** %4, align 8
  %141 = load i8*, i8** %6, align 8
  %142 = load i64, i64* %8, align 8
  %143 = call i64 @archive_write_data(%struct.archive* %140, i8* %141, i64 %142)
  %144 = icmp eq i64 %139, %143
  %145 = zext i1 %144 to i32
  %146 = call i32 @assertA(i32 %145)
  br label %147

147:                                              ; preds = %126
  %148 = load i32, i32* %11, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %11, align 4
  br label %122

150:                                              ; preds = %122
  %151 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %152 = call i32 @archive_entry_free(%struct.archive_entry* %151)
  %153 = load %struct.archive*, %struct.archive** %4, align 8
  %154 = load i32, i32* @ARCHIVE_OK, align 4
  %155 = load %struct.archive*, %struct.archive** %4, align 8
  %156 = call i32 @archive_write_close(%struct.archive* %155)
  %157 = call i32 @assertEqualIntA(%struct.archive* %153, i32 %154, i32 %156)
  %158 = load i32, i32* @ARCHIVE_OK, align 4
  %159 = load %struct.archive*, %struct.archive** %4, align 8
  %160 = call i32 @archive_write_free(%struct.archive* %159)
  %161 = call i32 @assertEqualInt(i32 %158, i32 %160)
  %162 = call %struct.archive* (...) @archive_read_new()
  store %struct.archive* %162, %struct.archive** %4, align 8
  %163 = icmp ne %struct.archive* %162, null
  %164 = zext i1 %163 to i32
  %165 = call i32 @assert(i32 %164)
  %166 = load %struct.archive*, %struct.archive** %4, align 8
  %167 = load i32, i32* @ARCHIVE_OK, align 4
  %168 = load %struct.archive*, %struct.archive** %4, align 8
  %169 = call i32 @archive_read_support_format_all(%struct.archive* %168)
  %170 = call i32 @assertEqualIntA(%struct.archive* %166, i32 %167, i32 %169)
  %171 = load %struct.archive*, %struct.archive** %4, align 8
  %172 = call i32 @archive_read_support_filter_lz4(%struct.archive* %171)
  store i32 %172, i32* %12, align 4
  %173 = load i32, i32* %12, align 4
  %174 = load i32, i32* @ARCHIVE_WARN, align 4
  %175 = icmp eq i32 %173, %174
  br i1 %175, label %176, label %178

176:                                              ; preds = %150
  %177 = call i32 @skipping(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.3, i64 0, i64 0))
  br label %219

178:                                              ; preds = %150
  %179 = load %struct.archive*, %struct.archive** %4, align 8
  %180 = load i32, i32* @ARCHIVE_OK, align 4
  %181 = load %struct.archive*, %struct.archive** %4, align 8
  %182 = load i8*, i8** %5, align 8
  %183 = load i64, i64* %10, align 8
  %184 = call i32 @archive_read_open_memory(%struct.archive* %181, i8* %182, i64 %183)
  %185 = call i32 @assertEqualIntA(%struct.archive* %179, i32 %180, i32 %184)
  store i32 0, i32* %11, align 4
  br label %186

186:                                              ; preds = %210, %178
  %187 = load i32, i32* %11, align 4
  %188 = load i32, i32* %14, align 4
  %189 = icmp slt i32 %187, %188
  br i1 %189, label %190, label %213

190:                                              ; preds = %186
  %191 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %192 = load i32, i32* %11, align 4
  %193 = call i32 @sprintf(i8* %191, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %192)
  %194 = load i32, i32* @ARCHIVE_OK, align 4
  %195 = load %struct.archive*, %struct.archive** %4, align 8
  %196 = call i32 @archive_read_next_header(%struct.archive* %195, %struct.archive_entry** %3)
  %197 = call i32 @assertEqualInt(i32 %194, i32 %196)
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %200, label %199

199:                                              ; preds = %190
  br label %213

200:                                              ; preds = %190
  %201 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %202 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %203 = call i32 @archive_entry_pathname(%struct.archive_entry* %202)
  %204 = call i32 @assertEqualString(i8* %201, i32 %203)
  %205 = load i64, i64* %8, align 8
  %206 = trunc i64 %205 to i32
  %207 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %208 = call i32 @archive_entry_size(%struct.archive_entry* %207)
  %209 = call i32 @assertEqualInt(i32 %206, i32 %208)
  br label %210

210:                                              ; preds = %200
  %211 = load i32, i32* %11, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %11, align 4
  br label %186

213:                                              ; preds = %199, %186
  %214 = load %struct.archive*, %struct.archive** %4, align 8
  %215 = load i32, i32* @ARCHIVE_OK, align 4
  %216 = load %struct.archive*, %struct.archive** %4, align 8
  %217 = call i32 @archive_read_close(%struct.archive* %216)
  %218 = call i32 @assertEqualIntA(%struct.archive* %214, i32 %215, i32 %217)
  br label %219

219:                                              ; preds = %213, %176
  %220 = load i32, i32* @ARCHIVE_OK, align 4
  %221 = load %struct.archive*, %struct.archive** %4, align 8
  %222 = call i32 @archive_read_free(%struct.archive* %221)
  %223 = call i32 @assertEqualInt(i32 %220, i32 %222)
  %224 = load i8*, i8** %6, align 8
  %225 = call i32 @free(i8* %224)
  %226 = load i8*, i8** %5, align 8
  %227 = call i32 @free(i8* %226)
  br label %228

228:                                              ; preds = %219, %26
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.archive* @archive_write_new(...) #1

declare dso_local i32 @archive_write_add_filter_lz4(%struct.archive*) #1

declare dso_local i32* @archive_liblz4_version(...) #1

declare dso_local i32 @canLz4(...) #1

declare dso_local i32 @skipping(i8*) #1

declare dso_local i32 @assertEqualInt(i32, i32) #1

declare dso_local i32 @archive_write_free(%struct.archive*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i64 @calloc(i32, i64) #1

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #1

declare dso_local i32 @archive_write_set_format_ustar(%struct.archive*) #1

declare dso_local i32 @archive_write_set_options(%struct.archive*, i8*) #1

declare dso_local i32 @archive_write_set_bytes_per_block(%struct.archive*, i32) #1

declare dso_local i32 @archive_write_set_bytes_in_last_block(%struct.archive*, i32) #1

declare dso_local i32 @archive_filter_code(%struct.archive*, i32) #1

declare dso_local i32 @assertEqualString(i8*, i32) #1

declare dso_local i32 @archive_filter_name(%struct.archive*, i32) #1

declare dso_local i32 @archive_write_open_memory(%struct.archive*, i8*, i64, i64*) #1

declare dso_local %struct.archive_entry* @archive_entry_new(...) #1

declare dso_local i32 @archive_entry_set_filetype(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_entry_set_size(%struct.archive_entry*, i64) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @archive_entry_copy_pathname(%struct.archive_entry*, i8*) #1

declare dso_local i32 @archive_write_header(%struct.archive*, %struct.archive_entry*) #1

declare dso_local i32 @assertA(i32) #1

declare dso_local i64 @archive_write_data(%struct.archive*, i8*, i64) #1

declare dso_local i32 @archive_entry_free(%struct.archive_entry*) #1

declare dso_local i32 @archive_write_close(%struct.archive*) #1

declare dso_local %struct.archive* @archive_read_new(...) #1

declare dso_local i32 @archive_read_support_format_all(%struct.archive*) #1

declare dso_local i32 @archive_read_support_filter_lz4(%struct.archive*) #1

declare dso_local i32 @archive_read_open_memory(%struct.archive*, i8*, i64) #1

declare dso_local i32 @archive_read_next_header(%struct.archive*, %struct.archive_entry**) #1

declare dso_local i32 @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_size(%struct.archive_entry*) #1

declare dso_local i32 @archive_read_close(%struct.archive*) #1

declare dso_local i32 @archive_read_free(%struct.archive*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

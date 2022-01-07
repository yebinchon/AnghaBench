; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_gtar_sparse.c_verify_archive_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_gtar_sparse.c_verify_archive_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_contents = type { i32*, %struct.contents* }
%struct.contents = type { i64, i32, i8* }
%struct.archive_entry = type { i32 }
%struct.archive = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"Can't open %s\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Name mismatch in archive %s\00", align 1
@ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"%s: pad at offset %d should be zero\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"%s: Unexpected trailing data\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"%s: should be end of entry\00", align 1
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"%s: Size returned at EOF must be zero\00", align 1
@.str.6 = private unnamed_addr constant [58 x i8] c"%s: Offset of final empty chunk must be same as file size\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.archive_contents*)* @verify_archive_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @verify_archive_file(i8* %0, %struct.archive_contents* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.archive_contents*, align 8
  %5 = alloca %struct.archive_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.contents, align 8
  %8 = alloca %struct.contents, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.archive*, align 8
  %11 = alloca %struct.contents*, align 8
  %12 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store %struct.archive_contents* %1, %struct.archive_contents** %4, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 @extract_reference_file(i8* %13)
  %15 = call %struct.archive* (...) @archive_read_new()
  store %struct.archive* %15, %struct.archive** %10, align 8
  %16 = icmp ne %struct.archive* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.archive*, %struct.archive** %10, align 8
  %20 = call i64 @archive_read_support_filter_all(%struct.archive* %19)
  %21 = icmp eq i64 0, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct.archive*, %struct.archive** %10, align 8
  %25 = call i64 @archive_read_support_format_tar(%struct.archive* %24)
  %26 = icmp eq i64 0, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load i8*, i8** %3, align 8
  %30 = call i32 (i8*, i8*, ...) @failure(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %29)
  %31 = load %struct.archive*, %struct.archive** %10, align 8
  %32 = load i8*, i8** %3, align 8
  %33 = call i64 @archive_read_open_filename(%struct.archive* %31, i8* %32, i32 3)
  %34 = icmp eq i64 0, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  br label %37

37:                                               ; preds = %162, %2
  %38 = load %struct.archive_contents*, %struct.archive_contents** %4, align 8
  %39 = getelementptr inbounds %struct.archive_contents, %struct.archive_contents* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %185

42:                                               ; preds = %37
  %43 = load %struct.archive_contents*, %struct.archive_contents** %4, align 8
  %44 = getelementptr inbounds %struct.archive_contents, %struct.archive_contents* %43, i32 0, i32 1
  %45 = load %struct.contents*, %struct.contents** %44, align 8
  store %struct.contents* %45, %struct.contents** %11, align 8
  %46 = load %struct.archive*, %struct.archive** %10, align 8
  %47 = load %struct.archive*, %struct.archive** %10, align 8
  %48 = call i32 @archive_read_next_header(%struct.archive* %47, %struct.archive_entry** %5)
  %49 = call i32 @assertEqualIntA(%struct.archive* %46, i32 0, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %42
  %52 = load i32, i32* @ARCHIVE_OK, align 4
  %53 = load %struct.archive*, %struct.archive** %10, align 8
  %54 = call signext i8 @archive_read_free(%struct.archive* %53)
  %55 = call i32 @assertEqualInt(i32 %52, i8 signext %54)
  br label %201

56:                                               ; preds = %42
  %57 = load i8*, i8** %3, align 8
  %58 = call i32 (i8*, i8*, ...) @failure(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %57)
  %59 = load %struct.archive_contents*, %struct.archive_contents** %4, align 8
  %60 = getelementptr inbounds %struct.archive_contents, %struct.archive_contents* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %63 = call i32 @archive_entry_pathname(%struct.archive_entry* %62)
  %64 = call i32 @assertEqualString(i32* %61, i32 %63)
  %65 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %66 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %65)
  %67 = call i32 @assertEqualInt(i32 %66, i8 signext 0)
  %68 = load %struct.archive*, %struct.archive** %10, align 8
  %69 = load %struct.archive*, %struct.archive** %10, align 8
  %70 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %69)
  %71 = load i32, i32* @ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED, align 4
  %72 = call i32 @assertEqualIntA(%struct.archive* %68, i32 %70, i32 %71)
  %73 = load %struct.contents*, %struct.contents** %11, align 8
  %74 = getelementptr inbounds %struct.contents, %struct.contents* %73, i32 1
  store %struct.contents* %74, %struct.contents** %11, align 8
  %75 = bitcast %struct.contents* %7 to i8*
  %76 = bitcast %struct.contents* %73 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %75, i8* align 8 %76, i64 24, i1 false)
  br label %77

77:                                               ; preds = %161, %56
  %78 = load %struct.archive*, %struct.archive** %10, align 8
  %79 = getelementptr inbounds %struct.contents, %struct.contents* %8, i32 0, i32 0
  %80 = getelementptr inbounds %struct.contents, %struct.contents* %8, i32 0, i32 1
  %81 = call i32 @archive_read_data_block(%struct.archive* %78, i8** %9, i64* %79, i32* %80)
  store i32 %81, i32* %6, align 4
  %82 = icmp eq i32 0, %81
  br i1 %82, label %83, label %162

83:                                               ; preds = %77
  %84 = load i8*, i8** %9, align 8
  %85 = getelementptr inbounds %struct.contents, %struct.contents* %8, i32 0, i32 2
  store i8* %84, i8** %85, align 8
  br label %86

86:                                               ; preds = %151, %83
  %87 = getelementptr inbounds %struct.contents, %struct.contents* %8, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp sgt i64 %88, 0
  br i1 %89, label %90, label %161

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.contents, %struct.contents* %8, i32 0, i32 2
  %92 = load i8*, i8** %91, align 8
  %93 = load i8, i8* %92, align 1
  store i8 %93, i8* %12, align 1
  %94 = getelementptr inbounds %struct.contents, %struct.contents* %8, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = getelementptr inbounds %struct.contents, %struct.contents* %7, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = icmp slt i32 %95, %97
  br i1 %98, label %99, label %107

99:                                               ; preds = %90
  %100 = load i8*, i8** %3, align 8
  %101 = getelementptr inbounds %struct.contents, %struct.contents* %8, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = call i32 (i8*, i8*, ...) @failure(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %100, i32 %102)
  %104 = load i8, i8* %12, align 1
  %105 = sext i8 %104 to i32
  %106 = call i32 @assertEqualInt(i32 %105, i8 signext 0)
  br label %151

107:                                              ; preds = %90
  %108 = getelementptr inbounds %struct.contents, %struct.contents* %8, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = getelementptr inbounds %struct.contents, %struct.contents* %7, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = icmp eq i32 %109, %111
  br i1 %112, label %113, label %138

113:                                              ; preds = %107
  %114 = load i8, i8* %12, align 1
  %115 = sext i8 %114 to i32
  %116 = getelementptr inbounds %struct.contents, %struct.contents* %7, i32 0, i32 2
  %117 = load i8*, i8** %116, align 8
  %118 = load i8, i8* %117, align 1
  %119 = call i32 @assertEqualInt(i32 %115, i8 signext %118)
  %120 = getelementptr inbounds %struct.contents, %struct.contents* %7, i32 0, i32 2
  %121 = load i8*, i8** %120, align 8
  %122 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %122, i8** %120, align 8
  %123 = getelementptr inbounds %struct.contents, %struct.contents* %7, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %123, align 8
  %126 = getelementptr inbounds %struct.contents, %struct.contents* %7, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = add nsw i64 %127, -1
  store i64 %128, i64* %126, align 8
  %129 = getelementptr inbounds %struct.contents, %struct.contents* %7, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp sle i64 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %113
  %133 = load %struct.contents*, %struct.contents** %11, align 8
  %134 = getelementptr inbounds %struct.contents, %struct.contents* %133, i32 1
  store %struct.contents* %134, %struct.contents** %11, align 8
  %135 = bitcast %struct.contents* %7 to i8*
  %136 = bitcast %struct.contents* %133 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %135, i8* align 8 %136, i64 24, i1 false)
  br label %137

137:                                              ; preds = %132, %113
  br label %150

138:                                              ; preds = %107
  %139 = load i8*, i8** %3, align 8
  %140 = call i32 (i8*, i8*, ...) @failure(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %139)
  %141 = getelementptr inbounds %struct.contents, %struct.contents* %8, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = getelementptr inbounds %struct.contents, %struct.contents* %7, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = icmp sle i32 %142, %144
  %146 = zext i1 %145 to i32
  %147 = call i32 @assert(i32 %146)
  %148 = load %struct.archive*, %struct.archive** %10, align 8
  %149 = call signext i8 @archive_read_free(%struct.archive* %148)
  br label %201

150:                                              ; preds = %137
  br label %151

151:                                              ; preds = %150, %99
  %152 = getelementptr inbounds %struct.contents, %struct.contents* %8, i32 0, i32 2
  %153 = load i8*, i8** %152, align 8
  %154 = getelementptr inbounds i8, i8* %153, i32 1
  store i8* %154, i8** %152, align 8
  %155 = getelementptr inbounds %struct.contents, %struct.contents* %8, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %155, align 8
  %158 = getelementptr inbounds %struct.contents, %struct.contents* %8, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = add nsw i64 %159, -1
  store i64 %160, i64* %158, align 8
  br label %86

161:                                              ; preds = %86
  br label %77

162:                                              ; preds = %77
  %163 = load i8*, i8** %3, align 8
  %164 = call i32 (i8*, i8*, ...) @failure(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %163)
  %165 = load %struct.archive*, %struct.archive** %10, align 8
  %166 = load i32, i32* %6, align 4
  %167 = load i32, i32* @ARCHIVE_EOF, align 4
  %168 = call i32 @assertEqualIntA(%struct.archive* %165, i32 %166, i32 %167)
  %169 = load i8*, i8** %3, align 8
  %170 = call i32 (i8*, i8*, ...) @failure(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i8* %169)
  %171 = getelementptr inbounds %struct.contents, %struct.contents* %8, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = trunc i64 %172 to i32
  %174 = call i32 @assertEqualInt(i32 %173, i8 signext 0)
  %175 = load i8*, i8** %3, align 8
  %176 = call i32 (i8*, i8*, ...) @failure(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.6, i64 0, i64 0), i8* %175)
  %177 = getelementptr inbounds %struct.contents, %struct.contents* %8, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = getelementptr inbounds %struct.contents, %struct.contents* %7, i32 0, i32 1
  %180 = load i32, i32* %179, align 8
  %181 = trunc i32 %180 to i8
  %182 = call i32 @assertEqualInt(i32 %178, i8 signext %181)
  %183 = load %struct.archive_contents*, %struct.archive_contents** %4, align 8
  %184 = getelementptr inbounds %struct.archive_contents, %struct.archive_contents* %183, i32 1
  store %struct.archive_contents* %184, %struct.archive_contents** %4, align 8
  br label %37

185:                                              ; preds = %37
  %186 = load %struct.archive*, %struct.archive** %10, align 8
  %187 = call i32 @archive_read_next_header(%struct.archive* %186, %struct.archive_entry** %5)
  store i32 %187, i32* %6, align 4
  %188 = load %struct.archive*, %struct.archive** %10, align 8
  %189 = load i32, i32* @ARCHIVE_EOF, align 4
  %190 = load i32, i32* %6, align 4
  %191 = call i32 @assertEqualIntA(%struct.archive* %188, i32 %189, i32 %190)
  %192 = load %struct.archive*, %struct.archive** %10, align 8
  %193 = load i32, i32* @ARCHIVE_OK, align 4
  %194 = load %struct.archive*, %struct.archive** %10, align 8
  %195 = call i32 @archive_read_close(%struct.archive* %194)
  %196 = call i32 @assertEqualIntA(%struct.archive* %192, i32 %193, i32 %195)
  %197 = load i32, i32* @ARCHIVE_OK, align 4
  %198 = load %struct.archive*, %struct.archive** %10, align 8
  %199 = call signext i8 @archive_read_free(%struct.archive* %198)
  %200 = call i32 @assertEqualInt(i32 %197, i8 signext %199)
  br label %201

201:                                              ; preds = %185, %138, %51
  ret void
}

declare dso_local i32 @extract_reference_file(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.archive* @archive_read_new(...) #1

declare dso_local i64 @archive_read_support_filter_all(%struct.archive*) #1

declare dso_local i64 @archive_read_support_format_tar(%struct.archive*) #1

declare dso_local i32 @failure(i8*, i8*, ...) #1

declare dso_local i64 @archive_read_open_filename(%struct.archive*, i8*, i32) #1

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #1

declare dso_local i32 @archive_read_next_header(%struct.archive*, %struct.archive_entry**) #1

declare dso_local i32 @assertEqualInt(i32, i8 signext) #1

declare dso_local signext i8 @archive_read_free(%struct.archive*) #1

declare dso_local i32 @assertEqualString(i32*, i32) #1

declare dso_local i32 @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_is_encrypted(%struct.archive_entry*) #1

declare dso_local i32 @archive_read_has_encrypted_entries(%struct.archive*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @archive_read_data_block(%struct.archive*, i8**, i64*, i32*) #1

declare dso_local i32 @archive_read_close(%struct.archive*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

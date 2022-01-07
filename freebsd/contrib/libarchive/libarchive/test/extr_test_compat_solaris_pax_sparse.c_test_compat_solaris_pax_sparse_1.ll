; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_compat_solaris_pax_sparse.c_test_compat_solaris_pax_sparse_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_compat_solaris_pax_sparse.c_test_compat_solaris_pax_sparse_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry = type { i32 }
%struct.archive = type { i32 }

@__const.test_compat_solaris_pax_sparse_1.name = private unnamed_addr constant [39 x i8] c"test_compat_solaris_pax_sparse_1.pax.Z\00", align 16
@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"hole\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"cue\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"staff\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"This sparse file should have tree data blocks\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"The data blocks should not include the hole\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"First data block should be 8K bytes of 'a'\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"Last seven bytes should be all 'c'\00", align 1
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@ARCHIVE_FILTER_COMPRESS = common dso_local global i64 0, align 8
@ARCHIVE_FORMAT_TAR_PAX_INTERCHANGE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_compat_solaris_pax_sparse_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_compat_solaris_pax_sparse_1() #0 {
  %1 = alloca [39 x i8], align 16
  %2 = alloca %struct.archive_entry*, align 8
  %3 = alloca %struct.archive*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca [8192 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = bitcast [39 x i8]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 16 getelementptr inbounds ([39 x i8], [39 x i8]* @__const.test_compat_solaris_pax_sparse_1.name, i32 0, i32 0), i64 39, i1 false)
  %12 = call %struct.archive* (...) @archive_read_new()
  store %struct.archive* %12, %struct.archive** %3, align 8
  %13 = icmp ne %struct.archive* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.archive*, %struct.archive** %3, align 8
  %17 = load i32, i32* @ARCHIVE_OK, align 4
  %18 = load %struct.archive*, %struct.archive** %3, align 8
  %19 = call i32 @archive_read_support_filter_all(%struct.archive* %18)
  %20 = call i32 @assertEqualIntA(%struct.archive* %16, i32 %17, i32 %19)
  %21 = load %struct.archive*, %struct.archive** %3, align 8
  %22 = load i32, i32* @ARCHIVE_OK, align 4
  %23 = load %struct.archive*, %struct.archive** %3, align 8
  %24 = call i32 @archive_read_support_format_all(%struct.archive* %23)
  %25 = call i32 @assertEqualIntA(%struct.archive* %21, i32 %22, i32 %24)
  %26 = getelementptr inbounds [39 x i8], [39 x i8]* %1, i64 0, i64 0
  %27 = call i32 @extract_reference_file(i8* %26)
  %28 = load %struct.archive*, %struct.archive** %3, align 8
  %29 = load i32, i32* @ARCHIVE_OK, align 4
  %30 = load %struct.archive*, %struct.archive** %3, align 8
  %31 = getelementptr inbounds [39 x i8], [39 x i8]* %1, i64 0, i64 0
  %32 = call i32 @archive_read_open_filename(%struct.archive* %30, i8* %31, i32 10240)
  %33 = call i32 @assertEqualIntA(%struct.archive* %28, i32 %29, i32 %32)
  %34 = load %struct.archive*, %struct.archive** %3, align 8
  %35 = load i32, i32* @ARCHIVE_OK, align 4
  %36 = load %struct.archive*, %struct.archive** %3, align 8
  %37 = call i32 @archive_read_next_header(%struct.archive* %36, %struct.archive_entry** %2)
  store i32 %37, i32* %9, align 4
  %38 = call i32 @assertEqualIntA(%struct.archive* %34, i32 %35, i32 %37)
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @ARCHIVE_OK, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %0
  %43 = load %struct.archive*, %struct.archive** %3, align 8
  %44 = call i64 @archive_read_free(%struct.archive* %43)
  br label %187

45:                                               ; preds = %0
  %46 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %47 = call i32 @archive_entry_pathname(%struct.archive_entry* %46)
  %48 = call i32 @assertEqualString(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %50 = call i64 @archive_entry_mtime(%struct.archive_entry* %49)
  %51 = call i32 @assertEqualInt(i32 1310411683, i64 %50)
  %52 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %53 = call i64 @archive_entry_uid(%struct.archive_entry* %52)
  %54 = call i32 @assertEqualInt(i32 101, i64 %53)
  %55 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %56 = call i32 @archive_entry_uname(%struct.archive_entry* %55)
  %57 = call i32 @assertEqualString(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %59 = call i64 @archive_entry_gid(%struct.archive_entry* %58)
  %60 = call i32 @assertEqualInt(i32 10, i64 %59)
  %61 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %62 = call i32 @archive_entry_gname(%struct.archive_entry* %61)
  %63 = call i32 @assertEqualString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  %64 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %65 = call i64 @archive_entry_mode(%struct.archive_entry* %64)
  %66 = call i32 @assertEqualInt(i32 33188, i64 %65)
  %67 = call i32 @failure(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  %68 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %69 = call i64 @archive_entry_sparse_reset(%struct.archive_entry* %68)
  %70 = call i32 @assertEqualInt(i32 3, i64 %69)
  %71 = load i32, i32* @ARCHIVE_OK, align 4
  %72 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %73 = call i64 @archive_entry_sparse_next(%struct.archive_entry* %72, i64* %4, i64* %5)
  %74 = call i32 @assertEqualInt(i32 %71, i64 %73)
  %75 = load i64, i64* %4, align 8
  %76 = call i32 @assertEqualInt(i32 0, i64 %75)
  %77 = load i64, i64* %5, align 8
  %78 = call i32 @assertEqualInt(i32 131072, i64 %77)
  %79 = load i32, i32* @ARCHIVE_OK, align 4
  %80 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %81 = call i64 @archive_entry_sparse_next(%struct.archive_entry* %80, i64* %4, i64* %5)
  %82 = call i32 @assertEqualInt(i32 %79, i64 %81)
  %83 = load i64, i64* %4, align 8
  %84 = call i32 @assertEqualInt(i32 393216, i64 %83)
  %85 = load i64, i64* %5, align 8
  %86 = call i32 @assertEqualInt(i32 131072, i64 %85)
  %87 = load i32, i32* @ARCHIVE_OK, align 4
  %88 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %89 = call i64 @archive_entry_sparse_next(%struct.archive_entry* %88, i64* %4, i64* %5)
  %90 = call i32 @assertEqualInt(i32 %87, i64 %89)
  %91 = load i64, i64* %4, align 8
  %92 = call i32 @assertEqualInt(i32 786432, i64 %91)
  %93 = load i64, i64* %5, align 8
  %94 = call i32 @assertEqualInt(i32 32775, i64 %93)
  br label %95

95:                                               ; preds = %164, %45
  %96 = load i32, i32* @ARCHIVE_OK, align 4
  %97 = load %struct.archive*, %struct.archive** %3, align 8
  %98 = call i32 @archive_read_data_block(%struct.archive* %97, i8** %6, i64* %7, i64* %4)
  %99 = icmp eq i32 %96, %98
  br i1 %99, label %100, label %165

100:                                              ; preds = %95
  %101 = call i32 @failure(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  %102 = load i64, i64* %4, align 8
  %103 = icmp uge i64 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %100
  %105 = load i64, i64* %4, align 8
  %106 = load i64, i64* %7, align 8
  %107 = add i64 %105, %106
  %108 = icmp ule i64 %107, 131072
  br i1 %108, label %127, label %109

109:                                              ; preds = %104, %100
  %110 = load i64, i64* %4, align 8
  %111 = icmp uge i64 %110, 393216
  br i1 %111, label %112, label %117

112:                                              ; preds = %109
  %113 = load i64, i64* %4, align 8
  %114 = load i64, i64* %7, align 8
  %115 = add i64 %113, %114
  %116 = icmp ule i64 %115, 524288
  br i1 %116, label %127, label %117

117:                                              ; preds = %112, %109
  %118 = load i64, i64* %4, align 8
  %119 = icmp uge i64 %118, 786432
  br i1 %119, label %120, label %125

120:                                              ; preds = %117
  %121 = load i64, i64* %4, align 8
  %122 = load i64, i64* %7, align 8
  %123 = add i64 %121, %122
  %124 = icmp ule i64 %123, 819207
  br label %125

125:                                              ; preds = %120, %117
  %126 = phi i1 [ false, %117 ], [ %124, %120 ]
  br label %127

127:                                              ; preds = %125, %112, %104
  %128 = phi i1 [ true, %112 ], [ true, %104 ], [ %126, %125 ]
  %129 = zext i1 %128 to i32
  %130 = call i32 @assert(i32 %129)
  %131 = load i64, i64* %4, align 8
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %143

133:                                              ; preds = %127
  %134 = load i64, i64* %7, align 8
  %135 = icmp uge i64 %134, 8192
  br i1 %135, label %136, label %143

136:                                              ; preds = %133
  %137 = getelementptr inbounds [8192 x i8], [8192 x i8]* %8, i64 0, i64 0
  %138 = call i32 @memset(i8* %137, i8 signext 97, i32 8192)
  %139 = call i32 @failure(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  %140 = load i8*, i8** %6, align 8
  %141 = getelementptr inbounds [8192 x i8], [8192 x i8]* %8, i64 0, i64 0
  %142 = call i32 @assertEqualMem(i8* %140, i8* %141, i32 8192)
  br label %164

143:                                              ; preds = %133, %127
  %144 = load i64, i64* %4, align 8
  %145 = load i64, i64* %7, align 8
  %146 = add i64 %144, %145
  %147 = icmp eq i64 %146, 819207
  br i1 %147, label %148, label %163

148:                                              ; preds = %143
  %149 = load i64, i64* %7, align 8
  %150 = icmp uge i64 %149, 7
  br i1 %150, label %151, label %163

151:                                              ; preds = %148
  %152 = load i8*, i8** %6, align 8
  store i8* %152, i8** %10, align 8
  %153 = load i64, i64* %7, align 8
  %154 = sub i64 %153, 7
  %155 = load i8*, i8** %10, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 %154
  store i8* %156, i8** %10, align 8
  %157 = getelementptr inbounds [8192 x i8], [8192 x i8]* %8, i64 0, i64 0
  %158 = call i32 @memset(i8* %157, i8 signext 99, i32 7)
  %159 = call i32 @failure(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  %160 = load i8*, i8** %10, align 8
  %161 = getelementptr inbounds [8192 x i8], [8192 x i8]* %8, i64 0, i64 0
  %162 = call i32 @assertEqualMem(i8* %160, i8* %161, i32 7)
  br label %163

163:                                              ; preds = %151, %148, %143
  br label %164

164:                                              ; preds = %163, %136
  br label %95

165:                                              ; preds = %95
  %166 = load %struct.archive*, %struct.archive** %3, align 8
  %167 = load i32, i32* @ARCHIVE_EOF, align 4
  %168 = load %struct.archive*, %struct.archive** %3, align 8
  %169 = call i32 @archive_read_next_header(%struct.archive* %168, %struct.archive_entry** %2)
  %170 = call i32 @assertEqualIntA(%struct.archive* %166, i32 %167, i32 %169)
  %171 = load %struct.archive*, %struct.archive** %3, align 8
  %172 = call i32 @archive_filter_code(%struct.archive* %171, i32 0)
  %173 = load i64, i64* @ARCHIVE_FILTER_COMPRESS, align 8
  %174 = call i32 @assertEqualInt(i32 %172, i64 %173)
  %175 = load %struct.archive*, %struct.archive** %3, align 8
  %176 = call i32 @archive_format(%struct.archive* %175)
  %177 = load i64, i64* @ARCHIVE_FORMAT_TAR_PAX_INTERCHANGE, align 8
  %178 = call i32 @assertEqualInt(i32 %176, i64 %177)
  %179 = load i32, i32* @ARCHIVE_OK, align 4
  %180 = load %struct.archive*, %struct.archive** %3, align 8
  %181 = call i64 @archive_read_close(%struct.archive* %180)
  %182 = call i32 @assertEqualInt(i32 %179, i64 %181)
  %183 = load i32, i32* @ARCHIVE_OK, align 4
  %184 = load %struct.archive*, %struct.archive** %3, align 8
  %185 = call i64 @archive_read_free(%struct.archive* %184)
  %186 = call i32 @assertEqualInt(i32 %183, i64 %185)
  br label %187

187:                                              ; preds = %165, %42
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local %struct.archive* @archive_read_new(...) #2

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #2

declare dso_local i32 @archive_read_support_filter_all(%struct.archive*) #2

declare dso_local i32 @archive_read_support_format_all(%struct.archive*) #2

declare dso_local i32 @extract_reference_file(i8*) #2

declare dso_local i32 @archive_read_open_filename(%struct.archive*, i8*, i32) #2

declare dso_local i32 @archive_read_next_header(%struct.archive*, %struct.archive_entry**) #2

declare dso_local i64 @archive_read_free(%struct.archive*) #2

declare dso_local i32 @assertEqualString(i8*, i32) #2

declare dso_local i32 @archive_entry_pathname(%struct.archive_entry*) #2

declare dso_local i32 @assertEqualInt(i32, i64) #2

declare dso_local i64 @archive_entry_mtime(%struct.archive_entry*) #2

declare dso_local i64 @archive_entry_uid(%struct.archive_entry*) #2

declare dso_local i32 @archive_entry_uname(%struct.archive_entry*) #2

declare dso_local i64 @archive_entry_gid(%struct.archive_entry*) #2

declare dso_local i32 @archive_entry_gname(%struct.archive_entry*) #2

declare dso_local i64 @archive_entry_mode(%struct.archive_entry*) #2

declare dso_local i32 @failure(i8*) #2

declare dso_local i64 @archive_entry_sparse_reset(%struct.archive_entry*) #2

declare dso_local i64 @archive_entry_sparse_next(%struct.archive_entry*, i64*, i64*) #2

declare dso_local i32 @archive_read_data_block(%struct.archive*, i8**, i64*, i64*) #2

declare dso_local i32 @memset(i8*, i8 signext, i32) #2

declare dso_local i32 @assertEqualMem(i8*, i8*, i32) #2

declare dso_local i32 @archive_filter_code(%struct.archive*, i32) #2

declare dso_local i32 @archive_format(%struct.archive*) #2

declare dso_local i64 @archive_read_close(%struct.archive*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

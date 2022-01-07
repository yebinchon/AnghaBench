; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_compat_solaris_pax_sparse.c_test_compat_solaris_pax_sparse_2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_compat_solaris_pax_sparse.c_test_compat_solaris_pax_sparse_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry = type { i32 }
%struct.archive = type { i32 }

@__const.test_compat_solaris_pax_sparse_2.name = private unnamed_addr constant [39 x i8] c"test_compat_solaris_pax_sparse_2.pax.Z\00", align 16
@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"hole\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"cue\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"staff\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"This sparse file should have two data blocks\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"The data blocks should not include the hole\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Last 31 bytes should be all 'c'\00", align 1
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@ARCHIVE_FILTER_COMPRESS = common dso_local global i32 0, align 4
@ARCHIVE_FORMAT_TAR_PAX_INTERCHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_compat_solaris_pax_sparse_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_compat_solaris_pax_sparse_2() #0 {
  %1 = alloca [39 x i8], align 16
  %2 = alloca %struct.archive_entry*, align 8
  %3 = alloca %struct.archive*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca [32 x i8], align 16
  %10 = alloca i8*, align 8
  %11 = bitcast [39 x i8]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 16 getelementptr inbounds ([39 x i8], [39 x i8]* @__const.test_compat_solaris_pax_sparse_2.name, i32 0, i32 0), i64 39, i1 false)
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
  store i32 %37, i32* %8, align 4
  %38 = call i32 @assertEqualIntA(%struct.archive* %34, i32 %35, i32 %37)
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @ARCHIVE_OK, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %0
  %43 = load %struct.archive*, %struct.archive** %3, align 8
  %44 = call i32 @archive_read_free(%struct.archive* %43)
  br label %160

45:                                               ; preds = %0
  %46 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %47 = call i32 @archive_entry_pathname(%struct.archive_entry* %46)
  %48 = call i32 @assertEqualString(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %50 = call i32 @archive_entry_mtime(%struct.archive_entry* %49)
  %51 = call i32 @assertEqualInt(i32 1310416789, i32 %50)
  %52 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %53 = call i32 @archive_entry_uid(%struct.archive_entry* %52)
  %54 = call i32 @assertEqualInt(i32 101, i32 %53)
  %55 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %56 = call i32 @archive_entry_uname(%struct.archive_entry* %55)
  %57 = call i32 @assertEqualString(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %59 = call i32 @archive_entry_gid(%struct.archive_entry* %58)
  %60 = call i32 @assertEqualInt(i32 10, i32 %59)
  %61 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %62 = call i32 @archive_entry_gname(%struct.archive_entry* %61)
  %63 = call i32 @assertEqualString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  %64 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %65 = call i32 @archive_entry_mode(%struct.archive_entry* %64)
  %66 = call i32 @assertEqualInt(i32 33188, i32 %65)
  %67 = call i32 @failure(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  %68 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %69 = call i32 @archive_entry_sparse_reset(%struct.archive_entry* %68)
  %70 = call i32 @assertEqualInt(i32 2, i32 %69)
  %71 = load i32, i32* @ARCHIVE_OK, align 4
  %72 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %73 = call i32 @archive_entry_sparse_next(%struct.archive_entry* %72, i32* %4, i32* %5)
  %74 = call i32 @assertEqualInt(i32 %71, i32 %73)
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @assertEqualInt(i32 393216, i32 %75)
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @assertEqualInt(i32 131072, i32 %77)
  %79 = load i32, i32* @ARCHIVE_OK, align 4
  %80 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %81 = call i32 @archive_entry_sparse_next(%struct.archive_entry* %80, i32* %4, i32* %5)
  %82 = call i32 @assertEqualInt(i32 %79, i32 %81)
  %83 = load i32, i32* %4, align 4
  %84 = call i32 @assertEqualInt(i32 786432, i32 %83)
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @assertEqualInt(i32 32799, i32 %85)
  br label %87

87:                                               ; preds = %137, %45
  %88 = load i32, i32* @ARCHIVE_OK, align 4
  %89 = load %struct.archive*, %struct.archive** %3, align 8
  %90 = call i32 @archive_read_data_block(%struct.archive* %89, i8** %6, i64* %7, i32* %4)
  %91 = icmp eq i32 %88, %90
  br i1 %91, label %92, label %138

92:                                               ; preds = %87
  %93 = call i32 @failure(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  %94 = load i32, i32* %4, align 4
  %95 = icmp sge i32 %94, 393216
  br i1 %95, label %96, label %102

96:                                               ; preds = %92
  %97 = load i32, i32* %4, align 4
  %98 = sext i32 %97 to i64
  %99 = load i64, i64* %7, align 8
  %100 = add i64 %98, %99
  %101 = icmp ule i64 %100, 524288
  br i1 %101, label %113, label %102

102:                                              ; preds = %96, %92
  %103 = load i32, i32* %4, align 4
  %104 = icmp sge i32 %103, 786432
  br i1 %104, label %105, label %111

105:                                              ; preds = %102
  %106 = load i32, i32* %4, align 4
  %107 = sext i32 %106 to i64
  %108 = load i64, i64* %7, align 8
  %109 = add i64 %107, %108
  %110 = icmp ule i64 %109, 819231
  br label %111

111:                                              ; preds = %105, %102
  %112 = phi i1 [ false, %102 ], [ %110, %105 ]
  br label %113

113:                                              ; preds = %111, %96
  %114 = phi i1 [ true, %96 ], [ %112, %111 ]
  %115 = zext i1 %114 to i32
  %116 = call i32 @assert(i32 %115)
  %117 = load i32, i32* %4, align 4
  %118 = sext i32 %117 to i64
  %119 = load i64, i64* %7, align 8
  %120 = add i64 %118, %119
  %121 = icmp eq i64 %120, 819231
  br i1 %121, label %122, label %137

122:                                              ; preds = %113
  %123 = load i64, i64* %7, align 8
  %124 = icmp uge i64 %123, 31
  br i1 %124, label %125, label %137

125:                                              ; preds = %122
  %126 = load i8*, i8** %6, align 8
  store i8* %126, i8** %10, align 8
  %127 = load i64, i64* %7, align 8
  %128 = sub i64 %127, 31
  %129 = load i8*, i8** %10, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 %128
  store i8* %130, i8** %10, align 8
  %131 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %132 = call i32 @memset(i8* %131, i8 signext 99, i32 31)
  %133 = call i32 @failure(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %134 = load i8*, i8** %10, align 8
  %135 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %136 = call i32 @assertEqualMem(i8* %134, i8* %135, i32 31)
  br label %137

137:                                              ; preds = %125, %122, %113
  br label %87

138:                                              ; preds = %87
  %139 = load %struct.archive*, %struct.archive** %3, align 8
  %140 = load i32, i32* @ARCHIVE_EOF, align 4
  %141 = load %struct.archive*, %struct.archive** %3, align 8
  %142 = call i32 @archive_read_next_header(%struct.archive* %141, %struct.archive_entry** %2)
  %143 = call i32 @assertEqualIntA(%struct.archive* %139, i32 %140, i32 %142)
  %144 = load %struct.archive*, %struct.archive** %3, align 8
  %145 = call i32 @archive_filter_code(%struct.archive* %144, i32 0)
  %146 = load i32, i32* @ARCHIVE_FILTER_COMPRESS, align 4
  %147 = call i32 @assertEqualInt(i32 %145, i32 %146)
  %148 = load %struct.archive*, %struct.archive** %3, align 8
  %149 = call i32 @archive_format(%struct.archive* %148)
  %150 = load i32, i32* @ARCHIVE_FORMAT_TAR_PAX_INTERCHANGE, align 4
  %151 = call i32 @assertEqualInt(i32 %149, i32 %150)
  %152 = load i32, i32* @ARCHIVE_OK, align 4
  %153 = load %struct.archive*, %struct.archive** %3, align 8
  %154 = call i32 @archive_read_close(%struct.archive* %153)
  %155 = call i32 @assertEqualInt(i32 %152, i32 %154)
  %156 = load i32, i32* @ARCHIVE_OK, align 4
  %157 = load %struct.archive*, %struct.archive** %3, align 8
  %158 = call i32 @archive_read_free(%struct.archive* %157)
  %159 = call i32 @assertEqualInt(i32 %156, i32 %158)
  br label %160

160:                                              ; preds = %138, %42
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

declare dso_local i32 @archive_read_free(%struct.archive*) #2

declare dso_local i32 @assertEqualString(i8*, i32) #2

declare dso_local i32 @archive_entry_pathname(%struct.archive_entry*) #2

declare dso_local i32 @assertEqualInt(i32, i32) #2

declare dso_local i32 @archive_entry_mtime(%struct.archive_entry*) #2

declare dso_local i32 @archive_entry_uid(%struct.archive_entry*) #2

declare dso_local i32 @archive_entry_uname(%struct.archive_entry*) #2

declare dso_local i32 @archive_entry_gid(%struct.archive_entry*) #2

declare dso_local i32 @archive_entry_gname(%struct.archive_entry*) #2

declare dso_local i32 @archive_entry_mode(%struct.archive_entry*) #2

declare dso_local i32 @failure(i8*) #2

declare dso_local i32 @archive_entry_sparse_reset(%struct.archive_entry*) #2

declare dso_local i32 @archive_entry_sparse_next(%struct.archive_entry*, i32*, i32*) #2

declare dso_local i32 @archive_read_data_block(%struct.archive*, i8**, i64*, i32*) #2

declare dso_local i32 @memset(i8*, i8 signext, i32) #2

declare dso_local i32 @assertEqualMem(i8*, i8*, i32) #2

declare dso_local i32 @archive_filter_code(%struct.archive*, i32) #2

declare dso_local i32 @archive_format(%struct.archive*) #2

declare dso_local i32 @archive_read_close(%struct.archive*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

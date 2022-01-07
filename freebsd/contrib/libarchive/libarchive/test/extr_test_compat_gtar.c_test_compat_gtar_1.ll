; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_compat_gtar.c_test_compat_gtar_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_compat_gtar.c_test_compat_gtar_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry = type { i32 }
%struct.archive = type { i32 }

@__const.test_compat_gtar_1.name = private unnamed_addr constant [23 x i8] c"test_compat_gtar_1.tar\00", align 16
@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [201 x i8] c"12345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"tim\00", align 1
@.str.2 = private unnamed_addr constant [201 x i8] c"abcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghij\00", align 1
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@ARCHIVE_FILTER_NONE = common dso_local global i32 0, align 4
@ARCHIVE_FORMAT_TAR_GNUTAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_compat_gtar_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_compat_gtar_1() #0 {
  %1 = alloca [23 x i8], align 16
  %2 = alloca %struct.archive_entry*, align 8
  %3 = alloca %struct.archive*, align 8
  %4 = alloca i32, align 4
  %5 = bitcast [23 x i8]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 getelementptr inbounds ([23 x i8], [23 x i8]* @__const.test_compat_gtar_1.name, i32 0, i32 0), i64 23, i1 false)
  %6 = call %struct.archive* (...) @archive_read_new()
  store %struct.archive* %6, %struct.archive** %3, align 8
  %7 = icmp ne %struct.archive* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  %10 = load %struct.archive*, %struct.archive** %3, align 8
  %11 = load i32, i32* @ARCHIVE_OK, align 4
  %12 = load %struct.archive*, %struct.archive** %3, align 8
  %13 = call i32 @archive_read_support_filter_all(%struct.archive* %12)
  %14 = call i32 @assertEqualIntA(%struct.archive* %10, i32 %11, i32 %13)
  %15 = load %struct.archive*, %struct.archive** %3, align 8
  %16 = load i32, i32* @ARCHIVE_OK, align 4
  %17 = load %struct.archive*, %struct.archive** %3, align 8
  %18 = call i32 @archive_read_support_format_all(%struct.archive* %17)
  %19 = call i32 @assertEqualIntA(%struct.archive* %15, i32 %16, i32 %18)
  %20 = getelementptr inbounds [23 x i8], [23 x i8]* %1, i64 0, i64 0
  %21 = call i32 @extract_reference_file(i8* %20)
  %22 = load %struct.archive*, %struct.archive** %3, align 8
  %23 = load i32, i32* @ARCHIVE_OK, align 4
  %24 = load %struct.archive*, %struct.archive** %3, align 8
  %25 = getelementptr inbounds [23 x i8], [23 x i8]* %1, i64 0, i64 0
  %26 = call i32 @archive_read_open_filename(%struct.archive* %24, i8* %25, i32 10240)
  %27 = call i32 @assertEqualIntA(%struct.archive* %22, i32 %23, i32 %26)
  %28 = load %struct.archive*, %struct.archive** %3, align 8
  %29 = load i32, i32* @ARCHIVE_OK, align 4
  %30 = load %struct.archive*, %struct.archive** %3, align 8
  %31 = call i32 @archive_read_next_header(%struct.archive* %30, %struct.archive_entry** %2)
  store i32 %31, i32* %4, align 4
  %32 = call i32 @assertEqualIntA(%struct.archive* %28, i32 %29, i32 %31)
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @ARCHIVE_OK, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %0
  %37 = load %struct.archive*, %struct.archive** %3, align 8
  %38 = call i32 @archive_read_free(%struct.archive* %37)
  br label %118

39:                                               ; preds = %0
  %40 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %41 = call i32 @archive_entry_pathname(%struct.archive_entry* %40)
  %42 = call i32 @assertEqualString(i8* getelementptr inbounds ([201 x i8], [201 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %44 = call i32 @archive_entry_mtime(%struct.archive_entry* %43)
  %45 = call i32 @assertEqualInt(i32 1197179003, i32 %44)
  %46 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %47 = call i32 @archive_entry_uid(%struct.archive_entry* %46)
  %48 = call i32 @assertEqualInt(i32 1000, i32 %47)
  %49 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %50 = call i32 @archive_entry_uname(%struct.archive_entry* %49)
  %51 = call i32 @assertEqualString(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %53 = call i32 @archive_entry_gid(%struct.archive_entry* %52)
  %54 = call i32 @assertEqualInt(i32 1000, i32 %53)
  %55 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %56 = call i32 @archive_entry_gname(%struct.archive_entry* %55)
  %57 = call i32 @assertEqualString(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %59 = call i32 @archive_entry_mode(%struct.archive_entry* %58)
  %60 = call i32 @assertEqualInt(i32 33188, i32 %59)
  %61 = load %struct.archive*, %struct.archive** %3, align 8
  %62 = load i32, i32* @ARCHIVE_OK, align 4
  %63 = load %struct.archive*, %struct.archive** %3, align 8
  %64 = call i32 @archive_read_next_header(%struct.archive* %63, %struct.archive_entry** %2)
  store i32 %64, i32* %4, align 4
  %65 = call i32 @assertEqualIntA(%struct.archive* %61, i32 %62, i32 %64)
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @ARCHIVE_OK, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %39
  %70 = load %struct.archive*, %struct.archive** %3, align 8
  %71 = call i32 @archive_read_free(%struct.archive* %70)
  br label %118

72:                                               ; preds = %39
  %73 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %74 = call i32 @archive_entry_pathname(%struct.archive_entry* %73)
  %75 = call i32 @assertEqualString(i8* getelementptr inbounds ([201 x i8], [201 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  %76 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %77 = call i32 @archive_entry_symlink(%struct.archive_entry* %76)
  %78 = call i32 @assertEqualString(i8* getelementptr inbounds ([201 x i8], [201 x i8]* @.str, i64 0, i64 0), i32 %77)
  %79 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %80 = call i32 @archive_entry_mtime(%struct.archive_entry* %79)
  %81 = call i32 @assertEqualInt(i32 1197179043, i32 %80)
  %82 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %83 = call i32 @archive_entry_uid(%struct.archive_entry* %82)
  %84 = call i32 @assertEqualInt(i32 1000, i32 %83)
  %85 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %86 = call i32 @archive_entry_uname(%struct.archive_entry* %85)
  %87 = call i32 @assertEqualString(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %86)
  %88 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %89 = call i32 @archive_entry_gid(%struct.archive_entry* %88)
  %90 = call i32 @assertEqualInt(i32 1000, i32 %89)
  %91 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %92 = call i32 @archive_entry_gname(%struct.archive_entry* %91)
  %93 = call i32 @assertEqualString(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %92)
  %94 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %95 = call i32 @archive_entry_mode(%struct.archive_entry* %94)
  %96 = call i32 @assertEqualInt(i32 41453, i32 %95)
  %97 = load %struct.archive*, %struct.archive** %3, align 8
  %98 = load i32, i32* @ARCHIVE_EOF, align 4
  %99 = load %struct.archive*, %struct.archive** %3, align 8
  %100 = call i32 @archive_read_next_header(%struct.archive* %99, %struct.archive_entry** %2)
  %101 = call i32 @assertEqualIntA(%struct.archive* %97, i32 %98, i32 %100)
  %102 = load %struct.archive*, %struct.archive** %3, align 8
  %103 = call i32 @archive_filter_code(%struct.archive* %102, i32 0)
  %104 = load i32, i32* @ARCHIVE_FILTER_NONE, align 4
  %105 = call i32 @assertEqualInt(i32 %103, i32 %104)
  %106 = load %struct.archive*, %struct.archive** %3, align 8
  %107 = call i32 @archive_format(%struct.archive* %106)
  %108 = load i32, i32* @ARCHIVE_FORMAT_TAR_GNUTAR, align 4
  %109 = call i32 @assertEqualInt(i32 %107, i32 %108)
  %110 = load i32, i32* @ARCHIVE_OK, align 4
  %111 = load %struct.archive*, %struct.archive** %3, align 8
  %112 = call i32 @archive_read_close(%struct.archive* %111)
  %113 = call i32 @assertEqualInt(i32 %110, i32 %112)
  %114 = load i32, i32* @ARCHIVE_OK, align 4
  %115 = load %struct.archive*, %struct.archive** %3, align 8
  %116 = call i32 @archive_read_free(%struct.archive* %115)
  %117 = call i32 @assertEqualInt(i32 %114, i32 %116)
  br label %118

118:                                              ; preds = %72, %69, %36
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

declare dso_local i32 @archive_entry_symlink(%struct.archive_entry*) #2

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

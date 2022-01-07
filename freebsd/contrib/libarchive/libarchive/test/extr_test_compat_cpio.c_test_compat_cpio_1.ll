; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_compat_cpio.c_test_compat_cpio_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_compat_cpio.c_test_compat_cpio_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry = type { i32 }
%struct.archive = type { i32 }

@__const.test_compat_cpio_1.name = private unnamed_addr constant [24 x i8] c"test_compat_cpio_1.cpio\00", align 16
@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"foo1\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"foo2\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"bar1\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"bar2\00", align 1
@ARCHIVE_FILTER_NONE = common dso_local global i32 0, align 4
@ARCHIVE_FORMAT_CPIO_SVR4_NOCRC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_compat_cpio_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_compat_cpio_1() #0 {
  %1 = alloca [24 x i8], align 16
  %2 = alloca %struct.archive_entry*, align 8
  %3 = alloca %struct.archive*, align 8
  %4 = bitcast [24 x i8]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %4, i8* align 16 getelementptr inbounds ([24 x i8], [24 x i8]* @__const.test_compat_cpio_1.name, i32 0, i32 0), i64 24, i1 false)
  %5 = call %struct.archive* (...) @archive_read_new()
  store %struct.archive* %5, %struct.archive** %3, align 8
  %6 = icmp ne %struct.archive* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @assert(i32 %7)
  %9 = load %struct.archive*, %struct.archive** %3, align 8
  %10 = load i32, i32* @ARCHIVE_OK, align 4
  %11 = load %struct.archive*, %struct.archive** %3, align 8
  %12 = call i32 @archive_read_support_filter_all(%struct.archive* %11)
  %13 = call i32 @assertEqualIntA(%struct.archive* %9, i32 %10, i32 %12)
  %14 = load %struct.archive*, %struct.archive** %3, align 8
  %15 = load i32, i32* @ARCHIVE_OK, align 4
  %16 = load %struct.archive*, %struct.archive** %3, align 8
  %17 = call i32 @archive_read_support_format_all(%struct.archive* %16)
  %18 = call i32 @assertEqualIntA(%struct.archive* %14, i32 %15, i32 %17)
  %19 = getelementptr inbounds [24 x i8], [24 x i8]* %1, i64 0, i64 0
  %20 = call i32 @extract_reference_file(i8* %19)
  %21 = load %struct.archive*, %struct.archive** %3, align 8
  %22 = load i32, i32* @ARCHIVE_OK, align 4
  %23 = load %struct.archive*, %struct.archive** %3, align 8
  %24 = getelementptr inbounds [24 x i8], [24 x i8]* %1, i64 0, i64 0
  %25 = call i32 @archive_read_open_filename(%struct.archive* %23, i8* %24, i32 17)
  %26 = call i32 @assertEqualIntA(%struct.archive* %21, i32 %22, i32 %25)
  %27 = load %struct.archive*, %struct.archive** %3, align 8
  %28 = load i32, i32* @ARCHIVE_OK, align 4
  %29 = load %struct.archive*, %struct.archive** %3, align 8
  %30 = call i32 @archive_read_next_header(%struct.archive* %29, %struct.archive_entry** %2)
  %31 = call i32 @assertEqualIntA(%struct.archive* %27, i32 %28, i32 %30)
  %32 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %33 = call i32 @archive_entry_pathname(%struct.archive_entry* %32)
  %34 = call i32 @assertEqualString(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %36 = call i32 @archive_entry_hardlink(%struct.archive_entry* %35)
  %37 = call i32 @assertEqualString(i8* null, i32 %36)
  %38 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %39 = call i32 @archive_entry_mtime(%struct.archive_entry* %38)
  %40 = call i32 @assertEqualInt(i32 1260250228, i32 %39)
  %41 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %42 = call i32 @archive_entry_uid(%struct.archive_entry* %41)
  %43 = call i32 @assertEqualInt(i32 1000, i32 %42)
  %44 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %45 = call i32 @archive_entry_gid(%struct.archive_entry* %44)
  %46 = call i32 @assertEqualInt(i32 1000, i32 %45)
  %47 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %48 = call i32 @archive_entry_mode(%struct.archive_entry* %47)
  %49 = call i32 @assertEqualInt(i32 33188, i32 %48)
  %50 = load %struct.archive*, %struct.archive** %3, align 8
  %51 = load i32, i32* @ARCHIVE_OK, align 4
  %52 = load %struct.archive*, %struct.archive** %3, align 8
  %53 = call i32 @archive_read_next_header(%struct.archive* %52, %struct.archive_entry** %2)
  %54 = call i32 @assertEqualIntA(%struct.archive* %50, i32 %51, i32 %53)
  %55 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %56 = call i32 @archive_entry_pathname(%struct.archive_entry* %55)
  %57 = call i32 @assertEqualString(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %59 = call i32 @archive_entry_hardlink(%struct.archive_entry* %58)
  %60 = call i32 @assertEqualString(i8* null, i32 %59)
  %61 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %62 = call i32 @archive_entry_mtime(%struct.archive_entry* %61)
  %63 = call i32 @assertEqualInt(i32 1260250228, i32 %62)
  %64 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %65 = call i32 @archive_entry_uid(%struct.archive_entry* %64)
  %66 = call i32 @assertEqualInt(i32 1000, i32 %65)
  %67 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %68 = call i32 @archive_entry_gid(%struct.archive_entry* %67)
  %69 = call i32 @assertEqualInt(i32 1000, i32 %68)
  %70 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %71 = call i32 @archive_entry_mode(%struct.archive_entry* %70)
  %72 = call i32 @assertEqualInt(i32 33188, i32 %71)
  %73 = load %struct.archive*, %struct.archive** %3, align 8
  %74 = load i32, i32* @ARCHIVE_OK, align 4
  %75 = load %struct.archive*, %struct.archive** %3, align 8
  %76 = call i32 @archive_read_next_header(%struct.archive* %75, %struct.archive_entry** %2)
  %77 = call i32 @assertEqualIntA(%struct.archive* %73, i32 %74, i32 %76)
  %78 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %79 = call i32 @archive_entry_pathname(%struct.archive_entry* %78)
  %80 = call i32 @assertEqualString(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %79)
  %81 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %82 = call i32 @archive_entry_hardlink(%struct.archive_entry* %81)
  %83 = call i32 @assertEqualString(i8* null, i32 %82)
  %84 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %85 = call i32 @archive_entry_mtime(%struct.archive_entry* %84)
  %86 = call i32 @assertEqualInt(i32 1260250228, i32 %85)
  %87 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %88 = call i32 @archive_entry_uid(%struct.archive_entry* %87)
  %89 = call i32 @assertEqualInt(i32 1000, i32 %88)
  %90 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %91 = call i32 @archive_entry_gid(%struct.archive_entry* %90)
  %92 = call i32 @assertEqualInt(i32 1000, i32 %91)
  %93 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %94 = call i32 @archive_entry_mode(%struct.archive_entry* %93)
  %95 = call i32 @assertEqualInt(i32 33188, i32 %94)
  %96 = load %struct.archive*, %struct.archive** %3, align 8
  %97 = load i32, i32* @ARCHIVE_OK, align 4
  %98 = load %struct.archive*, %struct.archive** %3, align 8
  %99 = call i32 @archive_read_next_header(%struct.archive* %98, %struct.archive_entry** %2)
  %100 = call i32 @assertEqualIntA(%struct.archive* %96, i32 %97, i32 %99)
  %101 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %102 = call i32 @archive_entry_pathname(%struct.archive_entry* %101)
  %103 = call i32 @assertEqualString(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %102)
  %104 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %105 = call i32 @archive_entry_hardlink(%struct.archive_entry* %104)
  %106 = call i32 @assertEqualString(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %105)
  %107 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %108 = call i32 @archive_entry_mtime(%struct.archive_entry* %107)
  %109 = call i32 @assertEqualInt(i32 1260250228, i32 %108)
  %110 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %111 = call i32 @archive_entry_uid(%struct.archive_entry* %110)
  %112 = call i32 @assertEqualInt(i32 1000, i32 %111)
  %113 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %114 = call i32 @archive_entry_gid(%struct.archive_entry* %113)
  %115 = call i32 @assertEqualInt(i32 1000, i32 %114)
  %116 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %117 = call i32 @archive_entry_mode(%struct.archive_entry* %116)
  %118 = call i32 @assertEqualInt(i32 33188, i32 %117)
  %119 = load %struct.archive*, %struct.archive** %3, align 8
  %120 = call i32 @archive_filter_code(%struct.archive* %119, i32 0)
  %121 = load i32, i32* @ARCHIVE_FILTER_NONE, align 4
  %122 = call i32 @assertEqualInt(i32 %120, i32 %121)
  %123 = load %struct.archive*, %struct.archive** %3, align 8
  %124 = call i32 @archive_format(%struct.archive* %123)
  %125 = load i32, i32* @ARCHIVE_FORMAT_CPIO_SVR4_NOCRC, align 4
  %126 = call i32 @assertEqualInt(i32 %124, i32 %125)
  %127 = load i32, i32* @ARCHIVE_OK, align 4
  %128 = load %struct.archive*, %struct.archive** %3, align 8
  %129 = call i32 @archive_read_close(%struct.archive* %128)
  %130 = call i32 @assertEqualInt(i32 %127, i32 %129)
  %131 = load i32, i32* @ARCHIVE_OK, align 4
  %132 = load %struct.archive*, %struct.archive** %3, align 8
  %133 = call i32 @archive_read_free(%struct.archive* %132)
  %134 = call i32 @assertEqualInt(i32 %131, i32 %133)
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

declare dso_local i32 @assertEqualString(i8*, i32) #2

declare dso_local i32 @archive_entry_pathname(%struct.archive_entry*) #2

declare dso_local i32 @archive_entry_hardlink(%struct.archive_entry*) #2

declare dso_local i32 @assertEqualInt(i32, i32) #2

declare dso_local i32 @archive_entry_mtime(%struct.archive_entry*) #2

declare dso_local i32 @archive_entry_uid(%struct.archive_entry*) #2

declare dso_local i32 @archive_entry_gid(%struct.archive_entry*) #2

declare dso_local i32 @archive_entry_mode(%struct.archive_entry*) #2

declare dso_local i32 @archive_filter_code(%struct.archive*, i32) #2

declare dso_local i32 @archive_format(%struct.archive*) #2

declare dso_local i32 @archive_read_close(%struct.archive*) #2

declare dso_local i32 @archive_read_free(%struct.archive*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

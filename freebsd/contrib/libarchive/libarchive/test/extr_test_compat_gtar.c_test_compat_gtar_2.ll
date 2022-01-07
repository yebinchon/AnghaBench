; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_compat_gtar.c_test_compat_gtar_2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_compat_gtar.c_test_compat_gtar_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry = type { i32 }
%struct.archive = type { i32 }

@__const.test_compat_gtar_2.name = private unnamed_addr constant [23 x i8] c"test_compat_gtar_2.tar\00", align 16
@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@ARCHIVE_FILTER_NONE = common dso_local global i32 0, align 4
@ARCHIVE_FORMAT_TAR_GNUTAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_compat_gtar_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_compat_gtar_2() #0 {
  %1 = alloca [23 x i8], align 16
  %2 = alloca %struct.archive_entry*, align 8
  %3 = alloca %struct.archive*, align 8
  %4 = alloca i32, align 4
  %5 = bitcast [23 x i8]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 getelementptr inbounds ([23 x i8], [23 x i8]* @__const.test_compat_gtar_2.name, i32 0, i32 0), i64 23, i1 false)
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
  br label %67

39:                                               ; preds = %0
  %40 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %41 = call i32 @archive_entry_uid(%struct.archive_entry* %40)
  %42 = call i32 @assertEqualInt(i32 2097152, i32 %41)
  %43 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %44 = call i32 @archive_entry_gid(%struct.archive_entry* %43)
  %45 = call i32 @assertEqualInt(i32 2097152, i32 %44)
  %46 = load %struct.archive*, %struct.archive** %3, align 8
  %47 = load i32, i32* @ARCHIVE_EOF, align 4
  %48 = load %struct.archive*, %struct.archive** %3, align 8
  %49 = call i32 @archive_read_next_header(%struct.archive* %48, %struct.archive_entry** %2)
  %50 = call i32 @assertEqualIntA(%struct.archive* %46, i32 %47, i32 %49)
  %51 = load %struct.archive*, %struct.archive** %3, align 8
  %52 = call i32 @archive_filter_code(%struct.archive* %51, i32 0)
  %53 = load i32, i32* @ARCHIVE_FILTER_NONE, align 4
  %54 = call i32 @assertEqualInt(i32 %52, i32 %53)
  %55 = load %struct.archive*, %struct.archive** %3, align 8
  %56 = call i32 @archive_format(%struct.archive* %55)
  %57 = load i32, i32* @ARCHIVE_FORMAT_TAR_GNUTAR, align 4
  %58 = call i32 @assertEqualInt(i32 %56, i32 %57)
  %59 = load i32, i32* @ARCHIVE_OK, align 4
  %60 = load %struct.archive*, %struct.archive** %3, align 8
  %61 = call i32 @archive_read_close(%struct.archive* %60)
  %62 = call i32 @assertEqualInt(i32 %59, i32 %61)
  %63 = load i32, i32* @ARCHIVE_OK, align 4
  %64 = load %struct.archive*, %struct.archive** %3, align 8
  %65 = call i32 @archive_read_free(%struct.archive* %64)
  %66 = call i32 @assertEqualInt(i32 %63, i32 %65)
  br label %67

67:                                               ; preds = %39, %36
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

declare dso_local i32 @assertEqualInt(i32, i32) #2

declare dso_local i32 @archive_entry_uid(%struct.archive_entry*) #2

declare dso_local i32 @archive_entry_gid(%struct.archive_entry*) #2

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

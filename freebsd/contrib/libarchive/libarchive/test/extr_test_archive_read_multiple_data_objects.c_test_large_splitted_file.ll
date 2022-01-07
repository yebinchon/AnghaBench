; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_archive_read_multiple_data_objects.c_test_large_splitted_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_archive_read_multiple_data_objects.c_test_large_splitted_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry = type { i32 }
%struct.archive = type { i32 }

@test_large_splitted_file.reffiles = internal global [6 x i8*] [i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [32 x i8] c"test_read_large_splitted_rar_aa\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"test_read_large_splitted_rar_ab\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"test_read_large_splitted_rar_ac\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"test_read_large_splitted_rar_ad\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"test_read_large_splitted_rar_ae\00", align 1
@__const.test_large_splitted_file.test_txt = private unnamed_addr constant [43 x i8] c"gin-bottom: 0in\22><BR>\0A</P>\0A</BODY>\0A</HTML>\00", align 16
@.str.5 = private unnamed_addr constant [30 x i8] c"ppmd_lzss_conversion_test.txt\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_large_splitted_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_large_splitted_file() #0 {
  %1 = alloca [43 x i8], align 16
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [64 x i8], align 16
  %5 = alloca %struct.archive_entry*, align 8
  %6 = alloca %struct.archive*, align 8
  %7 = bitcast [43 x i8]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 getelementptr inbounds ([43 x i8], [43 x i8]* @__const.test_large_splitted_file.test_txt, i32 0, i32 0), i64 43, i1 false)
  store i32 241647978, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %8 = call i32 @extract_reference_files(i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @test_large_splitted_file.reffiles, i64 0, i64 0))
  %9 = call %struct.archive* (...) @archive_read_new()
  store %struct.archive* %9, %struct.archive** %6, align 8
  %10 = icmp ne %struct.archive* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load %struct.archive*, %struct.archive** %6, align 8
  %14 = call i64 @archive_read_support_filter_all(%struct.archive* %13)
  %15 = icmp eq i64 0, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @assertA(i32 %16)
  %18 = load %struct.archive*, %struct.archive** %6, align 8
  %19 = call i64 @archive_read_support_format_all(%struct.archive* %18)
  %20 = icmp eq i64 0, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @assertA(i32 %21)
  %23 = load %struct.archive*, %struct.archive** %6, align 8
  %24 = call i64 @archive_read_open_filenames(%struct.archive* %23, i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @test_large_splitted_file.reffiles, i64 0, i64 0), i32 10240)
  %25 = icmp eq i64 0, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @assertA(i32 %26)
  %28 = load %struct.archive*, %struct.archive** %6, align 8
  %29 = call i32 @archive_read_next_header(%struct.archive* %28, %struct.archive_entry** %5)
  %30 = icmp eq i32 0, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @assertA(i32 %31)
  %33 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %34 = call i32 @archive_entry_pathname(%struct.archive_entry* %33)
  %35 = call i32 @assertEqualString(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %34)
  %36 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %37 = call i64 @archive_entry_mtime(%struct.archive_entry* %36)
  %38 = trunc i64 %37 to i32
  %39 = call i32 @assertA(i32 %38)
  %40 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %41 = call i64 @archive_entry_ctime(%struct.archive_entry* %40)
  %42 = trunc i64 %41 to i32
  %43 = call i32 @assertA(i32 %42)
  %44 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %45 = call i64 @archive_entry_atime(%struct.archive_entry* %44)
  %46 = trunc i64 %45 to i32
  %47 = call i32 @assertA(i32 %46)
  %48 = load i32, i32* %2, align 4
  %49 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %50 = call i32 @archive_entry_size(%struct.archive_entry* %49)
  %51 = call i32 @assertEqualInt(i32 %48, i32 %50)
  %52 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %53 = call i32 @archive_entry_mode(%struct.archive_entry* %52)
  %54 = call i32 @assertEqualInt(i32 33188, i32 %53)
  br label %55

55:                                               ; preds = %60, %0
  %56 = load i32, i32* %3, align 4
  %57 = add nsw i32 %56, 64
  %58 = load i32, i32* %2, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %72

60:                                               ; preds = %55
  %61 = load %struct.archive*, %struct.archive** %6, align 8
  %62 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %63 = call i32 @archive_read_data(%struct.archive* %61, i8* %62, i32 64)
  %64 = sext i32 %63 to i64
  %65 = icmp eq i64 64, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @assertA(i32 %66)
  %68 = load i32, i32* %3, align 4
  %69 = sext i32 %68 to i64
  %70 = add i64 %69, 64
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %3, align 4
  br label %55

72:                                               ; preds = %55
  %73 = load i32, i32* %2, align 4
  %74 = load i32, i32* %3, align 4
  %75 = sub nsw i32 %73, %74
  %76 = load %struct.archive*, %struct.archive** %6, align 8
  %77 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %78 = load i32, i32* %2, align 4
  %79 = load i32, i32* %3, align 4
  %80 = sub nsw i32 %78, %79
  %81 = call i32 @archive_read_data(%struct.archive* %76, i8* %77, i32 %80)
  %82 = icmp eq i32 %75, %81
  %83 = zext i1 %82 to i32
  %84 = call i32 @assertA(i32 %83)
  %85 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %86 = getelementptr inbounds [43 x i8], [43 x i8]* %1, i64 0, i64 0
  %87 = load i32, i32* %2, align 4
  %88 = load i32, i32* %3, align 4
  %89 = sub nsw i32 %87, %88
  %90 = call i32 @assertEqualMem(i8* %85, i8* %86, i32 %89)
  %91 = load %struct.archive*, %struct.archive** %6, align 8
  %92 = call i32 @archive_read_next_header(%struct.archive* %91, %struct.archive_entry** %5)
  %93 = icmp eq i32 1, %92
  %94 = zext i1 %93 to i32
  %95 = call i32 @assertA(i32 %94)
  %96 = load %struct.archive*, %struct.archive** %6, align 8
  %97 = call i32 @archive_file_count(%struct.archive* %96)
  %98 = call i32 @assertEqualInt(i32 1, i32 %97)
  %99 = load %struct.archive*, %struct.archive** %6, align 8
  %100 = load i32, i32* @ARCHIVE_OK, align 4
  %101 = load %struct.archive*, %struct.archive** %6, align 8
  %102 = call i32 @archive_read_close(%struct.archive* %101)
  %103 = call i32 @assertEqualIntA(%struct.archive* %99, i32 %100, i32 %102)
  %104 = load i32, i32* @ARCHIVE_OK, align 4
  %105 = load %struct.archive*, %struct.archive** %6, align 8
  %106 = call i32 @archive_read_free(%struct.archive* %105)
  %107 = call i32 @assertEqualInt(i32 %104, i32 %106)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @extract_reference_files(i8**) #2

declare dso_local i32 @assert(i32) #2

declare dso_local %struct.archive* @archive_read_new(...) #2

declare dso_local i32 @assertA(i32) #2

declare dso_local i64 @archive_read_support_filter_all(%struct.archive*) #2

declare dso_local i64 @archive_read_support_format_all(%struct.archive*) #2

declare dso_local i64 @archive_read_open_filenames(%struct.archive*, i8**, i32) #2

declare dso_local i32 @archive_read_next_header(%struct.archive*, %struct.archive_entry**) #2

declare dso_local i32 @assertEqualString(i8*, i32) #2

declare dso_local i32 @archive_entry_pathname(%struct.archive_entry*) #2

declare dso_local i64 @archive_entry_mtime(%struct.archive_entry*) #2

declare dso_local i64 @archive_entry_ctime(%struct.archive_entry*) #2

declare dso_local i64 @archive_entry_atime(%struct.archive_entry*) #2

declare dso_local i32 @assertEqualInt(i32, i32) #2

declare dso_local i32 @archive_entry_size(%struct.archive_entry*) #2

declare dso_local i32 @archive_entry_mode(%struct.archive_entry*) #2

declare dso_local i32 @archive_read_data(%struct.archive*, i8*, i32) #2

declare dso_local i32 @assertEqualMem(i8*, i8*, i32) #2

declare dso_local i32 @archive_file_count(%struct.archive*) #2

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #2

declare dso_local i32 @archive_read_close(%struct.archive*) #2

declare dso_local i32 @archive_read_free(%struct.archive*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

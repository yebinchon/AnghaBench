; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_cab.c_verify3.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_cab.c_verify3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry = type { i32 }
%struct.archive = type { i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED = common dso_local global i32 0, align 4
@STORE = common dso_local global i32 0, align 4
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@ARCHIVE_FILTER_NONE = common dso_local global i32 0, align 4
@ARCHIVE_FORMAT_CAB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @verify3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @verify3(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive_entry*, align 8
  %6 = alloca %struct.archive*, align 8
  %7 = alloca [128 x i8], align 16
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %9 = call i32 @memset(i8* %8, i32 0, i32 128)
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @extract_reference_file(i8* %10)
  %12 = call %struct.archive* (...) @archive_read_new()
  store %struct.archive* %12, %struct.archive** %6, align 8
  %13 = icmp ne %struct.archive* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.archive*, %struct.archive** %6, align 8
  %17 = load i32, i32* @ARCHIVE_OK, align 4
  %18 = load %struct.archive*, %struct.archive** %6, align 8
  %19 = call i32 @archive_read_support_filter_all(%struct.archive* %18)
  %20 = call i32 @assertEqualIntA(%struct.archive* %16, i32 %17, i32 %19)
  %21 = load %struct.archive*, %struct.archive** %6, align 8
  %22 = load i32, i32* @ARCHIVE_OK, align 4
  %23 = load %struct.archive*, %struct.archive** %6, align 8
  %24 = call i32 @archive_read_support_format_all(%struct.archive* %23)
  %25 = call i32 @assertEqualIntA(%struct.archive* %21, i32 %22, i32 %24)
  %26 = load %struct.archive*, %struct.archive** %6, align 8
  %27 = load i32, i32* @ARCHIVE_OK, align 4
  %28 = load %struct.archive*, %struct.archive** %6, align 8
  %29 = load i8*, i8** %3, align 8
  %30 = call i32 @archive_read_open_filename(%struct.archive* %28, i8* %29, i32 10240)
  %31 = call i32 @assertEqualIntA(%struct.archive* %26, i32 %27, i32 %30)
  %32 = load %struct.archive*, %struct.archive** %6, align 8
  %33 = load i32, i32* @ARCHIVE_OK, align 4
  %34 = load %struct.archive*, %struct.archive** %6, align 8
  %35 = call i32 @archive_read_next_header(%struct.archive* %34, %struct.archive_entry** %5)
  %36 = call i32 @assertEqualIntA(%struct.archive* %32, i32 %33, i32 %35)
  %37 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %38 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %37)
  %39 = call i32 @assertEqualInt(i32 %38, i32 0)
  %40 = load %struct.archive*, %struct.archive** %6, align 8
  %41 = load %struct.archive*, %struct.archive** %6, align 8
  %42 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %41)
  %43 = load i32, i32* @ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED, align 4
  %44 = call i32 @assertEqualIntA(%struct.archive* %40, i32 %42, i32 %43)
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @STORE, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %62

48:                                               ; preds = %2
  %49 = load %struct.archive*, %struct.archive** %6, align 8
  %50 = load i32, i32* @ARCHIVE_OK, align 4
  %51 = load %struct.archive*, %struct.archive** %6, align 8
  %52 = call i32 @archive_read_next_header(%struct.archive* %51, %struct.archive_entry** %5)
  %53 = call i32 @assertEqualIntA(%struct.archive* %49, i32 %50, i32 %52)
  %54 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %55 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %54)
  %56 = call i32 @assertEqualInt(i32 %55, i32 0)
  %57 = load %struct.archive*, %struct.archive** %6, align 8
  %58 = load %struct.archive*, %struct.archive** %6, align 8
  %59 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %58)
  %60 = load i32, i32* @ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED, align 4
  %61 = call i32 @assertEqualIntA(%struct.archive* %57, i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %48, %2
  %63 = load %struct.archive*, %struct.archive** %6, align 8
  %64 = load i32, i32* @ARCHIVE_OK, align 4
  %65 = load %struct.archive*, %struct.archive** %6, align 8
  %66 = call i32 @archive_read_next_header(%struct.archive* %65, %struct.archive_entry** %5)
  %67 = call i32 @assertEqualIntA(%struct.archive* %63, i32 %64, i32 %66)
  %68 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %69 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %68)
  %70 = call i32 @assertEqualInt(i32 %69, i32 0)
  %71 = load %struct.archive*, %struct.archive** %6, align 8
  %72 = load %struct.archive*, %struct.archive** %6, align 8
  %73 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %72)
  %74 = load i32, i32* @ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED, align 4
  %75 = call i32 @assertEqualIntA(%struct.archive* %71, i32 %73, i32 %74)
  %76 = load %struct.archive*, %struct.archive** %6, align 8
  %77 = load i32, i32* @ARCHIVE_OK, align 4
  %78 = load %struct.archive*, %struct.archive** %6, align 8
  %79 = call i32 @archive_read_next_header(%struct.archive* %78, %struct.archive_entry** %5)
  %80 = call i32 @assertEqualIntA(%struct.archive* %76, i32 %77, i32 %79)
  %81 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %82 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %81)
  %83 = call i32 @assertEqualInt(i32 %82, i32 0)
  %84 = load %struct.archive*, %struct.archive** %6, align 8
  %85 = load %struct.archive*, %struct.archive** %6, align 8
  %86 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %85)
  %87 = load i32, i32* @ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED, align 4
  %88 = call i32 @assertEqualIntA(%struct.archive* %84, i32 %86, i32 %87)
  %89 = load %struct.archive*, %struct.archive** %6, align 8
  %90 = load i32, i32* @ARCHIVE_EOF, align 4
  %91 = load %struct.archive*, %struct.archive** %6, align 8
  %92 = call i32 @archive_read_next_header(%struct.archive* %91, %struct.archive_entry** %5)
  %93 = call i32 @assertEqualIntA(%struct.archive* %89, i32 %90, i32 %92)
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* @STORE, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %62
  %98 = load %struct.archive*, %struct.archive** %6, align 8
  %99 = call i32 @archive_file_count(%struct.archive* %98)
  %100 = call i32 @assertEqualInt(i32 4, i32 %99)
  br label %105

101:                                              ; preds = %62
  %102 = load %struct.archive*, %struct.archive** %6, align 8
  %103 = call i32 @archive_file_count(%struct.archive* %102)
  %104 = call i32 @assertEqualInt(i32 3, i32 %103)
  br label %105

105:                                              ; preds = %101, %97
  %106 = load %struct.archive*, %struct.archive** %6, align 8
  %107 = load i32, i32* @ARCHIVE_FILTER_NONE, align 4
  %108 = load %struct.archive*, %struct.archive** %6, align 8
  %109 = call i32 @archive_filter_code(%struct.archive* %108, i32 0)
  %110 = call i32 @assertEqualIntA(%struct.archive* %106, i32 %107, i32 %109)
  %111 = load %struct.archive*, %struct.archive** %6, align 8
  %112 = load i32, i32* @ARCHIVE_FORMAT_CAB, align 4
  %113 = load %struct.archive*, %struct.archive** %6, align 8
  %114 = call i32 @archive_format(%struct.archive* %113)
  %115 = call i32 @assertEqualIntA(%struct.archive* %111, i32 %112, i32 %114)
  %116 = load i32, i32* @ARCHIVE_OK, align 4
  %117 = load %struct.archive*, %struct.archive** %6, align 8
  %118 = call i32 @archive_read_close(%struct.archive* %117)
  %119 = call i32 @assertEqualInt(i32 %116, i32 %118)
  %120 = load i32, i32* @ARCHIVE_OK, align 4
  %121 = load %struct.archive*, %struct.archive** %6, align 8
  %122 = call i32 @archive_read_free(%struct.archive* %121)
  %123 = call i32 @assertEqualInt(i32 %120, i32 %122)
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @extract_reference_file(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.archive* @archive_read_new(...) #1

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #1

declare dso_local i32 @archive_read_support_filter_all(%struct.archive*) #1

declare dso_local i32 @archive_read_support_format_all(%struct.archive*) #1

declare dso_local i32 @archive_read_open_filename(%struct.archive*, i8*, i32) #1

declare dso_local i32 @archive_read_next_header(%struct.archive*, %struct.archive_entry**) #1

declare dso_local i32 @assertEqualInt(i32, i32) #1

declare dso_local i32 @archive_entry_is_encrypted(%struct.archive_entry*) #1

declare dso_local i32 @archive_read_has_encrypted_entries(%struct.archive*) #1

declare dso_local i32 @archive_file_count(%struct.archive*) #1

declare dso_local i32 @archive_filter_code(%struct.archive*, i32) #1

declare dso_local i32 @archive_format(%struct.archive*) #1

declare dso_local i32 @archive_read_close(%struct.archive*) #1

declare dso_local i32 @archive_read_free(%struct.archive*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

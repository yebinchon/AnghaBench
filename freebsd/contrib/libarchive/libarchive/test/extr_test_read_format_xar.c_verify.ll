; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_xar.c_verify.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_xar.c_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type opaque
%struct.archive_entry = type opaque

@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Unsupported bzip2\00", align 1
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"xar reading not fully supported on this platform\00", align 1
@ARCHIVE_FILTER_NONE = common dso_local global i64 0, align 8
@ARCHIVE_FORMAT_XAR = common dso_local global i64 0, align 8
@ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED = common dso_local global i32 0, align 4
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, void (%struct.archive*, %struct.archive_entry*)*, void (%struct.archive*, %struct.archive_entry*)*, i32)* @verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @verify(i8* %0, i64 %1, void (%struct.archive*, %struct.archive_entry*)* %2, void (%struct.archive*, %struct.archive_entry*)* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca void (%struct.archive*, %struct.archive_entry*)*, align 8
  %9 = alloca void (%struct.archive*, %struct.archive_entry*)*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.archive_entry*, align 8
  %12 = alloca %struct.archive*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store void (%struct.archive*, %struct.archive_entry*)* %2, void (%struct.archive*, %struct.archive_entry*)** %8, align 8
  store void (%struct.archive*, %struct.archive_entry*)* %3, void (%struct.archive*, %struct.archive_entry*)** %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = call %struct.archive* (...) @archive_read_new()
  store %struct.archive* %15, %struct.archive** %12, align 8
  %16 = icmp ne %struct.archive* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i32, i32* %10, align 4
  switch i32 %19, label %33 [
    i32 129, label %20
    i32 128, label %32
  ]

20:                                               ; preds = %5
  %21 = load i32, i32* @ARCHIVE_OK, align 4
  %22 = load %struct.archive*, %struct.archive** %12, align 8
  %23 = call i32 @archive_read_support_filter_bzip2(%struct.archive* %22)
  %24 = icmp ne i32 %21, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = call i32 @skipping(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @ARCHIVE_OK, align 4
  %28 = load %struct.archive*, %struct.archive** %12, align 8
  %29 = call i64 @archive_read_free(%struct.archive* %28)
  %30 = call i32 @assertEqualInt(i32 %27, i64 %29)
  br label %146

31:                                               ; preds = %20
  br label %33

32:                                               ; preds = %5
  br label %33

33:                                               ; preds = %5, %32, %31
  %34 = load %struct.archive*, %struct.archive** %12, align 8
  %35 = call i64 @archive_read_support_filter_all(%struct.archive* %34)
  %36 = icmp eq i64 0, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @assertA(i32 %37)
  %39 = load %struct.archive*, %struct.archive** %12, align 8
  %40 = call i32 @archive_read_support_format_xar(%struct.archive* %39)
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %14, align 4
  %42 = load i32, i32* @ARCHIVE_WARN, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %33
  %45 = call i32 @skipping(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* @ARCHIVE_OK, align 4
  %47 = load %struct.archive*, %struct.archive** %12, align 8
  %48 = call i64 @archive_read_free(%struct.archive* %47)
  %49 = call i32 @assertEqualInt(i32 %46, i64 %48)
  br label %146

50:                                               ; preds = %33
  %51 = call i8* @malloc(i32 100000)
  store i8* %51, i8** %13, align 8
  %52 = icmp ne i8* %51, null
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  %55 = load i8*, i8** %13, align 8
  %56 = icmp eq i8* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  br label %146

58:                                               ; preds = %50
  %59 = load i8*, i8** %13, align 8
  %60 = load i8*, i8** %6, align 8
  %61 = load i64, i64* %7, align 8
  %62 = call i32 @memcpy(i8* %59, i8* %60, i64 %61)
  %63 = load i8*, i8** %13, align 8
  %64 = load i64, i64* %7, align 8
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  %66 = call i32 @memset(i8* %65, i32 0, i32 2048)
  %67 = load %struct.archive*, %struct.archive** %12, align 8
  %68 = call i64 @archive_read_support_format_all(%struct.archive* %67)
  %69 = icmp eq i64 0, %68
  %70 = zext i1 %69 to i32
  %71 = call i32 @assertA(i32 %70)
  %72 = load %struct.archive*, %struct.archive** %12, align 8
  %73 = load i8*, i8** %13, align 8
  %74 = load i64, i64* %7, align 8
  %75 = add i64 %74, 1024
  %76 = call i64 @archive_read_open_memory(%struct.archive* %72, i8* %73, i64 %75)
  %77 = icmp eq i64 0, %76
  %78 = zext i1 %77 to i32
  %79 = call i32 @assertA(i32 %78)
  %80 = load %struct.archive*, %struct.archive** %12, align 8
  %81 = call i64 @archive_read_next_header(%struct.archive* %80, %struct.archive_entry** %11)
  %82 = icmp eq i64 0, %81
  %83 = zext i1 %82 to i32
  %84 = call i32 @assertA(i32 %83)
  %85 = load %struct.archive*, %struct.archive** %12, align 8
  %86 = call i32 @archive_filter_code(%struct.archive* %85, i32 0)
  %87 = load i64, i64* @ARCHIVE_FILTER_NONE, align 8
  %88 = call i32 @assertEqualInt(i32 %86, i64 %87)
  %89 = load %struct.archive*, %struct.archive** %12, align 8
  %90 = call i32 @archive_format(%struct.archive* %89)
  %91 = load i64, i64* @ARCHIVE_FORMAT_XAR, align 8
  %92 = call i32 @assertEqualInt(i32 %90, i64 %91)
  %93 = load %struct.archive_entry*, %struct.archive_entry** %11, align 8
  %94 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %93)
  %95 = call i32 @assertEqualInt(i32 %94, i64 0)
  %96 = load %struct.archive*, %struct.archive** %12, align 8
  %97 = load %struct.archive*, %struct.archive** %12, align 8
  %98 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %97)
  %99 = load i32, i32* @ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED, align 4
  %100 = call i32 @assertEqualIntA(%struct.archive* %96, i32 %98, i32 %99)
  %101 = load void (%struct.archive*, %struct.archive_entry*)*, void (%struct.archive*, %struct.archive_entry*)** %8, align 8
  %102 = load %struct.archive*, %struct.archive** %12, align 8
  %103 = load %struct.archive_entry*, %struct.archive_entry** %11, align 8
  call void %101(%struct.archive* %102, %struct.archive_entry* %103)
  %104 = load void (%struct.archive*, %struct.archive_entry*)*, void (%struct.archive*, %struct.archive_entry*)** %9, align 8
  %105 = icmp ne void (%struct.archive*, %struct.archive_entry*)* %104, null
  br i1 %105, label %106, label %126

106:                                              ; preds = %58
  %107 = load %struct.archive*, %struct.archive** %12, align 8
  %108 = call i64 @archive_read_next_header(%struct.archive* %107, %struct.archive_entry** %11)
  %109 = icmp eq i64 0, %108
  %110 = zext i1 %109 to i32
  %111 = call i32 @assertA(i32 %110)
  %112 = load %struct.archive*, %struct.archive** %12, align 8
  %113 = call i32 @archive_filter_code(%struct.archive* %112, i32 0)
  %114 = load i64, i64* @ARCHIVE_FILTER_NONE, align 8
  %115 = call i32 @assertEqualInt(i32 %113, i64 %114)
  %116 = load %struct.archive*, %struct.archive** %12, align 8
  %117 = call i32 @archive_format(%struct.archive* %116)
  %118 = load i64, i64* @ARCHIVE_FORMAT_XAR, align 8
  %119 = call i32 @assertEqualInt(i32 %117, i64 %118)
  %120 = load void (%struct.archive*, %struct.archive_entry*)*, void (%struct.archive*, %struct.archive_entry*)** %9, align 8
  %121 = load %struct.archive*, %struct.archive** %12, align 8
  %122 = load %struct.archive_entry*, %struct.archive_entry** %11, align 8
  call void %120(%struct.archive* %121, %struct.archive_entry* %122)
  %123 = load %struct.archive*, %struct.archive** %12, align 8
  %124 = call i64 @archive_file_count(%struct.archive* %123)
  %125 = call i32 @assertEqualInt(i32 2, i64 %124)
  br label %130

126:                                              ; preds = %58
  %127 = load %struct.archive*, %struct.archive** %12, align 8
  %128 = call i64 @archive_file_count(%struct.archive* %127)
  %129 = call i32 @assertEqualInt(i32 1, i64 %128)
  br label %130

130:                                              ; preds = %126, %106
  %131 = load i32, i32* @ARCHIVE_EOF, align 4
  %132 = load %struct.archive*, %struct.archive** %12, align 8
  %133 = call i64 @archive_read_next_header(%struct.archive* %132, %struct.archive_entry** %11)
  %134 = call i32 @assertEqualInt(i32 %131, i64 %133)
  %135 = load %struct.archive*, %struct.archive** %12, align 8
  %136 = load i32, i32* @ARCHIVE_OK, align 4
  %137 = load %struct.archive*, %struct.archive** %12, align 8
  %138 = call i32 @archive_read_close(%struct.archive* %137)
  %139 = call i32 @assertEqualIntA(%struct.archive* %135, i32 %136, i32 %138)
  %140 = load i32, i32* @ARCHIVE_OK, align 4
  %141 = load %struct.archive*, %struct.archive** %12, align 8
  %142 = call i64 @archive_read_free(%struct.archive* %141)
  %143 = call i32 @assertEqualInt(i32 %140, i64 %142)
  %144 = load i8*, i8** %13, align 8
  %145 = call i32 @free(i8* %144)
  br label %146

146:                                              ; preds = %130, %57, %44, %25
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.archive* @archive_read_new(...) #1

declare dso_local i32 @archive_read_support_filter_bzip2(%struct.archive*) #1

declare dso_local i32 @skipping(i8*) #1

declare dso_local i32 @assertEqualInt(i32, i64) #1

declare dso_local i64 @archive_read_free(%struct.archive*) #1

declare dso_local i32 @assertA(i32) #1

declare dso_local i64 @archive_read_support_filter_all(%struct.archive*) #1

declare dso_local i32 @archive_read_support_format_xar(%struct.archive*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @archive_read_support_format_all(%struct.archive*) #1

declare dso_local i64 @archive_read_open_memory(%struct.archive*, i8*, i64) #1

declare dso_local i64 @archive_read_next_header(%struct.archive*, %struct.archive_entry**) #1

declare dso_local i32 @archive_filter_code(%struct.archive*, i32) #1

declare dso_local i32 @archive_format(%struct.archive*) #1

declare dso_local i32 @archive_entry_is_encrypted(%struct.archive_entry*) #1

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #1

declare dso_local i32 @archive_read_has_encrypted_entries(%struct.archive*) #1

declare dso_local i64 @archive_file_count(%struct.archive*) #1

declare dso_local i32 @archive_read_close(%struct.archive*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

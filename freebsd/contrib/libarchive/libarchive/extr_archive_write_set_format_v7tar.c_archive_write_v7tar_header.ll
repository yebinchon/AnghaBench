; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_v7tar.c_archive_write_v7tar_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_v7tar.c_archive_write_v7tar_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { i32, i64 }
%struct.archive_entry = type { i32 }
%struct.v7tar = type { i32, i32, i64, %struct.archive_string_conv*, %struct.archive_string_conv* }
%struct.archive_string_conv = type { i32 }
%struct.archive_string = type { i32 }
%struct.archive_wstring = type { i32 }

@ARCHIVE_ERRNO_MISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Can't record entry in tar file without pathname\00", align 1
@ARCHIVE_FAILED = common dso_local global i32 0, align 4
@AE_IFREG = common dso_local global i64 0, align 8
@AE_IFDIR = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Can't allocate v7tar data\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*, %struct.archive_entry*)* @archive_write_v7tar_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_write_v7tar_header(%struct.archive_write* %0, %struct.archive_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_write*, align 8
  %5 = alloca %struct.archive_entry*, align 8
  %6 = alloca [512 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.v7tar*, align 8
  %10 = alloca %struct.archive_entry*, align 8
  %11 = alloca %struct.archive_string_conv*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.archive_string, align 4
  store %struct.archive_write* %0, %struct.archive_write** %4, align 8
  store %struct.archive_entry* %1, %struct.archive_entry** %5, align 8
  %15 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %16 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.v7tar*
  store %struct.v7tar* %18, %struct.v7tar** %9, align 8
  %19 = load %struct.v7tar*, %struct.v7tar** %9, align 8
  %20 = getelementptr inbounds %struct.v7tar, %struct.v7tar* %19, i32 0, i32 3
  %21 = load %struct.archive_string_conv*, %struct.archive_string_conv** %20, align 8
  %22 = icmp eq %struct.archive_string_conv* %21, null
  br i1 %22, label %23, label %40

23:                                               ; preds = %2
  %24 = load %struct.v7tar*, %struct.v7tar** %9, align 8
  %25 = getelementptr inbounds %struct.v7tar, %struct.v7tar* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %23
  %29 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %30 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %29, i32 0, i32 0
  %31 = call %struct.archive_string_conv* @archive_string_default_conversion_for_write(i32* %30)
  %32 = load %struct.v7tar*, %struct.v7tar** %9, align 8
  %33 = getelementptr inbounds %struct.v7tar, %struct.v7tar* %32, i32 0, i32 4
  store %struct.archive_string_conv* %31, %struct.archive_string_conv** %33, align 8
  %34 = load %struct.v7tar*, %struct.v7tar** %9, align 8
  %35 = getelementptr inbounds %struct.v7tar, %struct.v7tar* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  br label %36

36:                                               ; preds = %28, %23
  %37 = load %struct.v7tar*, %struct.v7tar** %9, align 8
  %38 = getelementptr inbounds %struct.v7tar, %struct.v7tar* %37, i32 0, i32 4
  %39 = load %struct.archive_string_conv*, %struct.archive_string_conv** %38, align 8
  store %struct.archive_string_conv* %39, %struct.archive_string_conv** %11, align 8
  br label %44

40:                                               ; preds = %2
  %41 = load %struct.v7tar*, %struct.v7tar** %9, align 8
  %42 = getelementptr inbounds %struct.v7tar, %struct.v7tar* %41, i32 0, i32 3
  %43 = load %struct.archive_string_conv*, %struct.archive_string_conv** %42, align 8
  store %struct.archive_string_conv* %43, %struct.archive_string_conv** %11, align 8
  br label %44

44:                                               ; preds = %40, %36
  %45 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %46 = call i8* @archive_entry_pathname(%struct.archive_entry* %45)
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %50 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %49, i32 0, i32 0
  %51 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %52 = call i32 @archive_set_error(i32* %50, i32 %51, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %53, i32* %3, align 4
  br label %175

54:                                               ; preds = %44
  %55 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %56 = call i32* @archive_entry_hardlink(%struct.archive_entry* %55)
  %57 = icmp ne i32* %56, null
  br i1 %57, label %67, label %58

58:                                               ; preds = %54
  %59 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %60 = call i32* @archive_entry_symlink(%struct.archive_entry* %59)
  %61 = icmp ne i32* %60, null
  br i1 %61, label %67, label %62

62:                                               ; preds = %58
  %63 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %64 = call i64 @archive_entry_filetype(%struct.archive_entry* %63)
  %65 = load i64, i64* @AE_IFREG, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %70, label %67

67:                                               ; preds = %62, %58, %54
  %68 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %69 = call i32 @archive_entry_set_size(%struct.archive_entry* %68, i32 0)
  br label %70

70:                                               ; preds = %67, %62
  %71 = load i64, i64* @AE_IFDIR, align 8
  %72 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %73 = call i64 @archive_entry_filetype(%struct.archive_entry* %72)
  %74 = icmp eq i64 %71, %73
  br i1 %74, label %75, label %129

75:                                               ; preds = %70
  %76 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %77 = call i8* @archive_entry_pathname(%struct.archive_entry* %76)
  store i8* %77, i8** %12, align 8
  %78 = load i8*, i8** %12, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %128

80:                                               ; preds = %75
  %81 = load i8*, i8** %12, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 0
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %128

86:                                               ; preds = %80
  %87 = load i8*, i8** %12, align 8
  %88 = load i8*, i8** %12, align 8
  %89 = call i32 @strlen(i8* %88)
  %90 = sub nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %87, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp ne i32 %94, 47
  br i1 %95, label %96, label %128

96:                                               ; preds = %86
  %97 = bitcast %struct.archive_string* %14 to %struct.archive_wstring*
  %98 = call i32 @archive_string_init(%struct.archive_wstring* %97)
  %99 = load i8*, i8** %12, align 8
  %100 = call i32 @strlen(i8* %99)
  %101 = sext i32 %100 to i64
  store i64 %101, i64* %13, align 8
  %102 = bitcast %struct.archive_string* %14 to %struct.archive_wstring*
  %103 = load i64, i64* %13, align 8
  %104 = add i64 %103, 2
  %105 = call i32* @archive_string_ensure(%struct.archive_wstring* %102, i64 %104)
  %106 = icmp eq i32* %105, null
  br i1 %106, label %107, label %115

107:                                              ; preds = %96
  %108 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %109 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %108, i32 0, i32 0
  %110 = load i32, i32* @ENOMEM, align 4
  %111 = call i32 @archive_set_error(i32* %109, i32 %110, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %112 = bitcast %struct.archive_string* %14 to %struct.archive_wstring*
  %113 = call i32 @archive_string_free(%struct.archive_wstring* %112)
  %114 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %114, i32* %3, align 4
  br label %175

115:                                              ; preds = %96
  %116 = bitcast %struct.archive_string* %14 to %struct.archive_wstring*
  %117 = load i8*, i8** %12, align 8
  %118 = load i64, i64* %13, align 8
  %119 = call i32 @archive_strncpy(%struct.archive_wstring* %116, i8* %117, i64 %118)
  %120 = bitcast %struct.archive_string* %14 to %struct.archive_wstring*
  %121 = call i32 @archive_strappend_char(%struct.archive_wstring* %120, i8 signext 47)
  %122 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %123 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %14, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %122, i32 %124)
  %126 = bitcast %struct.archive_string* %14 to %struct.archive_wstring*
  %127 = call i32 @archive_string_free(%struct.archive_wstring* %126)
  br label %128

128:                                              ; preds = %115, %86, %80, %75
  br label %129

129:                                              ; preds = %128, %70
  store %struct.archive_entry* null, %struct.archive_entry** %10, align 8
  %130 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %131 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %132 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %133 = load %struct.archive_string_conv*, %struct.archive_string_conv** %11, align 8
  %134 = call i32 @format_header_v7tar(%struct.archive_write* %130, i8* %131, %struct.archive_entry* %132, i32 1, %struct.archive_string_conv* %133)
  store i32 %134, i32* %7, align 4
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* @ARCHIVE_WARN, align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %142

138:                                              ; preds = %129
  %139 = load %struct.archive_entry*, %struct.archive_entry** %10, align 8
  %140 = call i32 @archive_entry_free(%struct.archive_entry* %139)
  %141 = load i32, i32* %7, align 4
  store i32 %141, i32* %3, align 4
  br label %175

142:                                              ; preds = %129
  %143 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %144 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %145 = call i32 @__archive_write_output(%struct.archive_write* %143, i8* %144, i32 512)
  store i32 %145, i32* %8, align 4
  %146 = load i32, i32* %8, align 4
  %147 = load i32, i32* @ARCHIVE_WARN, align 4
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %149, label %153

149:                                              ; preds = %142
  %150 = load %struct.archive_entry*, %struct.archive_entry** %10, align 8
  %151 = call i32 @archive_entry_free(%struct.archive_entry* %150)
  %152 = load i32, i32* %8, align 4
  store i32 %152, i32* %3, align 4
  br label %175

153:                                              ; preds = %142
  %154 = load i32, i32* %8, align 4
  %155 = load i32, i32* %7, align 4
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %157, label %159

157:                                              ; preds = %153
  %158 = load i32, i32* %8, align 4
  store i32 %158, i32* %7, align 4
  br label %159

159:                                              ; preds = %157, %153
  %160 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %161 = call i64 @archive_entry_size(%struct.archive_entry* %160)
  %162 = load %struct.v7tar*, %struct.v7tar** %9, align 8
  %163 = getelementptr inbounds %struct.v7tar, %struct.v7tar* %162, i32 0, i32 2
  store i64 %161, i64* %163, align 8
  %164 = load %struct.v7tar*, %struct.v7tar** %9, align 8
  %165 = getelementptr inbounds %struct.v7tar, %struct.v7tar* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = trunc i64 %166 to i32
  %168 = sub nsw i32 0, %167
  %169 = and i32 511, %168
  %170 = load %struct.v7tar*, %struct.v7tar** %9, align 8
  %171 = getelementptr inbounds %struct.v7tar, %struct.v7tar* %170, i32 0, i32 1
  store i32 %169, i32* %171, align 4
  %172 = load %struct.archive_entry*, %struct.archive_entry** %10, align 8
  %173 = call i32 @archive_entry_free(%struct.archive_entry* %172)
  %174 = load i32, i32* %7, align 4
  store i32 %174, i32* %3, align 4
  br label %175

175:                                              ; preds = %159, %149, %138, %107, %48
  %176 = load i32, i32* %3, align 4
  ret i32 %176
}

declare dso_local %struct.archive_string_conv* @archive_string_default_conversion_for_write(i32*) #1

declare dso_local i8* @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

declare dso_local i32* @archive_entry_hardlink(%struct.archive_entry*) #1

declare dso_local i32* @archive_entry_symlink(%struct.archive_entry*) #1

declare dso_local i64 @archive_entry_filetype(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_set_size(%struct.archive_entry*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @archive_string_init(%struct.archive_wstring*) #1

declare dso_local i32* @archive_string_ensure(%struct.archive_wstring*, i64) #1

declare dso_local i32 @archive_string_free(%struct.archive_wstring*) #1

declare dso_local i32 @archive_strncpy(%struct.archive_wstring*, i8*, i64) #1

declare dso_local i32 @archive_strappend_char(%struct.archive_wstring*, i8 signext) #1

declare dso_local i32 @archive_entry_copy_pathname(%struct.archive_entry*, i32) #1

declare dso_local i32 @format_header_v7tar(%struct.archive_write*, i8*, %struct.archive_entry*, i32, %struct.archive_string_conv*) #1

declare dso_local i32 @archive_entry_free(%struct.archive_entry*) #1

declare dso_local i32 @__archive_write_output(%struct.archive_write*, i8*, i32) #1

declare dso_local i64 @archive_entry_size(%struct.archive_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar5.c_parse_file_extra_redir.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar5.c_parse_file_extra_redir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32 }
%struct.archive_entry = type { i32 }
%struct.rar5 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@MAX_NAME_IN_BYTES = common dso_local global i32 0, align 4
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i64 0, align 8
@MAX_NAME_IN_CHARS = common dso_local global i32 0, align 4
@ARCHIVE_ERRNO_FILE_FORMAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Link target is too long\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"No link target specified\00", align 1
@AE_IFLNK = common dso_local global i32 0, align 4
@REDIR_SYMLINK_IS_DIR = common dso_local global i32 0, align 4
@AE_SYMLINK_TYPE_DIRECTORY = common dso_local global i32 0, align 4
@AE_SYMLINK_TYPE_FILE = common dso_local global i32 0, align 4
@AE_IFREG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct.archive_entry*, %struct.rar5*, i64*)* @parse_file_extra_redir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_file_extra_redir(%struct.archive_read* %0, %struct.archive_entry* %1, %struct.rar5* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.archive_read*, align 8
  %7 = alloca %struct.archive_entry*, align 8
  %8 = alloca %struct.rar5*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %6, align 8
  store %struct.archive_entry* %1, %struct.archive_entry** %7, align 8
  store %struct.rar5* %2, %struct.rar5** %8, align 8
  store i64* %3, i64** %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %16 = load i32, i32* @MAX_NAME_IN_BYTES, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %12, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %13, align 8
  %20 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %21 = load %struct.rar5*, %struct.rar5** %8, align 8
  %22 = getelementptr inbounds %struct.rar5, %struct.rar5* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @read_var(%struct.archive_read* %20, i32* %23, i64* %10)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %4
  %27 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %27, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %153

28:                                               ; preds = %4
  %29 = load i64, i64* @ARCHIVE_OK, align 8
  %30 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %31 = load i64, i64* %10, align 8
  %32 = trunc i64 %31 to i32
  %33 = call i64 @consume(%struct.archive_read* %30, i32 %32)
  %34 = icmp ne i64 %29, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %36, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %153

37:                                               ; preds = %28
  %38 = load i64, i64* %10, align 8
  %39 = load i64*, i64** %9, align 8
  %40 = load i64, i64* %39, align 8
  %41 = sub i64 %40, %38
  store i64 %41, i64* %39, align 8
  %42 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %43 = load %struct.rar5*, %struct.rar5** %8, align 8
  %44 = getelementptr inbounds %struct.rar5, %struct.rar5* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = call i32 @read_var(%struct.archive_read* %42, i32* %45, i64* %10)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %37
  %49 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %49, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %153

50:                                               ; preds = %37
  %51 = load i64, i64* @ARCHIVE_OK, align 8
  %52 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %53 = load i64, i64* %10, align 8
  %54 = trunc i64 %53 to i32
  %55 = call i64 @consume(%struct.archive_read* %52, i32 %54)
  %56 = icmp ne i64 %51, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %58, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %153

59:                                               ; preds = %50
  %60 = load i64, i64* %10, align 8
  %61 = load i64*, i64** %9, align 8
  %62 = load i64, i64* %61, align 8
  %63 = sub i64 %62, %60
  store i64 %63, i64* %61, align 8
  %64 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %65 = call i32 @read_var_sized(%struct.archive_read* %64, i64* %11, i32* null)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %59
  %68 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %68, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %153

69:                                               ; preds = %59
  %70 = load i64, i64* %11, align 8
  %71 = add i64 %70, 1
  %72 = load i64*, i64** %9, align 8
  %73 = load i64, i64* %72, align 8
  %74 = sub i64 %73, %71
  store i64 %74, i64* %72, align 8
  %75 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %76 = load i64, i64* %11, align 8
  %77 = call i32 @read_ahead(%struct.archive_read* %75, i64 %76, i32** %14)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %69
  %80 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %80, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %153

81:                                               ; preds = %69
  %82 = load i64, i64* %11, align 8
  %83 = load i32, i32* @MAX_NAME_IN_CHARS, align 4
  %84 = sub nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = icmp ugt i64 %82, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %81
  %88 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %89 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %88, i32 0, i32 0
  %90 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %91 = call i32 @archive_set_error(i32* %89, i32 %90, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %92 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %92, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %153

93:                                               ; preds = %81
  %94 = load i64, i64* %11, align 8
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %93
  %97 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %98 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %97, i32 0, i32 0
  %99 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %100 = call i32 @archive_set_error(i32* %98, i32 %99, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %101 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %101, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %153

102:                                              ; preds = %93
  %103 = load i32*, i32** %14, align 8
  %104 = load i64, i64* %11, align 8
  %105 = call i32 @memcpy(i8* %19, i32* %103, i64 %104)
  %106 = load i64, i64* %11, align 8
  %107 = getelementptr inbounds i8, i8* %19, i64 %106
  store i8 0, i8* %107, align 1
  %108 = load i64, i64* @ARCHIVE_OK, align 8
  %109 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %110 = load i64, i64* %11, align 8
  %111 = trunc i64 %110 to i32
  %112 = call i64 @consume(%struct.archive_read* %109, i32 %111)
  %113 = icmp ne i64 %108, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %102
  %115 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %115, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %153

116:                                              ; preds = %102
  %117 = load %struct.rar5*, %struct.rar5** %8, align 8
  %118 = getelementptr inbounds %struct.rar5, %struct.rar5* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  switch i32 %120, label %149 [
    i32 129, label %121
    i32 128, label %121
    i32 130, label %143
  ]

121:                                              ; preds = %116, %116
  %122 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %123 = load i32, i32* @AE_IFLNK, align 4
  %124 = call i32 @archive_entry_set_filetype(%struct.archive_entry* %122, i32 %123)
  %125 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %126 = call i32 @archive_entry_update_symlink_utf8(%struct.archive_entry* %125, i8* %19)
  %127 = load %struct.rar5*, %struct.rar5** %8, align 8
  %128 = getelementptr inbounds %struct.rar5, %struct.rar5* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @REDIR_SYMLINK_IS_DIR, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %121
  %135 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %136 = load i32, i32* @AE_SYMLINK_TYPE_DIRECTORY, align 4
  %137 = call i32 @archive_entry_set_symlink_type(%struct.archive_entry* %135, i32 %136)
  br label %142

138:                                              ; preds = %121
  %139 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %140 = load i32, i32* @AE_SYMLINK_TYPE_FILE, align 4
  %141 = call i32 @archive_entry_set_symlink_type(%struct.archive_entry* %139, i32 %140)
  br label %142

142:                                              ; preds = %138, %134
  br label %150

143:                                              ; preds = %116
  %144 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %145 = load i32, i32* @AE_IFREG, align 4
  %146 = call i32 @archive_entry_set_filetype(%struct.archive_entry* %144, i32 %145)
  %147 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %148 = call i32 @archive_entry_update_hardlink_utf8(%struct.archive_entry* %147, i8* %19)
  br label %150

149:                                              ; preds = %116
  br label %150

150:                                              ; preds = %149, %143, %142
  %151 = load i64, i64* @ARCHIVE_OK, align 8
  %152 = trunc i64 %151 to i32
  store i32 %152, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %153

153:                                              ; preds = %150, %114, %96, %87, %79, %67, %57, %48, %35, %26
  %154 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %154)
  %155 = load i32, i32* %5, align 4
  ret i32 %155
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @read_var(%struct.archive_read*, i32*, i64*) #2

declare dso_local i64 @consume(%struct.archive_read*, i32) #2

declare dso_local i32 @read_var_sized(%struct.archive_read*, i64*, i32*) #2

declare dso_local i32 @read_ahead(%struct.archive_read*, i64, i32**) #2

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #2

declare dso_local i32 @memcpy(i8*, i32*, i64) #2

declare dso_local i32 @archive_entry_set_filetype(%struct.archive_entry*, i32) #2

declare dso_local i32 @archive_entry_update_symlink_utf8(%struct.archive_entry*, i8*) #2

declare dso_local i32 @archive_entry_set_symlink_type(%struct.archive_entry*, i32) #2

declare dso_local i32 @archive_entry_update_hardlink_utf8(%struct.archive_entry*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

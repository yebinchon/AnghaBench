; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_cpio.c_archive_read_format_cpio_read_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_cpio.c_archive_read_format_cpio_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.archive_entry = type { i32 }
%struct.cpio = type { i32, i32 (%struct.archive_read.0*, %struct.cpio*, %struct.archive_entry.1*, i64*, i64*)*, i32, i64, %struct.archive_string_conv*, %struct.archive_string_conv* }
%struct.archive_read.0 = type opaque
%struct.archive_entry.1 = type opaque
%struct.archive_string_conv = type { i32 }

@ARCHIVE_WARN = common dso_local global i32 0, align 4
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Can't allocate memory for Pathname\00", align 1
@ARCHIVE_ERRNO_FILE_FORMAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"Pathname can't be converted from %s to current locale.\00", align 1
@AE_IFLNK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [69 x i8] c"Rejecting malformed cpio archive: symlink contents exceed 1 megabyte\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Can't allocate memory for Linkname\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"Linkname can't be converted from %s to current locale.\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"TRAILER!!!\00", align 1
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct.archive_entry*)* @archive_read_format_cpio_read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_read_format_cpio_read_header(%struct.archive_read* %0, %struct.archive_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_read*, align 8
  %5 = alloca %struct.archive_entry*, align 8
  %6 = alloca %struct.cpio*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.archive_string_conv*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %4, align 8
  store %struct.archive_entry* %1, %struct.archive_entry** %5, align 8
  %13 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %14 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.cpio*
  store %struct.cpio* %18, %struct.cpio** %6, align 8
  %19 = load %struct.cpio*, %struct.cpio** %6, align 8
  %20 = getelementptr inbounds %struct.cpio, %struct.cpio* %19, i32 0, i32 5
  %21 = load %struct.archive_string_conv*, %struct.archive_string_conv** %20, align 8
  store %struct.archive_string_conv* %21, %struct.archive_string_conv** %9, align 8
  %22 = load %struct.archive_string_conv*, %struct.archive_string_conv** %9, align 8
  %23 = icmp eq %struct.archive_string_conv* %22, null
  br i1 %23, label %24, label %41

24:                                               ; preds = %2
  %25 = load %struct.cpio*, %struct.cpio** %6, align 8
  %26 = getelementptr inbounds %struct.cpio, %struct.cpio* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %24
  %30 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %31 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %30, i32 0, i32 0
  %32 = call %struct.archive_string_conv* @archive_string_default_conversion_for_read(i32* %31)
  %33 = load %struct.cpio*, %struct.cpio** %6, align 8
  %34 = getelementptr inbounds %struct.cpio, %struct.cpio* %33, i32 0, i32 4
  store %struct.archive_string_conv* %32, %struct.archive_string_conv** %34, align 8
  %35 = load %struct.cpio*, %struct.cpio** %6, align 8
  %36 = getelementptr inbounds %struct.cpio, %struct.cpio* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  br label %37

37:                                               ; preds = %29, %24
  %38 = load %struct.cpio*, %struct.cpio** %6, align 8
  %39 = getelementptr inbounds %struct.cpio, %struct.cpio* %38, i32 0, i32 4
  %40 = load %struct.archive_string_conv*, %struct.archive_string_conv** %39, align 8
  store %struct.archive_string_conv* %40, %struct.archive_string_conv** %9, align 8
  br label %41

41:                                               ; preds = %37, %2
  %42 = load %struct.cpio*, %struct.cpio** %6, align 8
  %43 = getelementptr inbounds %struct.cpio, %struct.cpio* %42, i32 0, i32 1
  %44 = load i32 (%struct.archive_read.0*, %struct.cpio*, %struct.archive_entry.1*, i64*, i64*)*, i32 (%struct.archive_read.0*, %struct.cpio*, %struct.archive_entry.1*, i64*, i64*)** %43, align 8
  %45 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %46 = bitcast %struct.archive_read* %45 to %struct.archive_read.0*
  %47 = load %struct.cpio*, %struct.cpio** %6, align 8
  %48 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %49 = bitcast %struct.archive_entry* %48 to %struct.archive_entry.1*
  %50 = call i32 %44(%struct.archive_read.0* %46, %struct.cpio* %47, %struct.archive_entry.1* %49, i64* %10, i64* %11)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* @ARCHIVE_WARN, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %41
  %55 = load i32, i32* %12, align 4
  store i32 %55, i32* %3, align 4
  br label %187

56:                                               ; preds = %41
  %57 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %58 = load i64, i64* %10, align 8
  %59 = load i64, i64* %11, align 8
  %60 = add i64 %58, %59
  %61 = call i8* @__archive_read_ahead(%struct.archive_read* %57, i64 %60, i32* null)
  store i8* %61, i8** %7, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = icmp eq i8* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %56
  %65 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %65, i32* %3, align 4
  br label %187

66:                                               ; preds = %56
  %67 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %68 = load i8*, i8** %7, align 8
  %69 = load i64, i64* %10, align 8
  %70 = load %struct.archive_string_conv*, %struct.archive_string_conv** %9, align 8
  %71 = call i64 @archive_entry_copy_pathname_l(%struct.archive_entry* %67, i8* %68, i64 %69, %struct.archive_string_conv* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %92

73:                                               ; preds = %66
  %74 = load i64, i64* @errno, align 8
  %75 = load i64, i64* @ENOMEM, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %73
  %78 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %79 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %78, i32 0, i32 0
  %80 = load i64, i64* @ENOMEM, align 8
  %81 = call i32 (i32*, i64, i8*, ...) @archive_set_error(i32* %79, i64 %80, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %82 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %82, i32* %3, align 4
  br label %187

83:                                               ; preds = %73
  %84 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %85 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %84, i32 0, i32 0
  %86 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %87 = sext i32 %86 to i64
  %88 = load %struct.archive_string_conv*, %struct.archive_string_conv** %9, align 8
  %89 = call i32 @archive_string_conversion_charset_name(%struct.archive_string_conv* %88)
  %90 = call i32 (i32*, i64, i8*, ...) @archive_set_error(i32* %85, i64 %87, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %91, i32* %12, align 4
  br label %92

92:                                               ; preds = %83, %66
  %93 = load %struct.cpio*, %struct.cpio** %6, align 8
  %94 = getelementptr inbounds %struct.cpio, %struct.cpio* %93, i32 0, i32 3
  store i64 0, i64* %94, align 8
  %95 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %96 = load i64, i64* %10, align 8
  %97 = load i64, i64* %11, align 8
  %98 = add i64 %96, %97
  %99 = call i32 @__archive_read_consume(%struct.archive_read* %95, i64 %98)
  %100 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %101 = call i64 @archive_entry_filetype(%struct.archive_entry* %100)
  %102 = load i64, i64* @AE_IFLNK, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %164

104:                                              ; preds = %92
  %105 = load %struct.cpio*, %struct.cpio** %6, align 8
  %106 = getelementptr inbounds %struct.cpio, %struct.cpio* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = icmp sgt i32 %107, 1048576
  br i1 %108, label %109, label %115

109:                                              ; preds = %104
  %110 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %111 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %110, i32 0, i32 0
  %112 = load i64, i64* @ENOMEM, align 8
  %113 = call i32 (i32*, i64, i8*, ...) @archive_set_error(i32* %111, i64 %112, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i64 0, i64 0))
  %114 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %114, i32* %3, align 4
  br label %187

115:                                              ; preds = %104
  %116 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %117 = load %struct.cpio*, %struct.cpio** %6, align 8
  %118 = getelementptr inbounds %struct.cpio, %struct.cpio* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = sext i32 %119 to i64
  %121 = call i8* @__archive_read_ahead(%struct.archive_read* %116, i64 %120, i32* null)
  store i8* %121, i8** %8, align 8
  %122 = load i8*, i8** %8, align 8
  %123 = icmp eq i8* %122, null
  br i1 %123, label %124, label %126

124:                                              ; preds = %115
  %125 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %125, i32* %3, align 4
  br label %187

126:                                              ; preds = %115
  %127 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %128 = load i8*, i8** %8, align 8
  %129 = load %struct.cpio*, %struct.cpio** %6, align 8
  %130 = getelementptr inbounds %struct.cpio, %struct.cpio* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = sext i32 %131 to i64
  %133 = load %struct.archive_string_conv*, %struct.archive_string_conv** %9, align 8
  %134 = call i64 @archive_entry_copy_symlink_l(%struct.archive_entry* %127, i8* %128, i64 %132, %struct.archive_string_conv* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %155

136:                                              ; preds = %126
  %137 = load i64, i64* @errno, align 8
  %138 = load i64, i64* @ENOMEM, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %146

140:                                              ; preds = %136
  %141 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %142 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %141, i32 0, i32 0
  %143 = load i64, i64* @ENOMEM, align 8
  %144 = call i32 (i32*, i64, i8*, ...) @archive_set_error(i32* %142, i64 %143, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %145 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %145, i32* %3, align 4
  br label %187

146:                                              ; preds = %136
  %147 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %148 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %147, i32 0, i32 0
  %149 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %150 = sext i32 %149 to i64
  %151 = load %struct.archive_string_conv*, %struct.archive_string_conv** %9, align 8
  %152 = call i32 @archive_string_conversion_charset_name(%struct.archive_string_conv* %151)
  %153 = call i32 (i32*, i64, i8*, ...) @archive_set_error(i32* %148, i64 %150, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0), i32 %152)
  %154 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %154, i32* %12, align 4
  br label %155

155:                                              ; preds = %146, %126
  %156 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %157 = load %struct.cpio*, %struct.cpio** %6, align 8
  %158 = getelementptr inbounds %struct.cpio, %struct.cpio* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = sext i32 %159 to i64
  %161 = call i32 @__archive_read_consume(%struct.archive_read* %156, i64 %160)
  %162 = load %struct.cpio*, %struct.cpio** %6, align 8
  %163 = getelementptr inbounds %struct.cpio, %struct.cpio* %162, i32 0, i32 2
  store i32 0, i32* %163, align 8
  br label %164

164:                                              ; preds = %155, %92
  %165 = load i64, i64* %10, align 8
  %166 = icmp eq i64 %165, 11
  br i1 %166, label %167, label %176

167:                                              ; preds = %164
  %168 = load i8*, i8** %7, align 8
  %169 = call i64 @strncmp(i8* %168, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 11)
  %170 = icmp eq i64 %169, 0
  br i1 %170, label %171, label %176

171:                                              ; preds = %167
  %172 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %173 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %172, i32 0, i32 0
  %174 = call i32 @archive_clear_error(i32* %173)
  %175 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %175, i32* %3, align 4
  br label %187

176:                                              ; preds = %167, %164
  %177 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %178 = load %struct.cpio*, %struct.cpio** %6, align 8
  %179 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %180 = call i64 @record_hardlink(%struct.archive_read* %177, %struct.cpio* %178, %struct.archive_entry* %179)
  %181 = load i64, i64* @ARCHIVE_OK, align 8
  %182 = icmp ne i64 %180, %181
  br i1 %182, label %183, label %185

183:                                              ; preds = %176
  %184 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %184, i32* %3, align 4
  br label %187

185:                                              ; preds = %176
  %186 = load i32, i32* %12, align 4
  store i32 %186, i32* %3, align 4
  br label %187

187:                                              ; preds = %185, %183, %171, %140, %124, %109, %77, %64, %54
  %188 = load i32, i32* %3, align 4
  ret i32 %188
}

declare dso_local %struct.archive_string_conv* @archive_string_default_conversion_for_read(i32*) #1

declare dso_local i8* @__archive_read_ahead(%struct.archive_read*, i64, i32*) #1

declare dso_local i64 @archive_entry_copy_pathname_l(%struct.archive_entry*, i8*, i64, %struct.archive_string_conv*) #1

declare dso_local i32 @archive_set_error(i32*, i64, i8*, ...) #1

declare dso_local i32 @archive_string_conversion_charset_name(%struct.archive_string_conv*) #1

declare dso_local i32 @__archive_read_consume(%struct.archive_read*, i64) #1

declare dso_local i64 @archive_entry_filetype(%struct.archive_entry*) #1

declare dso_local i64 @archive_entry_copy_symlink_l(%struct.archive_entry*, i8*, i64, %struct.archive_string_conv*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @archive_clear_error(i32*) #1

declare dso_local i64 @record_hardlink(%struct.archive_read*, %struct.cpio*, %struct.archive_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_tar.c_archive_read_format_tar_read_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_tar.c_archive_read_format_tar_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.archive_entry = type { i32 }
%struct.tar = type { i32, i32, %struct.sparse_block*, i32, i32*, i32*, i32*, i64, i64 }
%struct.sparse_block = type { i32, i32, i32, %struct.sparse_block* }

@archive_read_format_tar_read_header.default_inode = internal global i32 0, align 4
@archive_read_format_tar_read_header.default_dev = internal global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@AE_IFREG = common dso_local global i64 0, align 8
@AE_IFDIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct.archive_entry*)* @archive_read_format_tar_read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_read_format_tar_read_header(%struct.archive_read* %0, %struct.archive_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_read*, align 8
  %5 = alloca %struct.archive_entry*, align 8
  %6 = alloca %struct.tar*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.sparse_block*, align 8
  store %struct.archive_read* %0, %struct.archive_read** %4, align 8
  store %struct.archive_entry* %1, %struct.archive_entry** %5, align 8
  store i64 0, i64* %11, align 8
  %13 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %14 = load i32, i32* @archive_read_format_tar_read_header.default_dev, align 4
  %15 = add nsw i32 1, %14
  %16 = call i32 @archive_entry_set_dev(%struct.archive_entry* %13, i32 %15)
  %17 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %18 = load i32, i32* @archive_read_format_tar_read_header.default_inode, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* @archive_read_format_tar_read_header.default_inode, align 4
  %20 = call i32 @archive_entry_set_ino(%struct.archive_entry* %17, i32 %19)
  %21 = load i32, i32* @archive_read_format_tar_read_header.default_inode, align 4
  %22 = icmp sge i32 %21, 65535
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @archive_read_format_tar_read_header.default_dev, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* @archive_read_format_tar_read_header.default_dev, align 4
  store i32 0, i32* @archive_read_format_tar_read_header.default_inode, align 4
  br label %26

26:                                               ; preds = %23, %2
  %27 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %28 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.tar*
  store %struct.tar* %32, %struct.tar** %6, align 8
  %33 = load %struct.tar*, %struct.tar** %6, align 8
  %34 = getelementptr inbounds %struct.tar, %struct.tar* %33, i32 0, i32 8
  store i64 0, i64* %34, align 8
  %35 = load %struct.tar*, %struct.tar** %6, align 8
  %36 = call i32 @gnu_clear_sparse_list(%struct.tar* %35)
  %37 = load %struct.tar*, %struct.tar** %6, align 8
  %38 = getelementptr inbounds %struct.tar, %struct.tar* %37, i32 0, i32 0
  store i32 -1, i32* %38, align 8
  %39 = load %struct.tar*, %struct.tar** %6, align 8
  %40 = getelementptr inbounds %struct.tar, %struct.tar* %39, i32 0, i32 7
  store i64 0, i64* %40, align 8
  %41 = load %struct.tar*, %struct.tar** %6, align 8
  %42 = getelementptr inbounds %struct.tar, %struct.tar* %41, i32 0, i32 6
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.tar*, %struct.tar** %6, align 8
  %45 = getelementptr inbounds %struct.tar, %struct.tar* %44, i32 0, i32 5
  store i32* %43, i32** %45, align 8
  %46 = load %struct.tar*, %struct.tar** %6, align 8
  %47 = getelementptr inbounds %struct.tar, %struct.tar* %46, i32 0, i32 5
  %48 = load i32*, i32** %47, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %69

50:                                               ; preds = %26
  %51 = load %struct.tar*, %struct.tar** %6, align 8
  %52 = getelementptr inbounds %struct.tar, %struct.tar* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %50
  %56 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %57 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %56, i32 0, i32 0
  %58 = call i32* @archive_string_default_conversion_for_read(i32* %57)
  %59 = load %struct.tar*, %struct.tar** %6, align 8
  %60 = getelementptr inbounds %struct.tar, %struct.tar* %59, i32 0, i32 4
  store i32* %58, i32** %60, align 8
  %61 = load %struct.tar*, %struct.tar** %6, align 8
  %62 = getelementptr inbounds %struct.tar, %struct.tar* %61, i32 0, i32 1
  store i32 1, i32* %62, align 4
  br label %63

63:                                               ; preds = %55, %50
  %64 = load %struct.tar*, %struct.tar** %6, align 8
  %65 = getelementptr inbounds %struct.tar, %struct.tar* %64, i32 0, i32 4
  %66 = load i32*, i32** %65, align 8
  %67 = load %struct.tar*, %struct.tar** %6, align 8
  %68 = getelementptr inbounds %struct.tar, %struct.tar* %67, i32 0, i32 5
  store i32* %66, i32** %68, align 8
  br label %69

69:                                               ; preds = %63, %26
  %70 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %71 = load %struct.tar*, %struct.tar** %6, align 8
  %72 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %73 = call i32 @tar_read_header(%struct.archive_read* %70, %struct.tar* %71, %struct.archive_entry* %72, i64* %11)
  store i32 %73, i32* %9, align 4
  %74 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %75 = call i32 @tar_flush_unconsumed(%struct.archive_read* %74, i64* %11)
  %76 = load %struct.tar*, %struct.tar** %6, align 8
  %77 = getelementptr inbounds %struct.tar, %struct.tar* %76, i32 0, i32 2
  %78 = load %struct.sparse_block*, %struct.sparse_block** %77, align 8
  %79 = icmp eq %struct.sparse_block* %78, null
  br i1 %79, label %80, label %92

80:                                               ; preds = %69
  %81 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %82 = load %struct.tar*, %struct.tar** %6, align 8
  %83 = load %struct.tar*, %struct.tar** %6, align 8
  %84 = getelementptr inbounds %struct.tar, %struct.tar* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @gnu_add_sparse_entry(%struct.archive_read* %81, %struct.tar* %82, i32 0, i32 %85)
  %87 = load i32, i32* @ARCHIVE_OK, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %80
  %90 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %90, i32* %3, align 4
  br label %175

91:                                               ; preds = %80
  br label %119

92:                                               ; preds = %69
  %93 = load %struct.tar*, %struct.tar** %6, align 8
  %94 = getelementptr inbounds %struct.tar, %struct.tar* %93, i32 0, i32 2
  %95 = load %struct.sparse_block*, %struct.sparse_block** %94, align 8
  store %struct.sparse_block* %95, %struct.sparse_block** %12, align 8
  br label %96

96:                                               ; preds = %114, %92
  %97 = load %struct.sparse_block*, %struct.sparse_block** %12, align 8
  %98 = icmp ne %struct.sparse_block* %97, null
  br i1 %98, label %99, label %118

99:                                               ; preds = %96
  %100 = load %struct.sparse_block*, %struct.sparse_block** %12, align 8
  %101 = getelementptr inbounds %struct.sparse_block, %struct.sparse_block* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %113, label %104

104:                                              ; preds = %99
  %105 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %106 = load %struct.sparse_block*, %struct.sparse_block** %12, align 8
  %107 = getelementptr inbounds %struct.sparse_block, %struct.sparse_block* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.sparse_block*, %struct.sparse_block** %12, align 8
  %110 = getelementptr inbounds %struct.sparse_block, %struct.sparse_block* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @archive_entry_sparse_add_entry(%struct.archive_entry* %105, i32 %108, i32 %111)
  br label %113

113:                                              ; preds = %104, %99
  br label %114

114:                                              ; preds = %113
  %115 = load %struct.sparse_block*, %struct.sparse_block** %12, align 8
  %116 = getelementptr inbounds %struct.sparse_block, %struct.sparse_block* %115, i32 0, i32 3
  %117 = load %struct.sparse_block*, %struct.sparse_block** %116, align 8
  store %struct.sparse_block* %117, %struct.sparse_block** %12, align 8
  br label %96

118:                                              ; preds = %96
  br label %119

119:                                              ; preds = %118, %91
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* @ARCHIVE_OK, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %173

123:                                              ; preds = %119
  %124 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %125 = call i64 @archive_entry_filetype(%struct.archive_entry* %124)
  %126 = load i64, i64* @AE_IFREG, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %173

128:                                              ; preds = %123
  %129 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %130 = call i32* @archive_entry_pathname_w(%struct.archive_entry* %129)
  store i32* %130, i32** %8, align 8
  %131 = icmp ne i32* %130, null
  br i1 %131, label %132, label %149

132:                                              ; preds = %128
  %133 = load i32*, i32** %8, align 8
  %134 = call i64 @wcslen(i32* %133)
  store i64 %134, i64* %10, align 8
  %135 = load i64, i64* %10, align 8
  %136 = icmp ugt i64 %135, 0
  br i1 %136, label %137, label %148

137:                                              ; preds = %132
  %138 = load i32*, i32** %8, align 8
  %139 = load i64, i64* %10, align 8
  %140 = sub i64 %139, 1
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = icmp eq i32 %142, 47
  br i1 %143, label %144, label %148

144:                                              ; preds = %137
  %145 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %146 = load i32, i32* @AE_IFDIR, align 4
  %147 = call i32 @archive_entry_set_filetype(%struct.archive_entry* %145, i32 %146)
  br label %148

148:                                              ; preds = %144, %137, %132
  br label %172

149:                                              ; preds = %128
  %150 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %151 = call i8* @archive_entry_pathname(%struct.archive_entry* %150)
  store i8* %151, i8** %7, align 8
  %152 = icmp ne i8* %151, null
  br i1 %152, label %153, label %171

153:                                              ; preds = %149
  %154 = load i8*, i8** %7, align 8
  %155 = call i64 @strlen(i8* %154)
  store i64 %155, i64* %10, align 8
  %156 = load i64, i64* %10, align 8
  %157 = icmp ugt i64 %156, 0
  br i1 %157, label %158, label %170

158:                                              ; preds = %153
  %159 = load i8*, i8** %7, align 8
  %160 = load i64, i64* %10, align 8
  %161 = sub i64 %160, 1
  %162 = getelementptr inbounds i8, i8* %159, i64 %161
  %163 = load i8, i8* %162, align 1
  %164 = sext i8 %163 to i32
  %165 = icmp eq i32 %164, 47
  br i1 %165, label %166, label %170

166:                                              ; preds = %158
  %167 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %168 = load i32, i32* @AE_IFDIR, align 4
  %169 = call i32 @archive_entry_set_filetype(%struct.archive_entry* %167, i32 %168)
  br label %170

170:                                              ; preds = %166, %158, %153
  br label %171

171:                                              ; preds = %170, %149
  br label %172

172:                                              ; preds = %171, %148
  br label %173

173:                                              ; preds = %172, %123, %119
  %174 = load i32, i32* %9, align 4
  store i32 %174, i32* %3, align 4
  br label %175

175:                                              ; preds = %173, %89
  %176 = load i32, i32* %3, align 4
  ret i32 %176
}

declare dso_local i32 @archive_entry_set_dev(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_entry_set_ino(%struct.archive_entry*, i32) #1

declare dso_local i32 @gnu_clear_sparse_list(%struct.tar*) #1

declare dso_local i32* @archive_string_default_conversion_for_read(i32*) #1

declare dso_local i32 @tar_read_header(%struct.archive_read*, %struct.tar*, %struct.archive_entry*, i64*) #1

declare dso_local i32 @tar_flush_unconsumed(%struct.archive_read*, i64*) #1

declare dso_local i32 @gnu_add_sparse_entry(%struct.archive_read*, %struct.tar*, i32, i32) #1

declare dso_local i32 @archive_entry_sparse_add_entry(%struct.archive_entry*, i32, i32) #1

declare dso_local i64 @archive_entry_filetype(%struct.archive_entry*) #1

declare dso_local i32* @archive_entry_pathname_w(%struct.archive_entry*) #1

declare dso_local i64 @wcslen(i32*) #1

declare dso_local i32 @archive_entry_set_filetype(%struct.archive_entry*, i32) #1

declare dso_local i8* @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

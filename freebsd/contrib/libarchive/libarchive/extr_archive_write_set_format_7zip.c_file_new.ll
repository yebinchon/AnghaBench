; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_7zip.c_file_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_7zip.c_file_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { i32, i64 }
%struct.archive_entry = type { i32 }
%struct.file = type { i32, i32, %struct.TYPE_2__*, i32, i32, i32, i64* }
%struct.TYPE_2__ = type { i32, i32 }
%struct._7zip = type { i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"Can't allocate memory\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"Can't allocate memory for UTF-16LE\00", align 1
@ARCHIVE_ERRNO_MISC = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [86 x i8] c"A filename cannot be converted to UTF-16LE;You should disable making Joliet extension\00", align 1
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Can't allocate memory for Name\00", align 1
@AE_IFREG = common dso_local global i64 0, align 8
@AE_IFDIR = common dso_local global i64 0, align 8
@AE_IFLNK = common dso_local global i64 0, align 8
@MTIME_IS_SET = common dso_local global i32 0, align 4
@MTIME = common dso_local global i64 0, align 8
@ATIME_IS_SET = common dso_local global i32 0, align 4
@ATIME = common dso_local global i64 0, align 8
@CTIME_IS_SET = common dso_local global i32 0, align 4
@CTIME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*, %struct.archive_entry*, %struct.file**)* @file_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @file_new(%struct.archive_write* %0, %struct.archive_entry* %1, %struct.file** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive_write*, align 8
  %6 = alloca %struct.archive_entry*, align 8
  %7 = alloca %struct.file**, align 8
  %8 = alloca %struct._7zip*, align 8
  %9 = alloca %struct.file*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.archive_write* %0, %struct.archive_write** %5, align 8
  store %struct.archive_entry* %1, %struct.archive_entry** %6, align 8
  store %struct.file** %2, %struct.file*** %7, align 8
  %13 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %13, i32* %12, align 4
  %14 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %15 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct._7zip*
  store %struct._7zip* %17, %struct._7zip** %8, align 8
  %18 = load %struct.file**, %struct.file*** %7, align 8
  store %struct.file* null, %struct.file** %18, align 8
  %19 = call %struct.file* @calloc(i32 1, i32 40)
  store %struct.file* %19, %struct.file** %9, align 8
  %20 = load %struct.file*, %struct.file** %9, align 8
  %21 = icmp eq %struct.file* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %3
  %23 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %24 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %23, i32 0, i32 0
  %25 = load i64, i64* @ENOMEM, align 8
  %26 = call i32 @archive_set_error(i32* %24, i64 %25, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %27, i32* %4, align 4
  br label %212

28:                                               ; preds = %3
  %29 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %30 = load %struct._7zip*, %struct._7zip** %8, align 8
  %31 = getelementptr inbounds %struct._7zip, %struct._7zip* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @archive_entry_pathname_l(%struct.archive_entry* %29, i8** %10, i64* %11, i32 %32)
  %34 = icmp sgt i64 0, %33
  br i1 %34, label %35, label %53

35:                                               ; preds = %28
  %36 = load i64, i64* @errno, align 8
  %37 = load i64, i64* @ENOMEM, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %35
  %40 = load %struct.file*, %struct.file** %9, align 8
  %41 = call i32 @free(%struct.file* %40)
  %42 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %43 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %42, i32 0, i32 0
  %44 = load i64, i64* @ENOMEM, align 8
  %45 = call i32 @archive_set_error(i32* %43, i64 %44, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %46, i32* %4, align 4
  br label %212

47:                                               ; preds = %35
  %48 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %49 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %48, i32 0, i32 0
  %50 = load i64, i64* @ARCHIVE_ERRNO_MISC, align 8
  %51 = call i32 @archive_set_error(i32* %49, i64 %50, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.2, i64 0, i64 0))
  %52 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %52, i32* %12, align 4
  br label %53

53:                                               ; preds = %47, %28
  %54 = load i64, i64* %11, align 8
  %55 = add i64 %54, 2
  %56 = call i64* @malloc(i64 %55)
  %57 = load %struct.file*, %struct.file** %9, align 8
  %58 = getelementptr inbounds %struct.file, %struct.file* %57, i32 0, i32 6
  store i64* %56, i64** %58, align 8
  %59 = load %struct.file*, %struct.file** %9, align 8
  %60 = getelementptr inbounds %struct.file, %struct.file* %59, i32 0, i32 6
  %61 = load i64*, i64** %60, align 8
  %62 = icmp eq i64* %61, null
  br i1 %62, label %63, label %71

63:                                               ; preds = %53
  %64 = load %struct.file*, %struct.file** %9, align 8
  %65 = call i32 @free(%struct.file* %64)
  %66 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %67 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %66, i32 0, i32 0
  %68 = load i64, i64* @ENOMEM, align 8
  %69 = call i32 @archive_set_error(i32* %67, i64 %68, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %70 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %70, i32* %4, align 4
  br label %212

71:                                               ; preds = %53
  %72 = load %struct.file*, %struct.file** %9, align 8
  %73 = getelementptr inbounds %struct.file, %struct.file* %72, i32 0, i32 6
  %74 = load i64*, i64** %73, align 8
  %75 = load i8*, i8** %10, align 8
  %76 = load i64, i64* %11, align 8
  %77 = call i32 @memcpy(i64* %74, i8* %75, i64 %76)
  %78 = load %struct.file*, %struct.file** %9, align 8
  %79 = getelementptr inbounds %struct.file, %struct.file* %78, i32 0, i32 6
  %80 = load i64*, i64** %79, align 8
  %81 = load i64, i64* %11, align 8
  %82 = add i64 %81, 0
  %83 = getelementptr inbounds i64, i64* %80, i64 %82
  store i64 0, i64* %83, align 8
  %84 = load %struct.file*, %struct.file** %9, align 8
  %85 = getelementptr inbounds %struct.file, %struct.file* %84, i32 0, i32 6
  %86 = load i64*, i64** %85, align 8
  %87 = load i64, i64* %11, align 8
  %88 = add i64 %87, 1
  %89 = getelementptr inbounds i64, i64* %86, i64 %88
  store i64 0, i64* %89, align 8
  %90 = load i64, i64* %11, align 8
  %91 = trunc i64 %90 to i32
  %92 = load %struct.file*, %struct.file** %9, align 8
  %93 = getelementptr inbounds %struct.file, %struct.file* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  %94 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %95 = call i32 @archive_entry_mode(%struct.archive_entry* %94)
  %96 = load %struct.file*, %struct.file** %9, align 8
  %97 = getelementptr inbounds %struct.file, %struct.file* %96, i32 0, i32 5
  store i32 %95, i32* %97, align 8
  %98 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %99 = call i64 @archive_entry_filetype(%struct.archive_entry* %98)
  %100 = load i64, i64* @AE_IFREG, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %107

102:                                              ; preds = %71
  %103 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %104 = call i32 @archive_entry_size(%struct.archive_entry* %103)
  %105 = load %struct.file*, %struct.file** %9, align 8
  %106 = getelementptr inbounds %struct.file, %struct.file* %105, i32 0, i32 4
  store i32 %104, i32* %106, align 4
  br label %110

107:                                              ; preds = %71
  %108 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %109 = call i32 @archive_entry_set_size(%struct.archive_entry* %108, i32 0)
  br label %110

110:                                              ; preds = %107, %102
  %111 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %112 = call i64 @archive_entry_filetype(%struct.archive_entry* %111)
  %113 = load i64, i64* @AE_IFDIR, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %110
  %116 = load %struct.file*, %struct.file** %9, align 8
  %117 = getelementptr inbounds %struct.file, %struct.file* %116, i32 0, i32 1
  store i32 1, i32* %117, align 4
  br label %130

118:                                              ; preds = %110
  %119 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %120 = call i64 @archive_entry_filetype(%struct.archive_entry* %119)
  %121 = load i64, i64* @AE_IFLNK, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %129

123:                                              ; preds = %118
  %124 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %125 = call i32 @archive_entry_symlink(%struct.archive_entry* %124)
  %126 = call i32 @strlen(i32 %125)
  %127 = load %struct.file*, %struct.file** %9, align 8
  %128 = getelementptr inbounds %struct.file, %struct.file* %127, i32 0, i32 4
  store i32 %126, i32* %128, align 4
  br label %129

129:                                              ; preds = %123, %118
  br label %130

130:                                              ; preds = %129, %115
  %131 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %132 = call i64 @archive_entry_mtime_is_set(%struct.archive_entry* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %156

134:                                              ; preds = %130
  %135 = load i32, i32* @MTIME_IS_SET, align 4
  %136 = load %struct.file*, %struct.file** %9, align 8
  %137 = getelementptr inbounds %struct.file, %struct.file* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 8
  %139 = or i32 %138, %135
  store i32 %139, i32* %137, align 8
  %140 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %141 = call i32 @archive_entry_mtime(%struct.archive_entry* %140)
  %142 = load %struct.file*, %struct.file** %9, align 8
  %143 = getelementptr inbounds %struct.file, %struct.file* %142, i32 0, i32 2
  %144 = load %struct.TYPE_2__*, %struct.TYPE_2__** %143, align 8
  %145 = load i64, i64* @MTIME, align 8
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 1
  store i32 %141, i32* %147, align 4
  %148 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %149 = call i32 @archive_entry_mtime_nsec(%struct.archive_entry* %148)
  %150 = load %struct.file*, %struct.file** %9, align 8
  %151 = getelementptr inbounds %struct.file, %struct.file* %150, i32 0, i32 2
  %152 = load %struct.TYPE_2__*, %struct.TYPE_2__** %151, align 8
  %153 = load i64, i64* @MTIME, align 8
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 0
  store i32 %149, i32* %155, align 4
  br label %156

156:                                              ; preds = %134, %130
  %157 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %158 = call i64 @archive_entry_atime_is_set(%struct.archive_entry* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %182

160:                                              ; preds = %156
  %161 = load i32, i32* @ATIME_IS_SET, align 4
  %162 = load %struct.file*, %struct.file** %9, align 8
  %163 = getelementptr inbounds %struct.file, %struct.file* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 8
  %165 = or i32 %164, %161
  store i32 %165, i32* %163, align 8
  %166 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %167 = call i32 @archive_entry_atime(%struct.archive_entry* %166)
  %168 = load %struct.file*, %struct.file** %9, align 8
  %169 = getelementptr inbounds %struct.file, %struct.file* %168, i32 0, i32 2
  %170 = load %struct.TYPE_2__*, %struct.TYPE_2__** %169, align 8
  %171 = load i64, i64* @ATIME, align 8
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 1
  store i32 %167, i32* %173, align 4
  %174 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %175 = call i32 @archive_entry_atime_nsec(%struct.archive_entry* %174)
  %176 = load %struct.file*, %struct.file** %9, align 8
  %177 = getelementptr inbounds %struct.file, %struct.file* %176, i32 0, i32 2
  %178 = load %struct.TYPE_2__*, %struct.TYPE_2__** %177, align 8
  %179 = load i64, i64* @ATIME, align 8
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i32 0, i32 0
  store i32 %175, i32* %181, align 4
  br label %182

182:                                              ; preds = %160, %156
  %183 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %184 = call i64 @archive_entry_ctime_is_set(%struct.archive_entry* %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %208

186:                                              ; preds = %182
  %187 = load i32, i32* @CTIME_IS_SET, align 4
  %188 = load %struct.file*, %struct.file** %9, align 8
  %189 = getelementptr inbounds %struct.file, %struct.file* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 8
  %191 = or i32 %190, %187
  store i32 %191, i32* %189, align 8
  %192 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %193 = call i32 @archive_entry_ctime(%struct.archive_entry* %192)
  %194 = load %struct.file*, %struct.file** %9, align 8
  %195 = getelementptr inbounds %struct.file, %struct.file* %194, i32 0, i32 2
  %196 = load %struct.TYPE_2__*, %struct.TYPE_2__** %195, align 8
  %197 = load i64, i64* @CTIME, align 8
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i32 0, i32 1
  store i32 %193, i32* %199, align 4
  %200 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %201 = call i32 @archive_entry_ctime_nsec(%struct.archive_entry* %200)
  %202 = load %struct.file*, %struct.file** %9, align 8
  %203 = getelementptr inbounds %struct.file, %struct.file* %202, i32 0, i32 2
  %204 = load %struct.TYPE_2__*, %struct.TYPE_2__** %203, align 8
  %205 = load i64, i64* @CTIME, align 8
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %204, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %206, i32 0, i32 0
  store i32 %201, i32* %207, align 4
  br label %208

208:                                              ; preds = %186, %182
  %209 = load %struct.file*, %struct.file** %9, align 8
  %210 = load %struct.file**, %struct.file*** %7, align 8
  store %struct.file* %209, %struct.file** %210, align 8
  %211 = load i32, i32* %12, align 4
  store i32 %211, i32* %4, align 4
  br label %212

212:                                              ; preds = %208, %63, %39, %22
  %213 = load i32, i32* %4, align 4
  ret i32 %213
}

declare dso_local %struct.file* @calloc(i32, i32) #1

declare dso_local i32 @archive_set_error(i32*, i64, i8*) #1

declare dso_local i64 @archive_entry_pathname_l(%struct.archive_entry*, i8**, i64*, i32) #1

declare dso_local i32 @free(%struct.file*) #1

declare dso_local i64* @malloc(i64) #1

declare dso_local i32 @memcpy(i64*, i8*, i64) #1

declare dso_local i32 @archive_entry_mode(%struct.archive_entry*) #1

declare dso_local i64 @archive_entry_filetype(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_size(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_set_size(%struct.archive_entry*, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @archive_entry_symlink(%struct.archive_entry*) #1

declare dso_local i64 @archive_entry_mtime_is_set(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_mtime(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_mtime_nsec(%struct.archive_entry*) #1

declare dso_local i64 @archive_entry_atime_is_set(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_atime(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_atime_nsec(%struct.archive_entry*) #1

declare dso_local i64 @archive_entry_ctime_is_set(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_ctime(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_ctime_nsec(%struct.archive_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_7zip.c__7z_write_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_7zip.c__7z_write_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { i32, i64 }
%struct.archive_entry = type { i32 }
%struct._7zip = type { i64, i32, i32, i64, %struct.file*, i32, i32, i32, i32, i32*, i32, i32* }
%struct.file = type { i64, i32, i64, i64 }
%struct.archive_rb_node = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"UTF-16LE\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@MTIME_IS_SET = common dso_local global i32 0, align 4
@MTIME = common dso_local global i64 0, align 8
@CTIME_IS_SET = common dso_local global i32 0, align 4
@CTIME = common dso_local global i64 0, align 8
@ATIME_IS_SET = common dso_local global i32 0, align 4
@ATIME = common dso_local global i64 0, align 8
@AE_IFLNK = common dso_local global i64 0, align 8
@ARCHIVE_Z_RUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*, %struct.archive_entry*)* @_7z_write_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_7z_write_header(%struct.archive_write* %0, %struct.archive_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_write*, align 8
  %5 = alloca %struct.archive_entry*, align 8
  %6 = alloca %struct._7zip*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store %struct.archive_write* %0, %struct.archive_write** %4, align 8
  store %struct.archive_entry* %1, %struct.archive_entry** %5, align 8
  %11 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %12 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct._7zip*
  store %struct._7zip* %14, %struct._7zip** %6, align 8
  %15 = load %struct._7zip*, %struct._7zip** %6, align 8
  %16 = getelementptr inbounds %struct._7zip, %struct._7zip* %15, i32 0, i32 4
  store %struct.file* null, %struct.file** %16, align 8
  %17 = load %struct._7zip*, %struct._7zip** %6, align 8
  %18 = getelementptr inbounds %struct._7zip, %struct._7zip* %17, i32 0, i32 0
  store i64 0, i64* %18, align 8
  %19 = load %struct._7zip*, %struct._7zip** %6, align 8
  %20 = getelementptr inbounds %struct._7zip, %struct._7zip* %19, i32 0, i32 11
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %36

23:                                               ; preds = %2
  %24 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %25 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %24, i32 0, i32 0
  %26 = call i32* @archive_string_conversion_to_charset(i32* %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 1)
  %27 = load %struct._7zip*, %struct._7zip** %6, align 8
  %28 = getelementptr inbounds %struct._7zip, %struct._7zip* %27, i32 0, i32 11
  store i32* %26, i32** %28, align 8
  %29 = load %struct._7zip*, %struct._7zip** %6, align 8
  %30 = getelementptr inbounds %struct._7zip, %struct._7zip* %29, i32 0, i32 11
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %23
  %34 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %34, i32* %3, align 4
  br label %233

35:                                               ; preds = %23
  br label %36

36:                                               ; preds = %35, %2
  %37 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %38 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %39 = call i32 @file_new(%struct.archive_write* %37, %struct.archive_entry* %38, %struct.file** %7)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @ARCHIVE_WARN, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %36
  %44 = load %struct.file*, %struct.file** %7, align 8
  %45 = icmp ne %struct.file* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load %struct.file*, %struct.file** %7, align 8
  %48 = call i32 @file_free(%struct.file* %47)
  br label %49

49:                                               ; preds = %46, %43
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %3, align 4
  br label %233

51:                                               ; preds = %36
  %52 = load %struct.file*, %struct.file** %7, align 8
  %53 = getelementptr inbounds %struct.file, %struct.file* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %73

56:                                               ; preds = %51
  %57 = load %struct.file*, %struct.file** %7, align 8
  %58 = getelementptr inbounds %struct.file, %struct.file* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %56
  %62 = load %struct._7zip*, %struct._7zip** %6, align 8
  %63 = getelementptr inbounds %struct._7zip, %struct._7zip* %62, i32 0, i32 10
  %64 = load %struct.file*, %struct.file** %7, align 8
  %65 = bitcast %struct.file* %64 to %struct.archive_rb_node*
  %66 = call i32 @__archive_rb_tree_insert_node(i32* %63, %struct.archive_rb_node* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %61
  %69 = load %struct.file*, %struct.file** %7, align 8
  %70 = call i32 @file_free(%struct.file* %69)
  %71 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %71, i32* %3, align 4
  br label %233

72:                                               ; preds = %61
  br label %73

73:                                               ; preds = %72, %56, %51
  %74 = load %struct.file*, %struct.file** %7, align 8
  %75 = getelementptr inbounds %struct.file, %struct.file* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @MTIME_IS_SET, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %73
  %81 = load %struct._7zip*, %struct._7zip** %6, align 8
  %82 = getelementptr inbounds %struct._7zip, %struct._7zip* %81, i32 0, i32 9
  %83 = load i32*, i32** %82, align 8
  %84 = load i64, i64* @MTIME, align 8
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %80, %73
  %89 = load %struct.file*, %struct.file** %7, align 8
  %90 = getelementptr inbounds %struct.file, %struct.file* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @CTIME_IS_SET, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %88
  %96 = load %struct._7zip*, %struct._7zip** %6, align 8
  %97 = getelementptr inbounds %struct._7zip, %struct._7zip* %96, i32 0, i32 9
  %98 = load i32*, i32** %97, align 8
  %99 = load i64, i64* @CTIME, align 8
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 4
  br label %103

103:                                              ; preds = %95, %88
  %104 = load %struct.file*, %struct.file** %7, align 8
  %105 = getelementptr inbounds %struct.file, %struct.file* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @ATIME_IS_SET, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %103
  %111 = load %struct._7zip*, %struct._7zip** %6, align 8
  %112 = getelementptr inbounds %struct._7zip, %struct._7zip* %111, i32 0, i32 9
  %113 = load i32*, i32** %112, align 8
  %114 = load i64, i64* @ATIME, align 8
  %115 = getelementptr inbounds i32, i32* %113, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %115, align 4
  br label %118

118:                                              ; preds = %110, %103
  %119 = load %struct._7zip*, %struct._7zip** %6, align 8
  %120 = getelementptr inbounds %struct._7zip, %struct._7zip* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 8
  %123 = load %struct.file*, %struct.file** %7, align 8
  %124 = getelementptr inbounds %struct.file, %struct.file* %123, i32 0, i32 3
  %125 = load i64, i64* %124, align 8
  %126 = add nsw i64 %125, 2
  %127 = load %struct._7zip*, %struct._7zip** %6, align 8
  %128 = getelementptr inbounds %struct._7zip, %struct._7zip* %127, i32 0, i32 8
  %129 = load i32, i32* %128, align 4
  %130 = sext i32 %129 to i64
  %131 = add nsw i64 %130, %126
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %128, align 4
  %133 = load %struct.file*, %struct.file** %7, align 8
  %134 = getelementptr inbounds %struct.file, %struct.file* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %137, label %157

137:                                              ; preds = %118
  %138 = load %struct._7zip*, %struct._7zip** %6, align 8
  %139 = getelementptr inbounds %struct._7zip, %struct._7zip* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %139, align 4
  %142 = load %struct.file*, %struct.file** %7, align 8
  %143 = getelementptr inbounds %struct.file, %struct.file* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %137
  %147 = load %struct._7zip*, %struct._7zip** %6, align 8
  %148 = getelementptr inbounds %struct._7zip, %struct._7zip* %147, i32 0, i32 7
  %149 = load i32, i32* %148, align 8
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %148, align 8
  br label %155

151:                                              ; preds = %137
  %152 = load %struct._7zip*, %struct._7zip** %6, align 8
  %153 = load %struct.file*, %struct.file** %7, align 8
  %154 = call i32 @file_register_empty(%struct._7zip* %152, %struct.file* %153)
  br label %155

155:                                              ; preds = %151, %146
  %156 = load i32, i32* %8, align 4
  store i32 %156, i32* %3, align 4
  br label %233

157:                                              ; preds = %118
  %158 = load %struct._7zip*, %struct._7zip** %6, align 8
  %159 = getelementptr inbounds %struct._7zip, %struct._7zip* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = load %struct._7zip*, %struct._7zip** %6, align 8
  %162 = getelementptr inbounds %struct._7zip, %struct._7zip* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = sub nsw i32 %160, %163
  %165 = icmp eq i32 %164, 1
  br i1 %165, label %166, label %182

166:                                              ; preds = %157
  %167 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %168 = load %struct._7zip*, %struct._7zip** %6, align 8
  %169 = getelementptr inbounds %struct._7zip, %struct._7zip* %168, i32 0, i32 6
  %170 = load i32, i32* %169, align 4
  %171 = load %struct._7zip*, %struct._7zip** %6, align 8
  %172 = getelementptr inbounds %struct._7zip, %struct._7zip* %171, i32 0, i32 5
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @_7z_compression_init_encoder(%struct.archive_write* %167, i32 %170, i32 %173)
  store i32 %174, i32* %8, align 4
  %175 = load i32, i32* %8, align 4
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %166
  %178 = load %struct.file*, %struct.file** %7, align 8
  %179 = call i32 @file_free(%struct.file* %178)
  %180 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %180, i32* %3, align 4
  br label %233

181:                                              ; preds = %166
  br label %182

182:                                              ; preds = %181, %157
  %183 = load %struct._7zip*, %struct._7zip** %6, align 8
  %184 = load %struct.file*, %struct.file** %7, align 8
  %185 = call i32 @file_register(%struct._7zip* %183, %struct.file* %184)
  %186 = load %struct.file*, %struct.file** %7, align 8
  %187 = load %struct._7zip*, %struct._7zip** %6, align 8
  %188 = getelementptr inbounds %struct._7zip, %struct._7zip* %187, i32 0, i32 4
  store %struct.file* %186, %struct.file** %188, align 8
  %189 = load %struct.file*, %struct.file** %7, align 8
  %190 = getelementptr inbounds %struct.file, %struct.file* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load %struct._7zip*, %struct._7zip** %6, align 8
  %193 = getelementptr inbounds %struct._7zip, %struct._7zip* %192, i32 0, i32 0
  store i64 %191, i64* %193, align 8
  %194 = load %struct._7zip*, %struct._7zip** %6, align 8
  %195 = getelementptr inbounds %struct._7zip, %struct._7zip* %194, i32 0, i32 3
  store i64 0, i64* %195, align 8
  %196 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %197 = call i64 @archive_entry_filetype(%struct.archive_entry* %196)
  %198 = load i64, i64* @AE_IFLNK, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %200, label %231

200:                                              ; preds = %182
  %201 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %202 = call i64 @archive_entry_symlink(%struct.archive_entry* %201)
  %203 = inttoptr i64 %202 to i8*
  store i8* %203, i8** %10, align 8
  %204 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %205 = load i8*, i8** %10, align 8
  %206 = load %struct.file*, %struct.file** %7, align 8
  %207 = getelementptr inbounds %struct.file, %struct.file* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = load i32, i32* @ARCHIVE_Z_RUN, align 4
  %210 = call i64 @compress_out(%struct.archive_write* %204, i8* %205, i64 %208, i32 %209)
  store i64 %210, i64* %9, align 8
  %211 = load i64, i64* %9, align 8
  %212 = icmp slt i64 %211, 0
  br i1 %212, label %213, label %216

213:                                              ; preds = %200
  %214 = load i64, i64* %9, align 8
  %215 = trunc i64 %214 to i32
  store i32 %215, i32* %3, align 4
  br label %233

216:                                              ; preds = %200
  %217 = load %struct._7zip*, %struct._7zip** %6, align 8
  %218 = getelementptr inbounds %struct._7zip, %struct._7zip* %217, i32 0, i32 3
  %219 = load i64, i64* %218, align 8
  %220 = load i8*, i8** %10, align 8
  %221 = load i64, i64* %9, align 8
  %222 = trunc i64 %221 to i32
  %223 = call i64 @crc32(i64 %219, i8* %220, i32 %222)
  %224 = load %struct._7zip*, %struct._7zip** %6, align 8
  %225 = getelementptr inbounds %struct._7zip, %struct._7zip* %224, i32 0, i32 3
  store i64 %223, i64* %225, align 8
  %226 = load i64, i64* %9, align 8
  %227 = load %struct._7zip*, %struct._7zip** %6, align 8
  %228 = getelementptr inbounds %struct._7zip, %struct._7zip* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = sub nsw i64 %229, %226
  store i64 %230, i64* %228, align 8
  br label %231

231:                                              ; preds = %216, %182
  %232 = load i32, i32* %8, align 4
  store i32 %232, i32* %3, align 4
  br label %233

233:                                              ; preds = %231, %213, %177, %155, %68, %49, %33
  %234 = load i32, i32* %3, align 4
  ret i32 %234
}

declare dso_local i32* @archive_string_conversion_to_charset(i32*, i8*, i32) #1

declare dso_local i32 @file_new(%struct.archive_write*, %struct.archive_entry*, %struct.file**) #1

declare dso_local i32 @file_free(%struct.file*) #1

declare dso_local i32 @__archive_rb_tree_insert_node(i32*, %struct.archive_rb_node*) #1

declare dso_local i32 @file_register_empty(%struct._7zip*, %struct.file*) #1

declare dso_local i32 @_7z_compression_init_encoder(%struct.archive_write*, i32, i32) #1

declare dso_local i32 @file_register(%struct._7zip*, %struct.file*) #1

declare dso_local i64 @archive_entry_filetype(%struct.archive_entry*) #1

declare dso_local i64 @archive_entry_symlink(%struct.archive_entry*) #1

declare dso_local i64 @compress_out(%struct.archive_write*, i8*, i64, i32) #1

declare dso_local i64 @crc32(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

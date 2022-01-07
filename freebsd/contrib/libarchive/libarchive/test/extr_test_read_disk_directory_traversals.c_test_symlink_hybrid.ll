; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_disk_directory_traversals.c_test_symlink_hybrid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_disk_directory_traversals.c_test_symlink_hybrid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_entry = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"Can't test symlinks on this filesystem\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"d1\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"ld1\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"d1/file1\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"d1/file2\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"d1/link1\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"file1\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"d1/linkX\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"fileX\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"link2\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"linkY\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"d1/fileY\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [6 x i8] c"h/ld1\00", align 1
@AE_IFDIR = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [12 x i8] c"h/ld1/file1\00", align 1
@AE_IFREG = common dso_local global i32 0, align 4
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [12 x i8] c"h/ld1/file2\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"h/ld1/link1\00", align 1
@AE_IFLNK = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [12 x i8] c"h/ld1/linkX\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"h/d1\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"h/d1/file1\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"h/d1/file2\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"h/d1/link1\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"h/d1/linkX\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"h/link2\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"h/linkY\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_symlink_hybrid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_symlink_hybrid() #0 {
  %1 = alloca %struct.archive*, align 8
  %2 = alloca %struct.archive_entry*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = call i32 (...) @canSymlink()
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %0
  %10 = call i32 @skipping(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %374

11:                                               ; preds = %0
  %12 = call i32 @assertMakeDir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 493)
  %13 = call i32 @assertChdir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %14 = call i32 @assertMakeDir(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 493)
  %15 = call i32 @assertMakeSymlink(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %16 = call i32 @assertMakeFile(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 420, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %17 = call i32 @assertMakeFile(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 420, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %18 = call i32 @assertMakeSymlink(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 0)
  %19 = call i32 @assertMakeSymlink(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 0)
  %20 = call i32 @assertMakeSymlink(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 0)
  %21 = call i32 @assertMakeSymlink(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i32 0)
  %22 = call i32 @assertChdir(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  %23 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %23, %struct.archive_entry** %2, align 8
  %24 = icmp ne %struct.archive_entry* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = call %struct.archive* (...) @archive_read_disk_new()
  store %struct.archive* %27, %struct.archive** %1, align 8
  %28 = icmp ne %struct.archive* %27, null
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load %struct.archive*, %struct.archive** %1, align 8
  %32 = load i32, i32* @ARCHIVE_OK, align 4
  %33 = load %struct.archive*, %struct.archive** %1, align 8
  %34 = call i32 @archive_read_disk_set_symlink_hybrid(%struct.archive* %33)
  %35 = call i32 @assertEqualIntA(%struct.archive* %31, i32 %32, i32 %34)
  %36 = load %struct.archive*, %struct.archive** %1, align 8
  %37 = load i32, i32* @ARCHIVE_OK, align 4
  %38 = load %struct.archive*, %struct.archive** %1, align 8
  %39 = call i32 @archive_read_disk_open(%struct.archive* %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0))
  %40 = call i32 @assertEqualIntA(%struct.archive* %36, i32 %37, i32 %39)
  store i32 5, i32* %6, align 4
  br label %41

41:                                               ; preds = %168, %11
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %6, align 4
  %44 = icmp ne i32 %42, 0
  br i1 %44, label %45, label %169

45:                                               ; preds = %41
  %46 = load %struct.archive*, %struct.archive** %1, align 8
  %47 = load i32, i32* @ARCHIVE_OK, align 4
  %48 = load %struct.archive*, %struct.archive** %1, align 8
  %49 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %50 = call i32 @archive_read_next_header2(%struct.archive* %48, %struct.archive_entry* %49)
  %51 = call i32 @assertEqualIntA(%struct.archive* %46, i32 %47, i32 %50)
  %52 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %53 = call i32 @archive_entry_pathname(%struct.archive_entry* %52)
  %54 = call i64 @strcmp(i32 %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0))
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %45
  %57 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %58 = call i32 @archive_entry_filetype(%struct.archive_entry* %57)
  %59 = load i32, i32* @AE_IFDIR, align 4
  %60 = call i32 @assertEqualInt(i32 %58, i32 %59)
  br label %157

61:                                               ; preds = %45
  %62 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %63 = call i32 @archive_entry_pathname(%struct.archive_entry* %62)
  %64 = call i64 @strcmp(i32 %63, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0))
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %97

66:                                               ; preds = %61
  %67 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %68 = call i32 @archive_entry_filetype(%struct.archive_entry* %67)
  %69 = load i32, i32* @AE_IFREG, align 4
  %70 = call i32 @assertEqualInt(i32 %68, i32 %69)
  %71 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %72 = call i32 @archive_entry_size(%struct.archive_entry* %71)
  %73 = call i32 @assertEqualInt(i32 %72, i32 8)
  %74 = load %struct.archive*, %struct.archive** %1, align 8
  %75 = load i32, i32* @ARCHIVE_OK, align 4
  %76 = load %struct.archive*, %struct.archive** %1, align 8
  %77 = call i32 @archive_read_data_block(%struct.archive* %76, i8** %3, i64* %4, i64* %5)
  %78 = call i32 @assertEqualIntA(%struct.archive* %74, i32 %75, i32 %77)
  %79 = load i64, i64* %4, align 8
  %80 = trunc i64 %79 to i32
  %81 = call i32 @assertEqualInt(i32 %80, i32 8)
  %82 = load i64, i64* %5, align 8
  %83 = trunc i64 %82 to i32
  %84 = call i32 @assertEqualInt(i32 %83, i32 0)
  %85 = load i8*, i8** %3, align 8
  %86 = call i32 @assertEqualMem(i8* %85, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 8)
  %87 = load i32, i32* @ARCHIVE_EOF, align 4
  %88 = load %struct.archive*, %struct.archive** %1, align 8
  %89 = call i32 @archive_read_data_block(%struct.archive* %88, i8** %3, i64* %4, i64* %5)
  %90 = call i32 @assertEqualInt(i32 %87, i32 %89)
  %91 = load i64, i64* %4, align 8
  %92 = trunc i64 %91 to i32
  %93 = call i32 @assertEqualInt(i32 %92, i32 0)
  %94 = load i64, i64* %5, align 8
  %95 = trunc i64 %94 to i32
  %96 = call i32 @assertEqualInt(i32 %95, i32 8)
  br label %156

97:                                               ; preds = %61
  %98 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %99 = call i32 @archive_entry_pathname(%struct.archive_entry* %98)
  %100 = call i64 @strcmp(i32 %99, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0))
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %133

102:                                              ; preds = %97
  %103 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %104 = call i32 @archive_entry_filetype(%struct.archive_entry* %103)
  %105 = load i32, i32* @AE_IFREG, align 4
  %106 = call i32 @assertEqualInt(i32 %104, i32 %105)
  %107 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %108 = call i32 @archive_entry_size(%struct.archive_entry* %107)
  %109 = call i32 @assertEqualInt(i32 %108, i32 8)
  %110 = load %struct.archive*, %struct.archive** %1, align 8
  %111 = load i32, i32* @ARCHIVE_OK, align 4
  %112 = load %struct.archive*, %struct.archive** %1, align 8
  %113 = call i32 @archive_read_data_block(%struct.archive* %112, i8** %3, i64* %4, i64* %5)
  %114 = call i32 @assertEqualIntA(%struct.archive* %110, i32 %111, i32 %113)
  %115 = load i64, i64* %4, align 8
  %116 = trunc i64 %115 to i32
  %117 = call i32 @assertEqualInt(i32 %116, i32 8)
  %118 = load i64, i64* %5, align 8
  %119 = trunc i64 %118 to i32
  %120 = call i32 @assertEqualInt(i32 %119, i32 0)
  %121 = load i8*, i8** %3, align 8
  %122 = call i32 @assertEqualMem(i8* %121, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 8)
  %123 = load i32, i32* @ARCHIVE_EOF, align 4
  %124 = load %struct.archive*, %struct.archive** %1, align 8
  %125 = call i32 @archive_read_data_block(%struct.archive* %124, i8** %3, i64* %4, i64* %5)
  %126 = call i32 @assertEqualInt(i32 %123, i32 %125)
  %127 = load i64, i64* %4, align 8
  %128 = trunc i64 %127 to i32
  %129 = call i32 @assertEqualInt(i32 %128, i32 0)
  %130 = load i64, i64* %5, align 8
  %131 = trunc i64 %130 to i32
  %132 = call i32 @assertEqualInt(i32 %131, i32 8)
  br label %155

133:                                              ; preds = %97
  %134 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %135 = call i32 @archive_entry_pathname(%struct.archive_entry* %134)
  %136 = call i64 @strcmp(i32 %135, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0))
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %133
  %139 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %140 = call i32 @archive_entry_filetype(%struct.archive_entry* %139)
  %141 = load i32, i32* @AE_IFLNK, align 4
  %142 = call i32 @assertEqualInt(i32 %140, i32 %141)
  br label %154

143:                                              ; preds = %133
  %144 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %145 = call i32 @archive_entry_pathname(%struct.archive_entry* %144)
  %146 = call i64 @strcmp(i32 %145, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0))
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %143
  %149 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %150 = call i32 @archive_entry_filetype(%struct.archive_entry* %149)
  %151 = load i32, i32* @AE_IFLNK, align 4
  %152 = call i32 @assertEqualInt(i32 %150, i32 %151)
  br label %153

153:                                              ; preds = %148, %143
  br label %154

154:                                              ; preds = %153, %138
  br label %155

155:                                              ; preds = %154, %102
  br label %156

156:                                              ; preds = %155, %66
  br label %157

157:                                              ; preds = %156, %56
  %158 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %159 = call i32 @archive_entry_filetype(%struct.archive_entry* %158)
  %160 = load i32, i32* @AE_IFDIR, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %168

162:                                              ; preds = %157
  %163 = load %struct.archive*, %struct.archive** %1, align 8
  %164 = load i32, i32* @ARCHIVE_OK, align 4
  %165 = load %struct.archive*, %struct.archive** %1, align 8
  %166 = call i32 @archive_read_disk_descend(%struct.archive* %165)
  %167 = call i32 @assertEqualIntA(%struct.archive* %163, i32 %164, i32 %166)
  br label %168

168:                                              ; preds = %162, %157
  br label %41

169:                                              ; preds = %41
  %170 = load %struct.archive*, %struct.archive** %1, align 8
  %171 = load i32, i32* @ARCHIVE_EOF, align 4
  %172 = load %struct.archive*, %struct.archive** %1, align 8
  %173 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %174 = call i32 @archive_read_next_header2(%struct.archive* %172, %struct.archive_entry* %173)
  %175 = call i32 @assertEqualIntA(%struct.archive* %170, i32 %171, i32 %174)
  %176 = load i32, i32* @ARCHIVE_OK, align 4
  %177 = load %struct.archive*, %struct.archive** %1, align 8
  %178 = call i32 @archive_read_close(%struct.archive* %177)
  %179 = call i32 @assertEqualInt(i32 %176, i32 %178)
  %180 = load %struct.archive*, %struct.archive** %1, align 8
  %181 = load i32, i32* @ARCHIVE_OK, align 4
  %182 = load %struct.archive*, %struct.archive** %1, align 8
  %183 = call i32 @archive_read_disk_open(%struct.archive* %182, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %184 = call i32 @assertEqualIntA(%struct.archive* %180, i32 %181, i32 %183)
  store i32 9, i32* %6, align 4
  br label %185

185:                                              ; preds = %356, %169
  %186 = load i32, i32* %6, align 4
  %187 = add nsw i32 %186, -1
  store i32 %187, i32* %6, align 4
  %188 = icmp ne i32 %186, 0
  br i1 %188, label %189, label %357

189:                                              ; preds = %185
  %190 = load %struct.archive*, %struct.archive** %1, align 8
  %191 = load i32, i32* @ARCHIVE_OK, align 4
  %192 = load %struct.archive*, %struct.archive** %1, align 8
  %193 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %194 = call i32 @archive_read_next_header2(%struct.archive* %192, %struct.archive_entry* %193)
  %195 = call i32 @assertEqualIntA(%struct.archive* %190, i32 %191, i32 %194)
  %196 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %197 = call i32 @archive_entry_pathname(%struct.archive_entry* %196)
  %198 = call i64 @strcmp(i32 %197, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %199 = icmp eq i64 %198, 0
  br i1 %199, label %200, label %205

200:                                              ; preds = %189
  %201 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %202 = call i32 @archive_entry_filetype(%struct.archive_entry* %201)
  %203 = load i32, i32* @AE_IFDIR, align 4
  %204 = call i32 @assertEqualInt(i32 %202, i32 %203)
  br label %345

205:                                              ; preds = %189
  %206 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %207 = call i32 @archive_entry_pathname(%struct.archive_entry* %206)
  %208 = call i64 @strcmp(i32 %207, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0))
  %209 = icmp eq i64 %208, 0
  br i1 %209, label %210, label %215

210:                                              ; preds = %205
  %211 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %212 = call i32 @archive_entry_filetype(%struct.archive_entry* %211)
  %213 = load i32, i32* @AE_IFDIR, align 4
  %214 = call i32 @assertEqualInt(i32 %212, i32 %213)
  br label %344

215:                                              ; preds = %205
  %216 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %217 = call i32 @archive_entry_pathname(%struct.archive_entry* %216)
  %218 = call i64 @strcmp(i32 %217, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0))
  %219 = icmp eq i64 %218, 0
  br i1 %219, label %220, label %251

220:                                              ; preds = %215
  %221 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %222 = call i32 @archive_entry_filetype(%struct.archive_entry* %221)
  %223 = load i32, i32* @AE_IFREG, align 4
  %224 = call i32 @assertEqualInt(i32 %222, i32 %223)
  %225 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %226 = call i32 @archive_entry_size(%struct.archive_entry* %225)
  %227 = call i32 @assertEqualInt(i32 %226, i32 8)
  %228 = load %struct.archive*, %struct.archive** %1, align 8
  %229 = load i32, i32* @ARCHIVE_OK, align 4
  %230 = load %struct.archive*, %struct.archive** %1, align 8
  %231 = call i32 @archive_read_data_block(%struct.archive* %230, i8** %3, i64* %4, i64* %5)
  %232 = call i32 @assertEqualIntA(%struct.archive* %228, i32 %229, i32 %231)
  %233 = load i64, i64* %4, align 8
  %234 = trunc i64 %233 to i32
  %235 = call i32 @assertEqualInt(i32 %234, i32 8)
  %236 = load i64, i64* %5, align 8
  %237 = trunc i64 %236 to i32
  %238 = call i32 @assertEqualInt(i32 %237, i32 0)
  %239 = load i8*, i8** %3, align 8
  %240 = call i32 @assertEqualMem(i8* %239, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 8)
  %241 = load i32, i32* @ARCHIVE_EOF, align 4
  %242 = load %struct.archive*, %struct.archive** %1, align 8
  %243 = call i32 @archive_read_data_block(%struct.archive* %242, i8** %3, i64* %4, i64* %5)
  %244 = call i32 @assertEqualInt(i32 %241, i32 %243)
  %245 = load i64, i64* %4, align 8
  %246 = trunc i64 %245 to i32
  %247 = call i32 @assertEqualInt(i32 %246, i32 0)
  %248 = load i64, i64* %5, align 8
  %249 = trunc i64 %248 to i32
  %250 = call i32 @assertEqualInt(i32 %249, i32 8)
  br label %343

251:                                              ; preds = %215
  %252 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %253 = call i32 @archive_entry_pathname(%struct.archive_entry* %252)
  %254 = call i64 @strcmp(i32 %253, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0))
  %255 = icmp eq i64 %254, 0
  br i1 %255, label %256, label %287

256:                                              ; preds = %251
  %257 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %258 = call i32 @archive_entry_filetype(%struct.archive_entry* %257)
  %259 = load i32, i32* @AE_IFREG, align 4
  %260 = call i32 @assertEqualInt(i32 %258, i32 %259)
  %261 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %262 = call i32 @archive_entry_size(%struct.archive_entry* %261)
  %263 = call i32 @assertEqualInt(i32 %262, i32 8)
  %264 = load %struct.archive*, %struct.archive** %1, align 8
  %265 = load i32, i32* @ARCHIVE_OK, align 4
  %266 = load %struct.archive*, %struct.archive** %1, align 8
  %267 = call i32 @archive_read_data_block(%struct.archive* %266, i8** %3, i64* %4, i64* %5)
  %268 = call i32 @assertEqualIntA(%struct.archive* %264, i32 %265, i32 %267)
  %269 = load i64, i64* %4, align 8
  %270 = trunc i64 %269 to i32
  %271 = call i32 @assertEqualInt(i32 %270, i32 8)
  %272 = load i64, i64* %5, align 8
  %273 = trunc i64 %272 to i32
  %274 = call i32 @assertEqualInt(i32 %273, i32 0)
  %275 = load i8*, i8** %3, align 8
  %276 = call i32 @assertEqualMem(i8* %275, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 8)
  %277 = load i32, i32* @ARCHIVE_EOF, align 4
  %278 = load %struct.archive*, %struct.archive** %1, align 8
  %279 = call i32 @archive_read_data_block(%struct.archive* %278, i8** %3, i64* %4, i64* %5)
  %280 = call i32 @assertEqualInt(i32 %277, i32 %279)
  %281 = load i64, i64* %4, align 8
  %282 = trunc i64 %281 to i32
  %283 = call i32 @assertEqualInt(i32 %282, i32 0)
  %284 = load i64, i64* %5, align 8
  %285 = trunc i64 %284 to i32
  %286 = call i32 @assertEqualInt(i32 %285, i32 8)
  br label %342

287:                                              ; preds = %251
  %288 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %289 = call i32 @archive_entry_pathname(%struct.archive_entry* %288)
  %290 = call i64 @strcmp(i32 %289, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0))
  %291 = icmp eq i64 %290, 0
  br i1 %291, label %292, label %297

292:                                              ; preds = %287
  %293 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %294 = call i32 @archive_entry_filetype(%struct.archive_entry* %293)
  %295 = load i32, i32* @AE_IFLNK, align 4
  %296 = call i32 @assertEqualInt(i32 %294, i32 %295)
  br label %341

297:                                              ; preds = %287
  %298 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %299 = call i32 @archive_entry_pathname(%struct.archive_entry* %298)
  %300 = call i64 @strcmp(i32 %299, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0))
  %301 = icmp eq i64 %300, 0
  br i1 %301, label %302, label %307

302:                                              ; preds = %297
  %303 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %304 = call i32 @archive_entry_filetype(%struct.archive_entry* %303)
  %305 = load i32, i32* @AE_IFLNK, align 4
  %306 = call i32 @assertEqualInt(i32 %304, i32 %305)
  br label %340

307:                                              ; preds = %297
  %308 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %309 = call i32 @archive_entry_pathname(%struct.archive_entry* %308)
  %310 = call i64 @strcmp(i32 %309, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i64 0, i64 0))
  %311 = icmp eq i64 %310, 0
  br i1 %311, label %312, label %317

312:                                              ; preds = %307
  %313 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %314 = call i32 @archive_entry_filetype(%struct.archive_entry* %313)
  %315 = load i32, i32* @AE_IFLNK, align 4
  %316 = call i32 @assertEqualInt(i32 %314, i32 %315)
  br label %339

317:                                              ; preds = %307
  %318 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %319 = call i32 @archive_entry_pathname(%struct.archive_entry* %318)
  %320 = call i64 @strcmp(i32 %319, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0))
  %321 = icmp eq i64 %320, 0
  br i1 %321, label %322, label %327

322:                                              ; preds = %317
  %323 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %324 = call i32 @archive_entry_filetype(%struct.archive_entry* %323)
  %325 = load i32, i32* @AE_IFLNK, align 4
  %326 = call i32 @assertEqualInt(i32 %324, i32 %325)
  br label %338

327:                                              ; preds = %317
  %328 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %329 = call i32 @archive_entry_pathname(%struct.archive_entry* %328)
  %330 = call i64 @strcmp(i32 %329, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i64 0, i64 0))
  %331 = icmp eq i64 %330, 0
  br i1 %331, label %332, label %337

332:                                              ; preds = %327
  %333 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %334 = call i32 @archive_entry_filetype(%struct.archive_entry* %333)
  %335 = load i32, i32* @AE_IFLNK, align 4
  %336 = call i32 @assertEqualInt(i32 %334, i32 %335)
  br label %337

337:                                              ; preds = %332, %327
  br label %338

338:                                              ; preds = %337, %322
  br label %339

339:                                              ; preds = %338, %312
  br label %340

340:                                              ; preds = %339, %302
  br label %341

341:                                              ; preds = %340, %292
  br label %342

342:                                              ; preds = %341, %256
  br label %343

343:                                              ; preds = %342, %220
  br label %344

344:                                              ; preds = %343, %210
  br label %345

345:                                              ; preds = %344, %200
  %346 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %347 = call i32 @archive_entry_filetype(%struct.archive_entry* %346)
  %348 = load i32, i32* @AE_IFDIR, align 4
  %349 = icmp eq i32 %347, %348
  br i1 %349, label %350, label %356

350:                                              ; preds = %345
  %351 = load %struct.archive*, %struct.archive** %1, align 8
  %352 = load i32, i32* @ARCHIVE_OK, align 4
  %353 = load %struct.archive*, %struct.archive** %1, align 8
  %354 = call i32 @archive_read_disk_descend(%struct.archive* %353)
  %355 = call i32 @assertEqualIntA(%struct.archive* %351, i32 %352, i32 %354)
  br label %356

356:                                              ; preds = %350, %345
  br label %185

357:                                              ; preds = %185
  %358 = load %struct.archive*, %struct.archive** %1, align 8
  %359 = load i32, i32* @ARCHIVE_EOF, align 4
  %360 = load %struct.archive*, %struct.archive** %1, align 8
  %361 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %362 = call i32 @archive_read_next_header2(%struct.archive* %360, %struct.archive_entry* %361)
  %363 = call i32 @assertEqualIntA(%struct.archive* %358, i32 %359, i32 %362)
  %364 = load i32, i32* @ARCHIVE_OK, align 4
  %365 = load %struct.archive*, %struct.archive** %1, align 8
  %366 = call i32 @archive_read_close(%struct.archive* %365)
  %367 = call i32 @assertEqualInt(i32 %364, i32 %366)
  %368 = load i32, i32* @ARCHIVE_OK, align 4
  %369 = load %struct.archive*, %struct.archive** %1, align 8
  %370 = call i32 @archive_read_free(%struct.archive* %369)
  %371 = call i32 @assertEqualInt(i32 %368, i32 %370)
  %372 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %373 = call i32 @archive_entry_free(%struct.archive_entry* %372)
  br label %374

374:                                              ; preds = %357, %9
  ret void
}

declare dso_local i32 @canSymlink(...) #1

declare dso_local i32 @skipping(i8*) #1

declare dso_local i32 @assertMakeDir(i8*, i32) #1

declare dso_local i32 @assertChdir(i8*) #1

declare dso_local i32 @assertMakeSymlink(i8*, i8*, i32) #1

declare dso_local i32 @assertMakeFile(i8*, i32, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.archive_entry* @archive_entry_new(...) #1

declare dso_local %struct.archive* @archive_read_disk_new(...) #1

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #1

declare dso_local i32 @archive_read_disk_set_symlink_hybrid(%struct.archive*) #1

declare dso_local i32 @archive_read_disk_open(%struct.archive*, i8*) #1

declare dso_local i32 @archive_read_next_header2(%struct.archive*, %struct.archive_entry*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i32 @assertEqualInt(i32, i32) #1

declare dso_local i32 @archive_entry_filetype(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_size(%struct.archive_entry*) #1

declare dso_local i32 @archive_read_data_block(%struct.archive*, i8**, i64*, i64*) #1

declare dso_local i32 @assertEqualMem(i8*, i8*, i32) #1

declare dso_local i32 @archive_read_disk_descend(%struct.archive*) #1

declare dso_local i32 @archive_read_close(%struct.archive*) #1

declare dso_local i32 @archive_read_free(%struct.archive*) #1

declare dso_local i32 @archive_entry_free(%struct.archive_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_isoent_tree.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_isoent_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { i32, %struct.iso9660* }
%struct.iso9660 = type { i64, %struct.TYPE_11__, %struct.isoent*, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i64, i8* }
%struct.isoent = type { i64, %struct.isofile*, i32, i32 }
%struct.isofile = type { i64, i32, %struct.TYPE_11__, %struct.TYPE_11__ }
%struct.TYPE_10__ = type { %struct.isoent* }
%struct.archive_string = type { i8*, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_ERRNO_MISC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"A name buffer is too small\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"`%s' is not directory, we cannot insert `%s' \00", align 1
@ARCHIVE_FAILED = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"Can't allocate memory\00", align 1
@.str.4 = private unnamed_addr constant [60 x i8] c"Found duplicate entries `%s' and its file type is different\00", align 1
@NAME_MAX = common dso_local global i32 0, align 4
@_MAX_FNAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*, %struct.isoent**)* @isoent_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isoent_tree(%struct.archive_write* %0, %struct.isoent** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_write*, align 8
  %5 = alloca %struct.isoent**, align 8
  %6 = alloca [256 x i8], align 16
  %7 = alloca %struct.iso9660*, align 8
  %8 = alloca %struct.isoent*, align 8
  %9 = alloca %struct.isoent*, align 8
  %10 = alloca %struct.isoent*, align 8
  %11 = alloca %struct.isofile*, align 8
  %12 = alloca %struct.isofile*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.isoent*, align 8
  %17 = alloca %struct.archive_string, align 8
  store %struct.archive_write* %0, %struct.archive_write** %4, align 8
  store %struct.isoent** %1, %struct.isoent*** %5, align 8
  %18 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %19 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %18, i32 0, i32 1
  %20 = load %struct.iso9660*, %struct.iso9660** %19, align 8
  store %struct.iso9660* %20, %struct.iso9660** %7, align 8
  %21 = load %struct.isoent**, %struct.isoent*** %5, align 8
  %22 = load %struct.isoent*, %struct.isoent** %21, align 8
  store %struct.isoent* %22, %struct.isoent** %9, align 8
  %23 = load %struct.iso9660*, %struct.iso9660** %7, align 8
  %24 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load %struct.isoent*, %struct.isoent** %25, align 8
  store %struct.isoent* %26, %struct.isoent** %8, align 8
  %27 = load %struct.isoent*, %struct.isoent** %9, align 8
  %28 = getelementptr inbounds %struct.isoent, %struct.isoent* %27, i32 0, i32 1
  %29 = load %struct.isofile*, %struct.isofile** %28, align 8
  %30 = getelementptr inbounds %struct.isofile, %struct.isofile* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %2
  %35 = load %struct.isoent*, %struct.isoent** %9, align 8
  %36 = getelementptr inbounds %struct.isoent, %struct.isoent* %35, i32 0, i32 1
  %37 = load %struct.isofile*, %struct.isofile** %36, align 8
  %38 = getelementptr inbounds %struct.isofile, %struct.isofile* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %14, align 8
  store i8* %40, i8** %13, align 8
  br label %42

41:                                               ; preds = %2
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  br label %42

42:                                               ; preds = %41, %34
  %43 = load %struct.iso9660*, %struct.iso9660** %7, align 8
  %44 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %43, i32 0, i32 1
  %45 = call i64 @archive_strlen(%struct.TYPE_11__* %44)
  %46 = load %struct.isoent*, %struct.isoent** %9, align 8
  %47 = getelementptr inbounds %struct.isoent, %struct.isoent* %46, i32 0, i32 1
  %48 = load %struct.isofile*, %struct.isofile** %47, align 8
  %49 = getelementptr inbounds %struct.isofile, %struct.isofile* %48, i32 0, i32 3
  %50 = call i64 @archive_strlen(%struct.TYPE_11__* %49)
  %51 = icmp eq i64 %45, %50
  br i1 %51, label %52, label %82

52:                                               ; preds = %42
  %53 = load %struct.iso9660*, %struct.iso9660** %7, align 8
  %54 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = load i8*, i8** %13, align 8
  %58 = call i64 @strcmp(i8* %56, i8* %57)
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %82

60:                                               ; preds = %52
  %61 = load %struct.iso9660*, %struct.iso9660** %7, align 8
  %62 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %61, i32 0, i32 2
  %63 = load %struct.isoent*, %struct.isoent** %62, align 8
  %64 = load %struct.isoent*, %struct.isoent** %9, align 8
  %65 = call i32 @isoent_add_child_tail(%struct.isoent* %63, %struct.isoent* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %80, label %67

67:                                               ; preds = %60
  %68 = load %struct.iso9660*, %struct.iso9660** %7, align 8
  %69 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %68, i32 0, i32 2
  %70 = load %struct.isoent*, %struct.isoent** %69, align 8
  %71 = getelementptr inbounds %struct.isoent, %struct.isoent* %70, i32 0, i32 2
  %72 = load %struct.isoent*, %struct.isoent** %9, align 8
  %73 = getelementptr inbounds %struct.isoent, %struct.isoent* %72, i32 0, i32 1
  %74 = load %struct.isofile*, %struct.isofile** %73, align 8
  %75 = getelementptr inbounds %struct.isofile, %struct.isofile* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = call i64 @__archive_rb_tree_find_node(i32* %71, i8* %77)
  %79 = inttoptr i64 %78 to %struct.isoent*
  store %struct.isoent* %79, %struct.isoent** %10, align 8
  br label %356

80:                                               ; preds = %60
  %81 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %81, i32* %3, align 4
  br label %399

82:                                               ; preds = %52, %42
  br label %83

83:                                               ; preds = %153, %82
  %84 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %85 = load i8*, i8** %13, align 8
  %86 = call i32 @get_path_component(i8* %84, i32 256, i8* %85)
  store i32 %86, i32* %15, align 4
  %87 = load i32, i32* %15, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  store %struct.isoent* null, %struct.isoent** %10, align 8
  br label %155

90:                                               ; preds = %83
  %91 = load i32, i32* %15, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %90
  %94 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %95 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %94, i32 0, i32 0
  %96 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %97 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %95, i32 %96, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %98 = load %struct.isoent*, %struct.isoent** %9, align 8
  %99 = call i32 @_isoent_free(%struct.isoent* %98)
  %100 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %100, i32* %3, align 4
  br label %399

101:                                              ; preds = %90
  %102 = load %struct.isoent*, %struct.isoent** %8, align 8
  %103 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %104 = call %struct.isoent* @isoent_find_child(%struct.isoent* %102, i8* %103)
  store %struct.isoent* %104, %struct.isoent** %10, align 8
  %105 = load %struct.isoent*, %struct.isoent** %10, align 8
  %106 = icmp eq %struct.isoent* %105, null
  br i1 %106, label %113, label %107

107:                                              ; preds = %101
  %108 = load i8*, i8** %13, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 0
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %107, %101
  br label %155

114:                                              ; preds = %107
  %115 = load %struct.isoent*, %struct.isoent** %10, align 8
  %116 = getelementptr inbounds %struct.isoent, %struct.isoent* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %140, label %119

119:                                              ; preds = %114
  %120 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %121 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %120, i32 0, i32 0
  %122 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %123 = load %struct.isoent*, %struct.isoent** %10, align 8
  %124 = getelementptr inbounds %struct.isoent, %struct.isoent* %123, i32 0, i32 1
  %125 = load %struct.isofile*, %struct.isofile** %124, align 8
  %126 = getelementptr inbounds %struct.isofile, %struct.isofile* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @archive_entry_pathname(i32 %127)
  %129 = load %struct.isoent*, %struct.isoent** %9, align 8
  %130 = getelementptr inbounds %struct.isoent, %struct.isoent* %129, i32 0, i32 1
  %131 = load %struct.isofile*, %struct.isofile** %130, align 8
  %132 = getelementptr inbounds %struct.isofile, %struct.isofile* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @archive_entry_pathname(i32 %133)
  %135 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %121, i32 %122, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %128, i32 %134)
  %136 = load %struct.isoent*, %struct.isoent** %9, align 8
  %137 = call i32 @_isoent_free(%struct.isoent* %136)
  %138 = load %struct.isoent**, %struct.isoent*** %5, align 8
  store %struct.isoent* null, %struct.isoent** %138, align 8
  %139 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %139, i32* %3, align 4
  br label %399

140:                                              ; preds = %114
  %141 = load i32, i32* %15, align 4
  %142 = load i8*, i8** %13, align 8
  %143 = sext i32 %141 to i64
  %144 = getelementptr inbounds i8, i8* %142, i64 %143
  store i8* %144, i8** %13, align 8
  %145 = load i8*, i8** %13, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 0
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = icmp eq i32 %148, 47
  br i1 %149, label %150, label %153

150:                                              ; preds = %140
  %151 = load i8*, i8** %13, align 8
  %152 = getelementptr inbounds i8, i8* %151, i32 1
  store i8* %152, i8** %13, align 8
  br label %153

153:                                              ; preds = %150, %140
  %154 = load %struct.isoent*, %struct.isoent** %10, align 8
  store %struct.isoent* %154, %struct.isoent** %8, align 8
  br label %83

155:                                              ; preds = %113, %89
  %156 = load %struct.isoent*, %struct.isoent** %10, align 8
  %157 = icmp eq %struct.isoent* %156, null
  br i1 %157, label %158, label %355

158:                                              ; preds = %155
  br label %159

159:                                              ; preds = %269, %158
  %160 = load i8*, i8** %13, align 8
  %161 = getelementptr inbounds i8, i8* %160, i64 0
  %162 = load i8, i8* %161, align 1
  %163 = sext i8 %162 to i32
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %271

165:                                              ; preds = %159
  %166 = call i32 @archive_string_init(%struct.archive_string* %17)
  %167 = load i8*, i8** %14, align 8
  %168 = load i8*, i8** %13, align 8
  %169 = load i8*, i8** %14, align 8
  %170 = ptrtoint i8* %168 to i64
  %171 = ptrtoint i8* %169 to i64
  %172 = sub i64 %170, %171
  %173 = load i32, i32* %15, align 4
  %174 = sext i32 %173 to i64
  %175 = add nsw i64 %172, %174
  %176 = trunc i64 %175 to i32
  %177 = call i32 @archive_strncat(%struct.archive_string* %17, i8* %167, i32 %176)
  %178 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %17, i32 0, i32 0
  %179 = load i8*, i8** %178, align 8
  %180 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %17, i32 0, i32 1
  %181 = load i32, i32* %180, align 8
  %182 = sub nsw i32 %181, 1
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i8, i8* %179, i64 %183
  %185 = load i8, i8* %184, align 1
  %186 = sext i8 %185 to i32
  %187 = icmp eq i32 %186, 47
  br i1 %187, label %188, label %199

188:                                              ; preds = %165
  %189 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %17, i32 0, i32 0
  %190 = load i8*, i8** %189, align 8
  %191 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %17, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = sub nsw i32 %192, 1
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i8, i8* %190, i64 %194
  store i8 0, i8* %195, align 1
  %196 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %17, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = add nsw i32 %197, -1
  store i32 %198, i32* %196, align 8
  br label %199

199:                                              ; preds = %188, %165
  %200 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %201 = load %struct.iso9660*, %struct.iso9660** %7, align 8
  %202 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %17, i32 0, i32 0
  %203 = load i8*, i8** %202, align 8
  %204 = call %struct.isoent* @isoent_create_virtual_dir(%struct.archive_write* %200, %struct.iso9660* %201, i8* %203)
  store %struct.isoent* %204, %struct.isoent** %16, align 8
  %205 = load %struct.isoent*, %struct.isoent** %16, align 8
  %206 = icmp eq %struct.isoent* %205, null
  br i1 %206, label %207, label %217

207:                                              ; preds = %199
  %208 = call i32 @archive_string_free(%struct.archive_string* %17)
  %209 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %210 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %209, i32 0, i32 0
  %211 = load i32, i32* @ENOMEM, align 4
  %212 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %210, i32 %211, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %213 = load %struct.isoent*, %struct.isoent** %9, align 8
  %214 = call i32 @_isoent_free(%struct.isoent* %213)
  %215 = load %struct.isoent**, %struct.isoent*** %5, align 8
  store %struct.isoent* null, %struct.isoent** %215, align 8
  %216 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %216, i32* %3, align 4
  br label %399

217:                                              ; preds = %199
  %218 = call i32 @archive_string_free(%struct.archive_string* %17)
  %219 = load %struct.isoent*, %struct.isoent** %16, align 8
  %220 = getelementptr inbounds %struct.isoent, %struct.isoent* %219, i32 0, i32 1
  %221 = load %struct.isofile*, %struct.isofile** %220, align 8
  %222 = getelementptr inbounds %struct.isofile, %struct.isofile* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = load %struct.iso9660*, %struct.iso9660** %7, align 8
  %225 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = icmp sgt i64 %223, %226
  br i1 %227, label %228, label %236

228:                                              ; preds = %217
  %229 = load %struct.isoent*, %struct.isoent** %16, align 8
  %230 = getelementptr inbounds %struct.isoent, %struct.isoent* %229, i32 0, i32 1
  %231 = load %struct.isofile*, %struct.isofile** %230, align 8
  %232 = getelementptr inbounds %struct.isofile, %struct.isofile* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = load %struct.iso9660*, %struct.iso9660** %7, align 8
  %235 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %234, i32 0, i32 0
  store i64 %233, i64* %235, align 8
  br label %236

236:                                              ; preds = %228, %217
  %237 = load %struct.isoent*, %struct.isoent** %8, align 8
  %238 = load %struct.isoent*, %struct.isoent** %16, align 8
  %239 = call i32 @isoent_add_child_tail(%struct.isoent* %237, %struct.isoent* %238)
  %240 = load %struct.isoent*, %struct.isoent** %16, align 8
  store %struct.isoent* %240, %struct.isoent** %10, align 8
  %241 = load i32, i32* %15, align 4
  %242 = load i8*, i8** %13, align 8
  %243 = sext i32 %241 to i64
  %244 = getelementptr inbounds i8, i8* %242, i64 %243
  store i8* %244, i8** %13, align 8
  %245 = load i8*, i8** %13, align 8
  %246 = getelementptr inbounds i8, i8* %245, i64 0
  %247 = load i8, i8* %246, align 1
  %248 = sext i8 %247 to i32
  %249 = icmp eq i32 %248, 47
  br i1 %249, label %250, label %253

250:                                              ; preds = %236
  %251 = load i8*, i8** %13, align 8
  %252 = getelementptr inbounds i8, i8* %251, i32 1
  store i8* %252, i8** %13, align 8
  br label %253

253:                                              ; preds = %250, %236
  %254 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %255 = load i8*, i8** %13, align 8
  %256 = call i32 @get_path_component(i8* %254, i32 256, i8* %255)
  store i32 %256, i32* %15, align 4
  %257 = load i32, i32* %15, align 4
  %258 = icmp slt i32 %257, 0
  br i1 %258, label %259, label %269

259:                                              ; preds = %253
  %260 = call i32 @archive_string_free(%struct.archive_string* %17)
  %261 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %262 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %261, i32 0, i32 0
  %263 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %264 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %262, i32 %263, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %265 = load %struct.isoent*, %struct.isoent** %9, align 8
  %266 = call i32 @_isoent_free(%struct.isoent* %265)
  %267 = load %struct.isoent**, %struct.isoent*** %5, align 8
  store %struct.isoent* null, %struct.isoent** %267, align 8
  %268 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %268, i32* %3, align 4
  br label %399

269:                                              ; preds = %253
  %270 = load %struct.isoent*, %struct.isoent** %10, align 8
  store %struct.isoent* %270, %struct.isoent** %8, align 8
  br label %159

271:                                              ; preds = %159
  %272 = load %struct.isoent*, %struct.isoent** %8, align 8
  %273 = load %struct.iso9660*, %struct.iso9660** %7, align 8
  %274 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %273, i32 0, i32 2
  store %struct.isoent* %272, %struct.isoent** %274, align 8
  %275 = load %struct.iso9660*, %struct.iso9660** %7, align 8
  %276 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %275, i32 0, i32 1
  %277 = call i32 @archive_string_empty(%struct.TYPE_11__* %276)
  %278 = load %struct.iso9660*, %struct.iso9660** %7, align 8
  %279 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %278, i32 0, i32 1
  %280 = load %struct.isoent*, %struct.isoent** %8, align 8
  %281 = getelementptr inbounds %struct.isoent, %struct.isoent* %280, i32 0, i32 1
  %282 = load %struct.isofile*, %struct.isofile** %281, align 8
  %283 = getelementptr inbounds %struct.isofile, %struct.isofile* %282, i32 0, i32 3
  %284 = call i64 @archive_strlen(%struct.TYPE_11__* %283)
  %285 = load %struct.isoent*, %struct.isoent** %8, align 8
  %286 = getelementptr inbounds %struct.isoent, %struct.isoent* %285, i32 0, i32 1
  %287 = load %struct.isofile*, %struct.isofile** %286, align 8
  %288 = getelementptr inbounds %struct.isofile, %struct.isofile* %287, i32 0, i32 2
  %289 = call i64 @archive_strlen(%struct.TYPE_11__* %288)
  %290 = add nsw i64 %284, %289
  %291 = add nsw i64 %290, 2
  %292 = call i32 @archive_string_ensure(%struct.TYPE_11__* %279, i64 %291)
  %293 = load %struct.isoent*, %struct.isoent** %8, align 8
  %294 = getelementptr inbounds %struct.isoent, %struct.isoent* %293, i32 0, i32 1
  %295 = load %struct.isofile*, %struct.isofile** %294, align 8
  %296 = getelementptr inbounds %struct.isofile, %struct.isofile* %295, i32 0, i32 3
  %297 = call i64 @archive_strlen(%struct.TYPE_11__* %296)
  %298 = load %struct.isoent*, %struct.isoent** %8, align 8
  %299 = getelementptr inbounds %struct.isoent, %struct.isoent* %298, i32 0, i32 1
  %300 = load %struct.isofile*, %struct.isofile** %299, align 8
  %301 = getelementptr inbounds %struct.isofile, %struct.isofile* %300, i32 0, i32 2
  %302 = call i64 @archive_strlen(%struct.TYPE_11__* %301)
  %303 = add nsw i64 %297, %302
  %304 = icmp eq i64 %303, 0
  br i1 %304, label %305, label %311

305:                                              ; preds = %271
  %306 = load %struct.iso9660*, %struct.iso9660** %7, align 8
  %307 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %306, i32 0, i32 1
  %308 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %307, i32 0, i32 1
  %309 = load i8*, i8** %308, align 8
  %310 = getelementptr inbounds i8, i8* %309, i64 0
  store i8 0, i8* %310, align 1
  br label %337

311:                                              ; preds = %271
  %312 = load %struct.isoent*, %struct.isoent** %8, align 8
  %313 = getelementptr inbounds %struct.isoent, %struct.isoent* %312, i32 0, i32 1
  %314 = load %struct.isofile*, %struct.isofile** %313, align 8
  %315 = getelementptr inbounds %struct.isofile, %struct.isofile* %314, i32 0, i32 3
  %316 = call i64 @archive_strlen(%struct.TYPE_11__* %315)
  %317 = icmp sgt i64 %316, 0
  br i1 %317, label %318, label %329

318:                                              ; preds = %311
  %319 = load %struct.iso9660*, %struct.iso9660** %7, align 8
  %320 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %319, i32 0, i32 1
  %321 = load %struct.isoent*, %struct.isoent** %8, align 8
  %322 = getelementptr inbounds %struct.isoent, %struct.isoent* %321, i32 0, i32 1
  %323 = load %struct.isofile*, %struct.isofile** %322, align 8
  %324 = getelementptr inbounds %struct.isofile, %struct.isofile* %323, i32 0, i32 3
  %325 = call i32 @archive_string_copy(%struct.TYPE_11__* %320, %struct.TYPE_11__* %324)
  %326 = load %struct.iso9660*, %struct.iso9660** %7, align 8
  %327 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %326, i32 0, i32 1
  %328 = call i32 @archive_strappend_char(%struct.TYPE_11__* %327, i8 signext 47)
  br label %329

329:                                              ; preds = %318, %311
  %330 = load %struct.iso9660*, %struct.iso9660** %7, align 8
  %331 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %330, i32 0, i32 1
  %332 = load %struct.isoent*, %struct.isoent** %8, align 8
  %333 = getelementptr inbounds %struct.isoent, %struct.isoent* %332, i32 0, i32 1
  %334 = load %struct.isofile*, %struct.isofile** %333, align 8
  %335 = getelementptr inbounds %struct.isofile, %struct.isofile* %334, i32 0, i32 2
  %336 = call i32 @archive_string_concat(%struct.TYPE_11__* %331, %struct.TYPE_11__* %335)
  br label %337

337:                                              ; preds = %329, %305
  %338 = load %struct.isoent*, %struct.isoent** %8, align 8
  %339 = load %struct.isoent*, %struct.isoent** %9, align 8
  %340 = call i32 @isoent_add_child_tail(%struct.isoent* %338, %struct.isoent* %339)
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %353, label %342

342:                                              ; preds = %337
  %343 = load %struct.isoent*, %struct.isoent** %8, align 8
  %344 = getelementptr inbounds %struct.isoent, %struct.isoent* %343, i32 0, i32 2
  %345 = load %struct.isoent*, %struct.isoent** %9, align 8
  %346 = getelementptr inbounds %struct.isoent, %struct.isoent* %345, i32 0, i32 1
  %347 = load %struct.isofile*, %struct.isofile** %346, align 8
  %348 = getelementptr inbounds %struct.isofile, %struct.isofile* %347, i32 0, i32 2
  %349 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %348, i32 0, i32 1
  %350 = load i8*, i8** %349, align 8
  %351 = call i64 @__archive_rb_tree_find_node(i32* %344, i8* %350)
  %352 = inttoptr i64 %351 to %struct.isoent*
  store %struct.isoent* %352, %struct.isoent** %10, align 8
  br label %356

353:                                              ; preds = %337
  %354 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %354, i32* %3, align 4
  br label %399

355:                                              ; preds = %155
  br label %356

356:                                              ; preds = %355, %342, %67
  %357 = load %struct.isoent*, %struct.isoent** %10, align 8
  %358 = getelementptr inbounds %struct.isoent, %struct.isoent* %357, i32 0, i32 1
  %359 = load %struct.isofile*, %struct.isofile** %358, align 8
  store %struct.isofile* %359, %struct.isofile** %11, align 8
  %360 = load %struct.isoent*, %struct.isoent** %9, align 8
  %361 = getelementptr inbounds %struct.isoent, %struct.isoent* %360, i32 0, i32 1
  %362 = load %struct.isofile*, %struct.isofile** %361, align 8
  store %struct.isofile* %362, %struct.isofile** %12, align 8
  %363 = load %struct.isofile*, %struct.isofile** %11, align 8
  %364 = getelementptr inbounds %struct.isofile, %struct.isofile* %363, i32 0, i32 1
  %365 = load i32, i32* %364, align 8
  %366 = call i64 @archive_entry_filetype(i32 %365)
  %367 = load %struct.isofile*, %struct.isofile** %12, align 8
  %368 = getelementptr inbounds %struct.isofile, %struct.isofile* %367, i32 0, i32 1
  %369 = load i32, i32* %368, align 8
  %370 = call i64 @archive_entry_filetype(i32 %369)
  %371 = icmp ne i64 %366, %370
  br i1 %371, label %372, label %385

372:                                              ; preds = %356
  %373 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %374 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %373, i32 0, i32 0
  %375 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %376 = load %struct.isofile*, %struct.isofile** %11, align 8
  %377 = getelementptr inbounds %struct.isofile, %struct.isofile* %376, i32 0, i32 1
  %378 = load i32, i32* %377, align 8
  %379 = call i32 @archive_entry_pathname(i32 %378)
  %380 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %374, i32 %375, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.4, i64 0, i64 0), i32 %379)
  %381 = load %struct.isoent*, %struct.isoent** %9, align 8
  %382 = call i32 @_isoent_free(%struct.isoent* %381)
  %383 = load %struct.isoent**, %struct.isoent*** %5, align 8
  store %struct.isoent* null, %struct.isoent** %383, align 8
  %384 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %384, i32* %3, align 4
  br label %399

385:                                              ; preds = %356
  %386 = load %struct.isofile*, %struct.isofile** %12, align 8
  %387 = load %struct.isoent*, %struct.isoent** %10, align 8
  %388 = getelementptr inbounds %struct.isoent, %struct.isoent* %387, i32 0, i32 1
  store %struct.isofile* %386, %struct.isofile** %388, align 8
  %389 = load %struct.isofile*, %struct.isofile** %11, align 8
  %390 = load %struct.isoent*, %struct.isoent** %9, align 8
  %391 = getelementptr inbounds %struct.isoent, %struct.isoent* %390, i32 0, i32 1
  store %struct.isofile* %389, %struct.isofile** %391, align 8
  %392 = load %struct.isoent*, %struct.isoent** %10, align 8
  %393 = getelementptr inbounds %struct.isoent, %struct.isoent* %392, i32 0, i32 0
  store i64 0, i64* %393, align 8
  %394 = load %struct.isoent*, %struct.isoent** %9, align 8
  %395 = call i32 @_isoent_free(%struct.isoent* %394)
  %396 = load %struct.isoent*, %struct.isoent** %10, align 8
  %397 = load %struct.isoent**, %struct.isoent*** %5, align 8
  store %struct.isoent* %396, %struct.isoent** %397, align 8
  %398 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %398, i32* %3, align 4
  br label %399

399:                                              ; preds = %385, %372, %353, %259, %207, %119, %93, %80
  %400 = load i32, i32* %3, align 4
  ret i32 %400
}

declare dso_local i64 @archive_strlen(%struct.TYPE_11__*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @isoent_add_child_tail(%struct.isoent*, %struct.isoent*) #1

declare dso_local i64 @__archive_rb_tree_find_node(i32*, i8*) #1

declare dso_local i32 @get_path_component(i8*, i32, i8*) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*, ...) #1

declare dso_local i32 @_isoent_free(%struct.isoent*) #1

declare dso_local %struct.isoent* @isoent_find_child(%struct.isoent*, i8*) #1

declare dso_local i32 @archive_entry_pathname(i32) #1

declare dso_local i32 @archive_string_init(%struct.archive_string*) #1

declare dso_local i32 @archive_strncat(%struct.archive_string*, i8*, i32) #1

declare dso_local %struct.isoent* @isoent_create_virtual_dir(%struct.archive_write*, %struct.iso9660*, i8*) #1

declare dso_local i32 @archive_string_free(%struct.archive_string*) #1

declare dso_local i32 @archive_string_empty(%struct.TYPE_11__*) #1

declare dso_local i32 @archive_string_ensure(%struct.TYPE_11__*, i64) #1

declare dso_local i32 @archive_string_copy(%struct.TYPE_11__*, %struct.TYPE_11__*) #1

declare dso_local i32 @archive_strappend_char(%struct.TYPE_11__*, i8 signext) #1

declare dso_local i32 @archive_string_concat(%struct.TYPE_11__*, %struct.TYPE_11__*) #1

declare dso_local i64 @archive_entry_filetype(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

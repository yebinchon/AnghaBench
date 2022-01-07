; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_set_directory_record_rr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_set_directory_record_rr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isoent = type { i32, %struct.isoent*, %struct.TYPE_17__*, i64, %struct.isofile*, i64, %struct.isoent* }
%struct.TYPE_17__ = type { i32 }
%struct.isofile = type { %struct.TYPE_18__, i32, %struct.TYPE_16__, %struct.TYPE_15__*, %struct.TYPE_14__*, %struct.TYPE_11__ }
%struct.TYPE_18__ = type { i8, i8, i32 }
%struct.TYPE_16__ = type { i8* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { i8*, i64 }
%struct.iso9660 = type { i32, %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_10__ = type { %struct.isoent* }
%struct.ctl_extr_rec = type { i32 }

@DIR_REC_PARENT = common dso_local global i32 0, align 4
@DIR_REC_NORMAL = common dso_local global i32 0, align 4
@AE_IFLNK = common dso_local global i64 0, align 8
@AE_IFCHR = common dso_local global i64 0, align 8
@AE_IFBLK = common dso_local global i64 0, align 8
@DIR_REC_SELF = common dso_local global i32 0, align 4
@OPT_RR_USEFUL = common dso_local global i64 0, align 8
@RR_CE_SIZE = common dso_local global i32 0, align 4
@RRIP_ER_SIZE = common dso_local global i32 0, align 4
@RR_USE_CL = common dso_local global i8 0, align 1
@RR_USE_NM = common dso_local global i8 0, align 1
@RR_USE_PL = common dso_local global i8 0, align 1
@RR_USE_PN = common dso_local global i8 0, align 1
@RR_USE_PX = common dso_local global i8 0, align 1
@RR_USE_RE = common dso_local global i8 0, align 1
@RR_USE_SL = common dso_local global i8 0, align 1
@RR_USE_TF = common dso_local global i8 0, align 1
@TF_ACCESS = common dso_local global i8 0, align 1
@TF_ATTRIBUTES = common dso_local global i8 0, align 1
@TF_CREATION = common dso_local global i8 0, align 1
@TF_MODIFY = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.isoent*, %struct.iso9660*, i32)* @set_directory_record_rr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_directory_record_rr(i8* %0, i32 %1, %struct.isoent* %2, %struct.iso9660* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.isoent*, align 8
  %9 = alloca %struct.iso9660*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca %struct.ctl_extr_rec, align 4
  %14 = alloca %struct.isoent*, align 8
  %15 = alloca %struct.isoent*, align 8
  %16 = alloca %struct.isofile*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8, align 1
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8, align 1
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i8, align 1
  %32 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.isoent* %2, %struct.isoent** %8, align 8
  store %struct.iso9660* %3, %struct.iso9660** %9, align 8
  store i32 %4, i32* %10, align 4
  %33 = load i8*, i8** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.isoent*, %struct.isoent** %8, align 8
  %36 = call i8* @extra_open_record(i8* %33, i32 %34, %struct.isoent* %35, %struct.ctl_extr_rec* %13)
  store i8* %36, i8** %6, align 8
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @DIR_REC_PARENT, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %56

40:                                               ; preds = %5
  %41 = load %struct.isoent*, %struct.isoent** %8, align 8
  %42 = getelementptr inbounds %struct.isoent, %struct.isoent* %41, i32 0, i32 6
  %43 = load %struct.isoent*, %struct.isoent** %42, align 8
  store %struct.isoent* %43, %struct.isoent** %14, align 8
  %44 = load %struct.isoent*, %struct.isoent** %8, align 8
  %45 = getelementptr inbounds %struct.isoent, %struct.isoent* %44, i32 0, i32 1
  %46 = load %struct.isoent*, %struct.isoent** %45, align 8
  store %struct.isoent* %46, %struct.isoent** %15, align 8
  %47 = load %struct.isoent*, %struct.isoent** %14, align 8
  %48 = icmp ne %struct.isoent* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %40
  %50 = load %struct.isoent*, %struct.isoent** %14, align 8
  store %struct.isoent* %50, %struct.isoent** %8, align 8
  br label %55

51:                                               ; preds = %40
  %52 = load %struct.isoent*, %struct.isoent** %8, align 8
  %53 = getelementptr inbounds %struct.isoent, %struct.isoent* %52, i32 0, i32 1
  %54 = load %struct.isoent*, %struct.isoent** %53, align 8
  store %struct.isoent* %54, %struct.isoent** %8, align 8
  br label %55

55:                                               ; preds = %51, %49
  br label %58

56:                                               ; preds = %5
  store %struct.isoent* null, %struct.isoent** %14, align 8
  %57 = load %struct.isoent*, %struct.isoent** %8, align 8
  store %struct.isoent* %57, %struct.isoent** %15, align 8
  br label %58

58:                                               ; preds = %56, %55
  %59 = load %struct.isoent*, %struct.isoent** %8, align 8
  %60 = getelementptr inbounds %struct.isoent, %struct.isoent* %59, i32 0, i32 4
  %61 = load %struct.isofile*, %struct.isofile** %60, align 8
  store %struct.isofile* %61, %struct.isofile** %16, align 8
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* @DIR_REC_NORMAL, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %74

65:                                               ; preds = %58
  store i8 -127, i8* %11, align 1
  %66 = load %struct.isoent*, %struct.isoent** %14, align 8
  %67 = icmp ne %struct.isoent* %66, null
  br i1 %67, label %68, label %73

68:                                               ; preds = %65
  %69 = load i8, i8* %11, align 1
  %70 = zext i8 %69 to i32
  %71 = or i32 %70, 32
  %72 = trunc i32 %71 to i8
  store i8 %72, i8* %11, align 1
  br label %73

73:                                               ; preds = %68, %65
  br label %126

74:                                               ; preds = %58
  store i8 -119, i8* %11, align 1
  %75 = load %struct.isofile*, %struct.isofile** %16, align 8
  %76 = getelementptr inbounds %struct.isofile, %struct.isofile* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i64 @archive_entry_filetype(i32 %77)
  %79 = load i64, i64* @AE_IFLNK, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %74
  %82 = load i8, i8* %11, align 1
  %83 = zext i8 %82 to i32
  %84 = or i32 %83, 4
  %85 = trunc i32 %84 to i8
  store i8 %85, i8* %11, align 1
  br label %86

86:                                               ; preds = %81, %74
  %87 = load %struct.isoent*, %struct.isoent** %8, align 8
  %88 = getelementptr inbounds %struct.isoent, %struct.isoent* %87, i32 0, i32 6
  %89 = load %struct.isoent*, %struct.isoent** %88, align 8
  %90 = icmp ne %struct.isoent* %89, null
  br i1 %90, label %91, label %96

91:                                               ; preds = %86
  %92 = load i8, i8* %11, align 1
  %93 = zext i8 %92 to i32
  %94 = or i32 %93, 64
  %95 = trunc i32 %94 to i8
  store i8 %95, i8* %11, align 1
  br label %96

96:                                               ; preds = %91, %86
  %97 = load %struct.isoent*, %struct.isoent** %8, align 8
  %98 = getelementptr inbounds %struct.isoent, %struct.isoent* %97, i32 0, i32 2
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %98, align 8
  %100 = icmp ne %struct.TYPE_17__* %99, null
  br i1 %100, label %101, label %106

101:                                              ; preds = %96
  %102 = load i8, i8* %11, align 1
  %103 = zext i8 %102 to i32
  %104 = or i32 %103, 16
  %105 = trunc i32 %104 to i8
  store i8 %105, i8* %11, align 1
  br label %106

106:                                              ; preds = %101, %96
  %107 = load %struct.isofile*, %struct.isofile** %16, align 8
  %108 = getelementptr inbounds %struct.isofile, %struct.isofile* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = call i64 @archive_entry_filetype(i32 %109)
  %111 = load i64, i64* @AE_IFCHR, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %120, label %113

113:                                              ; preds = %106
  %114 = load %struct.isofile*, %struct.isofile** %16, align 8
  %115 = getelementptr inbounds %struct.isofile, %struct.isofile* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = call i64 @archive_entry_filetype(i32 %116)
  %118 = load i64, i64* @AE_IFBLK, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %125

120:                                              ; preds = %113, %106
  %121 = load i8, i8* %11, align 1
  %122 = zext i8 %121 to i32
  %123 = or i32 %122, 2
  %124 = trunc i32 %123 to i8
  store i8 %124, i8* %11, align 1
  br label %125

125:                                              ; preds = %120, %113
  br label %126

126:                                              ; preds = %125, %73
  %127 = load i32, i32* %10, align 4
  %128 = load i32, i32* @DIR_REC_SELF, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %163

130:                                              ; preds = %126
  %131 = load %struct.isoent*, %struct.isoent** %8, align 8
  %132 = load %struct.isoent*, %struct.isoent** %8, align 8
  %133 = getelementptr inbounds %struct.isoent, %struct.isoent* %132, i32 0, i32 1
  %134 = load %struct.isoent*, %struct.isoent** %133, align 8
  %135 = icmp eq %struct.isoent* %131, %134
  br i1 %135, label %136, label %163

136:                                              ; preds = %130
  store i32 7, i32* %12, align 4
  %137 = load i8*, i8** %6, align 8
  %138 = icmp ne i8* %137, null
  br i1 %138, label %139, label %160

139:                                              ; preds = %136
  %140 = load i8*, i8** %6, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 1
  store i8 83, i8* %141, align 1
  %142 = load i8*, i8** %6, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 2
  store i8 80, i8* %143, align 1
  %144 = load i32, i32* %12, align 4
  %145 = trunc i32 %144 to i8
  %146 = load i8*, i8** %6, align 8
  %147 = getelementptr inbounds i8, i8* %146, i64 3
  store i8 %145, i8* %147, align 1
  %148 = load i8*, i8** %6, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 4
  store i8 1, i8* %149, align 1
  %150 = load i8*, i8** %6, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 5
  store i8 -66, i8* %151, align 1
  %152 = load i8*, i8** %6, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 6
  store i8 -17, i8* %153, align 1
  %154 = load i8*, i8** %6, align 8
  %155 = getelementptr inbounds i8, i8* %154, i64 7
  store i8 0, i8* %155, align 1
  %156 = load i32, i32* %12, align 4
  %157 = load i8*, i8** %6, align 8
  %158 = sext i32 %156 to i64
  %159 = getelementptr inbounds i8, i8* %157, i64 %158
  store i8* %159, i8** %6, align 8
  br label %160

160:                                              ; preds = %139, %136
  %161 = load i32, i32* %12, align 4
  %162 = call i32 @extra_tell_used_size(%struct.ctl_extr_rec* %13, i32 %161)
  br label %163

163:                                              ; preds = %160, %130, %126
  store i32 5, i32* %12, align 4
  %164 = call i32 @extra_space(%struct.ctl_extr_rec* %13)
  %165 = load i32, i32* %12, align 4
  %166 = icmp slt i32 %164, %165
  br i1 %166, label %167, label %170

167:                                              ; preds = %163
  %168 = load i32, i32* %12, align 4
  %169 = call i8* @extra_next_record(%struct.ctl_extr_rec* %13, i32 %168)
  store i8* %169, i8** %6, align 8
  br label %170

170:                                              ; preds = %167, %163
  %171 = load i8*, i8** %6, align 8
  %172 = icmp ne i8* %171, null
  br i1 %172, label %173, label %191

173:                                              ; preds = %170
  %174 = load i8*, i8** %6, align 8
  %175 = getelementptr inbounds i8, i8* %174, i64 1
  store i8 82, i8* %175, align 1
  %176 = load i8*, i8** %6, align 8
  %177 = getelementptr inbounds i8, i8* %176, i64 2
  store i8 82, i8* %177, align 1
  %178 = load i32, i32* %12, align 4
  %179 = trunc i32 %178 to i8
  %180 = load i8*, i8** %6, align 8
  %181 = getelementptr inbounds i8, i8* %180, i64 3
  store i8 %179, i8* %181, align 1
  %182 = load i8*, i8** %6, align 8
  %183 = getelementptr inbounds i8, i8* %182, i64 4
  store i8 1, i8* %183, align 1
  %184 = load i8, i8* %11, align 1
  %185 = load i8*, i8** %6, align 8
  %186 = getelementptr inbounds i8, i8* %185, i64 5
  store i8 %184, i8* %186, align 1
  %187 = load i32, i32* %12, align 4
  %188 = load i8*, i8** %6, align 8
  %189 = sext i32 %187 to i64
  %190 = getelementptr inbounds i8, i8* %188, i64 %189
  store i8* %190, i8** %6, align 8
  br label %191

191:                                              ; preds = %173, %170
  %192 = load i32, i32* %12, align 4
  %193 = call i32 @extra_tell_used_size(%struct.ctl_extr_rec* %13, i32 %192)
  %194 = load i8, i8* %11, align 1
  %195 = zext i8 %194 to i32
  %196 = and i32 %195, 8
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %315

198:                                              ; preds = %191
  %199 = load %struct.isofile*, %struct.isofile** %16, align 8
  %200 = getelementptr inbounds %struct.isofile, %struct.isofile* %199, i32 0, i32 5
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  store i64 %202, i64* %17, align 8
  %203 = load %struct.isofile*, %struct.isofile** %16, align 8
  %204 = getelementptr inbounds %struct.isofile, %struct.isofile* %203, i32 0, i32 5
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 0
  %206 = load i8*, i8** %205, align 8
  store i8* %206, i8** %18, align 8
  %207 = call i32 @extra_space(%struct.ctl_extr_rec* %13)
  %208 = icmp slt i32 %207, 6
  br i1 %208, label %209, label %211

209:                                              ; preds = %198
  %210 = call i8* @extra_next_record(%struct.ctl_extr_rec* %13, i32 6)
  store i8* %210, i8** %6, align 8
  br label %211

211:                                              ; preds = %209, %198
  %212 = load i8*, i8** %6, align 8
  %213 = icmp ne i8* %212, null
  br i1 %213, label %214, label %221

214:                                              ; preds = %211
  %215 = load i8*, i8** %6, align 8
  %216 = getelementptr inbounds i8, i8* %215, i64 1
  store i8 78, i8* %216, align 1
  %217 = load i8*, i8** %6, align 8
  %218 = getelementptr inbounds i8, i8* %217, i64 2
  store i8 77, i8* %218, align 1
  %219 = load i8*, i8** %6, align 8
  %220 = getelementptr inbounds i8, i8* %219, i64 4
  store i8 1, i8* %220, align 1
  br label %221

221:                                              ; preds = %214, %211
  %222 = call i32 @extra_space(%struct.ctl_extr_rec* %13)
  %223 = sext i32 %222 to i64
  store i64 %223, i64* %19, align 8
  %224 = load i64, i64* %19, align 8
  %225 = icmp ugt i64 %224, 255
  br i1 %225, label %226, label %227

226:                                              ; preds = %221
  store i64 255, i64* %19, align 8
  br label %227

227:                                              ; preds = %226, %221
  br label %228

228:                                              ; preds = %289, %227
  %229 = load i64, i64* %17, align 8
  %230 = add i64 %229, 5
  %231 = load i64, i64* %19, align 8
  %232 = icmp ugt i64 %230, %231
  br i1 %232, label %233, label %290

233:                                              ; preds = %228
  %234 = load i64, i64* %19, align 8
  %235 = trunc i64 %234 to i32
  store i32 %235, i32* %12, align 4
  %236 = load i8*, i8** %6, align 8
  %237 = icmp ne i8* %236, null
  br i1 %237, label %238, label %256

238:                                              ; preds = %233
  %239 = load i32, i32* %12, align 4
  %240 = trunc i32 %239 to i8
  %241 = load i8*, i8** %6, align 8
  %242 = getelementptr inbounds i8, i8* %241, i64 3
  store i8 %240, i8* %242, align 1
  %243 = load i8*, i8** %6, align 8
  %244 = getelementptr inbounds i8, i8* %243, i64 5
  store i8 1, i8* %244, align 1
  %245 = load i8*, i8** %6, align 8
  %246 = getelementptr inbounds i8, i8* %245, i64 6
  %247 = load i8*, i8** %18, align 8
  %248 = load i32, i32* %12, align 4
  %249 = sub nsw i32 %248, 5
  %250 = sext i32 %249 to i64
  %251 = call i32 @memcpy(i8* %246, i8* %247, i64 %250)
  %252 = load i32, i32* %12, align 4
  %253 = load i8*, i8** %6, align 8
  %254 = sext i32 %252 to i64
  %255 = getelementptr inbounds i8, i8* %253, i64 %254
  store i8* %255, i8** %6, align 8
  br label %256

256:                                              ; preds = %238, %233
  %257 = load i32, i32* %12, align 4
  %258 = sub nsw i32 %257, 5
  %259 = sext i32 %258 to i64
  %260 = load i64, i64* %17, align 8
  %261 = sub i64 %260, %259
  store i64 %261, i64* %17, align 8
  %262 = load i32, i32* %12, align 4
  %263 = sub nsw i32 %262, 5
  %264 = load i8*, i8** %18, align 8
  %265 = sext i32 %263 to i64
  %266 = getelementptr inbounds i8, i8* %264, i64 %265
  store i8* %266, i8** %18, align 8
  %267 = load i32, i32* %12, align 4
  %268 = call i32 @extra_tell_used_size(%struct.ctl_extr_rec* %13, i32 %267)
  %269 = call i32 @extra_space(%struct.ctl_extr_rec* %13)
  %270 = icmp slt i32 %269, 6
  br i1 %270, label %271, label %279

271:                                              ; preds = %256
  %272 = call i8* @extra_next_record(%struct.ctl_extr_rec* %13, i32 6)
  store i8* %272, i8** %6, align 8
  %273 = call i32 @extra_space(%struct.ctl_extr_rec* %13)
  %274 = sext i32 %273 to i64
  store i64 %274, i64* %19, align 8
  %275 = load i64, i64* %19, align 8
  %276 = icmp ugt i64 %275, 255
  br i1 %276, label %277, label %278

277:                                              ; preds = %271
  store i64 255, i64* %19, align 8
  br label %278

278:                                              ; preds = %277, %271
  br label %279

279:                                              ; preds = %278, %256
  %280 = load i8*, i8** %6, align 8
  %281 = icmp ne i8* %280, null
  br i1 %281, label %282, label %289

282:                                              ; preds = %279
  %283 = load i8*, i8** %6, align 8
  %284 = getelementptr inbounds i8, i8* %283, i64 1
  store i8 78, i8* %284, align 1
  %285 = load i8*, i8** %6, align 8
  %286 = getelementptr inbounds i8, i8* %285, i64 2
  store i8 77, i8* %286, align 1
  %287 = load i8*, i8** %6, align 8
  %288 = getelementptr inbounds i8, i8* %287, i64 4
  store i8 1, i8* %288, align 1
  br label %289

289:                                              ; preds = %282, %279
  br label %228

290:                                              ; preds = %228
  %291 = load i64, i64* %17, align 8
  %292 = trunc i64 %291 to i32
  %293 = add nsw i32 5, %292
  store i32 %293, i32* %12, align 4
  %294 = load i8*, i8** %6, align 8
  %295 = icmp ne i8* %294, null
  br i1 %295, label %296, label %312

296:                                              ; preds = %290
  %297 = load i32, i32* %12, align 4
  %298 = trunc i32 %297 to i8
  %299 = load i8*, i8** %6, align 8
  %300 = getelementptr inbounds i8, i8* %299, i64 3
  store i8 %298, i8* %300, align 1
  %301 = load i8*, i8** %6, align 8
  %302 = getelementptr inbounds i8, i8* %301, i64 5
  store i8 0, i8* %302, align 1
  %303 = load i8*, i8** %6, align 8
  %304 = getelementptr inbounds i8, i8* %303, i64 6
  %305 = load i8*, i8** %18, align 8
  %306 = load i64, i64* %17, align 8
  %307 = call i32 @memcpy(i8* %304, i8* %305, i64 %306)
  %308 = load i32, i32* %12, align 4
  %309 = load i8*, i8** %6, align 8
  %310 = sext i32 %308 to i64
  %311 = getelementptr inbounds i8, i8* %309, i64 %310
  store i8* %311, i8** %6, align 8
  br label %312

312:                                              ; preds = %296, %290
  %313 = load i32, i32* %12, align 4
  %314 = call i32 @extra_tell_used_size(%struct.ctl_extr_rec* %13, i32 %313)
  br label %315

315:                                              ; preds = %312, %191
  %316 = load i8, i8* %11, align 1
  %317 = zext i8 %316 to i32
  %318 = and i32 %317, 1
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %440

320:                                              ; preds = %315
  store i32 44, i32* %12, align 4
  %321 = call i32 @extra_space(%struct.ctl_extr_rec* %13)
  %322 = load i32, i32* %12, align 4
  %323 = icmp slt i32 %321, %322
  br i1 %323, label %324, label %327

324:                                              ; preds = %320
  %325 = load i32, i32* %12, align 4
  %326 = call i8* @extra_next_record(%struct.ctl_extr_rec* %13, i32 %325)
  store i8* %326, i8** %6, align 8
  br label %327

327:                                              ; preds = %324, %320
  %328 = load i8*, i8** %6, align 8
  %329 = icmp ne i8* %328, null
  br i1 %329, label %330, label %437

330:                                              ; preds = %327
  %331 = load %struct.isofile*, %struct.isofile** %16, align 8
  %332 = getelementptr inbounds %struct.isofile, %struct.isofile* %331, i32 0, i32 1
  %333 = load i32, i32* %332, align 8
  %334 = call i32 @archive_entry_mode(i32 %333)
  store i32 %334, i32* %20, align 4
  %335 = load %struct.isofile*, %struct.isofile** %16, align 8
  %336 = getelementptr inbounds %struct.isofile, %struct.isofile* %335, i32 0, i32 1
  %337 = load i32, i32* %336, align 8
  %338 = call i64 @archive_entry_uid(i32 %337)
  store i64 %338, i64* %21, align 8
  %339 = load %struct.isofile*, %struct.isofile** %16, align 8
  %340 = getelementptr inbounds %struct.isofile, %struct.isofile* %339, i32 0, i32 1
  %341 = load i32, i32* %340, align 8
  %342 = call i64 @archive_entry_gid(i32 %341)
  store i64 %342, i64* %22, align 8
  %343 = load %struct.iso9660*, %struct.iso9660** %9, align 8
  %344 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %343, i32 0, i32 1
  %345 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %344, i32 0, i32 0
  %346 = load i64, i64* %345, align 8
  %347 = load i64, i64* @OPT_RR_USEFUL, align 8
  %348 = icmp eq i64 %346, %347
  br i1 %348, label %349, label %363

349:                                              ; preds = %330
  %350 = load i32, i32* %20, align 4
  %351 = or i32 %350, 292
  store i32 %351, i32* %20, align 4
  %352 = load i32, i32* %20, align 4
  %353 = and i32 %352, 73
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %358

355:                                              ; preds = %349
  %356 = load i32, i32* %20, align 4
  %357 = or i32 %356, 73
  store i32 %357, i32* %20, align 4
  br label %358

358:                                              ; preds = %355, %349
  %359 = load i32, i32* %20, align 4
  %360 = and i32 %359, -147
  store i32 %360, i32* %20, align 4
  %361 = load i32, i32* %20, align 4
  %362 = and i32 %361, -3585
  store i32 %362, i32* %20, align 4
  br label %363

363:                                              ; preds = %358, %330
  %364 = load i8*, i8** %6, align 8
  %365 = getelementptr inbounds i8, i8* %364, i64 1
  store i8 80, i8* %365, align 1
  %366 = load i8*, i8** %6, align 8
  %367 = getelementptr inbounds i8, i8* %366, i64 2
  store i8 88, i8* %367, align 1
  %368 = load i32, i32* %12, align 4
  %369 = trunc i32 %368 to i8
  %370 = load i8*, i8** %6, align 8
  %371 = getelementptr inbounds i8, i8* %370, i64 3
  store i8 %369, i8* %371, align 1
  %372 = load i8*, i8** %6, align 8
  %373 = getelementptr inbounds i8, i8* %372, i64 4
  store i8 1, i8* %373, align 1
  %374 = load i8*, i8** %6, align 8
  %375 = getelementptr inbounds i8, i8* %374, i64 5
  %376 = load i32, i32* %20, align 4
  %377 = call i32 @set_num_733(i8* %375, i32 %376)
  %378 = load i8*, i8** %6, align 8
  %379 = getelementptr inbounds i8, i8* %378, i64 13
  %380 = load %struct.isofile*, %struct.isofile** %16, align 8
  %381 = getelementptr inbounds %struct.isofile, %struct.isofile* %380, i32 0, i32 1
  %382 = load i32, i32* %381, align 8
  %383 = call i32 @archive_entry_nlink(i32 %382)
  %384 = call i32 @set_num_733(i8* %379, i32 %383)
  %385 = load i8*, i8** %6, align 8
  %386 = getelementptr inbounds i8, i8* %385, i64 21
  %387 = load i64, i64* %21, align 8
  %388 = trunc i64 %387 to i32
  %389 = call i32 @set_num_733(i8* %386, i32 %388)
  %390 = load i8*, i8** %6, align 8
  %391 = getelementptr inbounds i8, i8* %390, i64 29
  %392 = load i64, i64* %22, align 8
  %393 = trunc i64 %392 to i32
  %394 = call i32 @set_num_733(i8* %391, i32 %393)
  %395 = load %struct.isoent*, %struct.isoent** %15, align 8
  %396 = getelementptr inbounds %struct.isoent, %struct.isoent* %395, i32 0, i32 3
  %397 = load i64, i64* %396, align 8
  %398 = icmp ne i64 %397, 0
  br i1 %398, label %399, label %406

399:                                              ; preds = %363
  %400 = load i8*, i8** %6, align 8
  %401 = getelementptr inbounds i8, i8* %400, i64 37
  %402 = load %struct.isoent*, %struct.isoent** %15, align 8
  %403 = getelementptr inbounds %struct.isoent, %struct.isoent* %402, i32 0, i32 0
  %404 = load i32, i32* %403, align 8
  %405 = call i32 @set_num_733(i8* %401, i32 %404)
  br label %432

406:                                              ; preds = %363
  %407 = load %struct.isofile*, %struct.isofile** %16, align 8
  %408 = getelementptr inbounds %struct.isofile, %struct.isofile* %407, i32 0, i32 4
  %409 = load %struct.TYPE_14__*, %struct.TYPE_14__** %408, align 8
  %410 = icmp ne %struct.TYPE_14__* %409, null
  br i1 %410, label %411, label %422

411:                                              ; preds = %406
  %412 = load i8*, i8** %6, align 8
  %413 = getelementptr inbounds i8, i8* %412, i64 37
  %414 = load %struct.isofile*, %struct.isofile** %16, align 8
  %415 = getelementptr inbounds %struct.isofile, %struct.isofile* %414, i32 0, i32 4
  %416 = load %struct.TYPE_14__*, %struct.TYPE_14__** %415, align 8
  %417 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %416, i32 0, i32 0
  %418 = load %struct.TYPE_13__*, %struct.TYPE_13__** %417, align 8
  %419 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %418, i32 0, i32 0
  %420 = load i32, i32* %419, align 4
  %421 = call i32 @set_num_733(i8* %413, i32 %420)
  br label %431

422:                                              ; preds = %406
  %423 = load i8*, i8** %6, align 8
  %424 = getelementptr inbounds i8, i8* %423, i64 37
  %425 = load %struct.isofile*, %struct.isofile** %16, align 8
  %426 = getelementptr inbounds %struct.isofile, %struct.isofile* %425, i32 0, i32 3
  %427 = load %struct.TYPE_15__*, %struct.TYPE_15__** %426, align 8
  %428 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %427, i32 0, i32 0
  %429 = load i32, i32* %428, align 4
  %430 = call i32 @set_num_733(i8* %424, i32 %429)
  br label %431

431:                                              ; preds = %422, %411
  br label %432

432:                                              ; preds = %431, %399
  %433 = load i32, i32* %12, align 4
  %434 = load i8*, i8** %6, align 8
  %435 = sext i32 %433 to i64
  %436 = getelementptr inbounds i8, i8* %434, i64 %435
  store i8* %436, i8** %6, align 8
  br label %437

437:                                              ; preds = %432, %327
  %438 = load i32, i32* %12, align 4
  %439 = call i32 @extra_tell_used_size(%struct.ctl_extr_rec* %13, i32 %438)
  br label %440

440:                                              ; preds = %437, %315
  %441 = load i8, i8* %11, align 1
  %442 = zext i8 %441 to i32
  %443 = and i32 %442, 4
  %444 = icmp ne i32 %443, 0
  br i1 %444, label %445, label %787

445:                                              ; preds = %440
  %446 = call i32 @extra_space(%struct.ctl_extr_rec* %13)
  %447 = icmp slt i32 %446, 7
  br i1 %447, label %448, label %450

448:                                              ; preds = %445
  %449 = call i8* @extra_next_record(%struct.ctl_extr_rec* %13, i32 7)
  store i8* %449, i8** %6, align 8
  br label %450

450:                                              ; preds = %448, %445
  %451 = load %struct.isofile*, %struct.isofile** %16, align 8
  %452 = getelementptr inbounds %struct.isofile, %struct.isofile* %451, i32 0, i32 2
  %453 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %452, i32 0, i32 0
  %454 = load i8*, i8** %453, align 8
  store i8* %454, i8** %23, align 8
  store i8 0, i8* %24, align 1
  %455 = load i8*, i8** %6, align 8
  %456 = icmp ne i8* %455, null
  br i1 %456, label %457, label %464

457:                                              ; preds = %450
  %458 = load i8*, i8** %6, align 8
  %459 = getelementptr inbounds i8, i8* %458, i64 1
  store i8 83, i8* %459, align 1
  %460 = load i8*, i8** %6, align 8
  %461 = getelementptr inbounds i8, i8* %460, i64 2
  store i8 76, i8* %461, align 1
  %462 = load i8*, i8** %6, align 8
  %463 = getelementptr inbounds i8, i8* %462, i64 4
  store i8 1, i8* %463, align 1
  br label %464

464:                                              ; preds = %457, %450
  br label %465

465:                                              ; preds = %785, %464
  store i8 0, i8* %28, align 1
  %466 = call i32 @extra_space(%struct.ctl_extr_rec* %13)
  store i32 %466, i32* %30, align 4
  %467 = load i32, i32* %30, align 4
  %468 = icmp sgt i32 %467, 255
  br i1 %468, label %469, label %470

469:                                              ; preds = %465
  store i32 255, i32* %30, align 4
  br label %470

470:                                              ; preds = %469, %465
  %471 = load i8*, i8** %6, align 8
  %472 = icmp ne i8* %471, null
  br i1 %472, label %473, label %476

473:                                              ; preds = %470
  %474 = load i8*, i8** %6, align 8
  %475 = getelementptr inbounds i8, i8* %474, i64 6
  store i8* %475, i8** %25, align 8
  br label %477

476:                                              ; preds = %470
  store i8* null, i8** %25, align 8
  br label %477

477:                                              ; preds = %476, %473
  store i8* null, i8** %27, align 8
  store i8* null, i8** %26, align 8
  store i32 0, i32* %29, align 4
  br label %478

478:                                              ; preds = %720, %702, %673, %599, %509, %477
  %479 = load i8*, i8** %23, align 8
  %480 = load i8, i8* %479, align 1
  %481 = sext i8 %480 to i32
  %482 = icmp ne i32 %481, 0
  br i1 %482, label %483, label %488

483:                                              ; preds = %478
  %484 = load i32, i32* %29, align 4
  %485 = add nsw i32 %484, 11
  %486 = load i32, i32* %30, align 4
  %487 = icmp slt i32 %485, %486
  br label %488

488:                                              ; preds = %483, %478
  %489 = phi i1 [ false, %478 ], [ %487, %483 ]
  br i1 %489, label %490, label %723

490:                                              ; preds = %488
  %491 = load i8, i8* %24, align 1
  %492 = sext i8 %491 to i32
  %493 = icmp eq i32 %492, 0
  br i1 %493, label %494, label %514

494:                                              ; preds = %490
  %495 = load i8*, i8** %23, align 8
  %496 = getelementptr inbounds i8, i8* %495, i64 0
  %497 = load i8, i8* %496, align 1
  %498 = sext i8 %497 to i32
  %499 = icmp eq i32 %498, 47
  br i1 %499, label %500, label %514

500:                                              ; preds = %494
  %501 = load i8*, i8** %25, align 8
  %502 = icmp ne i8* %501, null
  br i1 %502, label %503, label %509

503:                                              ; preds = %500
  %504 = load i8*, i8** %25, align 8
  %505 = getelementptr inbounds i8, i8* %504, i32 1
  store i8* %505, i8** %25, align 8
  store i8* %504, i8** %26, align 8
  %506 = load i8*, i8** %26, align 8
  store i8 8, i8* %506, align 1
  %507 = load i8*, i8** %25, align 8
  %508 = getelementptr inbounds i8, i8* %507, i32 1
  store i8* %508, i8** %25, align 8
  store i8 0, i8* %507, align 1
  br label %509

509:                                              ; preds = %503, %500
  %510 = load i32, i32* %29, align 4
  %511 = add nsw i32 %510, 2
  store i32 %511, i32* %29, align 4
  %512 = load i8*, i8** %23, align 8
  %513 = getelementptr inbounds i8, i8* %512, i32 1
  store i8* %513, i8** %23, align 8
  store i8 47, i8* %24, align 1
  store i8* null, i8** %27, align 8
  br label %478

514:                                              ; preds = %494, %490
  %515 = load i8, i8* %24, align 1
  %516 = sext i8 %515 to i32
  %517 = icmp eq i32 %516, 0
  br i1 %517, label %522, label %518

518:                                              ; preds = %514
  %519 = load i8, i8* %24, align 1
  %520 = sext i8 %519 to i32
  %521 = icmp eq i32 %520, 47
  br i1 %521, label %522, label %546

522:                                              ; preds = %518, %514
  %523 = load i8*, i8** %23, align 8
  %524 = getelementptr inbounds i8, i8* %523, i64 0
  %525 = load i8, i8* %524, align 1
  %526 = sext i8 %525 to i32
  %527 = icmp eq i32 %526, 46
  br i1 %527, label %528, label %546

528:                                              ; preds = %522
  %529 = load i8*, i8** %23, align 8
  %530 = getelementptr inbounds i8, i8* %529, i64 1
  %531 = load i8, i8* %530, align 1
  %532 = sext i8 %531 to i32
  %533 = icmp eq i32 %532, 46
  br i1 %533, label %534, label %546

534:                                              ; preds = %528
  %535 = load i8*, i8** %23, align 8
  %536 = getelementptr inbounds i8, i8* %535, i64 2
  %537 = load i8, i8* %536, align 1
  %538 = sext i8 %537 to i32
  %539 = icmp eq i32 %538, 47
  br i1 %539, label %576, label %540

540:                                              ; preds = %534
  %541 = load i8*, i8** %23, align 8
  %542 = getelementptr inbounds i8, i8* %541, i64 2
  %543 = load i8, i8* %542, align 1
  %544 = sext i8 %543 to i32
  %545 = icmp eq i32 %544, 0
  br i1 %545, label %576, label %546

546:                                              ; preds = %540, %528, %522, %518
  %547 = load i8*, i8** %23, align 8
  %548 = getelementptr inbounds i8, i8* %547, i64 0
  %549 = load i8, i8* %548, align 1
  %550 = sext i8 %549 to i32
  %551 = icmp eq i32 %550, 47
  br i1 %551, label %552, label %600

552:                                              ; preds = %546
  %553 = load i8*, i8** %23, align 8
  %554 = getelementptr inbounds i8, i8* %553, i64 1
  %555 = load i8, i8* %554, align 1
  %556 = sext i8 %555 to i32
  %557 = icmp eq i32 %556, 46
  br i1 %557, label %558, label %600

558:                                              ; preds = %552
  %559 = load i8*, i8** %23, align 8
  %560 = getelementptr inbounds i8, i8* %559, i64 2
  %561 = load i8, i8* %560, align 1
  %562 = sext i8 %561 to i32
  %563 = icmp eq i32 %562, 46
  br i1 %563, label %564, label %600

564:                                              ; preds = %558
  %565 = load i8*, i8** %23, align 8
  %566 = getelementptr inbounds i8, i8* %565, i64 3
  %567 = load i8, i8* %566, align 1
  %568 = sext i8 %567 to i32
  %569 = icmp eq i32 %568, 47
  br i1 %569, label %576, label %570

570:                                              ; preds = %564
  %571 = load i8*, i8** %23, align 8
  %572 = getelementptr inbounds i8, i8* %571, i64 3
  %573 = load i8, i8* %572, align 1
  %574 = sext i8 %573 to i32
  %575 = icmp eq i32 %574, 0
  br i1 %575, label %576, label %600

576:                                              ; preds = %570, %564, %540, %534
  %577 = load i8*, i8** %25, align 8
  %578 = icmp ne i8* %577, null
  br i1 %578, label %579, label %585

579:                                              ; preds = %576
  %580 = load i8*, i8** %25, align 8
  %581 = getelementptr inbounds i8, i8* %580, i32 1
  store i8* %581, i8** %25, align 8
  store i8* %580, i8** %26, align 8
  %582 = load i8*, i8** %26, align 8
  store i8 4, i8* %582, align 1
  %583 = load i8*, i8** %25, align 8
  %584 = getelementptr inbounds i8, i8* %583, i32 1
  store i8* %584, i8** %25, align 8
  store i8 0, i8* %583, align 1
  br label %585

585:                                              ; preds = %579, %576
  %586 = load i32, i32* %29, align 4
  %587 = add nsw i32 %586, 2
  store i32 %587, i32* %29, align 4
  %588 = load i8*, i8** %23, align 8
  %589 = getelementptr inbounds i8, i8* %588, i64 0
  %590 = load i8, i8* %589, align 1
  %591 = sext i8 %590 to i32
  %592 = icmp eq i32 %591, 47
  br i1 %592, label %593, label %596

593:                                              ; preds = %585
  %594 = load i8*, i8** %23, align 8
  %595 = getelementptr inbounds i8, i8* %594, i64 3
  store i8* %595, i8** %23, align 8
  br label %599

596:                                              ; preds = %585
  %597 = load i8*, i8** %23, align 8
  %598 = getelementptr inbounds i8, i8* %597, i64 2
  store i8* %598, i8** %23, align 8
  br label %599

599:                                              ; preds = %596, %593
  store i8 46, i8* %24, align 1
  store i8* null, i8** %27, align 8
  br label %478

600:                                              ; preds = %570, %558, %552, %546
  %601 = load i8, i8* %24, align 1
  %602 = sext i8 %601 to i32
  %603 = icmp eq i32 %602, 0
  br i1 %603, label %608, label %604

604:                                              ; preds = %600
  %605 = load i8, i8* %24, align 1
  %606 = sext i8 %605 to i32
  %607 = icmp eq i32 %606, 47
  br i1 %607, label %608, label %626

608:                                              ; preds = %604, %600
  %609 = load i8*, i8** %23, align 8
  %610 = getelementptr inbounds i8, i8* %609, i64 0
  %611 = load i8, i8* %610, align 1
  %612 = sext i8 %611 to i32
  %613 = icmp eq i32 %612, 46
  br i1 %613, label %614, label %626

614:                                              ; preds = %608
  %615 = load i8*, i8** %23, align 8
  %616 = getelementptr inbounds i8, i8* %615, i64 1
  %617 = load i8, i8* %616, align 1
  %618 = sext i8 %617 to i32
  %619 = icmp eq i32 %618, 47
  br i1 %619, label %650, label %620

620:                                              ; preds = %614
  %621 = load i8*, i8** %23, align 8
  %622 = getelementptr inbounds i8, i8* %621, i64 1
  %623 = load i8, i8* %622, align 1
  %624 = sext i8 %623 to i32
  %625 = icmp eq i32 %624, 0
  br i1 %625, label %650, label %626

626:                                              ; preds = %620, %608, %604
  %627 = load i8*, i8** %23, align 8
  %628 = getelementptr inbounds i8, i8* %627, i64 0
  %629 = load i8, i8* %628, align 1
  %630 = sext i8 %629 to i32
  %631 = icmp eq i32 %630, 47
  br i1 %631, label %632, label %674

632:                                              ; preds = %626
  %633 = load i8*, i8** %23, align 8
  %634 = getelementptr inbounds i8, i8* %633, i64 1
  %635 = load i8, i8* %634, align 1
  %636 = sext i8 %635 to i32
  %637 = icmp eq i32 %636, 46
  br i1 %637, label %638, label %674

638:                                              ; preds = %632
  %639 = load i8*, i8** %23, align 8
  %640 = getelementptr inbounds i8, i8* %639, i64 2
  %641 = load i8, i8* %640, align 1
  %642 = sext i8 %641 to i32
  %643 = icmp eq i32 %642, 47
  br i1 %643, label %650, label %644

644:                                              ; preds = %638
  %645 = load i8*, i8** %23, align 8
  %646 = getelementptr inbounds i8, i8* %645, i64 2
  %647 = load i8, i8* %646, align 1
  %648 = sext i8 %647 to i32
  %649 = icmp eq i32 %648, 0
  br i1 %649, label %650, label %674

650:                                              ; preds = %644, %638, %620, %614
  %651 = load i8*, i8** %25, align 8
  %652 = icmp ne i8* %651, null
  br i1 %652, label %653, label %659

653:                                              ; preds = %650
  %654 = load i8*, i8** %25, align 8
  %655 = getelementptr inbounds i8, i8* %654, i32 1
  store i8* %655, i8** %25, align 8
  store i8* %654, i8** %26, align 8
  %656 = load i8*, i8** %26, align 8
  store i8 2, i8* %656, align 1
  %657 = load i8*, i8** %25, align 8
  %658 = getelementptr inbounds i8, i8* %657, i32 1
  store i8* %658, i8** %25, align 8
  store i8 0, i8* %657, align 1
  br label %659

659:                                              ; preds = %653, %650
  %660 = load i32, i32* %29, align 4
  %661 = add nsw i32 %660, 2
  store i32 %661, i32* %29, align 4
  %662 = load i8*, i8** %23, align 8
  %663 = getelementptr inbounds i8, i8* %662, i64 0
  %664 = load i8, i8* %663, align 1
  %665 = sext i8 %664 to i32
  %666 = icmp eq i32 %665, 47
  br i1 %666, label %667, label %670

667:                                              ; preds = %659
  %668 = load i8*, i8** %23, align 8
  %669 = getelementptr inbounds i8, i8* %668, i64 2
  store i8* %669, i8** %23, align 8
  br label %673

670:                                              ; preds = %659
  %671 = load i8*, i8** %23, align 8
  %672 = getelementptr inbounds i8, i8* %671, i32 1
  store i8* %672, i8** %23, align 8
  br label %673

673:                                              ; preds = %670, %667
  store i8 46, i8* %24, align 1
  store i8* null, i8** %27, align 8
  br label %478

674:                                              ; preds = %644, %632, %626
  %675 = load i8*, i8** %23, align 8
  %676 = getelementptr inbounds i8, i8* %675, i64 0
  %677 = load i8, i8* %676, align 1
  %678 = sext i8 %677 to i32
  %679 = icmp eq i32 %678, 47
  br i1 %679, label %683, label %680

680:                                              ; preds = %674
  %681 = load i8*, i8** %27, align 8
  %682 = icmp eq i8* %681, null
  br i1 %682, label %683, label %707

683:                                              ; preds = %680, %674
  %684 = load i8*, i8** %25, align 8
  %685 = icmp ne i8* %684, null
  br i1 %685, label %686, label %693

686:                                              ; preds = %683
  %687 = load i8*, i8** %25, align 8
  %688 = getelementptr inbounds i8, i8* %687, i32 1
  store i8* %688, i8** %25, align 8
  store i8* %687, i8** %26, align 8
  %689 = load i8*, i8** %26, align 8
  store i8 0, i8* %689, align 1
  %690 = load i8*, i8** %25, align 8
  %691 = getelementptr inbounds i8, i8* %690, i32 1
  store i8* %691, i8** %25, align 8
  store i8* %690, i8** %27, align 8
  %692 = load i8*, i8** %27, align 8
  store i8 0, i8* %692, align 1
  br label %694

693:                                              ; preds = %683
  store i8* %28, i8** %27, align 8
  br label %694

694:                                              ; preds = %693, %686
  %695 = load i32, i32* %29, align 4
  %696 = add nsw i32 %695, 2
  store i32 %696, i32* %29, align 4
  %697 = load i8*, i8** %23, align 8
  %698 = getelementptr inbounds i8, i8* %697, i64 0
  %699 = load i8, i8* %698, align 1
  %700 = sext i8 %699 to i32
  %701 = icmp eq i32 %700, 47
  br i1 %701, label %702, label %706

702:                                              ; preds = %694
  %703 = load i8*, i8** %23, align 8
  %704 = getelementptr inbounds i8, i8* %703, i32 1
  store i8* %704, i8** %23, align 8
  %705 = load i8, i8* %703, align 1
  store i8 %705, i8* %24, align 1
  br label %478

706:                                              ; preds = %694
  br label %707

707:                                              ; preds = %706, %680
  %708 = load i8*, i8** %23, align 8
  %709 = getelementptr inbounds i8, i8* %708, i32 1
  store i8* %709, i8** %23, align 8
  %710 = load i8, i8* %708, align 1
  store i8 %710, i8* %24, align 1
  %711 = load i8*, i8** %25, align 8
  %712 = icmp ne i8* %711, null
  br i1 %712, label %713, label %720

713:                                              ; preds = %707
  %714 = load i8, i8* %24, align 1
  %715 = load i8*, i8** %25, align 8
  %716 = getelementptr inbounds i8, i8* %715, i32 1
  store i8* %716, i8** %25, align 8
  store i8 %714, i8* %715, align 1
  %717 = load i8*, i8** %27, align 8
  %718 = load i8, i8* %717, align 1
  %719 = add i8 %718, 1
  store i8 %719, i8* %717, align 1
  br label %720

720:                                              ; preds = %713, %707
  %721 = load i32, i32* %29, align 4
  %722 = add nsw i32 %721, 1
  store i32 %722, i32* %29, align 4
  br label %478

723:                                              ; preds = %488
  %724 = load i8*, i8** %23, align 8
  %725 = load i8, i8* %724, align 1
  %726 = icmp ne i8 %725, 0
  br i1 %726, label %727, label %766

727:                                              ; preds = %723
  %728 = load i32, i32* %29, align 4
  %729 = add nsw i32 5, %728
  store i32 %729, i32* %12, align 4
  %730 = load i8*, i8** %6, align 8
  %731 = icmp ne i8* %730, null
  br i1 %731, label %732, label %748

732:                                              ; preds = %727
  %733 = load i8*, i8** %26, align 8
  %734 = load i8, i8* %733, align 1
  %735 = zext i8 %734 to i32
  %736 = or i32 %735, 1
  %737 = trunc i32 %736 to i8
  store i8 %737, i8* %733, align 1
  %738 = load i32, i32* %12, align 4
  %739 = trunc i32 %738 to i8
  %740 = load i8*, i8** %6, align 8
  %741 = getelementptr inbounds i8, i8* %740, i64 3
  store i8 %739, i8* %741, align 1
  %742 = load i8*, i8** %6, align 8
  %743 = getelementptr inbounds i8, i8* %742, i64 5
  store i8 1, i8* %743, align 1
  %744 = load i32, i32* %12, align 4
  %745 = load i8*, i8** %6, align 8
  %746 = sext i32 %744 to i64
  %747 = getelementptr inbounds i8, i8* %745, i64 %746
  store i8* %747, i8** %6, align 8
  br label %748

748:                                              ; preds = %732, %727
  %749 = load i32, i32* %12, align 4
  %750 = call i32 @extra_tell_used_size(%struct.ctl_extr_rec* %13, i32 %749)
  %751 = call i32 @extra_space(%struct.ctl_extr_rec* %13)
  %752 = icmp slt i32 %751, 11
  br i1 %752, label %753, label %755

753:                                              ; preds = %748
  %754 = call i8* @extra_next_record(%struct.ctl_extr_rec* %13, i32 11)
  store i8* %754, i8** %6, align 8
  br label %755

755:                                              ; preds = %753, %748
  %756 = load i8*, i8** %6, align 8
  %757 = icmp ne i8* %756, null
  br i1 %757, label %758, label %765

758:                                              ; preds = %755
  %759 = load i8*, i8** %6, align 8
  %760 = getelementptr inbounds i8, i8* %759, i64 1
  store i8 83, i8* %760, align 1
  %761 = load i8*, i8** %6, align 8
  %762 = getelementptr inbounds i8, i8* %761, i64 2
  store i8 76, i8* %762, align 1
  %763 = load i8*, i8** %6, align 8
  %764 = getelementptr inbounds i8, i8* %763, i64 4
  store i8 1, i8* %764, align 1
  br label %765

765:                                              ; preds = %758, %755
  br label %785

766:                                              ; preds = %723
  %767 = load i32, i32* %29, align 4
  %768 = add nsw i32 5, %767
  store i32 %768, i32* %12, align 4
  %769 = load i8*, i8** %6, align 8
  %770 = icmp ne i8* %769, null
  br i1 %770, label %771, label %782

771:                                              ; preds = %766
  %772 = load i32, i32* %12, align 4
  %773 = trunc i32 %772 to i8
  %774 = load i8*, i8** %6, align 8
  %775 = getelementptr inbounds i8, i8* %774, i64 3
  store i8 %773, i8* %775, align 1
  %776 = load i8*, i8** %6, align 8
  %777 = getelementptr inbounds i8, i8* %776, i64 5
  store i8 0, i8* %777, align 1
  %778 = load i32, i32* %12, align 4
  %779 = load i8*, i8** %6, align 8
  %780 = sext i32 %778 to i64
  %781 = getelementptr inbounds i8, i8* %779, i64 %780
  store i8* %781, i8** %6, align 8
  br label %782

782:                                              ; preds = %771, %766
  %783 = load i32, i32* %12, align 4
  %784 = call i32 @extra_tell_used_size(%struct.ctl_extr_rec* %13, i32 %783)
  br label %786

785:                                              ; preds = %765
  br label %465

786:                                              ; preds = %782
  br label %787

787:                                              ; preds = %786, %440
  %788 = load i8, i8* %11, align 1
  %789 = zext i8 %788 to i32
  %790 = and i32 %789, 128
  %791 = icmp ne i32 %790, 0
  br i1 %791, label %792, label %943

792:                                              ; preds = %787
  store i32 5, i32* %12, align 4
  store i8 0, i8* %31, align 1
  %793 = load %struct.isofile*, %struct.isofile** %16, align 8
  %794 = getelementptr inbounds %struct.isofile, %struct.isofile* %793, i32 0, i32 1
  %795 = load i32, i32* %794, align 8
  %796 = call i64 @archive_entry_birthtime_is_set(i32 %795)
  %797 = icmp ne i64 %796, 0
  br i1 %797, label %798, label %815

798:                                              ; preds = %792
  %799 = load %struct.isofile*, %struct.isofile** %16, align 8
  %800 = getelementptr inbounds %struct.isofile, %struct.isofile* %799, i32 0, i32 1
  %801 = load i32, i32* %800, align 8
  %802 = call i64 @archive_entry_birthtime(i32 %801)
  %803 = load %struct.isofile*, %struct.isofile** %16, align 8
  %804 = getelementptr inbounds %struct.isofile, %struct.isofile* %803, i32 0, i32 1
  %805 = load i32, i32* %804, align 8
  %806 = call i64 @archive_entry_mtime(i32 %805)
  %807 = icmp sle i64 %802, %806
  br i1 %807, label %808, label %815

808:                                              ; preds = %798
  %809 = load i32, i32* %12, align 4
  %810 = add nsw i32 %809, 7
  store i32 %810, i32* %12, align 4
  %811 = load i8, i8* %31, align 1
  %812 = zext i8 %811 to i32
  %813 = or i32 %812, 1
  %814 = trunc i32 %813 to i8
  store i8 %814, i8* %31, align 1
  br label %815

815:                                              ; preds = %808, %798, %792
  %816 = load %struct.isofile*, %struct.isofile** %16, align 8
  %817 = getelementptr inbounds %struct.isofile, %struct.isofile* %816, i32 0, i32 1
  %818 = load i32, i32* %817, align 8
  %819 = call i64 @archive_entry_mtime_is_set(i32 %818)
  %820 = icmp ne i64 %819, 0
  br i1 %820, label %821, label %828

821:                                              ; preds = %815
  %822 = load i32, i32* %12, align 4
  %823 = add nsw i32 %822, 7
  store i32 %823, i32* %12, align 4
  %824 = load i8, i8* %31, align 1
  %825 = zext i8 %824 to i32
  %826 = or i32 %825, 2
  %827 = trunc i32 %826 to i8
  store i8 %827, i8* %31, align 1
  br label %828

828:                                              ; preds = %821, %815
  %829 = load %struct.isofile*, %struct.isofile** %16, align 8
  %830 = getelementptr inbounds %struct.isofile, %struct.isofile* %829, i32 0, i32 1
  %831 = load i32, i32* %830, align 8
  %832 = call i64 @archive_entry_atime_is_set(i32 %831)
  %833 = icmp ne i64 %832, 0
  br i1 %833, label %834, label %841

834:                                              ; preds = %828
  %835 = load i32, i32* %12, align 4
  %836 = add nsw i32 %835, 7
  store i32 %836, i32* %12, align 4
  %837 = load i8, i8* %31, align 1
  %838 = zext i8 %837 to i32
  %839 = or i32 %838, 4
  %840 = trunc i32 %839 to i8
  store i8 %840, i8* %31, align 1
  br label %841

841:                                              ; preds = %834, %828
  %842 = load %struct.isofile*, %struct.isofile** %16, align 8
  %843 = getelementptr inbounds %struct.isofile, %struct.isofile* %842, i32 0, i32 1
  %844 = load i32, i32* %843, align 8
  %845 = call i64 @archive_entry_ctime_is_set(i32 %844)
  %846 = icmp ne i64 %845, 0
  br i1 %846, label %847, label %854

847:                                              ; preds = %841
  %848 = load i32, i32* %12, align 4
  %849 = add nsw i32 %848, 7
  store i32 %849, i32* %12, align 4
  %850 = load i8, i8* %31, align 1
  %851 = zext i8 %850 to i32
  %852 = or i32 %851, 8
  %853 = trunc i32 %852 to i8
  store i8 %853, i8* %31, align 1
  br label %854

854:                                              ; preds = %847, %841
  %855 = call i32 @extra_space(%struct.ctl_extr_rec* %13)
  %856 = load i32, i32* %12, align 4
  %857 = icmp slt i32 %855, %856
  br i1 %857, label %858, label %861

858:                                              ; preds = %854
  %859 = load i32, i32* %12, align 4
  %860 = call i8* @extra_next_record(%struct.ctl_extr_rec* %13, i32 %859)
  store i8* %860, i8** %6, align 8
  br label %861

861:                                              ; preds = %858, %854
  %862 = load i8*, i8** %6, align 8
  %863 = icmp ne i8* %862, null
  br i1 %863, label %864, label %940

864:                                              ; preds = %861
  %865 = load i8*, i8** %6, align 8
  %866 = getelementptr inbounds i8, i8* %865, i64 1
  store i8 84, i8* %866, align 1
  %867 = load i8*, i8** %6, align 8
  %868 = getelementptr inbounds i8, i8* %867, i64 2
  store i8 70, i8* %868, align 1
  %869 = load i32, i32* %12, align 4
  %870 = trunc i32 %869 to i8
  %871 = load i8*, i8** %6, align 8
  %872 = getelementptr inbounds i8, i8* %871, i64 3
  store i8 %870, i8* %872, align 1
  %873 = load i8*, i8** %6, align 8
  %874 = getelementptr inbounds i8, i8* %873, i64 4
  store i8 1, i8* %874, align 1
  %875 = load i8, i8* %31, align 1
  %876 = load i8*, i8** %6, align 8
  %877 = getelementptr inbounds i8, i8* %876, i64 5
  store i8 %875, i8* %877, align 1
  %878 = load i8*, i8** %6, align 8
  %879 = getelementptr inbounds i8, i8* %878, i64 5
  store i8* %879, i8** %6, align 8
  %880 = load i8, i8* %31, align 1
  %881 = zext i8 %880 to i32
  %882 = and i32 %881, 1
  %883 = icmp ne i32 %882, 0
  br i1 %883, label %884, label %894

884:                                              ; preds = %864
  %885 = load i8*, i8** %6, align 8
  %886 = getelementptr inbounds i8, i8* %885, i64 1
  %887 = load %struct.isofile*, %struct.isofile** %16, align 8
  %888 = getelementptr inbounds %struct.isofile, %struct.isofile* %887, i32 0, i32 1
  %889 = load i32, i32* %888, align 8
  %890 = call i64 @archive_entry_birthtime(i32 %889)
  %891 = call i32 @set_time_915(i8* %886, i64 %890)
  %892 = load i8*, i8** %6, align 8
  %893 = getelementptr inbounds i8, i8* %892, i64 7
  store i8* %893, i8** %6, align 8
  br label %894

894:                                              ; preds = %884, %864
  %895 = load i8, i8* %31, align 1
  %896 = zext i8 %895 to i32
  %897 = and i32 %896, 2
  %898 = icmp ne i32 %897, 0
  br i1 %898, label %899, label %909

899:                                              ; preds = %894
  %900 = load i8*, i8** %6, align 8
  %901 = getelementptr inbounds i8, i8* %900, i64 1
  %902 = load %struct.isofile*, %struct.isofile** %16, align 8
  %903 = getelementptr inbounds %struct.isofile, %struct.isofile* %902, i32 0, i32 1
  %904 = load i32, i32* %903, align 8
  %905 = call i64 @archive_entry_mtime(i32 %904)
  %906 = call i32 @set_time_915(i8* %901, i64 %905)
  %907 = load i8*, i8** %6, align 8
  %908 = getelementptr inbounds i8, i8* %907, i64 7
  store i8* %908, i8** %6, align 8
  br label %909

909:                                              ; preds = %899, %894
  %910 = load i8, i8* %31, align 1
  %911 = zext i8 %910 to i32
  %912 = and i32 %911, 4
  %913 = icmp ne i32 %912, 0
  br i1 %913, label %914, label %924

914:                                              ; preds = %909
  %915 = load i8*, i8** %6, align 8
  %916 = getelementptr inbounds i8, i8* %915, i64 1
  %917 = load %struct.isofile*, %struct.isofile** %16, align 8
  %918 = getelementptr inbounds %struct.isofile, %struct.isofile* %917, i32 0, i32 1
  %919 = load i32, i32* %918, align 8
  %920 = call i64 @archive_entry_atime(i32 %919)
  %921 = call i32 @set_time_915(i8* %916, i64 %920)
  %922 = load i8*, i8** %6, align 8
  %923 = getelementptr inbounds i8, i8* %922, i64 7
  store i8* %923, i8** %6, align 8
  br label %924

924:                                              ; preds = %914, %909
  %925 = load i8, i8* %31, align 1
  %926 = zext i8 %925 to i32
  %927 = and i32 %926, 8
  %928 = icmp ne i32 %927, 0
  br i1 %928, label %929, label %939

929:                                              ; preds = %924
  %930 = load i8*, i8** %6, align 8
  %931 = getelementptr inbounds i8, i8* %930, i64 1
  %932 = load %struct.isofile*, %struct.isofile** %16, align 8
  %933 = getelementptr inbounds %struct.isofile, %struct.isofile* %932, i32 0, i32 1
  %934 = load i32, i32* %933, align 8
  %935 = call i64 @archive_entry_ctime(i32 %934)
  %936 = call i32 @set_time_915(i8* %931, i64 %935)
  %937 = load i8*, i8** %6, align 8
  %938 = getelementptr inbounds i8, i8* %937, i64 7
  store i8* %938, i8** %6, align 8
  br label %939

939:                                              ; preds = %929, %924
  br label %940

940:                                              ; preds = %939, %861
  %941 = load i32, i32* %12, align 4
  %942 = call i32 @extra_tell_used_size(%struct.ctl_extr_rec* %13, i32 %941)
  br label %943

943:                                              ; preds = %940, %787
  %944 = load i8, i8* %11, align 1
  %945 = zext i8 %944 to i32
  %946 = and i32 %945, 64
  %947 = icmp ne i32 %946, 0
  br i1 %947, label %948, label %976

948:                                              ; preds = %943
  store i32 4, i32* %12, align 4
  %949 = call i32 @extra_space(%struct.ctl_extr_rec* %13)
  %950 = load i32, i32* %12, align 4
  %951 = icmp slt i32 %949, %950
  br i1 %951, label %952, label %955

952:                                              ; preds = %948
  %953 = load i32, i32* %12, align 4
  %954 = call i8* @extra_next_record(%struct.ctl_extr_rec* %13, i32 %953)
  store i8* %954, i8** %6, align 8
  br label %955

955:                                              ; preds = %952, %948
  %956 = load i8*, i8** %6, align 8
  %957 = icmp ne i8* %956, null
  br i1 %957, label %958, label %973

958:                                              ; preds = %955
  %959 = load i8*, i8** %6, align 8
  %960 = getelementptr inbounds i8, i8* %959, i64 1
  store i8 82, i8* %960, align 1
  %961 = load i8*, i8** %6, align 8
  %962 = getelementptr inbounds i8, i8* %961, i64 2
  store i8 69, i8* %962, align 1
  %963 = load i32, i32* %12, align 4
  %964 = trunc i32 %963 to i8
  %965 = load i8*, i8** %6, align 8
  %966 = getelementptr inbounds i8, i8* %965, i64 3
  store i8 %964, i8* %966, align 1
  %967 = load i8*, i8** %6, align 8
  %968 = getelementptr inbounds i8, i8* %967, i64 4
  store i8 1, i8* %968, align 1
  %969 = load i32, i32* %12, align 4
  %970 = load i8*, i8** %6, align 8
  %971 = sext i32 %969 to i64
  %972 = getelementptr inbounds i8, i8* %970, i64 %971
  store i8* %972, i8** %6, align 8
  br label %973

973:                                              ; preds = %958, %955
  %974 = load i32, i32* %12, align 4
  %975 = call i32 @extra_tell_used_size(%struct.ctl_extr_rec* %13, i32 %974)
  br label %976

976:                                              ; preds = %973, %943
  %977 = load i8, i8* %11, align 1
  %978 = zext i8 %977 to i32
  %979 = and i32 %978, 32
  %980 = icmp ne i32 %979, 0
  br i1 %980, label %981, label %1015

981:                                              ; preds = %976
  store i32 12, i32* %12, align 4
  %982 = call i32 @extra_space(%struct.ctl_extr_rec* %13)
  %983 = load i32, i32* %12, align 4
  %984 = icmp slt i32 %982, %983
  br i1 %984, label %985, label %988

985:                                              ; preds = %981
  %986 = load i32, i32* %12, align 4
  %987 = call i8* @extra_next_record(%struct.ctl_extr_rec* %13, i32 %986)
  store i8* %987, i8** %6, align 8
  br label %988

988:                                              ; preds = %985, %981
  %989 = load i8*, i8** %6, align 8
  %990 = icmp ne i8* %989, null
  br i1 %990, label %991, label %1012

991:                                              ; preds = %988
  %992 = load i8*, i8** %6, align 8
  %993 = getelementptr inbounds i8, i8* %992, i64 1
  store i8 80, i8* %993, align 1
  %994 = load i8*, i8** %6, align 8
  %995 = getelementptr inbounds i8, i8* %994, i64 2
  store i8 76, i8* %995, align 1
  %996 = load i32, i32* %12, align 4
  %997 = trunc i32 %996 to i8
  %998 = load i8*, i8** %6, align 8
  %999 = getelementptr inbounds i8, i8* %998, i64 3
  store i8 %997, i8* %999, align 1
  %1000 = load i8*, i8** %6, align 8
  %1001 = getelementptr inbounds i8, i8* %1000, i64 4
  store i8 1, i8* %1001, align 1
  %1002 = load i8*, i8** %6, align 8
  %1003 = getelementptr inbounds i8, i8* %1002, i64 5
  %1004 = load %struct.isoent*, %struct.isoent** %14, align 8
  %1005 = getelementptr inbounds %struct.isoent, %struct.isoent* %1004, i32 0, i32 0
  %1006 = load i32, i32* %1005, align 8
  %1007 = call i32 @set_num_733(i8* %1003, i32 %1006)
  %1008 = load i32, i32* %12, align 4
  %1009 = load i8*, i8** %6, align 8
  %1010 = sext i32 %1008 to i64
  %1011 = getelementptr inbounds i8, i8* %1009, i64 %1010
  store i8* %1011, i8** %6, align 8
  br label %1012

1012:                                             ; preds = %991, %988
  %1013 = load i32, i32* %12, align 4
  %1014 = call i32 @extra_tell_used_size(%struct.ctl_extr_rec* %13, i32 %1013)
  br label %1015

1015:                                             ; preds = %1012, %976
  %1016 = load i8, i8* %11, align 1
  %1017 = zext i8 %1016 to i32
  %1018 = and i32 %1017, 16
  %1019 = icmp ne i32 %1018, 0
  br i1 %1019, label %1020, label %1056

1020:                                             ; preds = %1015
  store i32 12, i32* %12, align 4
  %1021 = call i32 @extra_space(%struct.ctl_extr_rec* %13)
  %1022 = load i32, i32* %12, align 4
  %1023 = icmp slt i32 %1021, %1022
  br i1 %1023, label %1024, label %1027

1024:                                             ; preds = %1020
  %1025 = load i32, i32* %12, align 4
  %1026 = call i8* @extra_next_record(%struct.ctl_extr_rec* %13, i32 %1025)
  store i8* %1026, i8** %6, align 8
  br label %1027

1027:                                             ; preds = %1024, %1020
  %1028 = load i8*, i8** %6, align 8
  %1029 = icmp ne i8* %1028, null
  br i1 %1029, label %1030, label %1053

1030:                                             ; preds = %1027
  %1031 = load i8*, i8** %6, align 8
  %1032 = getelementptr inbounds i8, i8* %1031, i64 1
  store i8 67, i8* %1032, align 1
  %1033 = load i8*, i8** %6, align 8
  %1034 = getelementptr inbounds i8, i8* %1033, i64 2
  store i8 76, i8* %1034, align 1
  %1035 = load i32, i32* %12, align 4
  %1036 = trunc i32 %1035 to i8
  %1037 = load i8*, i8** %6, align 8
  %1038 = getelementptr inbounds i8, i8* %1037, i64 3
  store i8 %1036, i8* %1038, align 1
  %1039 = load i8*, i8** %6, align 8
  %1040 = getelementptr inbounds i8, i8* %1039, i64 4
  store i8 1, i8* %1040, align 1
  %1041 = load i8*, i8** %6, align 8
  %1042 = getelementptr inbounds i8, i8* %1041, i64 5
  %1043 = load %struct.isoent*, %struct.isoent** %8, align 8
  %1044 = getelementptr inbounds %struct.isoent, %struct.isoent* %1043, i32 0, i32 2
  %1045 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1044, align 8
  %1046 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %1045, i32 0, i32 0
  %1047 = load i32, i32* %1046, align 4
  %1048 = call i32 @set_num_733(i8* %1042, i32 %1047)
  %1049 = load i32, i32* %12, align 4
  %1050 = load i8*, i8** %6, align 8
  %1051 = sext i32 %1049 to i64
  %1052 = getelementptr inbounds i8, i8* %1050, i64 %1051
  store i8* %1052, i8** %6, align 8
  br label %1053

1053:                                             ; preds = %1030, %1027
  %1054 = load i32, i32* %12, align 4
  %1055 = call i32 @extra_tell_used_size(%struct.ctl_extr_rec* %13, i32 %1054)
  br label %1056

1056:                                             ; preds = %1053, %1015
  %1057 = load i8, i8* %11, align 1
  %1058 = zext i8 %1057 to i32
  %1059 = and i32 %1058, 2
  %1060 = icmp ne i32 %1059, 0
  br i1 %1060, label %1061, label %1103

1061:                                             ; preds = %1056
  store i32 20, i32* %12, align 4
  %1062 = call i32 @extra_space(%struct.ctl_extr_rec* %13)
  %1063 = load i32, i32* %12, align 4
  %1064 = icmp slt i32 %1062, %1063
  br i1 %1064, label %1065, label %1068

1065:                                             ; preds = %1061
  %1066 = load i32, i32* %12, align 4
  %1067 = call i8* @extra_next_record(%struct.ctl_extr_rec* %13, i32 %1066)
  store i8* %1067, i8** %6, align 8
  br label %1068

1068:                                             ; preds = %1065, %1061
  %1069 = load i8*, i8** %6, align 8
  %1070 = icmp ne i8* %1069, null
  br i1 %1070, label %1071, label %1100

1071:                                             ; preds = %1068
  %1072 = load i8*, i8** %6, align 8
  %1073 = getelementptr inbounds i8, i8* %1072, i64 1
  store i8 80, i8* %1073, align 1
  %1074 = load i8*, i8** %6, align 8
  %1075 = getelementptr inbounds i8, i8* %1074, i64 2
  store i8 78, i8* %1075, align 1
  %1076 = load i32, i32* %12, align 4
  %1077 = trunc i32 %1076 to i8
  %1078 = load i8*, i8** %6, align 8
  %1079 = getelementptr inbounds i8, i8* %1078, i64 3
  store i8 %1077, i8* %1079, align 1
  %1080 = load i8*, i8** %6, align 8
  %1081 = getelementptr inbounds i8, i8* %1080, i64 4
  store i8 1, i8* %1081, align 1
  %1082 = load %struct.isofile*, %struct.isofile** %16, align 8
  %1083 = getelementptr inbounds %struct.isofile, %struct.isofile* %1082, i32 0, i32 1
  %1084 = load i32, i32* %1083, align 8
  %1085 = call i64 @archive_entry_rdev(i32 %1084)
  %1086 = trunc i64 %1085 to i32
  store i32 %1086, i32* %32, align 4
  %1087 = load i8*, i8** %6, align 8
  %1088 = getelementptr inbounds i8, i8* %1087, i64 5
  %1089 = load i32, i32* %32, align 4
  %1090 = ashr i32 %1089, 32
  %1091 = call i32 @set_num_733(i8* %1088, i32 %1090)
  %1092 = load i8*, i8** %6, align 8
  %1093 = getelementptr inbounds i8, i8* %1092, i64 13
  %1094 = load i32, i32* %32, align 4
  %1095 = call i32 @set_num_733(i8* %1093, i32 %1094)
  %1096 = load i32, i32* %12, align 4
  %1097 = load i8*, i8** %6, align 8
  %1098 = sext i32 %1096 to i64
  %1099 = getelementptr inbounds i8, i8* %1097, i64 %1098
  store i8* %1099, i8** %6, align 8
  br label %1100

1100:                                             ; preds = %1071, %1068
  %1101 = load i32, i32* %12, align 4
  %1102 = call i32 @extra_tell_used_size(%struct.ctl_extr_rec* %13, i32 %1101)
  br label %1103

1103:                                             ; preds = %1100, %1056
  %1104 = load %struct.isofile*, %struct.isofile** %16, align 8
  %1105 = getelementptr inbounds %struct.isofile, %struct.isofile* %1104, i32 0, i32 0
  %1106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %1105, i32 0, i32 0
  %1107 = load i8, i8* %1106, align 8
  %1108 = icmp ne i8 %1107, 0
  br i1 %1108, label %1109, label %1160

1109:                                             ; preds = %1103
  store i32 16, i32* %12, align 4
  %1110 = call i32 @extra_space(%struct.ctl_extr_rec* %13)
  %1111 = load i32, i32* %12, align 4
  %1112 = icmp slt i32 %1110, %1111
  br i1 %1112, label %1113, label %1116

1113:                                             ; preds = %1109
  %1114 = load i32, i32* %12, align 4
  %1115 = call i8* @extra_next_record(%struct.ctl_extr_rec* %13, i32 %1114)
  store i8* %1115, i8** %6, align 8
  br label %1116

1116:                                             ; preds = %1113, %1109
  %1117 = load i8*, i8** %6, align 8
  %1118 = icmp ne i8* %1117, null
  br i1 %1118, label %1119, label %1157

1119:                                             ; preds = %1116
  %1120 = load i8*, i8** %6, align 8
  %1121 = getelementptr inbounds i8, i8* %1120, i64 1
  store i8 90, i8* %1121, align 1
  %1122 = load i8*, i8** %6, align 8
  %1123 = getelementptr inbounds i8, i8* %1122, i64 2
  store i8 70, i8* %1123, align 1
  %1124 = load i32, i32* %12, align 4
  %1125 = trunc i32 %1124 to i8
  %1126 = load i8*, i8** %6, align 8
  %1127 = getelementptr inbounds i8, i8* %1126, i64 3
  store i8 %1125, i8* %1127, align 1
  %1128 = load i8*, i8** %6, align 8
  %1129 = getelementptr inbounds i8, i8* %1128, i64 4
  store i8 1, i8* %1129, align 1
  %1130 = load i8*, i8** %6, align 8
  %1131 = getelementptr inbounds i8, i8* %1130, i64 5
  store i8 112, i8* %1131, align 1
  %1132 = load i8*, i8** %6, align 8
  %1133 = getelementptr inbounds i8, i8* %1132, i64 6
  store i8 122, i8* %1133, align 1
  %1134 = load %struct.isofile*, %struct.isofile** %16, align 8
  %1135 = getelementptr inbounds %struct.isofile, %struct.isofile* %1134, i32 0, i32 0
  %1136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %1135, i32 0, i32 0
  %1137 = load i8, i8* %1136, align 8
  %1138 = load i8*, i8** %6, align 8
  %1139 = getelementptr inbounds i8, i8* %1138, i64 7
  store i8 %1137, i8* %1139, align 1
  %1140 = load %struct.isofile*, %struct.isofile** %16, align 8
  %1141 = getelementptr inbounds %struct.isofile, %struct.isofile* %1140, i32 0, i32 0
  %1142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %1141, i32 0, i32 1
  %1143 = load i8, i8* %1142, align 1
  %1144 = load i8*, i8** %6, align 8
  %1145 = getelementptr inbounds i8, i8* %1144, i64 8
  store i8 %1143, i8* %1145, align 1
  %1146 = load i8*, i8** %6, align 8
  %1147 = getelementptr inbounds i8, i8* %1146, i64 9
  %1148 = load %struct.isofile*, %struct.isofile** %16, align 8
  %1149 = getelementptr inbounds %struct.isofile, %struct.isofile* %1148, i32 0, i32 0
  %1150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %1149, i32 0, i32 2
  %1151 = load i32, i32* %1150, align 4
  %1152 = call i32 @set_num_733(i8* %1147, i32 %1151)
  %1153 = load i32, i32* %12, align 4
  %1154 = load i8*, i8** %6, align 8
  %1155 = sext i32 %1153 to i64
  %1156 = getelementptr inbounds i8, i8* %1154, i64 %1155
  store i8* %1156, i8** %6, align 8
  br label %1157

1157:                                             ; preds = %1119, %1116
  %1158 = load i32, i32* %12, align 4
  %1159 = call i32 @extra_tell_used_size(%struct.ctl_extr_rec* %13, i32 %1158)
  br label %1160

1160:                                             ; preds = %1157, %1103
  %1161 = load i32, i32* %10, align 4
  %1162 = load i32, i32* @DIR_REC_SELF, align 4
  %1163 = icmp eq i32 %1161, %1162
  br i1 %1163, label %1164, label %1185

1164:                                             ; preds = %1160
  %1165 = load %struct.isoent*, %struct.isoent** %8, align 8
  %1166 = load %struct.isoent*, %struct.isoent** %8, align 8
  %1167 = getelementptr inbounds %struct.isoent, %struct.isoent* %1166, i32 0, i32 1
  %1168 = load %struct.isoent*, %struct.isoent** %1167, align 8
  %1169 = icmp eq %struct.isoent* %1165, %1168
  br i1 %1169, label %1170, label %1185

1170:                                             ; preds = %1164
  %1171 = load i32, i32* @RR_CE_SIZE, align 4
  store i32 %1171, i32* %12, align 4
  %1172 = load i8*, i8** %6, align 8
  %1173 = icmp ne i8* %1172, null
  br i1 %1173, label %1174, label %1182

1174:                                             ; preds = %1170
  %1175 = load i8*, i8** %6, align 8
  %1176 = getelementptr inbounds i8, i8* %1175, i64 1
  %1177 = load %struct.iso9660*, %struct.iso9660** %9, align 8
  %1178 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %1177, i32 0, i32 0
  %1179 = load i32, i32* %1178, align 8
  %1180 = load i32, i32* @RRIP_ER_SIZE, align 4
  %1181 = call i32 @set_SUSP_CE(i8* %1176, i32 %1179, i32 0, i32 %1180)
  br label %1182

1182:                                             ; preds = %1174, %1170
  %1183 = load i32, i32* %12, align 4
  %1184 = call i32 @extra_tell_used_size(%struct.ctl_extr_rec* %13, i32 %1183)
  br label %1185

1185:                                             ; preds = %1182, %1164, %1160
  %1186 = call i32 @extra_close_record(%struct.ctl_extr_rec* %13, i32 0)
  %1187 = getelementptr inbounds %struct.ctl_extr_rec, %struct.ctl_extr_rec* %13, i32 0, i32 0
  %1188 = load i32, i32* %1187, align 4
  ret i32 %1188
}

declare dso_local i8* @extra_open_record(i8*, i32, %struct.isoent*, %struct.ctl_extr_rec*) #1

declare dso_local i64 @archive_entry_filetype(i32) #1

declare dso_local i32 @extra_tell_used_size(%struct.ctl_extr_rec*, i32) #1

declare dso_local i32 @extra_space(%struct.ctl_extr_rec*) #1

declare dso_local i8* @extra_next_record(%struct.ctl_extr_rec*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @archive_entry_mode(i32) #1

declare dso_local i64 @archive_entry_uid(i32) #1

declare dso_local i64 @archive_entry_gid(i32) #1

declare dso_local i32 @set_num_733(i8*, i32) #1

declare dso_local i32 @archive_entry_nlink(i32) #1

declare dso_local i64 @archive_entry_birthtime_is_set(i32) #1

declare dso_local i64 @archive_entry_birthtime(i32) #1

declare dso_local i64 @archive_entry_mtime(i32) #1

declare dso_local i64 @archive_entry_mtime_is_set(i32) #1

declare dso_local i64 @archive_entry_atime_is_set(i32) #1

declare dso_local i64 @archive_entry_ctime_is_set(i32) #1

declare dso_local i32 @set_time_915(i8*, i64) #1

declare dso_local i64 @archive_entry_atime(i32) #1

declare dso_local i64 @archive_entry_ctime(i32) #1

declare dso_local i64 @archive_entry_rdev(i32) #1

declare dso_local i32 @set_SUSP_CE(i8*, i32, i32, i32) #1

declare dso_local i32 @extra_close_record(%struct.ctl_extr_rec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

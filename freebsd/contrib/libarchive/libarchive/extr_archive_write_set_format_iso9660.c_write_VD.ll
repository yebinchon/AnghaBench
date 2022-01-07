; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_write_VD.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_write_VD.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { %struct.iso9660* }
%struct.iso9660 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }
%struct.vdd = type { i32, i32, i32, i32, i32 }

@VDT_SUPPLEMENTARY = common dso_local global i32 0, align 4
@VDC_UCS2 = common dso_local global i32 0, align 4
@VDC_LOWERCASE = common dso_local global i32 0, align 4
@VDT_PRIMARY = common dso_local global i32 0, align 4
@VDC_STD = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@LOGICAL_BLOCK_SIZE = common dso_local global i32 0, align 4
@DIR_REC_VD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Publisher File\00", align 1
@A_CHAR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"Data Preparer File\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Application File\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"Copyright File\00", align 1
@D_CHAR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"Abstract File\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"Bibliongraphic File\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*, %struct.vdd*)* @write_VD to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_VD(%struct.archive_write* %0, %struct.vdd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_write*, align 8
  %5 = alloca %struct.vdd*, align 8
  %6 = alloca %struct.iso9660*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [256 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  store %struct.archive_write* %0, %struct.archive_write** %4, align 8
  store %struct.vdd* %1, %struct.vdd** %5, align 8
  store i32 1, i32* %8, align 4
  %15 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %16 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %15, i32 0, i32 0
  %17 = load %struct.iso9660*, %struct.iso9660** %16, align 8
  store %struct.iso9660* %17, %struct.iso9660** %6, align 8
  %18 = load %struct.vdd*, %struct.vdd** %5, align 8
  %19 = getelementptr inbounds %struct.vdd, %struct.vdd* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %28 [
    i32 129, label %21
    i32 130, label %24
    i32 128, label %27
  ]

21:                                               ; preds = %2
  %22 = load i32, i32* @VDT_SUPPLEMENTARY, align 4
  store i32 %22, i32* %10, align 4
  store i8 1, i8* %13, align 1
  store i8 1, i8* %12, align 1
  %23 = load i32, i32* @VDC_UCS2, align 4
  store i32 %23, i32* %11, align 4
  br label %31

24:                                               ; preds = %2
  %25 = load i32, i32* @VDT_SUPPLEMENTARY, align 4
  store i32 %25, i32* %10, align 4
  store i8 2, i8* %13, align 1
  store i8 2, i8* %12, align 1
  %26 = load i32, i32* @VDC_LOWERCASE, align 4
  store i32 %26, i32* %11, align 4
  br label %31

27:                                               ; preds = %2
  br label %28

28:                                               ; preds = %2, %27
  %29 = load i32, i32* @VDT_PRIMARY, align 4
  store i32 %29, i32* %10, align 4
  store i8 1, i8* %13, align 1
  store i8 1, i8* %12, align 1
  %30 = load i32, i32* @VDC_STD, align 4
  store i32 %30, i32* %11, align 4
  br label %31

31:                                               ; preds = %28, %24, %21
  %32 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %33 = call i8* @wb_buffptr(%struct.archive_write* %32)
  %34 = getelementptr inbounds i8, i8* %33, i64 -1
  store i8* %34, i8** %7, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load i8, i8* %12, align 1
  %38 = call i32 @set_VD_bp(i8* %35, i32 %36, i8 zeroext %37)
  %39 = load i8*, i8** %7, align 8
  %40 = call i32 @set_unused_field_bp(i8* %39, i32 8, i32 8)
  %41 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %42 = call i32 @get_system_identitier(i8* %41, i32 256)
  %43 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @set_str_a_characters_bp(%struct.archive_write* %43, i8* %44, i32 9, i32 40, i8* %45, i32 %46)
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* %14, align 4
  %49 = load i32, i32* @ARCHIVE_OK, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %31
  %52 = load i32, i32* %14, align 4
  store i32 %52, i32* %3, align 4
  br label %272

53:                                               ; preds = %31
  %54 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %57 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %56, i32 0, i32 9
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @set_str_d_characters_bp(%struct.archive_write* %54, i8* %55, i32 41, i32 72, i8* %59, i32 %60)
  store i32 %61, i32* %14, align 4
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* @ARCHIVE_OK, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %53
  %66 = load i32, i32* %14, align 4
  store i32 %66, i32* %3, align 4
  br label %272

67:                                               ; preds = %53
  %68 = load i8*, i8** %7, align 8
  %69 = call i32 @set_unused_field_bp(i8* %68, i32 73, i32 80)
  %70 = load i8*, i8** %7, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 81
  %72 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %73 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %72, i32 0, i32 8
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @set_num_733(i8* %71, i32 %74)
  %76 = load %struct.vdd*, %struct.vdd** %5, align 8
  %77 = getelementptr inbounds %struct.vdd, %struct.vdd* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, 129
  br i1 %79, label %80, label %90

80:                                               ; preds = %67
  %81 = load i8*, i8** %7, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 89
  store i8 37, i8* %82, align 1
  %83 = load i8*, i8** %7, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 90
  store i8 47, i8* %84, align 1
  %85 = load i8*, i8** %7, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 91
  store i8 69, i8* %86, align 1
  %87 = load i8*, i8** %7, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 92
  %89 = call i32 @memset(i8* %88, i32 0, i32 29)
  br label %93

90:                                               ; preds = %67
  %91 = load i8*, i8** %7, align 8
  %92 = call i32 @set_unused_field_bp(i8* %91, i32 89, i32 120)
  br label %93

93:                                               ; preds = %90, %80
  %94 = load i8*, i8** %7, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 121
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @set_num_723(i8* %95, i32 %96)
  %98 = load i8*, i8** %7, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 125
  %100 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %101 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @set_num_723(i8* %99, i32 %102)
  %104 = load i8*, i8** %7, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 129
  %106 = load i32, i32* @LOGICAL_BLOCK_SIZE, align 4
  %107 = call i32 @set_num_723(i8* %105, i32 %106)
  %108 = load i8*, i8** %7, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 133
  %110 = load %struct.vdd*, %struct.vdd** %5, align 8
  %111 = getelementptr inbounds %struct.vdd, %struct.vdd* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @set_num_733(i8* %109, i32 %112)
  %114 = load i8*, i8** %7, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 141
  %116 = load %struct.vdd*, %struct.vdd** %5, align 8
  %117 = getelementptr inbounds %struct.vdd, %struct.vdd* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @set_num_731(i8* %115, i32 %118)
  %120 = load i8*, i8** %7, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 145
  %122 = call i32 @set_num_731(i8* %121, i32 0)
  %123 = load i8*, i8** %7, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 149
  %125 = load %struct.vdd*, %struct.vdd** %5, align 8
  %126 = getelementptr inbounds %struct.vdd, %struct.vdd* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @set_num_732(i8* %124, i32 %127)
  %129 = load i8*, i8** %7, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 153
  %131 = call i32 @set_num_732(i8* %130, i32 0)
  %132 = load i8*, i8** %7, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 157
  %134 = load %struct.vdd*, %struct.vdd** %5, align 8
  %135 = getelementptr inbounds %struct.vdd, %struct.vdd* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %138 = load i32, i32* @DIR_REC_VD, align 4
  %139 = load %struct.vdd*, %struct.vdd** %5, align 8
  %140 = getelementptr inbounds %struct.vdd, %struct.vdd* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @set_directory_record(i8* %133, i32 34, i32 %136, %struct.iso9660* %137, i32 %138, i32 %141)
  %143 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %144 = load i8*, i8** %7, align 8
  %145 = load i32, i32* %11, align 4
  %146 = call i32 @set_str_d_characters_bp(%struct.archive_write* %143, i8* %144, i32 191, i32 318, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %145)
  store i32 %146, i32* %14, align 4
  %147 = load i32, i32* %14, align 4
  %148 = load i32, i32* @ARCHIVE_OK, align 4
  %149 = icmp ne i32 %147, %148
  br i1 %149, label %150, label %152

150:                                              ; preds = %93
  %151 = load i32, i32* %14, align 4
  store i32 %151, i32* %3, align 4
  br label %272

152:                                              ; preds = %93
  %153 = load i8*, i8** %7, align 8
  %154 = load i32, i32* %11, align 4
  %155 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %156 = load %struct.vdd*, %struct.vdd** %5, align 8
  %157 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %158 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %157, i32 0, i32 7
  %159 = load i32, i32* @A_CHAR, align 4
  %160 = call i32 @set_file_identifier(i8* %153, i32 319, i32 446, i32 %154, %struct.archive_write* %155, %struct.vdd* %156, i32* %158, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 1, i32 %159)
  store i32 %160, i32* %14, align 4
  %161 = load i32, i32* %14, align 4
  %162 = load i32, i32* @ARCHIVE_OK, align 4
  %163 = icmp ne i32 %161, %162
  br i1 %163, label %164, label %166

164:                                              ; preds = %152
  %165 = load i32, i32* %14, align 4
  store i32 %165, i32* %3, align 4
  br label %272

166:                                              ; preds = %152
  %167 = load i8*, i8** %7, align 8
  %168 = load i32, i32* %11, align 4
  %169 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %170 = load %struct.vdd*, %struct.vdd** %5, align 8
  %171 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %172 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %171, i32 0, i32 6
  %173 = load i32, i32* @A_CHAR, align 4
  %174 = call i32 @set_file_identifier(i8* %167, i32 447, i32 574, i32 %168, %struct.archive_write* %169, %struct.vdd* %170, i32* %172, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 1, i32 %173)
  store i32 %174, i32* %14, align 4
  %175 = load i32, i32* %14, align 4
  %176 = load i32, i32* @ARCHIVE_OK, align 4
  %177 = icmp ne i32 %175, %176
  br i1 %177, label %178, label %180

178:                                              ; preds = %166
  %179 = load i32, i32* %14, align 4
  store i32 %179, i32* %3, align 4
  br label %272

180:                                              ; preds = %166
  %181 = load i8*, i8** %7, align 8
  %182 = load i32, i32* %11, align 4
  %183 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %184 = load %struct.vdd*, %struct.vdd** %5, align 8
  %185 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %186 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %185, i32 0, i32 5
  %187 = load i32, i32* @A_CHAR, align 4
  %188 = call i32 @set_file_identifier(i8* %181, i32 575, i32 702, i32 %182, %struct.archive_write* %183, %struct.vdd* %184, i32* %186, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 1, i32 %187)
  store i32 %188, i32* %14, align 4
  %189 = load i32, i32* %14, align 4
  %190 = load i32, i32* @ARCHIVE_OK, align 4
  %191 = icmp ne i32 %189, %190
  br i1 %191, label %192, label %194

192:                                              ; preds = %180
  %193 = load i32, i32* %14, align 4
  store i32 %193, i32* %3, align 4
  br label %272

194:                                              ; preds = %180
  %195 = load i8*, i8** %7, align 8
  %196 = load i32, i32* %11, align 4
  %197 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %198 = load %struct.vdd*, %struct.vdd** %5, align 8
  %199 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %200 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %199, i32 0, i32 4
  %201 = load i32, i32* @D_CHAR, align 4
  %202 = call i32 @set_file_identifier(i8* %195, i32 703, i32 739, i32 %196, %struct.archive_write* %197, %struct.vdd* %198, i32* %200, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 0, i32 %201)
  store i32 %202, i32* %14, align 4
  %203 = load i32, i32* %14, align 4
  %204 = load i32, i32* @ARCHIVE_OK, align 4
  %205 = icmp ne i32 %203, %204
  br i1 %205, label %206, label %208

206:                                              ; preds = %194
  %207 = load i32, i32* %14, align 4
  store i32 %207, i32* %3, align 4
  br label %272

208:                                              ; preds = %194
  %209 = load i8*, i8** %7, align 8
  %210 = load i32, i32* %11, align 4
  %211 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %212 = load %struct.vdd*, %struct.vdd** %5, align 8
  %213 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %214 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %213, i32 0, i32 3
  %215 = load i32, i32* @D_CHAR, align 4
  %216 = call i32 @set_file_identifier(i8* %209, i32 740, i32 776, i32 %210, %struct.archive_write* %211, %struct.vdd* %212, i32* %214, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 0, i32 %215)
  store i32 %216, i32* %14, align 4
  %217 = load i32, i32* %14, align 4
  %218 = load i32, i32* @ARCHIVE_OK, align 4
  %219 = icmp ne i32 %217, %218
  br i1 %219, label %220, label %222

220:                                              ; preds = %208
  %221 = load i32, i32* %14, align 4
  store i32 %221, i32* %3, align 4
  br label %272

222:                                              ; preds = %208
  %223 = load i8*, i8** %7, align 8
  %224 = load i32, i32* %11, align 4
  %225 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %226 = load %struct.vdd*, %struct.vdd** %5, align 8
  %227 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %228 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %227, i32 0, i32 2
  %229 = load i32, i32* @D_CHAR, align 4
  %230 = call i32 @set_file_identifier(i8* %223, i32 777, i32 813, i32 %224, %struct.archive_write* %225, %struct.vdd* %226, i32* %228, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 0, i32 %229)
  store i32 %230, i32* %14, align 4
  %231 = load i32, i32* %14, align 4
  %232 = load i32, i32* @ARCHIVE_OK, align 4
  %233 = icmp ne i32 %231, %232
  br i1 %233, label %234, label %236

234:                                              ; preds = %222
  %235 = load i32, i32* %14, align 4
  store i32 %235, i32* %3, align 4
  br label %272

236:                                              ; preds = %222
  %237 = load i8*, i8** %7, align 8
  %238 = getelementptr inbounds i8, i8* %237, i64 814
  %239 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %240 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @set_date_time(i8* %238, i32 %241)
  %243 = load i8*, i8** %7, align 8
  %244 = getelementptr inbounds i8, i8* %243, i64 831
  %245 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %246 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = call i32 @set_date_time(i8* %244, i32 %247)
  %249 = load i8*, i8** %7, align 8
  %250 = getelementptr inbounds i8, i8* %249, i64 848
  %251 = call i32 @set_date_time_null(i8* %250)
  %252 = load i8*, i8** %7, align 8
  %253 = getelementptr inbounds i8, i8* %252, i64 865
  %254 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %255 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = call i32 @set_date_time(i8* %253, i32 %256)
  %258 = load i8, i8* %13, align 1
  %259 = load i8*, i8** %7, align 8
  %260 = getelementptr inbounds i8, i8* %259, i64 882
  store i8 %258, i8* %260, align 1
  %261 = load i8*, i8** %7, align 8
  %262 = getelementptr inbounds i8, i8* %261, i64 883
  store i8 0, i8* %262, align 1
  %263 = load i8*, i8** %7, align 8
  %264 = getelementptr inbounds i8, i8* %263, i64 884
  %265 = call i32 @memset(i8* %264, i32 32, i32 512)
  %266 = load i8*, i8** %7, align 8
  %267 = load i32, i32* @LOGICAL_BLOCK_SIZE, align 4
  %268 = call i32 @set_unused_field_bp(i8* %266, i32 1396, i32 %267)
  %269 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %270 = load i32, i32* @LOGICAL_BLOCK_SIZE, align 4
  %271 = call i32 @wb_consume(%struct.archive_write* %269, i32 %270)
  store i32 %271, i32* %3, align 4
  br label %272

272:                                              ; preds = %236, %234, %220, %206, %192, %178, %164, %150, %65, %51
  %273 = load i32, i32* %3, align 4
  ret i32 %273
}

declare dso_local i8* @wb_buffptr(%struct.archive_write*) #1

declare dso_local i32 @set_VD_bp(i8*, i32, i8 zeroext) #1

declare dso_local i32 @set_unused_field_bp(i8*, i32, i32) #1

declare dso_local i32 @get_system_identitier(i8*, i32) #1

declare dso_local i32 @set_str_a_characters_bp(%struct.archive_write*, i8*, i32, i32, i8*, i32) #1

declare dso_local i32 @set_str_d_characters_bp(%struct.archive_write*, i8*, i32, i32, i8*, i32) #1

declare dso_local i32 @set_num_733(i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @set_num_723(i8*, i32) #1

declare dso_local i32 @set_num_731(i8*, i32) #1

declare dso_local i32 @set_num_732(i8*, i32) #1

declare dso_local i32 @set_directory_record(i8*, i32, i32, %struct.iso9660*, i32, i32) #1

declare dso_local i32 @set_file_identifier(i8*, i32, i32, i32, %struct.archive_write*, %struct.vdd*, i32*, i8*, i32, i32) #1

declare dso_local i32 @set_date_time(i8*, i32) #1

declare dso_local i32 @set_date_time_null(i8*) #1

declare dso_local i32 @wb_consume(%struct.archive_write*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

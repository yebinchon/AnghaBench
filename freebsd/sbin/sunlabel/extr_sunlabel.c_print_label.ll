; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/sunlabel/extr_sunlabel.c_print_label.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/sunlabel/extr_sunlabel.c_print_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun_disklabel = type { i64, i32, i32, i8*, i32, i8*, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i64 }

@SUN_VOLNAME_LEN = common dso_local global i32 0, align 4
@SUN_VTOC_SANE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [60 x i8] c"# /dev/%s:\0Atext: %s\0Abytes/sector: %d\0Asectors/cylinder: %ju\0A\00", align 1
@sectorsize = common dso_local global i32 0, align 4
@eflag = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"# max sectors/unit (including alt cylinders): %ju\0A\00", align 1
@mediasize = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"sectors/unit: %ju\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"\\x%02X\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"volume name: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"\0A%d partitions:\0A#\0A\00", align 1
@SUN_NPART = common dso_local global i32 0, align 4
@hflag = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [17 x i8] c"# Size is in %s.\00", align 1
@cflag = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [10 x i8] c"cylinders\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"sectors\00", align 1
@.str.9 = private unnamed_addr constant [135 x i8] c"  Use %%d%c, %%dK, %%dM or %%dG to specify in %s,\0A# kilobytes, megabytes or gigabytes respectively, or '*' to specify rest of\0A# disk.\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"# Offset is in cylinders.\00", align 1
@.str.11 = private unnamed_addr constant [49 x i8] c"  Use '*' to calculate offsets automatically.\0A#\0A\00", align 1
@.str.12 = private unnamed_addr constant [91 x i8] c"#    size       offset      tag         flag\0A#    ---------- ----------  ----------  ----\0A\00", align 1
@.str.13 = private unnamed_addr constant [51 x i8] c"#    size       offset\0A#    ---------- ----------\0A\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"  %c: %10s\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c" %10s\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"  %c: %10ju %10u\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c" %11s %5s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sun_disklabel*, i8*, i32*)* @print_label to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_label(%struct.sun_disklabel* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.sun_disklabel*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store %struct.sun_disklabel* %0, %struct.sun_disklabel** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %13 = load i32, i32* @SUN_VOLNAME_LEN, align 4
  %14 = mul nsw i32 4, %13
  %15 = add nsw i32 %14, 1
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %11, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %12, align 8
  %19 = load %struct.sun_disklabel*, %struct.sun_disklabel** %4, align 8
  %20 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SUN_VTOC_SANE, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %9, align 4
  %25 = load %struct.sun_disklabel*, %struct.sun_disklabel** %4, align 8
  %26 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.sun_disklabel*, %struct.sun_disklabel** %4, align 8
  %29 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = mul nsw i32 %27, %30
  store i32 %31, i32* %10, align 4
  %32 = load i32*, i32** %6, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = load %struct.sun_disklabel*, %struct.sun_disklabel** %4, align 8
  %35 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %34, i32 0, i32 3
  %36 = load i8*, i8** %35, align 8
  %37 = load i32, i32* @sectorsize, align 4
  %38 = load i32, i32* %10, align 4
  %39 = call i32 (i32*, i8*, ...) @fprintf(i32* %32, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i8* %33, i8* %36, i32 %37, i32 %38)
  %40 = load i64, i64* @eflag, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %3
  %43 = load i32*, i32** %6, align 8
  %44 = load i64, i64* @mediasize, align 8
  %45 = trunc i64 %44 to i32
  %46 = load i32, i32* @sectorsize, align 4
  %47 = sdiv i32 %45, %46
  %48 = call i32 (i32*, i8*, ...) @fprintf(i32* %43, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %42, %3
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* %10, align 4
  %52 = load %struct.sun_disklabel*, %struct.sun_disklabel** %4, align 8
  %53 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = mul nsw i32 %51, %54
  %56 = call i32 (i32*, i8*, ...) @fprintf(i32* %50, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %131

59:                                               ; preds = %49
  %60 = load %struct.sun_disklabel*, %struct.sun_disklabel** %4, align 8
  %61 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %60, i32 0, i32 5
  %62 = load i8*, i8** %61, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 0
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %131

67:                                               ; preds = %59
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %68

68:                                               ; preds = %122, %67
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @SUN_VOLNAME_LEN, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %125

72:                                               ; preds = %68
  %73 = load %struct.sun_disklabel*, %struct.sun_disklabel** %4, align 8
  %74 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %73, i32 0, i32 5
  %75 = load i8*, i8** %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %72
  br label %125

83:                                               ; preds = %72
  %84 = load %struct.sun_disklabel*, %struct.sun_disklabel** %4, align 8
  %85 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %84, i32 0, i32 5
  %86 = load i8*, i8** %85, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = call i64 @isprint(i8 signext %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %105

93:                                               ; preds = %83
  %94 = load %struct.sun_disklabel*, %struct.sun_disklabel** %4, align 8
  %95 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %94, i32 0, i32 5
  %96 = load i8*, i8** %95, align 8
  %97 = load i32, i32* %7, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %96, i64 %98
  %100 = load i8, i8* %99, align 1
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %8, align 4
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds i8, i8* %18, i64 %103
  store i8 %100, i8* %104, align 1
  br label %121

105:                                              ; preds = %83
  %106 = load i32, i32* %8, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %18, i64 %107
  %109 = load %struct.sun_disklabel*, %struct.sun_disklabel** %4, align 8
  %110 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %109, i32 0, i32 5
  %111 = load i8*, i8** %110, align 8
  %112 = load i32, i32* %7, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %111, i64 %113
  %115 = load i8, i8* %114, align 1
  %116 = call i64 @sprintf(i8* %108, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8 signext %115)
  %117 = load i32, i32* %8, align 4
  %118 = sext i32 %117 to i64
  %119 = add nsw i64 %118, %116
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %8, align 4
  br label %121

121:                                              ; preds = %105, %93
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %7, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %7, align 4
  br label %68

125:                                              ; preds = %82, %68
  %126 = load i32, i32* %8, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, i8* %18, i64 %127
  store i8 0, i8* %128, align 1
  %129 = load i32*, i32** %6, align 8
  %130 = call i32 (i32*, i8*, ...) @fprintf(i32* %129, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* %18)
  br label %131

131:                                              ; preds = %125, %59, %49
  %132 = load i32*, i32** %6, align 8
  %133 = load i32, i32* @SUN_NPART, align 4
  %134 = call i32 (i32*, i8*, ...) @fprintf(i32* %132, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %133)
  %135 = load i64, i64* @hflag, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %172, label %137

137:                                              ; preds = %131
  %138 = load i32*, i32** %6, align 8
  %139 = load i64, i64* @cflag, align 8
  %140 = icmp ne i64 %139, 0
  %141 = zext i1 %140 to i64
  %142 = select i1 %140, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0)
  %143 = call i32 (i32*, i8*, ...) @fprintf(i32* %138, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* %142)
  %144 = load i64, i64* @eflag, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %157

146:                                              ; preds = %137
  %147 = load i32*, i32** %6, align 8
  %148 = load i64, i64* @cflag, align 8
  %149 = icmp ne i64 %148, 0
  %150 = zext i1 %149 to i64
  %151 = select i1 %149, i32 115, i32 99
  %152 = load i64, i64* @cflag, align 8
  %153 = icmp ne i64 %152, 0
  %154 = zext i1 %153 to i64
  %155 = select i1 %153, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)
  %156 = call i32 (i32*, i8*, ...) @fprintf(i32* %147, i8* getelementptr inbounds ([135 x i8], [135 x i8]* @.str.9, i64 0, i64 0), i32 %151, i8* %155)
  br label %160

157:                                              ; preds = %137
  %158 = load i32*, i32** %6, align 8
  %159 = call i32 @putc(i8 signext 10, i32* %158)
  br label %160

160:                                              ; preds = %157, %146
  %161 = load i32*, i32** %6, align 8
  %162 = call i32 (i32*, i8*, ...) @fprintf(i32* %161, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0))
  %163 = load i64, i64* @eflag, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %160
  %166 = load i32*, i32** %6, align 8
  %167 = call i32 (i32*, i8*, ...) @fprintf(i32* %166, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i64 0, i64 0))
  br label %171

168:                                              ; preds = %160
  %169 = load i32*, i32** %6, align 8
  %170 = call i32 @putc(i8 signext 10, i32* %169)
  br label %171

171:                                              ; preds = %168, %165
  br label %172

172:                                              ; preds = %171, %131
  %173 = load i32, i32* %9, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %172
  %176 = load i32*, i32** %6, align 8
  %177 = call i32 (i32*, i8*, ...) @fprintf(i32* %176, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.12, i64 0, i64 0))
  br label %181

178:                                              ; preds = %172
  %179 = load i32*, i32** %6, align 8
  %180 = call i32 (i32*, i8*, ...) @fprintf(i32* %179, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.13, i64 0, i64 0))
  br label %181

181:                                              ; preds = %178, %175
  store i32 0, i32* %7, align 4
  br label %182

182:                                              ; preds = %286, %181
  %183 = load i32, i32* %7, align 4
  %184 = load i32, i32* @SUN_NPART, align 4
  %185 = icmp slt i32 %183, %184
  br i1 %185, label %186, label %289

186:                                              ; preds = %182
  %187 = load %struct.sun_disklabel*, %struct.sun_disklabel** %4, align 8
  %188 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %187, i32 0, i32 7
  %189 = load %struct.TYPE_3__*, %struct.TYPE_3__** %188, align 8
  %190 = load i32, i32* %7, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %186
  br label %286

197:                                              ; preds = %186
  %198 = load i64, i64* @hflag, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %230

200:                                              ; preds = %197
  %201 = load i32*, i32** %6, align 8
  %202 = load i32, i32* %7, align 4
  %203 = add nsw i32 97, %202
  %204 = load %struct.sun_disklabel*, %struct.sun_disklabel** %4, align 8
  %205 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %204, i32 0, i32 7
  %206 = load %struct.TYPE_3__*, %struct.TYPE_3__** %205, align 8
  %207 = load i32, i32* %7, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %206, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = mul nsw i32 %211, 512
  %213 = call i8* @make_h_number(i32 %212)
  %214 = call i32 (i32*, i8*, ...) @fprintf(i32* %201, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i32 %203, i8* %213)
  %215 = load i32*, i32** %6, align 8
  %216 = load %struct.sun_disklabel*, %struct.sun_disklabel** %4, align 8
  %217 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %216, i32 0, i32 7
  %218 = load %struct.TYPE_3__*, %struct.TYPE_3__** %217, align 8
  %219 = load i32, i32* %7, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %218, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %221, i32 0, i32 1
  %223 = load i64, i64* %222, align 8
  %224 = trunc i64 %223 to i32
  %225 = mul nsw i32 %224, 512
  %226 = load i32, i32* %10, align 4
  %227 = mul nsw i32 %225, %226
  %228 = call i8* @make_h_number(i32 %227)
  %229 = call i32 (i32*, i8*, ...) @fprintf(i32* %215, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i8* %228)
  br label %259

230:                                              ; preds = %197
  %231 = load i32*, i32** %6, align 8
  %232 = load i32, i32* %7, align 4
  %233 = add nsw i32 97, %232
  %234 = load %struct.sun_disklabel*, %struct.sun_disklabel** %4, align 8
  %235 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %234, i32 0, i32 7
  %236 = load %struct.TYPE_3__*, %struct.TYPE_3__** %235, align 8
  %237 = load i32, i32* %7, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %236, i64 %238
  %240 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = load i64, i64* @cflag, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %246

244:                                              ; preds = %230
  %245 = load i32, i32* %10, align 4
  br label %247

246:                                              ; preds = %230
  br label %247

247:                                              ; preds = %246, %244
  %248 = phi i32 [ %245, %244 ], [ 1, %246 ]
  %249 = sdiv i32 %241, %248
  %250 = load %struct.sun_disklabel*, %struct.sun_disklabel** %4, align 8
  %251 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %250, i32 0, i32 7
  %252 = load %struct.TYPE_3__*, %struct.TYPE_3__** %251, align 8
  %253 = load i32, i32* %7, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %252, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %255, i32 0, i32 1
  %257 = load i64, i64* %256, align 8
  %258 = call i32 (i32*, i8*, ...) @fprintf(i32* %231, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0), i32 %233, i32 %249, i64 %257)
  br label %259

259:                                              ; preds = %247, %200
  %260 = load i32, i32* %9, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %283

262:                                              ; preds = %259
  %263 = load i32*, i32** %6, align 8
  %264 = load %struct.sun_disklabel*, %struct.sun_disklabel** %4, align 8
  %265 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %264, i32 0, i32 6
  %266 = load %struct.TYPE_4__*, %struct.TYPE_4__** %265, align 8
  %267 = load i32, i32* %7, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %266, i64 %268
  %270 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = call i8* @tagname(i32 %271)
  %273 = load %struct.sun_disklabel*, %struct.sun_disklabel** %4, align 8
  %274 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %273, i32 0, i32 6
  %275 = load %struct.TYPE_4__*, %struct.TYPE_4__** %274, align 8
  %276 = load i32, i32* %7, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %275, i64 %277
  %279 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 4
  %281 = call i8* @flagname(i32 %280)
  %282 = call i32 (i32*, i8*, ...) @fprintf(i32* %263, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i8* %272, i8* %281)
  br label %283

283:                                              ; preds = %262, %259
  %284 = load i32*, i32** %6, align 8
  %285 = call i32 @putc(i8 signext 10, i32* %284)
  br label %286

286:                                              ; preds = %283, %196
  %287 = load i32, i32* %7, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %7, align 4
  br label %182

289:                                              ; preds = %182
  %290 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %290)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #2

declare dso_local i64 @isprint(i8 signext) #2

declare dso_local i64 @sprintf(i8*, i8*, i8 signext) #2

declare dso_local i32 @putc(i8 signext, i32*) #2

declare dso_local i8* @make_h_number(i32) #2

declare dso_local i8* @tagname(i32) #2

declare dso_local i8* @flagname(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

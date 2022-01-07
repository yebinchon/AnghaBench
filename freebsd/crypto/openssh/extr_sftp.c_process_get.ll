; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sftp.c_process_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sftp.c_process_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sftp_conn = type { i32 }
%struct.TYPE_5__ = type { i32, i8** }

@.str = private unnamed_addr constant [14 x i8] c"Looking up %s\00", align 1
@GLOB_MARK = common dso_local global i32 0, align 4
@GLOB_NOSPACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Too many matches for \22%s\22.\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"File \22%s\22 not found.\00", align 1
@.str.3 = private unnamed_addr constant [63 x i8] c"Multiple source paths, but destination \22%s\22 is not a directory\00", align 1
@interrupted = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"basename %s: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@global_aflag = common dso_local global i32 0, align 4
@quiet = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"Resuming %s to %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"Fetching %s to %s\0A\00", align 1
@global_rflag = common dso_local global i64 0, align 8
@global_pflag = common dso_local global i64 0, align 8
@global_fflag = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sftp_conn*, i8*, i8*, i8*, i32, i32, i32, i32)* @process_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_get(%struct.sftp_conn* %0, i8* %1, i8* %2, i8* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.sftp_conn*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.TYPE_5__, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.sftp_conn* %0, %struct.sftp_conn** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  store i8* null, i8** %17, align 8
  store i8* null, i8** %18, align 8
  store i8* null, i8** %21, align 8
  store i32 0, i32* %24, align 4
  %25 = load i8*, i8** %10, align 8
  %26 = call i8* @xstrdup(i8* %25)
  store i8* %26, i8** %17, align 8
  %27 = load i8*, i8** %17, align 8
  %28 = load i8*, i8** %12, align 8
  %29 = call i8* @make_absolute(i8* %27, i8* %28)
  store i8* %29, i8** %17, align 8
  %30 = call i32 @memset(%struct.TYPE_5__* %19, i32 0, i32 16)
  %31 = load i8*, i8** %17, align 8
  %32 = call i32 @debug3(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %31)
  %33 = load %struct.sftp_conn*, %struct.sftp_conn** %9, align 8
  %34 = load i8*, i8** %17, align 8
  %35 = load i32, i32* @GLOB_MARK, align 4
  %36 = call i32 @remote_glob(%struct.sftp_conn* %33, i8* %34, i32 %35, i32* null, %struct.TYPE_5__* %19)
  store i32 %36, i32* %23, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %8
  %39 = load i32, i32* %23, align 4
  %40 = load i32, i32* @GLOB_NOSPACE, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i8*, i8** %17, align 8
  %44 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %43)
  br label %48

45:                                               ; preds = %38
  %46 = load i8*, i8** %17, align 8
  %47 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %46)
  br label %48

48:                                               ; preds = %45, %42
  store i32 -1, i32* %24, align 4
  br label %244

49:                                               ; preds = %8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp sgt i32 %51, 1
  br i1 %52, label %53, label %63

53:                                               ; preds = %49
  %54 = load i8*, i8** %11, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %63

56:                                               ; preds = %53
  %57 = load i8*, i8** %11, align 8
  %58 = call i64 @is_dir(i8* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %56
  %61 = load i8*, i8** %11, align 8
  %62 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i8* %61)
  store i32 -1, i32* %24, align 4
  br label %244

63:                                               ; preds = %56, %53, %49
  store i32 0, i32* %22, align 4
  br label %64

64:                                               ; preds = %240, %63
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %66 = load i8**, i8*** %65, align 8
  %67 = load i32, i32* %22, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8*, i8** %66, i64 %68
  %70 = load i8*, i8** %69, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %64
  %73 = load i32, i32* @interrupted, align 4
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  br label %76

76:                                               ; preds = %72, %64
  %77 = phi i1 [ false, %64 ], [ %75, %72 ]
  br i1 %77, label %78, label %243

78:                                               ; preds = %76
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %80 = load i8**, i8*** %79, align 8
  %81 = load i32, i32* %22, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8*, i8** %80, i64 %82
  %84 = load i8*, i8** %83, align 8
  %85 = call i8* @xstrdup(i8* %84)
  store i8* %85, i8** %21, align 8
  %86 = load i8*, i8** %21, align 8
  %87 = call i8* @basename(i8* %86)
  store i8* %87, i8** %20, align 8
  %88 = icmp eq i8* %87, null
  br i1 %88, label %89, label %96

89:                                               ; preds = %78
  %90 = load i8*, i8** %21, align 8
  %91 = load i32, i32* @errno, align 4
  %92 = call i8* @strerror(i32 %91)
  %93 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* %90, i8* %92)
  %94 = load i8*, i8** %21, align 8
  %95 = call i32 @free(i8* %94)
  store i32 -1, i32* %24, align 4
  br label %244

96:                                               ; preds = %78
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp eq i32 %98, 1
  br i1 %99, label %100, label %115

100:                                              ; preds = %96
  %101 = load i8*, i8** %11, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %115

103:                                              ; preds = %100
  %104 = load i8*, i8** %11, align 8
  %105 = call i64 @is_dir(i8* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %103
  %108 = load i8*, i8** %11, align 8
  %109 = load i8*, i8** %20, align 8
  %110 = call i8* @path_append(i8* %108, i8* %109)
  store i8* %110, i8** %18, align 8
  br label %114

111:                                              ; preds = %103
  %112 = load i8*, i8** %11, align 8
  %113 = call i8* @xstrdup(i8* %112)
  store i8* %113, i8** %18, align 8
  br label %114

114:                                              ; preds = %111, %107
  br label %126

115:                                              ; preds = %100, %96
  %116 = load i8*, i8** %11, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %118, label %122

118:                                              ; preds = %115
  %119 = load i8*, i8** %11, align 8
  %120 = load i8*, i8** %20, align 8
  %121 = call i8* @path_append(i8* %119, i8* %120)
  store i8* %121, i8** %18, align 8
  br label %125

122:                                              ; preds = %115
  %123 = load i8*, i8** %20, align 8
  %124 = call i8* @xstrdup(i8* %123)
  store i8* %124, i8** %18, align 8
  br label %125

125:                                              ; preds = %122, %118
  br label %126

126:                                              ; preds = %125, %114
  %127 = load i8*, i8** %21, align 8
  %128 = call i32 @free(i8* %127)
  %129 = load i32, i32* @global_aflag, align 4
  %130 = load i32, i32* %15, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %15, align 4
  %132 = load i32, i32* @quiet, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %146, label %134

134:                                              ; preds = %126
  %135 = load i32, i32* %15, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %146

137:                                              ; preds = %134
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %139 = load i8**, i8*** %138, align 8
  %140 = load i32, i32* %22, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8*, i8** %139, i64 %141
  %143 = load i8*, i8** %142, align 8
  %144 = load i8*, i8** %18, align 8
  %145 = call i32 @mprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* %143, i8* %144)
  br label %162

146:                                              ; preds = %134, %126
  %147 = load i32, i32* @quiet, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %161, label %149

149:                                              ; preds = %146
  %150 = load i32, i32* %15, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %161, label %152

152:                                              ; preds = %149
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %154 = load i8**, i8*** %153, align 8
  %155 = load i32, i32* %22, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8*, i8** %154, i64 %156
  %158 = load i8*, i8** %157, align 8
  %159 = load i8*, i8** %18, align 8
  %160 = call i32 @mprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i8* %158, i8* %159)
  br label %161

161:                                              ; preds = %152, %149, %146
  br label %162

162:                                              ; preds = %161, %137
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %164 = load i8**, i8*** %163, align 8
  %165 = load i32, i32* %22, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i8*, i8** %164, i64 %166
  %168 = load i8*, i8** %167, align 8
  %169 = call i64 @pathname_is_dir(i8* %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %207

171:                                              ; preds = %162
  %172 = load i32, i32* %14, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %177, label %174

174:                                              ; preds = %171
  %175 = load i64, i64* @global_rflag, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %207

177:                                              ; preds = %174, %171
  %178 = load %struct.sftp_conn*, %struct.sftp_conn** %9, align 8
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %180 = load i8**, i8*** %179, align 8
  %181 = load i32, i32* %22, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8*, i8** %180, i64 %182
  %184 = load i8*, i8** %183, align 8
  %185 = load i8*, i8** %18, align 8
  %186 = load i32, i32* %13, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %191, label %188

188:                                              ; preds = %177
  %189 = load i64, i64* @global_pflag, align 8
  %190 = icmp ne i64 %189, 0
  br label %191

191:                                              ; preds = %188, %177
  %192 = phi i1 [ true, %177 ], [ %190, %188 ]
  %193 = zext i1 %192 to i32
  %194 = load i32, i32* %15, align 4
  %195 = load i32, i32* %16, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %200, label %197

197:                                              ; preds = %191
  %198 = load i64, i64* @global_fflag, align 8
  %199 = icmp ne i64 %198, 0
  br label %200

200:                                              ; preds = %197, %191
  %201 = phi i1 [ true, %191 ], [ %199, %197 ]
  %202 = zext i1 %201 to i32
  %203 = call i32 @download_dir(%struct.sftp_conn* %178, i8* %184, i8* %185, i32* null, i32 %193, i32 1, i32 %194, i32 %202)
  %204 = icmp eq i32 %203, -1
  br i1 %204, label %205, label %206

205:                                              ; preds = %200
  store i32 -1, i32* %24, align 4
  br label %206

206:                                              ; preds = %205, %200
  br label %237

207:                                              ; preds = %174, %162
  %208 = load %struct.sftp_conn*, %struct.sftp_conn** %9, align 8
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %210 = load i8**, i8*** %209, align 8
  %211 = load i32, i32* %22, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i8*, i8** %210, i64 %212
  %214 = load i8*, i8** %213, align 8
  %215 = load i8*, i8** %18, align 8
  %216 = load i32, i32* %13, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %221, label %218

218:                                              ; preds = %207
  %219 = load i64, i64* @global_pflag, align 8
  %220 = icmp ne i64 %219, 0
  br label %221

221:                                              ; preds = %218, %207
  %222 = phi i1 [ true, %207 ], [ %220, %218 ]
  %223 = zext i1 %222 to i32
  %224 = load i32, i32* %15, align 4
  %225 = load i32, i32* %16, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %230, label %227

227:                                              ; preds = %221
  %228 = load i64, i64* @global_fflag, align 8
  %229 = icmp ne i64 %228, 0
  br label %230

230:                                              ; preds = %227, %221
  %231 = phi i1 [ true, %221 ], [ %229, %227 ]
  %232 = zext i1 %231 to i32
  %233 = call i32 @do_download(%struct.sftp_conn* %208, i8* %214, i8* %215, i32* null, i32 %223, i32 %224, i32 %232)
  %234 = icmp eq i32 %233, -1
  br i1 %234, label %235, label %236

235:                                              ; preds = %230
  store i32 -1, i32* %24, align 4
  br label %236

236:                                              ; preds = %235, %230
  br label %237

237:                                              ; preds = %236, %206
  %238 = load i8*, i8** %18, align 8
  %239 = call i32 @free(i8* %238)
  store i8* null, i8** %18, align 8
  br label %240

240:                                              ; preds = %237
  %241 = load i32, i32* %22, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %22, align 4
  br label %64

243:                                              ; preds = %76
  br label %244

244:                                              ; preds = %243, %89, %60, %48
  %245 = load i8*, i8** %17, align 8
  %246 = call i32 @free(i8* %245)
  %247 = call i32 @globfree(%struct.TYPE_5__* %19)
  %248 = load i32, i32* %24, align 4
  ret i32 %248
}

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i8* @make_absolute(i8*, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @debug3(i8*, i8*) #1

declare dso_local i32 @remote_glob(%struct.sftp_conn*, i8*, i32, i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @error(i8*, i8*, ...) #1

declare dso_local i64 @is_dir(i8*) #1

declare dso_local i8* @basename(i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @path_append(i8*, i8*) #1

declare dso_local i32 @mprintf(i8*, i8*, i8*) #1

declare dso_local i64 @pathname_is_dir(i8*) #1

declare dso_local i32 @download_dir(%struct.sftp_conn*, i8*, i8*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @do_download(%struct.sftp_conn*, i8*, i8*, i32*, i32, i32, i32) #1

declare dso_local i32 @globfree(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

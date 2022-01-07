; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sftp.c_do_ls_dir.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sftp.c_do_ls_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sftp_conn = type { i32 }
%struct.TYPE_5__ = type { i8*, i32, i32 }
%struct.winsize = type { i32 }
%struct.stat = type { i32 }

@LS_SHORT_VIEW = common dso_local global i32 0, align 4
@LS_SHOW_ALL = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4
@TIOCGWINSZ = common dso_local global i32 0, align 4
@SORT_FLAGS = common dso_local global i32 0, align 4
@LS_REVERSE_SORT = common dso_local global i32 0, align 4
@sort_flag = common dso_local global i32 0, align 4
@sdirent_comp = common dso_local global i32 0, align 4
@interrupted = common dso_local global i32 0, align 4
@LS_LONG_VIEW = common dso_local global i32 0, align 4
@LS_NUMERIC_VIEW = common dso_local global i32 0, align 4
@LS_SI_UNITS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%-*s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sftp_conn*, i8*, i8*, i32)* @do_ls_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_ls_dir(%struct.sftp_conn* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sftp_conn*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_5__**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.winsize, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca %struct.stat, align 4
  store %struct.sftp_conn* %0, %struct.sftp_conn** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 1, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 1, i32* %13, align 4
  %23 = load %struct.sftp_conn*, %struct.sftp_conn** %6, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @do_readdir(%struct.sftp_conn* %23, i8* %24, %struct.TYPE_5__*** %14)
  store i32 %25, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %5, align 4
  br label %250

29:                                               ; preds = %4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @LS_SHORT_VIEW, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %105, label %34

34:                                               ; preds = %29
  store i32 0, i32* %15, align 4
  store i32 80, i32* %16, align 4
  store i32 0, i32* %10, align 4
  br label %35

35:                                               ; preds = %71, %34
  %36 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %14, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %36, i64 %38
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = icmp ne %struct.TYPE_5__* %40, null
  br i1 %41, label %42, label %74

42:                                               ; preds = %35
  %43 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %14, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %43, i64 %45
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 0
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp ne i32 %52, 46
  br i1 %53, label %59, label %54

54:                                               ; preds = %42
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @LS_SHOW_ALL, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %54, %42
  %60 = load i32, i32* %15, align 4
  %61 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %14, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %61, i64 %63
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @strlen(i8* %67)
  %69 = call i32 @MAXIMUM(i32 %60, i32 %68)
  store i32 %69, i32* %15, align 4
  br label %70

70:                                               ; preds = %59, %54
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %10, align 4
  br label %35

74:                                               ; preds = %35
  %75 = load i8*, i8** %7, align 8
  %76 = load i8*, i8** %8, align 8
  %77 = call i8* @path_strip(i8* %75, i8* %76)
  store i8* %77, i8** %18, align 8
  %78 = load i8*, i8** %18, align 8
  %79 = call i32 @strlen(i8* %78)
  %80 = load i32, i32* %15, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* %15, align 4
  %82 = load i8*, i8** %18, align 8
  %83 = call i32 @free(i8* %82)
  %84 = load i32, i32* @stdin, align 4
  %85 = call i32 @fileno(i32 %84)
  %86 = load i32, i32* @TIOCGWINSZ, align 4
  %87 = call i32 @ioctl(i32 %85, i32 %86, %struct.winsize* %17)
  %88 = icmp ne i32 %87, -1
  br i1 %88, label %89, label %92

89:                                               ; preds = %74
  %90 = getelementptr inbounds %struct.winsize, %struct.winsize* %17, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %16, align 4
  br label %92

92:                                               ; preds = %89, %74
  %93 = load i32, i32* %16, align 4
  %94 = load i32, i32* %15, align 4
  %95 = add nsw i32 %94, 2
  %96 = sdiv i32 %93, %95
  store i32 %96, i32* %13, align 4
  %97 = load i32, i32* %13, align 4
  %98 = call i32 @MAXIMUM(i32 %97, i32 1)
  store i32 %98, i32* %13, align 4
  %99 = load i32, i32* %16, align 4
  %100 = load i32, i32* %13, align 4
  %101 = sdiv i32 %99, %100
  store i32 %101, i32* %12, align 4
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* %16, align 4
  %104 = call i32 @MINIMUM(i32 %102, i32 %103)
  store i32 %104, i32* %12, align 4
  br label %105

105:                                              ; preds = %92, %29
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* @SORT_FLAGS, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %132

110:                                              ; preds = %105
  store i32 0, i32* %10, align 4
  br label %111

111:                                              ; preds = %119, %110
  %112 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %14, align 8
  %113 = load i32, i32* %10, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %112, i64 %114
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %115, align 8
  %117 = icmp ne %struct.TYPE_5__* %116, null
  br i1 %117, label %118, label %122

118:                                              ; preds = %111
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %10, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %10, align 4
  br label %111

122:                                              ; preds = %111
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* @SORT_FLAGS, align 4
  %125 = load i32, i32* @LS_REVERSE_SORT, align 4
  %126 = or i32 %124, %125
  %127 = and i32 %123, %126
  store i32 %127, i32* @sort_flag, align 4
  %128 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %14, align 8
  %129 = load i32, i32* %10, align 4
  %130 = load i32, i32* @sdirent_comp, align 4
  %131 = call i32 @qsort(%struct.TYPE_5__** %128, i32 %129, i32 8, i32 %130)
  br label %132

132:                                              ; preds = %122, %105
  store i32 0, i32* %10, align 4
  br label %133

133:                                              ; preds = %234, %132
  %134 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %14, align 8
  %135 = load i32, i32* %10, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %134, i64 %136
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %137, align 8
  %139 = icmp ne %struct.TYPE_5__* %138, null
  br i1 %139, label %140, label %144

140:                                              ; preds = %133
  %141 = load i32, i32* @interrupted, align 4
  %142 = icmp ne i32 %141, 0
  %143 = xor i1 %142, true
  br label %144

144:                                              ; preds = %140, %133
  %145 = phi i1 [ false, %133 ], [ %143, %140 ]
  br i1 %145, label %146, label %237

146:                                              ; preds = %144
  %147 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %14, align 8
  %148 = load i32, i32* %10, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %147, i64 %149
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 0
  %153 = load i8*, i8** %152, align 8
  %154 = getelementptr inbounds i8, i8* %153, i64 0
  %155 = load i8, i8* %154, align 1
  %156 = sext i8 %155 to i32
  %157 = icmp eq i32 %156, 46
  br i1 %157, label %158, label %164

158:                                              ; preds = %146
  %159 = load i32, i32* %9, align 4
  %160 = load i32, i32* @LS_SHOW_ALL, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %164, label %163

163:                                              ; preds = %158
  br label %234

164:                                              ; preds = %158, %146
  %165 = load i8*, i8** %7, align 8
  %166 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %14, align 8
  %167 = load i32, i32* %10, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %166, i64 %168
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 0
  %172 = load i8*, i8** %171, align 8
  %173 = call i8* @path_append(i8* %165, i8* %172)
  store i8* %173, i8** %19, align 8
  %174 = load i8*, i8** %19, align 8
  %175 = load i8*, i8** %8, align 8
  %176 = call i8* @path_strip(i8* %174, i8* %175)
  store i8* %176, i8** %20, align 8
  %177 = load i8*, i8** %19, align 8
  %178 = call i32 @free(i8* %177)
  %179 = load i32, i32* %9, align 4
  %180 = load i32, i32* @LS_LONG_VIEW, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %218

183:                                              ; preds = %164
  %184 = load i32, i32* %9, align 4
  %185 = load i32, i32* @LS_NUMERIC_VIEW, align 4
  %186 = load i32, i32* @LS_SI_UNITS, align 4
  %187 = or i32 %185, %186
  %188 = and i32 %184, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %208

190:                                              ; preds = %183
  %191 = call i32 @memset(%struct.stat* %22, i32 0, i32 4)
  %192 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %14, align 8
  %193 = load i32, i32* %10, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %192, i64 %194
  %196 = load %struct.TYPE_5__*, %struct.TYPE_5__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 2
  %198 = call i32 @attrib_to_stat(i32* %197, %struct.stat* %22)
  %199 = load i8*, i8** %20, align 8
  %200 = load i32, i32* %9, align 4
  %201 = load i32, i32* @LS_SI_UNITS, align 4
  %202 = and i32 %200, %201
  %203 = call i8* @ls_file(i8* %199, %struct.stat* %22, i32 1, i32 %202)
  store i8* %203, i8** %21, align 8
  %204 = load i8*, i8** %21, align 8
  %205 = call i32 (i8*, ...) @mprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %204)
  %206 = load i8*, i8** %21, align 8
  %207 = call i32 @free(i8* %206)
  br label %217

208:                                              ; preds = %183
  %209 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %14, align 8
  %210 = load i32, i32* %10, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %209, i64 %211
  %213 = load %struct.TYPE_5__*, %struct.TYPE_5__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 8
  %216 = call i32 (i8*, ...) @mprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %215)
  br label %217

217:                                              ; preds = %208, %190
  br label %231

218:                                              ; preds = %164
  %219 = load i32, i32* %12, align 4
  %220 = load i8*, i8** %20, align 8
  %221 = call i32 (i8*, ...) @mprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %219, i8* %220)
  %222 = load i32, i32* %11, align 4
  %223 = load i32, i32* %13, align 4
  %224 = icmp sge i32 %222, %223
  br i1 %224, label %225, label %227

225:                                              ; preds = %218
  %226 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  br label %230

227:                                              ; preds = %218
  %228 = load i32, i32* %11, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %11, align 4
  br label %230

230:                                              ; preds = %227, %225
  br label %231

231:                                              ; preds = %230, %217
  %232 = load i8*, i8** %20, align 8
  %233 = call i32 @free(i8* %232)
  br label %234

234:                                              ; preds = %231, %163
  %235 = load i32, i32* %10, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %10, align 4
  br label %133

237:                                              ; preds = %144
  %238 = load i32, i32* %9, align 4
  %239 = load i32, i32* @LS_LONG_VIEW, align 4
  %240 = and i32 %238, %239
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %247, label %242

242:                                              ; preds = %237
  %243 = load i32, i32* %11, align 4
  %244 = icmp ne i32 %243, 1
  br i1 %244, label %245, label %247

245:                                              ; preds = %242
  %246 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %247

247:                                              ; preds = %245, %242, %237
  %248 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %14, align 8
  %249 = call i32 @free_sftp_dirents(%struct.TYPE_5__** %248)
  store i32 0, i32* %5, align 4
  br label %250

250:                                              ; preds = %247, %27
  %251 = load i32, i32* %5, align 4
  ret i32 %251
}

declare dso_local i32 @do_readdir(%struct.sftp_conn*, i8*, %struct.TYPE_5__***) #1

declare dso_local i32 @MAXIMUM(i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @path_strip(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @ioctl(i32, i32, %struct.winsize*) #1

declare dso_local i32 @fileno(i32) #1

declare dso_local i32 @MINIMUM(i32, i32) #1

declare dso_local i32 @qsort(%struct.TYPE_5__**, i32, i32, i32) #1

declare dso_local i8* @path_append(i8*, i8*) #1

declare dso_local i32 @memset(%struct.stat*, i32, i32) #1

declare dso_local i32 @attrib_to_stat(i32*, %struct.stat*) #1

declare dso_local i8* @ls_file(i8*, %struct.stat*, i32, i32) #1

declare dso_local i32 @mprintf(i8*, ...) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @free_sftp_dirents(%struct.TYPE_5__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_mtree.c_mtree_indent.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_mtree.c_mtree_indent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtree_writer = type { i32, %struct.TYPE_2__, i32, i64, i64 }
%struct.TYPE_2__ = type { i8* }

@INDENTNAMELEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c" \\\0A\00", align 1
@MAXLINELEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtree_writer*)* @mtree_indent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtree_indent(%struct.mtree_writer* %0) #0 {
  %2 = alloca %struct.mtree_writer*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.mtree_writer* %0, %struct.mtree_writer** %2, align 8
  %10 = load %struct.mtree_writer*, %struct.mtree_writer** %2, align 8
  %11 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %10, i32 0, i32 4
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %1
  %15 = load %struct.mtree_writer*, %struct.mtree_writer** %2, align 8
  %16 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  %20 = load %struct.mtree_writer*, %struct.mtree_writer** %2, align 8
  %21 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = mul nsw i32 %22, 4
  store i32 %23, i32* %6, align 4
  br label %31

24:                                               ; preds = %14
  %25 = load %struct.mtree_writer*, %struct.mtree_writer** %2, align 8
  %26 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 4, i32 0
  store i32 %30, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %24, %19
  br label %33

32:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %32, %31
  store i32 1, i32* %4, align 4
  %34 = load %struct.mtree_writer*, %struct.mtree_writer** %2, align 8
  %35 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %7, align 8
  store i8* %37, i8** %8, align 8
  store i8* null, i8** %9, align 8
  br label %38

38:                                               ; preds = %43, %33
  %39 = load i8*, i8** %7, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 32
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i8*, i8** %7, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %7, align 8
  br label %38

46:                                               ; preds = %38
  br label %47

47:                                               ; preds = %189, %132, %46
  %48 = load i8*, i8** %7, align 8
  %49 = call i8* @strchr(i8* %48, i8 signext 32)
  store i8* %49, i8** %7, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %190

51:                                               ; preds = %47
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %135

54:                                               ; preds = %51
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %65, %54
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %57, %58
  %60 = icmp slt i32 %56, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %55
  %62 = load %struct.mtree_writer*, %struct.mtree_writer** %2, align 8
  %63 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %62, i32 0, i32 2
  %64 = call i32 @archive_strappend_char(i32* %63, i8 signext 32)
  br label %65

65:                                               ; preds = %61
  %66 = load i32, i32* %3, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %3, align 4
  br label %55

68:                                               ; preds = %55
  %69 = load %struct.mtree_writer*, %struct.mtree_writer** %2, align 8
  %70 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %69, i32 0, i32 2
  %71 = load i8*, i8** %8, align 8
  %72 = load i8*, i8** %7, align 8
  %73 = load i8*, i8** %8, align 8
  %74 = ptrtoint i8* %72 to i64
  %75 = ptrtoint i8* %73 to i64
  %76 = sub i64 %74, %75
  %77 = trunc i64 %76 to i32
  %78 = call i32 @archive_strncat(i32* %70, i8* %71, i32 %77)
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = load i8*, i8** %7, align 8
  %82 = load i8*, i8** %8, align 8
  %83 = ptrtoint i8* %81 to i64
  %84 = ptrtoint i8* %82 to i64
  %85 = sub i64 %83, %84
  %86 = add nsw i64 %80, %85
  %87 = load i32, i32* @INDENTNAMELEN, align 4
  %88 = sext i32 %87 to i64
  %89 = icmp sgt i64 %86, %88
  br i1 %89, label %90, label %109

90:                                               ; preds = %68
  %91 = load %struct.mtree_writer*, %struct.mtree_writer** %2, align 8
  %92 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %91, i32 0, i32 2
  %93 = call i32 @archive_strncat(i32* %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %105, %90
  %95 = load i32, i32* %3, align 4
  %96 = load i32, i32* @INDENTNAMELEN, align 4
  %97 = add nsw i32 %96, 1
  %98 = load i32, i32* %6, align 4
  %99 = add nsw i32 %97, %98
  %100 = icmp slt i32 %95, %99
  br i1 %100, label %101, label %108

101:                                              ; preds = %94
  %102 = load %struct.mtree_writer*, %struct.mtree_writer** %2, align 8
  %103 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %102, i32 0, i32 2
  %104 = call i32 @archive_strappend_char(i32* %103, i8 signext 32)
  br label %105

105:                                              ; preds = %101
  %106 = load i32, i32* %3, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %3, align 4
  br label %94

108:                                              ; preds = %94
  br label %132

109:                                              ; preds = %68
  %110 = load i8*, i8** %7, align 8
  %111 = load i8*, i8** %8, align 8
  %112 = ptrtoint i8* %110 to i64
  %113 = ptrtoint i8* %111 to i64
  %114 = sub i64 %112, %113
  %115 = load i32, i32* %5, align 4
  %116 = sext i32 %115 to i64
  %117 = add nsw i64 %114, %116
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %3, align 4
  br label %119

119:                                              ; preds = %128, %109
  %120 = load i32, i32* %3, align 4
  %121 = load i32, i32* @INDENTNAMELEN, align 4
  %122 = add nsw i32 %121, 1
  %123 = icmp slt i32 %120, %122
  br i1 %123, label %124, label %131

124:                                              ; preds = %119
  %125 = load %struct.mtree_writer*, %struct.mtree_writer** %2, align 8
  %126 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %125, i32 0, i32 2
  %127 = call i32 @archive_strappend_char(i32* %126, i8 signext 32)
  br label %128

128:                                              ; preds = %124
  %129 = load i32, i32* %3, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %3, align 4
  br label %119

131:                                              ; preds = %119
  br label %132

132:                                              ; preds = %131, %108
  %133 = load i8*, i8** %7, align 8
  %134 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %134, i8** %7, align 8
  store i8* %134, i8** %8, align 8
  store i8* null, i8** %9, align 8
  br label %47

135:                                              ; preds = %51
  %136 = load i32, i32* %6, align 4
  %137 = sext i32 %136 to i64
  %138 = load i8*, i8** %7, align 8
  %139 = load i8*, i8** %8, align 8
  %140 = ptrtoint i8* %138 to i64
  %141 = ptrtoint i8* %139 to i64
  %142 = sub i64 %140, %141
  %143 = add nsw i64 %137, %142
  %144 = load i32, i32* @MAXLINELEN, align 4
  %145 = sub nsw i32 %144, 3
  %146 = load i32, i32* @INDENTNAMELEN, align 4
  %147 = sub nsw i32 %145, %146
  %148 = sext i32 %147 to i64
  %149 = icmp sle i64 %143, %148
  br i1 %149, label %150, label %153

150:                                              ; preds = %135
  %151 = load i8*, i8** %7, align 8
  %152 = getelementptr inbounds i8, i8* %151, i32 1
  store i8* %152, i8** %7, align 8
  store i8* %151, i8** %9, align 8
  br label %189

153:                                              ; preds = %135
  %154 = load i8*, i8** %9, align 8
  %155 = icmp eq i8* %154, null
  br i1 %155, label %156, label %158

156:                                              ; preds = %153
  %157 = load i8*, i8** %7, align 8
  store i8* %157, i8** %9, align 8
  br label %158

158:                                              ; preds = %156, %153
  %159 = load %struct.mtree_writer*, %struct.mtree_writer** %2, align 8
  %160 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %159, i32 0, i32 2
  %161 = load i8*, i8** %8, align 8
  %162 = load i8*, i8** %9, align 8
  %163 = load i8*, i8** %8, align 8
  %164 = ptrtoint i8* %162 to i64
  %165 = ptrtoint i8* %163 to i64
  %166 = sub i64 %164, %165
  %167 = trunc i64 %166 to i32
  %168 = call i32 @archive_strncat(i32* %160, i8* %161, i32 %167)
  %169 = load %struct.mtree_writer*, %struct.mtree_writer** %2, align 8
  %170 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %169, i32 0, i32 2
  %171 = call i32 @archive_strncat(i32* %170, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  store i32 0, i32* %3, align 4
  br label %172

172:                                              ; preds = %183, %158
  %173 = load i32, i32* %3, align 4
  %174 = load i32, i32* @INDENTNAMELEN, align 4
  %175 = add nsw i32 %174, 1
  %176 = load i32, i32* %6, align 4
  %177 = add nsw i32 %175, %176
  %178 = icmp slt i32 %173, %177
  br i1 %178, label %179, label %186

179:                                              ; preds = %172
  %180 = load %struct.mtree_writer*, %struct.mtree_writer** %2, align 8
  %181 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %180, i32 0, i32 2
  %182 = call i32 @archive_strappend_char(i32* %181, i8 signext 32)
  br label %183

183:                                              ; preds = %179
  %184 = load i32, i32* %3, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %3, align 4
  br label %172

186:                                              ; preds = %172
  %187 = load i8*, i8** %9, align 8
  %188 = getelementptr inbounds i8, i8* %187, i32 1
  store i8* %188, i8** %9, align 8
  store i8* %188, i8** %7, align 8
  store i8* %188, i8** %8, align 8
  store i8* null, i8** %9, align 8
  br label %189

189:                                              ; preds = %186, %150
  br label %47

190:                                              ; preds = %47
  %191 = load i32, i32* %4, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %217

193:                                              ; preds = %190
  store i32 0, i32* %3, align 4
  br label %194

194:                                              ; preds = %204, %193
  %195 = load i32, i32* %3, align 4
  %196 = load i32, i32* %5, align 4
  %197 = load i32, i32* %6, align 4
  %198 = add nsw i32 %196, %197
  %199 = icmp slt i32 %195, %198
  br i1 %199, label %200, label %207

200:                                              ; preds = %194
  %201 = load %struct.mtree_writer*, %struct.mtree_writer** %2, align 8
  %202 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %201, i32 0, i32 2
  %203 = call i32 @archive_strappend_char(i32* %202, i8 signext 32)
  br label %204

204:                                              ; preds = %200
  %205 = load i32, i32* %3, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %3, align 4
  br label %194

207:                                              ; preds = %194
  %208 = load %struct.mtree_writer*, %struct.mtree_writer** %2, align 8
  %209 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %208, i32 0, i32 2
  %210 = load i8*, i8** %8, align 8
  %211 = call i32 @archive_strcat(i32* %209, i8* %210)
  %212 = load i8*, i8** %8, align 8
  %213 = call i32 @strlen(i8* %212)
  %214 = load i8*, i8** %8, align 8
  %215 = sext i32 %213 to i64
  %216 = getelementptr inbounds i8, i8* %214, i64 %215
  store i8* %216, i8** %8, align 8
  br label %217

217:                                              ; preds = %207, %190
  %218 = load i8*, i8** %9, align 8
  %219 = icmp ne i8* %218, null
  br i1 %219, label %220, label %261

220:                                              ; preds = %217
  %221 = load i32, i32* %6, align 4
  %222 = load i8*, i8** %8, align 8
  %223 = call i32 @strlen(i8* %222)
  %224 = add nsw i32 %221, %223
  %225 = load i32, i32* @MAXLINELEN, align 4
  %226 = sub nsw i32 %225, 3
  %227 = load i32, i32* @INDENTNAMELEN, align 4
  %228 = sub nsw i32 %226, %227
  %229 = icmp sgt i32 %224, %228
  br i1 %229, label %230, label %261

230:                                              ; preds = %220
  %231 = load %struct.mtree_writer*, %struct.mtree_writer** %2, align 8
  %232 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %231, i32 0, i32 2
  %233 = load i8*, i8** %8, align 8
  %234 = load i8*, i8** %9, align 8
  %235 = load i8*, i8** %8, align 8
  %236 = ptrtoint i8* %234 to i64
  %237 = ptrtoint i8* %235 to i64
  %238 = sub i64 %236, %237
  %239 = trunc i64 %238 to i32
  %240 = call i32 @archive_strncat(i32* %232, i8* %233, i32 %239)
  %241 = load %struct.mtree_writer*, %struct.mtree_writer** %2, align 8
  %242 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %241, i32 0, i32 2
  %243 = call i32 @archive_strncat(i32* %242, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  store i32 0, i32* %3, align 4
  br label %244

244:                                              ; preds = %255, %230
  %245 = load i32, i32* %3, align 4
  %246 = load i32, i32* @INDENTNAMELEN, align 4
  %247 = add nsw i32 %246, 1
  %248 = load i32, i32* %6, align 4
  %249 = add nsw i32 %247, %248
  %250 = icmp slt i32 %245, %249
  br i1 %250, label %251, label %258

251:                                              ; preds = %244
  %252 = load %struct.mtree_writer*, %struct.mtree_writer** %2, align 8
  %253 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %252, i32 0, i32 2
  %254 = call i32 @archive_strappend_char(i32* %253, i8 signext 32)
  br label %255

255:                                              ; preds = %251
  %256 = load i32, i32* %3, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %3, align 4
  br label %244

258:                                              ; preds = %244
  %259 = load i8*, i8** %9, align 8
  %260 = getelementptr inbounds i8, i8* %259, i32 1
  store i8* %260, i8** %9, align 8
  store i8* %260, i8** %8, align 8
  br label %261

261:                                              ; preds = %258, %220, %217
  %262 = load %struct.mtree_writer*, %struct.mtree_writer** %2, align 8
  %263 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %262, i32 0, i32 2
  %264 = load i8*, i8** %8, align 8
  %265 = call i32 @archive_strcat(i32* %263, i8* %264)
  %266 = load %struct.mtree_writer*, %struct.mtree_writer** %2, align 8
  %267 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %266, i32 0, i32 1
  %268 = call i32 @archive_string_empty(%struct.TYPE_2__* %267)
  ret void
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @archive_strappend_char(i32*, i8 signext) #1

declare dso_local i32 @archive_strncat(i32*, i8*, i32) #1

declare dso_local i32 @archive_strcat(i32*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @archive_string_empty(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

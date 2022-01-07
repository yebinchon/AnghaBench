; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_zip.c_archive_read_format_zip_read_data_skip_streamable.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_zip.c_archive_read_format_zip_read_data_skip_streamable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.zip = type { i32, i32, i32, %struct.TYPE_4__*, i64, i64 }
%struct.TYPE_4__ = type { i32, i64, i32, i32 }

@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@ZIP_LENGTH_AT_END = common dso_local global i32 0, align 4
@ZIP_STRONG_ENCRYPTED = common dso_local global i32 0, align 4
@WINZIP_AES_ENCRYPTION = common dso_local global i32 0, align 4
@ARCHIVE_ERRNO_FILE_FORMAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Truncated ZIP file data\00", align 1
@LA_USED_ZIP64 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*)* @archive_read_format_zip_read_data_skip_streamable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_read_format_zip_read_data_skip_streamable(%struct.archive_read* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive_read*, align 8
  %4 = alloca %struct.zip*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %3, align 8
  %10 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %11 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %10, i32 0, i32 1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.zip*
  store %struct.zip* %15, %struct.zip** %4, align 8
  %16 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %17 = load %struct.zip*, %struct.zip** %4, align 8
  %18 = getelementptr inbounds %struct.zip, %struct.zip* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @__archive_read_consume(%struct.archive_read* %16, i32 %19)
  store i64 %20, i64* %5, align 8
  %21 = load %struct.zip*, %struct.zip** %4, align 8
  %22 = getelementptr inbounds %struct.zip, %struct.zip* %21, i32 0, i32 0
  store i32 0, i32* %22, align 8
  %23 = load i64, i64* %5, align 8
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %26, i32* %2, align 4
  br label %231

27:                                               ; preds = %1
  %28 = load %struct.zip*, %struct.zip** %4, align 8
  %29 = getelementptr inbounds %struct.zip, %struct.zip* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %33, i32* %2, align 4
  br label %231

34:                                               ; preds = %27
  %35 = load %struct.zip*, %struct.zip** %4, align 8
  %36 = getelementptr inbounds %struct.zip, %struct.zip* %35, i32 0, i32 3
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @ZIP_LENGTH_AT_END, align 4
  %41 = and i32 %39, %40
  %42 = icmp eq i32 0, %41
  br i1 %42, label %50, label %43

43:                                               ; preds = %34
  %44 = load %struct.zip*, %struct.zip** %4, align 8
  %45 = getelementptr inbounds %struct.zip, %struct.zip* %44, i32 0, i32 3
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp sgt i64 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %43, %34
  %51 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %52 = load %struct.zip*, %struct.zip** %4, align 8
  %53 = getelementptr inbounds %struct.zip, %struct.zip* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @__archive_read_consume(%struct.archive_read* %51, i32 %54)
  store i64 %55, i64* %5, align 8
  %56 = load i64, i64* %5, align 8
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %50
  %59 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %59, i32* %2, align 4
  br label %231

60:                                               ; preds = %50
  %61 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %61, i32* %2, align 4
  br label %231

62:                                               ; preds = %43
  %63 = load %struct.zip*, %struct.zip** %4, align 8
  %64 = getelementptr inbounds %struct.zip, %struct.zip* %63, i32 0, i32 5
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %105

67:                                               ; preds = %62
  %68 = load %struct.zip*, %struct.zip** %4, align 8
  %69 = getelementptr inbounds %struct.zip, %struct.zip* %68, i32 0, i32 2
  store i32 1, i32* %69, align 8
  %70 = load %struct.zip*, %struct.zip** %4, align 8
  %71 = getelementptr inbounds %struct.zip, %struct.zip* %70, i32 0, i32 3
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @ZIP_STRONG_ENCRYPTED, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %67
  %79 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %80 = call i32 @read_decryption_header(%struct.archive_read* %79)
  store i32 %80, i32* %6, align 4
  br label %96

81:                                               ; preds = %67
  %82 = load %struct.zip*, %struct.zip** %4, align 8
  %83 = getelementptr inbounds %struct.zip, %struct.zip* %82, i32 0, i32 3
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @WINZIP_AES_ENCRYPTION, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %81
  %90 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %91 = call i32 @init_WinZip_AES_decryption(%struct.archive_read* %90)
  store i32 %91, i32* %6, align 4
  br label %95

92:                                               ; preds = %81
  %93 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %94 = call i32 @init_traditional_PKWARE_decryption(%struct.archive_read* %93)
  store i32 %94, i32* %6, align 4
  br label %95

95:                                               ; preds = %92, %89
  br label %96

96:                                               ; preds = %95, %78
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* @ARCHIVE_OK, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %96
  %101 = load i32, i32* %6, align 4
  store i32 %101, i32* %2, align 4
  br label %231

102:                                              ; preds = %96
  %103 = load %struct.zip*, %struct.zip** %4, align 8
  %104 = getelementptr inbounds %struct.zip, %struct.zip* %103, i32 0, i32 5
  store i64 0, i64* %104, align 8
  br label %105

105:                                              ; preds = %102, %62
  %106 = load %struct.zip*, %struct.zip** %4, align 8
  %107 = getelementptr inbounds %struct.zip, %struct.zip* %106, i32 0, i32 3
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  switch i32 %110, label %111 [
  ]

111:                                              ; preds = %105
  br label %112

112:                                              ; preds = %222, %111
  %113 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %114 = call i8* @__archive_read_ahead(%struct.archive_read* %113, i32 16, i32* %9)
  store i8* %114, i8** %8, align 8
  %115 = load i32, i32* %9, align 4
  %116 = icmp slt i32 %115, 16
  br i1 %116, label %117, label %123

117:                                              ; preds = %112
  %118 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %119 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %118, i32 0, i32 0
  %120 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %121 = call i32 @archive_set_error(i32* %119, i32 %120, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %122 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %122, i32* %2, align 4
  br label %231

123:                                              ; preds = %112
  %124 = load i8*, i8** %8, align 8
  store i8* %124, i8** %7, align 8
  br label %125

125:                                              ; preds = %221, %123
  %126 = load i8*, i8** %7, align 8
  %127 = load i8*, i8** %8, align 8
  %128 = load i32, i32* %9, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %127, i64 %129
  %131 = getelementptr inbounds i8, i8* %130, i64 -16
  %132 = icmp ule i8* %126, %131
  br i1 %132, label %133, label %222

133:                                              ; preds = %125
  %134 = load i8*, i8** %7, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 3
  %136 = load i8, i8* %135, align 1
  %137 = sext i8 %136 to i32
  %138 = icmp eq i32 %137, 80
  br i1 %138, label %139, label %142

139:                                              ; preds = %133
  %140 = load i8*, i8** %7, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 3
  store i8* %141, i8** %7, align 8
  br label %221

142:                                              ; preds = %133
  %143 = load i8*, i8** %7, align 8
  %144 = getelementptr inbounds i8, i8* %143, i64 3
  %145 = load i8, i8* %144, align 1
  %146 = sext i8 %145 to i32
  %147 = icmp eq i32 %146, 75
  br i1 %147, label %148, label %151

148:                                              ; preds = %142
  %149 = load i8*, i8** %7, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 2
  store i8* %150, i8** %7, align 8
  br label %220

151:                                              ; preds = %142
  %152 = load i8*, i8** %7, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 3
  %154 = load i8, i8* %153, align 1
  %155 = sext i8 %154 to i32
  %156 = icmp eq i32 %155, 7
  br i1 %156, label %157, label %160

157:                                              ; preds = %151
  %158 = load i8*, i8** %7, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 1
  store i8* %159, i8** %7, align 8
  br label %219

160:                                              ; preds = %151
  %161 = load i8*, i8** %7, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 3
  %163 = load i8, i8* %162, align 1
  %164 = sext i8 %163 to i32
  %165 = icmp eq i32 %164, 8
  br i1 %165, label %166, label %215

166:                                              ; preds = %160
  %167 = load i8*, i8** %7, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 2
  %169 = load i8, i8* %168, align 1
  %170 = sext i8 %169 to i32
  %171 = icmp eq i32 %170, 7
  br i1 %171, label %172, label %215

172:                                              ; preds = %166
  %173 = load i8*, i8** %7, align 8
  %174 = getelementptr inbounds i8, i8* %173, i64 1
  %175 = load i8, i8* %174, align 1
  %176 = sext i8 %175 to i32
  %177 = icmp eq i32 %176, 75
  br i1 %177, label %178, label %215

178:                                              ; preds = %172
  %179 = load i8*, i8** %7, align 8
  %180 = getelementptr inbounds i8, i8* %179, i64 0
  %181 = load i8, i8* %180, align 1
  %182 = sext i8 %181 to i32
  %183 = icmp eq i32 %182, 80
  br i1 %183, label %184, label %215

184:                                              ; preds = %178
  %185 = load %struct.zip*, %struct.zip** %4, align 8
  %186 = getelementptr inbounds %struct.zip, %struct.zip* %185, i32 0, i32 3
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @LA_USED_ZIP64, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %203

193:                                              ; preds = %184
  %194 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %195 = load i8*, i8** %7, align 8
  %196 = load i8*, i8** %8, align 8
  %197 = ptrtoint i8* %195 to i64
  %198 = ptrtoint i8* %196 to i64
  %199 = sub i64 %197, %198
  %200 = add nsw i64 %199, 24
  %201 = trunc i64 %200 to i32
  %202 = call i64 @__archive_read_consume(%struct.archive_read* %194, i32 %201)
  br label %213

203:                                              ; preds = %184
  %204 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %205 = load i8*, i8** %7, align 8
  %206 = load i8*, i8** %8, align 8
  %207 = ptrtoint i8* %205 to i64
  %208 = ptrtoint i8* %206 to i64
  %209 = sub i64 %207, %208
  %210 = add nsw i64 %209, 16
  %211 = trunc i64 %210 to i32
  %212 = call i64 @__archive_read_consume(%struct.archive_read* %204, i32 %211)
  br label %213

213:                                              ; preds = %203, %193
  %214 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %214, i32* %2, align 4
  br label %231

215:                                              ; preds = %178, %172, %166, %160
  %216 = load i8*, i8** %7, align 8
  %217 = getelementptr inbounds i8, i8* %216, i64 4
  store i8* %217, i8** %7, align 8
  br label %218

218:                                              ; preds = %215
  br label %219

219:                                              ; preds = %218, %157
  br label %220

220:                                              ; preds = %219, %148
  br label %221

221:                                              ; preds = %220, %139
  br label %125

222:                                              ; preds = %125
  %223 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %224 = load i8*, i8** %7, align 8
  %225 = load i8*, i8** %8, align 8
  %226 = ptrtoint i8* %224 to i64
  %227 = ptrtoint i8* %225 to i64
  %228 = sub i64 %226, %227
  %229 = trunc i64 %228 to i32
  %230 = call i64 @__archive_read_consume(%struct.archive_read* %223, i32 %229)
  br label %112

231:                                              ; preds = %213, %117, %100, %60, %58, %32, %25
  %232 = load i32, i32* %2, align 4
  ret i32 %232
}

declare dso_local i64 @__archive_read_consume(%struct.archive_read*, i32) #1

declare dso_local i32 @read_decryption_header(%struct.archive_read*) #1

declare dso_local i32 @init_WinZip_AES_decryption(%struct.archive_read*) #1

declare dso_local i32 @init_traditional_PKWARE_decryption(%struct.archive_read*) #1

declare dso_local i8* @__archive_read_ahead(%struct.archive_read*, i32, i32*) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

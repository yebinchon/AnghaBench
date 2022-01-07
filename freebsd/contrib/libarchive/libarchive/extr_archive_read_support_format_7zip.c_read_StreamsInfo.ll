; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_7zip.c_read_StreamsInfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_7zip.c_read_StreamsInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct._7z_stream_info = type { %struct.TYPE_6__, i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, %struct._7z_folder* }
%struct._7z_folder = type { i32, i64 }
%struct.TYPE_5__ = type { i64*, i64, i32, i64* }
%struct._7zip = type { i64 }

@kPackInfo = common dso_local global i8 0, align 1
@kUnPackInfo = common dso_local global i8 0, align 1
@kSubStreamsInfo = common dso_local global i8 0, align 1
@kEnd = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct._7z_stream_info*)* @read_StreamsInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_StreamsInfo(%struct.archive_read* %0, %struct._7z_stream_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_read*, align 8
  %5 = alloca %struct._7z_stream_info*, align 8
  %6 = alloca %struct._7zip*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct._7z_folder*, align 8
  store %struct.archive_read* %0, %struct.archive_read** %4, align 8
  store %struct._7z_stream_info* %1, %struct._7z_stream_info** %5, align 8
  %12 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %13 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct._7zip*
  store %struct._7zip* %17, %struct._7zip** %6, align 8
  %18 = load %struct._7z_stream_info*, %struct._7z_stream_info** %5, align 8
  %19 = call i32 @memset(%struct._7z_stream_info* %18, i32 0, i32 56)
  %20 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %21 = call i8* @header_bytes(%struct.archive_read* %20, i32 1)
  store i8* %21, i8** %7, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %195

24:                                               ; preds = %2
  %25 = load i8*, i8** %7, align 8
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = load i8, i8* @kPackInfo, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %98

31:                                               ; preds = %24
  %32 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %33 = load %struct._7z_stream_info*, %struct._7z_stream_info** %5, align 8
  %34 = getelementptr inbounds %struct._7z_stream_info, %struct._7z_stream_info* %33, i32 0, i32 2
  %35 = call i64 @read_PackInfo(%struct.archive_read* %32, %struct.TYPE_5__* %34)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 -1, i32* %3, align 4
  br label %195

38:                                               ; preds = %31
  %39 = load %struct._7z_stream_info*, %struct._7z_stream_info** %5, align 8
  %40 = getelementptr inbounds %struct._7z_stream_info, %struct._7z_stream_info* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 3
  %42 = load i64*, i64** %41, align 8
  %43 = icmp eq i64* %42, null
  br i1 %43, label %50, label %44

44:                                               ; preds = %38
  %45 = load %struct._7z_stream_info*, %struct._7z_stream_info** %5, align 8
  %46 = getelementptr inbounds %struct._7z_stream_info, %struct._7z_stream_info* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = icmp eq i64* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %44, %38
  store i32 -1, i32* %3, align 4
  br label %195

51:                                               ; preds = %44
  %52 = load %struct._7z_stream_info*, %struct._7z_stream_info** %5, align 8
  %53 = getelementptr inbounds %struct._7z_stream_info, %struct._7z_stream_info* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %9, align 8
  store i32 0, i32* %8, align 4
  br label %56

56:                                               ; preds = %89, %51
  %57 = load i32, i32* %8, align 4
  %58 = load %struct._7z_stream_info*, %struct._7z_stream_info** %5, align 8
  %59 = getelementptr inbounds %struct._7z_stream_info, %struct._7z_stream_info* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = icmp ult i32 %57, %61
  br i1 %62, label %63, label %92

63:                                               ; preds = %56
  %64 = load i64, i64* %9, align 8
  %65 = load %struct._7z_stream_info*, %struct._7z_stream_info** %5, align 8
  %66 = getelementptr inbounds %struct._7z_stream_info, %struct._7z_stream_info* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 3
  %68 = load i64*, i64** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  store i64 %64, i64* %71, align 8
  %72 = load %struct._7z_stream_info*, %struct._7z_stream_info** %5, align 8
  %73 = getelementptr inbounds %struct._7z_stream_info, %struct._7z_stream_info* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i64*, i64** %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds i64, i64* %75, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* %9, align 8
  %81 = add nsw i64 %80, %79
  store i64 %81, i64* %9, align 8
  %82 = load i64, i64* %9, align 8
  %83 = load %struct._7zip*, %struct._7zip** %6, align 8
  %84 = getelementptr inbounds %struct._7zip, %struct._7zip* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp sgt i64 %82, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %63
  store i32 -1, i32* %3, align 4
  br label %195

88:                                               ; preds = %63
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %8, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %8, align 4
  br label %56

92:                                               ; preds = %56
  %93 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %94 = call i8* @header_bytes(%struct.archive_read* %93, i32 1)
  store i8* %94, i8** %7, align 8
  %95 = icmp eq i8* %94, null
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  store i32 -1, i32* %3, align 4
  br label %195

97:                                               ; preds = %92
  br label %98

98:                                               ; preds = %97, %24
  %99 = load i8*, i8** %7, align 8
  %100 = load i8, i8* %99, align 1
  %101 = zext i8 %100 to i32
  %102 = load i8, i8* @kUnPackInfo, align 1
  %103 = zext i8 %102 to i32
  %104 = icmp eq i32 %101, %103
  br i1 %104, label %105, label %157

105:                                              ; preds = %98
  %106 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %107 = load %struct._7z_stream_info*, %struct._7z_stream_info** %5, align 8
  %108 = getelementptr inbounds %struct._7z_stream_info, %struct._7z_stream_info* %107, i32 0, i32 0
  %109 = call i64 @read_CodersInfo(%struct.archive_read* %106, %struct.TYPE_6__* %108)
  %110 = icmp slt i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %105
  store i32 -1, i32* %3, align 4
  br label %195

112:                                              ; preds = %105
  store i32 0, i32* %10, align 4
  %113 = load %struct._7z_stream_info*, %struct._7z_stream_info** %5, align 8
  %114 = getelementptr inbounds %struct._7z_stream_info, %struct._7z_stream_info* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 1
  %116 = load %struct._7z_folder*, %struct._7z_folder** %115, align 8
  store %struct._7z_folder* %116, %struct._7z_folder** %11, align 8
  store i32 0, i32* %8, align 4
  br label %117

117:                                              ; preds = %148, %112
  %118 = load i32, i32* %8, align 4
  %119 = load %struct._7z_stream_info*, %struct._7z_stream_info** %5, align 8
  %120 = getelementptr inbounds %struct._7z_stream_info, %struct._7z_stream_info* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp ult i32 %118, %122
  br i1 %123, label %124, label %151

124:                                              ; preds = %117
  %125 = load i32, i32* %10, align 4
  %126 = load %struct._7z_folder*, %struct._7z_folder** %11, align 8
  %127 = load i32, i32* %8, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %126, i64 %128
  %130 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %129, i32 0, i32 0
  store i32 %125, i32* %130, align 8
  %131 = load %struct._7z_folder*, %struct._7z_folder** %11, align 8
  %132 = load i32, i32* %8, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %131, i64 %133
  %135 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = trunc i64 %136 to i32
  %138 = load i32, i32* %10, align 4
  %139 = add i32 %138, %137
  store i32 %139, i32* %10, align 4
  %140 = load i32, i32* %10, align 4
  %141 = load %struct._7z_stream_info*, %struct._7z_stream_info** %5, align 8
  %142 = getelementptr inbounds %struct._7z_stream_info, %struct._7z_stream_info* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = icmp ugt i32 %140, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %124
  store i32 -1, i32* %3, align 4
  br label %195

147:                                              ; preds = %124
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %8, align 4
  %150 = add i32 %149, 1
  store i32 %150, i32* %8, align 4
  br label %117

151:                                              ; preds = %117
  %152 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %153 = call i8* @header_bytes(%struct.archive_read* %152, i32 1)
  store i8* %153, i8** %7, align 8
  %154 = icmp eq i8* %153, null
  br i1 %154, label %155, label %156

155:                                              ; preds = %151
  store i32 -1, i32* %3, align 4
  br label %195

156:                                              ; preds = %151
  br label %157

157:                                              ; preds = %156, %98
  %158 = load i8*, i8** %7, align 8
  %159 = load i8, i8* %158, align 1
  %160 = zext i8 %159 to i32
  %161 = load i8, i8* @kSubStreamsInfo, align 1
  %162 = zext i8 %161 to i32
  %163 = icmp eq i32 %160, %162
  br i1 %163, label %164, label %186

164:                                              ; preds = %157
  %165 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %166 = load %struct._7z_stream_info*, %struct._7z_stream_info** %5, align 8
  %167 = getelementptr inbounds %struct._7z_stream_info, %struct._7z_stream_info* %166, i32 0, i32 1
  %168 = load %struct._7z_stream_info*, %struct._7z_stream_info** %5, align 8
  %169 = getelementptr inbounds %struct._7z_stream_info, %struct._7z_stream_info* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 1
  %171 = load %struct._7z_folder*, %struct._7z_folder** %170, align 8
  %172 = load %struct._7z_stream_info*, %struct._7z_stream_info** %5, align 8
  %173 = getelementptr inbounds %struct._7z_stream_info, %struct._7z_stream_info* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = zext i32 %175 to i64
  %177 = call i64 @read_SubStreamsInfo(%struct.archive_read* %165, i32* %167, %struct._7z_folder* %171, i64 %176)
  %178 = icmp slt i64 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %164
  store i32 -1, i32* %3, align 4
  br label %195

180:                                              ; preds = %164
  %181 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %182 = call i8* @header_bytes(%struct.archive_read* %181, i32 1)
  store i8* %182, i8** %7, align 8
  %183 = icmp eq i8* %182, null
  br i1 %183, label %184, label %185

184:                                              ; preds = %180
  store i32 -1, i32* %3, align 4
  br label %195

185:                                              ; preds = %180
  br label %186

186:                                              ; preds = %185, %157
  %187 = load i8*, i8** %7, align 8
  %188 = load i8, i8* %187, align 1
  %189 = zext i8 %188 to i32
  %190 = load i8, i8* @kEnd, align 1
  %191 = zext i8 %190 to i32
  %192 = icmp ne i32 %189, %191
  br i1 %192, label %193, label %194

193:                                              ; preds = %186
  store i32 -1, i32* %3, align 4
  br label %195

194:                                              ; preds = %186
  store i32 0, i32* %3, align 4
  br label %195

195:                                              ; preds = %194, %193, %184, %179, %155, %146, %111, %96, %87, %50, %37, %23
  %196 = load i32, i32* %3, align 4
  ret i32 %196
}

declare dso_local i32 @memset(%struct._7z_stream_info*, i32, i32) #1

declare dso_local i8* @header_bytes(%struct.archive_read*, i32) #1

declare dso_local i64 @read_PackInfo(%struct.archive_read*, %struct.TYPE_5__*) #1

declare dso_local i64 @read_CodersInfo(%struct.archive_read*, %struct.TYPE_6__*) #1

declare dso_local i64 @read_SubStreamsInfo(%struct.archive_read*, i32*, %struct._7z_folder*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

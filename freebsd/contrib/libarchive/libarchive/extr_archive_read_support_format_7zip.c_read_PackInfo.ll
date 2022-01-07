; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_7zip.c_read_PackInfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_7zip.c_read_PackInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32 }
%struct._7z_pack_info = type { i32, i32, i32*, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32*, i32* }

@UMAX_ENTRY = common dso_local global i32 0, align 4
@kEnd = common dso_local global i8 0, align 1
@kSize = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct._7z_pack_info*)* @read_PackInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_PackInfo(%struct.archive_read* %0, %struct._7z_pack_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_read*, align 8
  %5 = alloca %struct._7z_pack_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %4, align 8
  store %struct._7z_pack_info* %1, %struct._7z_pack_info** %5, align 8
  %8 = load %struct._7z_pack_info*, %struct._7z_pack_info** %5, align 8
  %9 = call i32 @memset(%struct._7z_pack_info* %8, i32 0, i32 40)
  %10 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %11 = load %struct._7z_pack_info*, %struct._7z_pack_info** %5, align 8
  %12 = getelementptr inbounds %struct._7z_pack_info, %struct._7z_pack_info* %11, i32 0, i32 0
  %13 = call i64 @parse_7zip_uint64(%struct.archive_read* %10, i32* %12)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %183

16:                                               ; preds = %2
  %17 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %18 = load %struct._7z_pack_info*, %struct._7z_pack_info** %5, align 8
  %19 = getelementptr inbounds %struct._7z_pack_info, %struct._7z_pack_info* %18, i32 0, i32 1
  %20 = call i64 @parse_7zip_uint64(%struct.archive_read* %17, i32* %19)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 -1, i32* %3, align 4
  br label %183

23:                                               ; preds = %16
  %24 = load %struct._7z_pack_info*, %struct._7z_pack_info** %5, align 8
  %25 = getelementptr inbounds %struct._7z_pack_info, %struct._7z_pack_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 -1, i32* %3, align 4
  br label %183

29:                                               ; preds = %23
  %30 = load i32, i32* @UMAX_ENTRY, align 4
  %31 = load %struct._7z_pack_info*, %struct._7z_pack_info** %5, align 8
  %32 = getelementptr inbounds %struct._7z_pack_info, %struct._7z_pack_info* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ult i32 %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 -1, i32* %3, align 4
  br label %183

36:                                               ; preds = %29
  %37 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %38 = call i8* @header_bytes(%struct.archive_read* %37, i32 1)
  store i8* %38, i8** %6, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i32 -1, i32* %3, align 4
  br label %183

41:                                               ; preds = %36
  %42 = load i8*, i8** %6, align 8
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = load i8, i8* @kEnd, align 1
  %46 = zext i8 %45 to i32
  %47 = icmp eq i32 %44, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %183

49:                                               ; preds = %41
  %50 = load i8*, i8** %6, align 8
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = load i8, i8* @kSize, align 1
  %54 = zext i8 %53 to i32
  %55 = icmp ne i32 %52, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  store i32 -1, i32* %3, align 4
  br label %183

57:                                               ; preds = %49
  %58 = load %struct._7z_pack_info*, %struct._7z_pack_info** %5, align 8
  %59 = getelementptr inbounds %struct._7z_pack_info, %struct._7z_pack_info* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = zext i32 %60 to i64
  %62 = call i8* @calloc(i64 %61, i32 4)
  %63 = bitcast i8* %62 to i32*
  %64 = load %struct._7z_pack_info*, %struct._7z_pack_info** %5, align 8
  %65 = getelementptr inbounds %struct._7z_pack_info, %struct._7z_pack_info* %64, i32 0, i32 2
  store i32* %63, i32** %65, align 8
  %66 = load %struct._7z_pack_info*, %struct._7z_pack_info** %5, align 8
  %67 = getelementptr inbounds %struct._7z_pack_info, %struct._7z_pack_info* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = zext i32 %68 to i64
  %70 = call i8* @calloc(i64 %69, i32 4)
  %71 = bitcast i8* %70 to i32*
  %72 = load %struct._7z_pack_info*, %struct._7z_pack_info** %5, align 8
  %73 = getelementptr inbounds %struct._7z_pack_info, %struct._7z_pack_info* %72, i32 0, i32 4
  store i32* %71, i32** %73, align 8
  %74 = load %struct._7z_pack_info*, %struct._7z_pack_info** %5, align 8
  %75 = getelementptr inbounds %struct._7z_pack_info, %struct._7z_pack_info* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = icmp eq i32* %76, null
  br i1 %77, label %83, label %78

78:                                               ; preds = %57
  %79 = load %struct._7z_pack_info*, %struct._7z_pack_info** %5, align 8
  %80 = getelementptr inbounds %struct._7z_pack_info, %struct._7z_pack_info* %79, i32 0, i32 4
  %81 = load i32*, i32** %80, align 8
  %82 = icmp eq i32* %81, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %78, %57
  store i32 -1, i32* %3, align 4
  br label %183

84:                                               ; preds = %78
  store i32 0, i32* %7, align 4
  br label %85

85:                                               ; preds = %103, %84
  %86 = load i32, i32* %7, align 4
  %87 = load %struct._7z_pack_info*, %struct._7z_pack_info** %5, align 8
  %88 = getelementptr inbounds %struct._7z_pack_info, %struct._7z_pack_info* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp ult i32 %86, %89
  br i1 %90, label %91, label %106

91:                                               ; preds = %85
  %92 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %93 = load %struct._7z_pack_info*, %struct._7z_pack_info** %5, align 8
  %94 = getelementptr inbounds %struct._7z_pack_info, %struct._7z_pack_info* %93, i32 0, i32 2
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %7, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = call i64 @parse_7zip_uint64(%struct.archive_read* %92, i32* %98)
  %100 = icmp slt i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %91
  store i32 -1, i32* %3, align 4
  br label %183

102:                                              ; preds = %91
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %7, align 4
  %105 = add i32 %104, 1
  store i32 %105, i32* %7, align 4
  br label %85

106:                                              ; preds = %85
  %107 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %108 = call i8* @header_bytes(%struct.archive_read* %107, i32 1)
  store i8* %108, i8** %6, align 8
  %109 = icmp eq i8* %108, null
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  store i32 -1, i32* %3, align 4
  br label %183

111:                                              ; preds = %106
  %112 = load i8*, i8** %6, align 8
  %113 = load i8, i8* %112, align 1
  %114 = zext i8 %113 to i32
  %115 = load i8, i8* @kEnd, align 1
  %116 = zext i8 %115 to i32
  %117 = icmp eq i32 %114, %116
  br i1 %117, label %118, label %150

118:                                              ; preds = %111
  %119 = load %struct._7z_pack_info*, %struct._7z_pack_info** %5, align 8
  %120 = getelementptr inbounds %struct._7z_pack_info, %struct._7z_pack_info* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = zext i32 %121 to i64
  %123 = call i8* @calloc(i64 %122, i32 4)
  %124 = bitcast i8* %123 to i32*
  %125 = load %struct._7z_pack_info*, %struct._7z_pack_info** %5, align 8
  %126 = getelementptr inbounds %struct._7z_pack_info, %struct._7z_pack_info* %125, i32 0, i32 3
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 1
  store i32* %124, i32** %127, align 8
  %128 = load %struct._7z_pack_info*, %struct._7z_pack_info** %5, align 8
  %129 = getelementptr inbounds %struct._7z_pack_info, %struct._7z_pack_info* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = zext i32 %130 to i64
  %132 = call i8* @calloc(i64 %131, i32 4)
  %133 = bitcast i8* %132 to i32*
  %134 = load %struct._7z_pack_info*, %struct._7z_pack_info** %5, align 8
  %135 = getelementptr inbounds %struct._7z_pack_info, %struct._7z_pack_info* %134, i32 0, i32 3
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 0
  store i32* %133, i32** %136, align 8
  %137 = load %struct._7z_pack_info*, %struct._7z_pack_info** %5, align 8
  %138 = getelementptr inbounds %struct._7z_pack_info, %struct._7z_pack_info* %137, i32 0, i32 3
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = icmp eq i32* %140, null
  br i1 %141, label %148, label %142

142:                                              ; preds = %118
  %143 = load %struct._7z_pack_info*, %struct._7z_pack_info** %5, align 8
  %144 = getelementptr inbounds %struct._7z_pack_info, %struct._7z_pack_info* %143, i32 0, i32 3
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = icmp eq i32* %146, null
  br i1 %147, label %148, label %149

148:                                              ; preds = %142, %118
  store i32 -1, i32* %3, align 4
  br label %183

149:                                              ; preds = %142
  store i32 0, i32* %3, align 4
  br label %183

150:                                              ; preds = %111
  %151 = load i8*, i8** %6, align 8
  %152 = load i8, i8* %151, align 1
  %153 = zext i8 %152 to i32
  %154 = load i8, i8* @kSize, align 1
  %155 = zext i8 %154 to i32
  %156 = icmp ne i32 %153, %155
  br i1 %156, label %157, label %158

157:                                              ; preds = %150
  store i32 -1, i32* %3, align 4
  br label %183

158:                                              ; preds = %150
  %159 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %160 = load %struct._7z_pack_info*, %struct._7z_pack_info** %5, align 8
  %161 = getelementptr inbounds %struct._7z_pack_info, %struct._7z_pack_info* %160, i32 0, i32 3
  %162 = load %struct._7z_pack_info*, %struct._7z_pack_info** %5, align 8
  %163 = getelementptr inbounds %struct._7z_pack_info, %struct._7z_pack_info* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = zext i32 %164 to i64
  %166 = call i64 @read_Digests(%struct.archive_read* %159, %struct.TYPE_2__* %161, i64 %165)
  %167 = icmp slt i64 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %158
  store i32 -1, i32* %3, align 4
  br label %183

169:                                              ; preds = %158
  %170 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %171 = call i8* @header_bytes(%struct.archive_read* %170, i32 1)
  store i8* %171, i8** %6, align 8
  %172 = icmp eq i8* %171, null
  br i1 %172, label %173, label %174

173:                                              ; preds = %169
  store i32 -1, i32* %3, align 4
  br label %183

174:                                              ; preds = %169
  %175 = load i8*, i8** %6, align 8
  %176 = load i8, i8* %175, align 1
  %177 = zext i8 %176 to i32
  %178 = load i8, i8* @kEnd, align 1
  %179 = zext i8 %178 to i32
  %180 = icmp ne i32 %177, %179
  br i1 %180, label %181, label %182

181:                                              ; preds = %174
  store i32 -1, i32* %3, align 4
  br label %183

182:                                              ; preds = %174
  store i32 0, i32* %3, align 4
  br label %183

183:                                              ; preds = %182, %181, %173, %168, %157, %149, %148, %110, %101, %83, %56, %48, %40, %35, %28, %22, %15
  %184 = load i32, i32* %3, align 4
  ret i32 %184
}

declare dso_local i32 @memset(%struct._7z_pack_info*, i32, i32) #1

declare dso_local i64 @parse_7zip_uint64(%struct.archive_read*, i32*) #1

declare dso_local i8* @header_bytes(%struct.archive_read*, i32) #1

declare dso_local i8* @calloc(i64, i32) #1

declare dso_local i64 @read_Digests(%struct.archive_read*, %struct.TYPE_2__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_7zip.c_make_time.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_7zip.c_make_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { i64 }
%struct._7zip = type { i32*, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.file* }
%struct.file = type { i32, %struct.TYPE_4__*, %struct.file* }
%struct.TYPE_4__ = type { i32, i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_Z_RUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*, i32, i32, i32)* @make_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_time(%struct.archive_write* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.archive_write*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [8 x i32], align 16
  %11 = alloca %struct._7zip*, align 8
  %12 = alloca %struct.file*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.archive_write* %0, %struct.archive_write** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.archive_write*, %struct.archive_write** %6, align 8
  %17 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct._7zip*
  store %struct._7zip* %19, %struct._7zip** %11, align 8
  %20 = load %struct._7zip*, %struct._7zip** %11, align 8
  %21 = getelementptr inbounds %struct._7zip, %struct._7zip* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load %struct._7zip*, %struct._7zip** %11, align 8
  %28 = getelementptr inbounds %struct._7zip, %struct._7zip* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %26, %29
  br i1 %30, label %31, label %59

31:                                               ; preds = %4
  %32 = load %struct.archive_write*, %struct.archive_write** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @enc_uint64(%struct.archive_write* %32, i32 %33)
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* %13, align 4
  store i32 %38, i32* %5, align 4
  br label %219

39:                                               ; preds = %31
  %40 = load %struct.archive_write*, %struct.archive_write** %6, align 8
  %41 = load %struct._7zip*, %struct._7zip** %11, align 8
  %42 = getelementptr inbounds %struct._7zip, %struct._7zip* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = mul nsw i32 %43, 8
  %45 = add nsw i32 2, %44
  %46 = call i32 @enc_uint64(%struct.archive_write* %40, i32 %45)
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %13, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %39
  %50 = load i32, i32* %13, align 4
  store i32 %50, i32* %5, align 4
  br label %219

51:                                               ; preds = %39
  %52 = load %struct.archive_write*, %struct.archive_write** %6, align 8
  %53 = call i32 @enc_uint64(%struct.archive_write* %52, i32 1)
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %13, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i32, i32* %13, align 4
  store i32 %57, i32* %5, align 4
  br label %219

58:                                               ; preds = %51
  br label %160

59:                                               ; preds = %4
  %60 = load %struct._7zip*, %struct._7zip** %11, align 8
  %61 = getelementptr inbounds %struct._7zip, %struct._7zip* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %59
  %69 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %69, i32* %5, align 4
  br label %219

70:                                               ; preds = %59
  %71 = load %struct.archive_write*, %struct.archive_write** %6, align 8
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @enc_uint64(%struct.archive_write* %71, i32 %72)
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %13, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = load i32, i32* %13, align 4
  store i32 %77, i32* %5, align 4
  br label %219

78:                                               ; preds = %70
  %79 = load %struct.archive_write*, %struct.archive_write** %6, align 8
  %80 = load %struct._7zip*, %struct._7zip** %11, align 8
  %81 = getelementptr inbounds %struct._7zip, %struct._7zip* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = add nsw i32 %82, 7
  %84 = ashr i32 %83, 3
  %85 = add nsw i32 2, %84
  %86 = load %struct._7zip*, %struct._7zip** %11, align 8
  %87 = getelementptr inbounds %struct._7zip, %struct._7zip* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = mul nsw i32 %92, 8
  %94 = add nsw i32 %85, %93
  %95 = call i32 @enc_uint64(%struct.archive_write* %79, i32 %94)
  store i32 %95, i32* %13, align 4
  %96 = load i32, i32* %13, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %78
  %99 = load i32, i32* %13, align 4
  store i32 %99, i32* %5, align 4
  br label %219

100:                                              ; preds = %78
  %101 = load %struct.archive_write*, %struct.archive_write** %6, align 8
  %102 = call i32 @enc_uint64(%struct.archive_write* %101, i32 0)
  store i32 %102, i32* %13, align 4
  %103 = load i32, i32* %13, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %100
  %106 = load i32, i32* %13, align 4
  store i32 %106, i32* %5, align 4
  br label %219

107:                                              ; preds = %100
  store i32 0, i32* %14, align 4
  store i32 128, i32* %15, align 4
  %108 = load %struct._7zip*, %struct._7zip** %11, align 8
  %109 = getelementptr inbounds %struct._7zip, %struct._7zip* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  %111 = load %struct.file*, %struct.file** %110, align 8
  store %struct.file* %111, %struct.file** %12, align 8
  br label %112

112:                                              ; preds = %142, %107
  %113 = load %struct.file*, %struct.file** %12, align 8
  %114 = icmp ne %struct.file* %113, null
  br i1 %114, label %115, label %146

115:                                              ; preds = %112
  %116 = load %struct.file*, %struct.file** %12, align 8
  %117 = getelementptr inbounds %struct.file, %struct.file* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* %8, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %115
  %123 = load i32, i32* %15, align 4
  %124 = load i32, i32* %14, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %14, align 4
  br label %126

126:                                              ; preds = %122, %115
  %127 = load i32, i32* %15, align 4
  %128 = ashr i32 %127, 1
  store i32 %128, i32* %15, align 4
  %129 = load i32, i32* %15, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %141

131:                                              ; preds = %126
  %132 = load %struct.archive_write*, %struct.archive_write** %6, align 8
  %133 = load i32, i32* @ARCHIVE_Z_RUN, align 4
  %134 = call i64 @compress_out(%struct.archive_write* %132, i32* %14, i32 1, i32 %133)
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %13, align 4
  %136 = load i32, i32* %13, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %131
  %139 = load i32, i32* %13, align 4
  store i32 %139, i32* %5, align 4
  br label %219

140:                                              ; preds = %131
  store i32 128, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %141

141:                                              ; preds = %140, %126
  br label %142

142:                                              ; preds = %141
  %143 = load %struct.file*, %struct.file** %12, align 8
  %144 = getelementptr inbounds %struct.file, %struct.file* %143, i32 0, i32 2
  %145 = load %struct.file*, %struct.file** %144, align 8
  store %struct.file* %145, %struct.file** %12, align 8
  br label %112

146:                                              ; preds = %112
  %147 = load i32, i32* %15, align 4
  %148 = icmp ne i32 %147, 128
  br i1 %148, label %149, label %159

149:                                              ; preds = %146
  %150 = load %struct.archive_write*, %struct.archive_write** %6, align 8
  %151 = load i32, i32* @ARCHIVE_Z_RUN, align 4
  %152 = call i64 @compress_out(%struct.archive_write* %150, i32* %14, i32 1, i32 %151)
  %153 = trunc i64 %152 to i32
  store i32 %153, i32* %13, align 4
  %154 = load i32, i32* %13, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %149
  %157 = load i32, i32* %13, align 4
  store i32 %157, i32* %5, align 4
  br label %219

158:                                              ; preds = %149
  br label %159

159:                                              ; preds = %158, %146
  br label %160

160:                                              ; preds = %159, %58
  %161 = load %struct.archive_write*, %struct.archive_write** %6, align 8
  %162 = call i32 @enc_uint64(%struct.archive_write* %161, i32 0)
  store i32 %162, i32* %13, align 4
  %163 = load i32, i32* %13, align 4
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %160
  %166 = load i32, i32* %13, align 4
  store i32 %166, i32* %5, align 4
  br label %219

167:                                              ; preds = %160
  %168 = load %struct._7zip*, %struct._7zip** %11, align 8
  %169 = getelementptr inbounds %struct._7zip, %struct._7zip* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 0
  %171 = load %struct.file*, %struct.file** %170, align 8
  store %struct.file* %171, %struct.file** %12, align 8
  br label %172

172:                                              ; preds = %213, %167
  %173 = load %struct.file*, %struct.file** %12, align 8
  %174 = icmp ne %struct.file* %173, null
  br i1 %174, label %175, label %217

175:                                              ; preds = %172
  %176 = load %struct.file*, %struct.file** %12, align 8
  %177 = getelementptr inbounds %struct.file, %struct.file* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* %8, align 4
  %180 = and i32 %178, %179
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %175
  br label %213

183:                                              ; preds = %175
  %184 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %185 = load %struct.file*, %struct.file** %12, align 8
  %186 = getelementptr inbounds %struct.file, %struct.file* %185, i32 0, i32 1
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** %186, align 8
  %188 = load i32, i32* %9, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.file*, %struct.file** %12, align 8
  %194 = getelementptr inbounds %struct.file, %struct.file* %193, i32 0, i32 1
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** %194, align 8
  %196 = load i32, i32* %9, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @utcToFiletime(i32 %192, i32 %200)
  %202 = call i32 @archive_le64enc(i32* %184, i32 %201)
  %203 = load %struct.archive_write*, %struct.archive_write** %6, align 8
  %204 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %205 = load i32, i32* @ARCHIVE_Z_RUN, align 4
  %206 = call i64 @compress_out(%struct.archive_write* %203, i32* %204, i32 8, i32 %205)
  %207 = trunc i64 %206 to i32
  store i32 %207, i32* %13, align 4
  %208 = load i32, i32* %13, align 4
  %209 = icmp slt i32 %208, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %183
  %211 = load i32, i32* %13, align 4
  store i32 %211, i32* %5, align 4
  br label %219

212:                                              ; preds = %183
  br label %213

213:                                              ; preds = %212, %182
  %214 = load %struct.file*, %struct.file** %12, align 8
  %215 = getelementptr inbounds %struct.file, %struct.file* %214, i32 0, i32 2
  %216 = load %struct.file*, %struct.file** %215, align 8
  store %struct.file* %216, %struct.file** %12, align 8
  br label %172

217:                                              ; preds = %172
  %218 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %218, i32* %5, align 4
  br label %219

219:                                              ; preds = %217, %210, %165, %156, %138, %105, %98, %76, %68, %56, %49, %37
  %220 = load i32, i32* %5, align 4
  ret i32 %220
}

declare dso_local i32 @enc_uint64(%struct.archive_write*, i32) #1

declare dso_local i64 @compress_out(%struct.archive_write*, i32*, i32, i32) #1

declare dso_local i32 @archive_le64enc(i32*, i32) #1

declare dso_local i32 @utcToFiletime(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

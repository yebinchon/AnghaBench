; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_ext2fs.c_block_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_ext2fs.c_block_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.open_file = type { i32, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32 (i32, i32, i32, i64, i8*, i64*)* }
%struct.file = type { i64*, i64*, i8**, i64*, %struct.ext2fs*, %struct.TYPE_3__ }
%struct.ext2fs = type { i64 }
%struct.TYPE_3__ = type { i64*, i64* }

@EXT2_NDADDR = common dso_local global i64 0, align 8
@EXT2_NIADDR = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4
@F_READ = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.open_file*, i64, i64*)* @block_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @block_map(%struct.open_file* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.open_file*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.ext2fs*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.open_file* %0, %struct.open_file** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %15 = load %struct.open_file*, %struct.open_file** %5, align 8
  %16 = getelementptr inbounds %struct.open_file, %struct.open_file* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.file*
  store %struct.file* %18, %struct.file** %8, align 8
  %19 = load %struct.file*, %struct.file** %8, align 8
  %20 = getelementptr inbounds %struct.file, %struct.file* %19, i32 0, i32 4
  %21 = load %struct.ext2fs*, %struct.ext2fs** %20, align 8
  store %struct.ext2fs* %21, %struct.ext2fs** %9, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* @EXT2_NDADDR, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %3
  %26 = load %struct.file*, %struct.file** %8, align 8
  %27 = getelementptr inbounds %struct.file, %struct.file* %26, i32 0, i32 5
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = load i64, i64* %6, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = load i64*, i64** %7, align 8
  store i64 %32, i64* %33, align 8
  store i32 0, i32* %4, align 4
  br label %226

34:                                               ; preds = %3
  %35 = load i64, i64* @EXT2_NDADDR, align 8
  %36 = load i64, i64* %6, align 8
  %37 = sub i64 %36, %35
  store i64 %37, i64* %6, align 8
  store i32 0, i32* %13, align 4
  br label %38

38:                                               ; preds = %63, %34
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* @EXT2_NIADDR, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %66

42:                                               ; preds = %38
  %43 = load i64, i64* %6, align 8
  %44 = load %struct.file*, %struct.file** %8, align 8
  %45 = getelementptr inbounds %struct.file, %struct.file* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = load i32, i32* %13, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = icmp ult i64 %43, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  br label %66

53:                                               ; preds = %42
  %54 = load %struct.file*, %struct.file** %8, align 8
  %55 = getelementptr inbounds %struct.file, %struct.file* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = load i32, i32* %13, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %6, align 8
  %62 = sub i64 %61, %60
  store i64 %62, i64* %6, align 8
  br label %63

63:                                               ; preds = %53
  %64 = load i32, i32* %13, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %13, align 4
  br label %38

66:                                               ; preds = %52, %38
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* @EXT2_NIADDR, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load i32, i32* @EFBIG, align 4
  store i32 %71, i32* %4, align 4
  br label %226

72:                                               ; preds = %66
  %73 = load %struct.file*, %struct.file** %8, align 8
  %74 = getelementptr inbounds %struct.file, %struct.file* %73, i32 0, i32 5
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load i64*, i64** %75, align 8
  %77 = load i32, i32* %13, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %76, i64 %78
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %10, align 8
  br label %81

81:                                               ; preds = %220, %72
  %82 = load i32, i32* %13, align 4
  %83 = icmp sge i32 %82, 0
  br i1 %83, label %84, label %223

84:                                               ; preds = %81
  %85 = load i64, i64* %10, align 8
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = load i64*, i64** %7, align 8
  store i64 0, i64* %88, align 8
  store i32 0, i32* %4, align 4
  br label %226

89:                                               ; preds = %84
  %90 = load %struct.file*, %struct.file** %8, align 8
  %91 = getelementptr inbounds %struct.file, %struct.file* %90, i32 0, i32 1
  %92 = load i64*, i64** %91, align 8
  %93 = load i32, i32* %13, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %92, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* %10, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %178

99:                                               ; preds = %89
  %100 = load %struct.file*, %struct.file** %8, align 8
  %101 = getelementptr inbounds %struct.file, %struct.file* %100, i32 0, i32 2
  %102 = load i8**, i8*** %101, align 8
  %103 = load i32, i32* %13, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8*, i8** %102, i64 %104
  %106 = load i8*, i8** %105, align 8
  %107 = icmp eq i8* %106, null
  br i1 %107, label %108, label %119

108:                                              ; preds = %99
  %109 = load %struct.ext2fs*, %struct.ext2fs** %9, align 8
  %110 = getelementptr inbounds %struct.ext2fs, %struct.ext2fs* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = call i8* @malloc(i64 %111)
  %113 = load %struct.file*, %struct.file** %8, align 8
  %114 = getelementptr inbounds %struct.file, %struct.file* %113, i32 0, i32 2
  %115 = load i8**, i8*** %114, align 8
  %116 = load i32, i32* %13, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8*, i8** %115, i64 %117
  store i8* %112, i8** %118, align 8
  br label %119

119:                                              ; preds = %108, %99
  %120 = call i32 @twiddle(i32 1)
  %121 = load %struct.open_file*, %struct.open_file** %5, align 8
  %122 = getelementptr inbounds %struct.open_file, %struct.open_file* %121, i32 0, i32 1
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load i32 (i32, i32, i32, i64, i8*, i64*)*, i32 (i32, i32, i32, i64, i8*, i64*)** %124, align 8
  %126 = load %struct.open_file*, %struct.open_file** %5, align 8
  %127 = getelementptr inbounds %struct.open_file, %struct.open_file* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @F_READ, align 4
  %130 = load %struct.file*, %struct.file** %8, align 8
  %131 = getelementptr inbounds %struct.file, %struct.file* %130, i32 0, i32 4
  %132 = load %struct.ext2fs*, %struct.ext2fs** %131, align 8
  %133 = load i64, i64* %10, align 8
  %134 = call i32 @fsb_to_db(%struct.ext2fs* %132, i64 %133)
  %135 = load %struct.ext2fs*, %struct.ext2fs** %9, align 8
  %136 = getelementptr inbounds %struct.ext2fs, %struct.ext2fs* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.file*, %struct.file** %8, align 8
  %139 = getelementptr inbounds %struct.file, %struct.file* %138, i32 0, i32 2
  %140 = load i8**, i8*** %139, align 8
  %141 = load i32, i32* %13, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8*, i8** %140, i64 %142
  %144 = load i8*, i8** %143, align 8
  %145 = load %struct.file*, %struct.file** %8, align 8
  %146 = getelementptr inbounds %struct.file, %struct.file* %145, i32 0, i32 3
  %147 = load i64*, i64** %146, align 8
  %148 = load i32, i32* %13, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i64, i64* %147, i64 %149
  %151 = call i32 %125(i32 %128, i32 %129, i32 %134, i64 %137, i8* %144, i64* %150)
  store i32 %151, i32* %14, align 4
  %152 = load i32, i32* %14, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %119
  %155 = load i32, i32* %14, align 4
  store i32 %155, i32* %4, align 4
  br label %226

156:                                              ; preds = %119
  %157 = load %struct.file*, %struct.file** %8, align 8
  %158 = getelementptr inbounds %struct.file, %struct.file* %157, i32 0, i32 3
  %159 = load i64*, i64** %158, align 8
  %160 = load i32, i32* %13, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i64, i64* %159, i64 %161
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.ext2fs*, %struct.ext2fs** %9, align 8
  %165 = getelementptr inbounds %struct.ext2fs, %struct.ext2fs* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %163, %166
  br i1 %167, label %168, label %170

168:                                              ; preds = %156
  %169 = load i32, i32* @EIO, align 4
  store i32 %169, i32* %4, align 4
  br label %226

170:                                              ; preds = %156
  %171 = load i64, i64* %10, align 8
  %172 = load %struct.file*, %struct.file** %8, align 8
  %173 = getelementptr inbounds %struct.file, %struct.file* %172, i32 0, i32 1
  %174 = load i64*, i64** %173, align 8
  %175 = load i32, i32* %13, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i64, i64* %174, i64 %176
  store i64 %171, i64* %177, align 8
  br label %178

178:                                              ; preds = %170, %89
  %179 = load %struct.file*, %struct.file** %8, align 8
  %180 = getelementptr inbounds %struct.file, %struct.file* %179, i32 0, i32 2
  %181 = load i8**, i8*** %180, align 8
  %182 = load i32, i32* %13, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i8*, i8** %181, i64 %183
  %185 = load i8*, i8** %184, align 8
  %186 = bitcast i8* %185 to i64*
  store i64* %186, i64** %11, align 8
  %187 = load i32, i32* %13, align 4
  %188 = icmp sgt i32 %187, 0
  br i1 %188, label %189, label %211

189:                                              ; preds = %178
  %190 = load i64, i64* %6, align 8
  %191 = load %struct.file*, %struct.file** %8, align 8
  %192 = getelementptr inbounds %struct.file, %struct.file* %191, i32 0, i32 0
  %193 = load i64*, i64** %192, align 8
  %194 = load i32, i32* %13, align 4
  %195 = sub nsw i32 %194, 1
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i64, i64* %193, i64 %196
  %198 = load i64, i64* %197, align 8
  %199 = udiv i64 %190, %198
  %200 = trunc i64 %199 to i32
  store i32 %200, i32* %12, align 4
  %201 = load %struct.file*, %struct.file** %8, align 8
  %202 = getelementptr inbounds %struct.file, %struct.file* %201, i32 0, i32 0
  %203 = load i64*, i64** %202, align 8
  %204 = load i32, i32* %13, align 4
  %205 = sub nsw i32 %204, 1
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i64, i64* %203, i64 %206
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* %6, align 8
  %210 = urem i64 %209, %208
  store i64 %210, i64* %6, align 8
  br label %214

211:                                              ; preds = %178
  %212 = load i64, i64* %6, align 8
  %213 = trunc i64 %212 to i32
  store i32 %213, i32* %12, align 4
  br label %214

214:                                              ; preds = %211, %189
  %215 = load i64*, i64** %11, align 8
  %216 = load i32, i32* %12, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i64, i64* %215, i64 %217
  %219 = load i64, i64* %218, align 8
  store i64 %219, i64* %10, align 8
  br label %220

220:                                              ; preds = %214
  %221 = load i32, i32* %13, align 4
  %222 = add nsw i32 %221, -1
  store i32 %222, i32* %13, align 4
  br label %81

223:                                              ; preds = %81
  %224 = load i64, i64* %10, align 8
  %225 = load i64*, i64** %7, align 8
  store i64 %224, i64* %225, align 8
  store i32 0, i32* %4, align 4
  br label %226

226:                                              ; preds = %223, %168, %154, %87, %70, %25
  %227 = load i32, i32* %4, align 4
  ret i32 %227
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @twiddle(i32) #1

declare dso_local i32 @fsb_to_db(%struct.ext2fs*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

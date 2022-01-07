; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c__write_path_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c__write_path_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { i32 }
%struct.vdd = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.isoent** }
%struct.isoent = type { i64, i32*, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*, i32, i32, %struct.vdd*)* @_write_path_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_write_path_table(%struct.archive_write* %0, i32 %1, i32 %2, %struct.vdd* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.archive_write*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.vdd*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.isoent**, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.isoent*, align 8
  %18 = alloca i64, align 8
  store %struct.archive_write* %0, %struct.archive_write** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.vdd* %3, %struct.vdd** %9, align 8
  %19 = load %struct.vdd*, %struct.vdd** %9, align 8
  %20 = getelementptr inbounds %struct.vdd, %struct.vdd* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %212

29:                                               ; preds = %4
  store i32 0, i32* %16, align 4
  %30 = load %struct.archive_write*, %struct.archive_write** %6, align 8
  %31 = call i8* @wb_buffptr(%struct.archive_write* %30)
  store i8* %31, i8** %11, align 8
  %32 = load %struct.archive_write*, %struct.archive_write** %6, align 8
  %33 = call i64 @wb_remaining(%struct.archive_write* %32)
  store i64 %33, i64* %13, align 8
  %34 = load i8*, i8** %11, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 -1
  store i8* %35, i8** %10, align 8
  %36 = load %struct.vdd*, %struct.vdd** %9, align 8
  %37 = getelementptr inbounds %struct.vdd, %struct.vdd* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load %struct.isoent**, %struct.isoent*** %42, align 8
  store %struct.isoent** %43, %struct.isoent*** %12, align 8
  store i32 0, i32* %14, align 4
  br label %44

44:                                               ; preds = %187, %29
  %45 = load i32, i32* %14, align 4
  %46 = load %struct.vdd*, %struct.vdd** %9, align 8
  %47 = getelementptr inbounds %struct.vdd, %struct.vdd* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %45, %53
  br i1 %54, label %55, label %190

55:                                               ; preds = %44
  %56 = load %struct.isoent**, %struct.isoent*** %12, align 8
  %57 = load i32, i32* %14, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.isoent*, %struct.isoent** %56, i64 %58
  %60 = load %struct.isoent*, %struct.isoent** %59, align 8
  store %struct.isoent* %60, %struct.isoent** %17, align 8
  %61 = load %struct.isoent*, %struct.isoent** %17, align 8
  %62 = getelementptr inbounds %struct.isoent, %struct.isoent* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %55
  store i64 1, i64* %18, align 8
  br label %70

66:                                               ; preds = %55
  %67 = load %struct.isoent*, %struct.isoent** %17, align 8
  %68 = getelementptr inbounds %struct.isoent, %struct.isoent* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %18, align 8
  br label %70

70:                                               ; preds = %66, %65
  %71 = load i64, i64* %13, align 8
  %72 = load i8*, i8** %10, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 1
  %74 = load i8*, i8** %11, align 8
  %75 = ptrtoint i8* %73 to i64
  %76 = ptrtoint i8* %74 to i64
  %77 = sub i64 %75, %76
  %78 = sub i64 %71, %77
  %79 = load i64, i64* %18, align 8
  %80 = add i64 %79, 1
  %81 = add i64 %80, 8
  %82 = icmp ult i64 %78, %81
  br i1 %82, label %83, label %104

83:                                               ; preds = %70
  %84 = load %struct.archive_write*, %struct.archive_write** %6, align 8
  %85 = load i8*, i8** %10, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 1
  %87 = load i8*, i8** %11, align 8
  %88 = ptrtoint i8* %86 to i64
  %89 = ptrtoint i8* %87 to i64
  %90 = sub i64 %88, %89
  %91 = trunc i64 %90 to i32
  %92 = call i32 @wb_consume(%struct.archive_write* %84, i32 %91)
  store i32 %92, i32* %15, align 4
  %93 = load i32, i32* %15, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %83
  %96 = load i32, i32* %15, align 4
  store i32 %96, i32* %5, align 4
  br label %212

97:                                               ; preds = %83
  %98 = load %struct.archive_write*, %struct.archive_write** %6, align 8
  %99 = call i8* @wb_buffptr(%struct.archive_write* %98)
  store i8* %99, i8** %11, align 8
  %100 = load %struct.archive_write*, %struct.archive_write** %6, align 8
  %101 = call i64 @wb_remaining(%struct.archive_write* %100)
  store i64 %101, i64* %13, align 8
  %102 = load i8*, i8** %11, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 -1
  store i8* %103, i8** %10, align 8
  br label %104

104:                                              ; preds = %97, %70
  %105 = load i8*, i8** %10, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 1
  %107 = load i64, i64* %18, align 8
  %108 = trunc i64 %107 to i8
  %109 = call i32 @set_num_711(i8* %106, i8 zeroext %108)
  %110 = load i8*, i8** %10, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 2
  %112 = call i32 @set_num_711(i8* %111, i8 zeroext 0)
  %113 = load i32, i32* %7, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %104
  %116 = load i8*, i8** %10, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 3
  %118 = load %struct.isoent*, %struct.isoent** %17, align 8
  %119 = getelementptr inbounds %struct.isoent, %struct.isoent* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @set_num_732(i8* %117, i32 %120)
  br label %129

122:                                              ; preds = %104
  %123 = load i8*, i8** %10, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 3
  %125 = load %struct.isoent*, %struct.isoent** %17, align 8
  %126 = getelementptr inbounds %struct.isoent, %struct.isoent* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @set_num_731(i8* %124, i32 %127)
  br label %129

129:                                              ; preds = %122, %115
  %130 = load i32, i32* %7, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %141

132:                                              ; preds = %129
  %133 = load i8*, i8** %10, align 8
  %134 = getelementptr inbounds i8, i8* %133, i64 7
  %135 = load %struct.isoent*, %struct.isoent** %17, align 8
  %136 = getelementptr inbounds %struct.isoent, %struct.isoent* %135, i32 0, i32 2
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @set_num_722(i8* %134, i32 %139)
  br label %150

141:                                              ; preds = %129
  %142 = load i8*, i8** %10, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 7
  %144 = load %struct.isoent*, %struct.isoent** %17, align 8
  %145 = getelementptr inbounds %struct.isoent, %struct.isoent* %144, i32 0, i32 2
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @set_num_721(i8* %143, i32 %148)
  br label %150

150:                                              ; preds = %141, %132
  %151 = load %struct.isoent*, %struct.isoent** %17, align 8
  %152 = getelementptr inbounds %struct.isoent, %struct.isoent* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = icmp eq i32* %153, null
  br i1 %154, label %155, label %158

155:                                              ; preds = %150
  %156 = load i8*, i8** %10, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 9
  store i8 0, i8* %157, align 1
  br label %166

158:                                              ; preds = %150
  %159 = load i8*, i8** %10, align 8
  %160 = getelementptr inbounds i8, i8* %159, i64 9
  %161 = load %struct.isoent*, %struct.isoent** %17, align 8
  %162 = getelementptr inbounds %struct.isoent, %struct.isoent* %161, i32 0, i32 1
  %163 = load i32*, i32** %162, align 8
  %164 = load i64, i64* %18, align 8
  %165 = call i32 @memcpy(i8* %160, i32* %163, i64 %164)
  br label %166

166:                                              ; preds = %158, %155
  %167 = load i64, i64* %18, align 8
  %168 = and i64 %167, 1
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %177

170:                                              ; preds = %166
  %171 = load i8*, i8** %10, align 8
  %172 = load i64, i64* %18, align 8
  %173 = add i64 9, %172
  %174 = getelementptr inbounds i8, i8* %171, i64 %173
  store i8 0, i8* %174, align 1
  %175 = load i64, i64* %18, align 8
  %176 = add i64 %175, 1
  store i64 %176, i64* %18, align 8
  br label %177

177:                                              ; preds = %170, %166
  %178 = load i64, i64* %18, align 8
  %179 = trunc i64 %178 to i32
  %180 = add nsw i32 8, %179
  %181 = load i32, i32* %16, align 4
  %182 = add nsw i32 %181, %180
  store i32 %182, i32* %16, align 4
  %183 = load i64, i64* %18, align 8
  %184 = add i64 8, %183
  %185 = load i8*, i8** %10, align 8
  %186 = getelementptr inbounds i8, i8* %185, i64 %184
  store i8* %186, i8** %10, align 8
  br label %187

187:                                              ; preds = %177
  %188 = load i32, i32* %14, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %14, align 4
  br label %44

190:                                              ; preds = %44
  %191 = load i8*, i8** %10, align 8
  %192 = getelementptr inbounds i8, i8* %191, i64 1
  %193 = load i8*, i8** %11, align 8
  %194 = icmp ugt i8* %192, %193
  br i1 %194, label %195, label %210

195:                                              ; preds = %190
  %196 = load %struct.archive_write*, %struct.archive_write** %6, align 8
  %197 = load i8*, i8** %10, align 8
  %198 = getelementptr inbounds i8, i8* %197, i64 1
  %199 = load i8*, i8** %11, align 8
  %200 = ptrtoint i8* %198 to i64
  %201 = ptrtoint i8* %199 to i64
  %202 = sub i64 %200, %201
  %203 = trunc i64 %202 to i32
  %204 = call i32 @wb_consume(%struct.archive_write* %196, i32 %203)
  store i32 %204, i32* %15, align 4
  %205 = load i32, i32* %15, align 4
  %206 = icmp slt i32 %205, 0
  br i1 %206, label %207, label %209

207:                                              ; preds = %195
  %208 = load i32, i32* %15, align 4
  store i32 %208, i32* %5, align 4
  br label %212

209:                                              ; preds = %195
  br label %210

210:                                              ; preds = %209, %190
  %211 = load i32, i32* %16, align 4
  store i32 %211, i32* %5, align 4
  br label %212

212:                                              ; preds = %210, %207, %95, %28
  %213 = load i32, i32* %5, align 4
  ret i32 %213
}

declare dso_local i8* @wb_buffptr(%struct.archive_write*) #1

declare dso_local i64 @wb_remaining(%struct.archive_write*) #1

declare dso_local i32 @wb_consume(%struct.archive_write*, i32) #1

declare dso_local i32 @set_num_711(i8*, i8 zeroext) #1

declare dso_local i32 @set_num_732(i8*, i32) #1

declare dso_local i32 @set_num_731(i8*, i32) #1

declare dso_local i32 @set_num_722(i8*, i32) #1

declare dso_local i32 @set_num_721(i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

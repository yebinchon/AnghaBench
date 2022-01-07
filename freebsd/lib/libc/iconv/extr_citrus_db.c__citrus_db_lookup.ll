; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_db.c__citrus_db_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_db.c__citrus_db_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._citrus_db = type { i64 (%struct._citrus_region*)*, %struct._citrus_region }
%struct._citrus_region = type { i32 }
%struct._citrus_db_locator = type { i64, i64 }
%struct._citrus_db_entry_x = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._citrus_db_header_x = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._memstream = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@_CITRUS_DB_ENTRY_SIZE = common dso_local global i64 0, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@EFTYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_citrus_db_lookup(%struct._citrus_db* %0, %struct._citrus_region* %1, %struct._citrus_region* %2, %struct._citrus_db_locator* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct._citrus_db*, align 8
  %7 = alloca %struct._citrus_region*, align 8
  %8 = alloca %struct._citrus_region*, align 8
  %9 = alloca %struct._citrus_db_locator*, align 8
  %10 = alloca %struct._citrus_db_entry_x*, align 8
  %11 = alloca %struct._citrus_db_header_x*, align 8
  %12 = alloca %struct._citrus_region, align 4
  %13 = alloca %struct._memstream, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct._citrus_db* %0, %struct._citrus_db** %6, align 8
  store %struct._citrus_region* %1, %struct._citrus_region** %7, align 8
  store %struct._citrus_region* %2, %struct._citrus_region** %8, align 8
  store %struct._citrus_db_locator* %3, %struct._citrus_db_locator** %9, align 8
  %17 = load %struct._citrus_db*, %struct._citrus_db** %6, align 8
  %18 = getelementptr inbounds %struct._citrus_db, %struct._citrus_db* %17, i32 0, i32 1
  %19 = call i32 @_memstream_bind(%struct._memstream* %13, %struct._citrus_region* %18)
  %20 = call %struct._citrus_db_header_x* @_memstream_getregion(%struct._memstream* %13, %struct._citrus_region* null, i64 32)
  store %struct._citrus_db_header_x* %20, %struct._citrus_db_header_x** %11, align 8
  %21 = load %struct._citrus_db_header_x*, %struct._citrus_db_header_x** %11, align 8
  %22 = getelementptr inbounds %struct._citrus_db_header_x, %struct._citrus_db_header_x* %21, i32 0, i32 7
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @be32toh(i32 %23)
  store i64 %24, i64* %15, align 8
  %25 = load i64, i64* %15, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i32, i32* @ENOENT, align 4
  store i32 %28, i32* %5, align 4
  br label %180

29:                                               ; preds = %4
  %30 = load %struct._citrus_db_locator*, %struct._citrus_db_locator** %9, align 8
  %31 = icmp ne %struct._citrus_db_locator* %30, null
  br i1 %31, label %32, label %52

32:                                               ; preds = %29
  %33 = load %struct._citrus_db_locator*, %struct._citrus_db_locator** %9, align 8
  %34 = getelementptr inbounds %struct._citrus_db_locator, %struct._citrus_db_locator* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ugt i64 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %32
  %38 = load %struct._citrus_db_locator*, %struct._citrus_db_locator** %9, align 8
  %39 = getelementptr inbounds %struct._citrus_db_locator, %struct._citrus_db_locator* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %14, align 8
  %41 = load %struct._citrus_db_locator*, %struct._citrus_db_locator** %9, align 8
  %42 = getelementptr inbounds %struct._citrus_db_locator, %struct._citrus_db_locator* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %16, align 8
  %44 = load i64, i64* %16, align 8
  %45 = load %struct._citrus_db*, %struct._citrus_db** %6, align 8
  %46 = getelementptr inbounds %struct._citrus_db, %struct._citrus_db* %45, i32 0, i32 1
  %47 = call i64 @_region_size(%struct._citrus_region* %46)
  %48 = icmp uge i64 %44, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %37
  %50 = load i32, i32* @ENOENT, align 4
  store i32 %50, i32* %5, align 4
  br label %180

51:                                               ; preds = %37
  br label %75

52:                                               ; preds = %32, %29
  %53 = load %struct._citrus_db*, %struct._citrus_db** %6, align 8
  %54 = getelementptr inbounds %struct._citrus_db, %struct._citrus_db* %53, i32 0, i32 0
  %55 = load i64 (%struct._citrus_region*)*, i64 (%struct._citrus_region*)** %54, align 8
  %56 = load %struct._citrus_region*, %struct._citrus_region** %7, align 8
  %57 = call i64 %55(%struct._citrus_region* %56)
  %58 = load i64, i64* %15, align 8
  %59 = urem i64 %57, %58
  store i64 %59, i64* %14, align 8
  %60 = load %struct._citrus_db_header_x*, %struct._citrus_db_header_x** %11, align 8
  %61 = getelementptr inbounds %struct._citrus_db_header_x, %struct._citrus_db_header_x* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @be32toh(i32 %62)
  %64 = load i64, i64* %14, align 8
  %65 = load i64, i64* @_CITRUS_DB_ENTRY_SIZE, align 8
  %66 = mul i64 %64, %65
  %67 = add i64 %63, %66
  store i64 %67, i64* %16, align 8
  %68 = load %struct._citrus_db_locator*, %struct._citrus_db_locator** %9, align 8
  %69 = icmp ne %struct._citrus_db_locator* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %52
  %71 = load i64, i64* %14, align 8
  %72 = load %struct._citrus_db_locator*, %struct._citrus_db_locator** %9, align 8
  %73 = getelementptr inbounds %struct._citrus_db_locator, %struct._citrus_db_locator* %72, i32 0, i32 1
  store i64 %71, i64* %73, align 8
  br label %74

74:                                               ; preds = %70, %52
  br label %75

75:                                               ; preds = %74, %51
  br label %76

76:                                               ; preds = %175, %75
  %77 = load i64, i64* %16, align 8
  %78 = load i32, i32* @SEEK_SET, align 4
  %79 = call i64 @_citrus_memory_stream_seek(%struct._memstream* %13, i64 %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = load i32, i32* @EFTYPE, align 4
  store i32 %82, i32* %5, align 4
  br label %180

83:                                               ; preds = %76
  %84 = load i64, i64* @_CITRUS_DB_ENTRY_SIZE, align 8
  %85 = call %struct._citrus_db_header_x* @_memstream_getregion(%struct._memstream* %13, %struct._citrus_region* null, i64 %84)
  %86 = bitcast %struct._citrus_db_header_x* %85 to %struct._citrus_db_entry_x*
  store %struct._citrus_db_entry_x* %86, %struct._citrus_db_entry_x** %10, align 8
  %87 = load %struct._citrus_db_entry_x*, %struct._citrus_db_entry_x** %10, align 8
  %88 = icmp eq %struct._citrus_db_entry_x* %87, null
  br i1 %88, label %89, label %91

89:                                               ; preds = %83
  %90 = load i32, i32* @EFTYPE, align 4
  store i32 %90, i32* %5, align 4
  br label %180

91:                                               ; preds = %83
  %92 = load %struct._citrus_db_entry_x*, %struct._citrus_db_entry_x** %10, align 8
  %93 = getelementptr inbounds %struct._citrus_db_entry_x, %struct._citrus_db_entry_x* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 4
  %95 = call i64 @be32toh(i32 %94)
  store i64 %95, i64* %16, align 8
  %96 = load %struct._citrus_db_locator*, %struct._citrus_db_locator** %9, align 8
  %97 = icmp ne %struct._citrus_db_locator* %96, null
  br i1 %97, label %98, label %111

98:                                               ; preds = %91
  %99 = load i64, i64* %16, align 8
  %100 = load %struct._citrus_db_locator*, %struct._citrus_db_locator** %9, align 8
  %101 = getelementptr inbounds %struct._citrus_db_locator, %struct._citrus_db_locator* %100, i32 0, i32 0
  store i64 %99, i64* %101, align 8
  %102 = load i64, i64* %16, align 8
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %98
  %105 = load %struct._citrus_db*, %struct._citrus_db** %6, align 8
  %106 = getelementptr inbounds %struct._citrus_db, %struct._citrus_db* %105, i32 0, i32 1
  %107 = call i64 @_region_size(%struct._citrus_region* %106)
  %108 = load %struct._citrus_db_locator*, %struct._citrus_db_locator** %9, align 8
  %109 = getelementptr inbounds %struct._citrus_db_locator, %struct._citrus_db_locator* %108, i32 0, i32 0
  store i64 %107, i64* %109, align 8
  br label %110

110:                                              ; preds = %104, %98
  br label %111

111:                                              ; preds = %110, %91
  %112 = load %struct._citrus_db_entry_x*, %struct._citrus_db_entry_x** %10, align 8
  %113 = getelementptr inbounds %struct._citrus_db_entry_x, %struct._citrus_db_entry_x* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 4
  %115 = call i64 @be32toh(i32 %114)
  %116 = load i64, i64* %14, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %111
  br label %178

119:                                              ; preds = %111
  %120 = load %struct._citrus_db_entry_x*, %struct._citrus_db_entry_x** %10, align 8
  %121 = getelementptr inbounds %struct._citrus_db_entry_x, %struct._citrus_db_entry_x* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = call i64 @be32toh(i32 %122)
  %124 = load %struct._citrus_region*, %struct._citrus_region** %7, align 8
  %125 = call i64 @_region_size(%struct._citrus_region* %124)
  %126 = icmp eq i64 %123, %125
  br i1 %126, label %127, label %174

127:                                              ; preds = %119
  %128 = load %struct._citrus_db_entry_x*, %struct._citrus_db_entry_x** %10, align 8
  %129 = getelementptr inbounds %struct._citrus_db_entry_x, %struct._citrus_db_entry_x* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = call i64 @be32toh(i32 %130)
  %132 = load i32, i32* @SEEK_SET, align 4
  %133 = call i64 @_memstream_seek(%struct._memstream* %13, i64 %131, i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %127
  %136 = load i32, i32* @EFTYPE, align 4
  store i32 %136, i32* %5, align 4
  br label %180

137:                                              ; preds = %127
  %138 = load %struct._citrus_region*, %struct._citrus_region** %7, align 8
  %139 = call i64 @_region_size(%struct._citrus_region* %138)
  %140 = call %struct._citrus_db_header_x* @_memstream_getregion(%struct._memstream* %13, %struct._citrus_region* %12, i64 %139)
  %141 = icmp eq %struct._citrus_db_header_x* %140, null
  br i1 %141, label %142, label %144

142:                                              ; preds = %137
  %143 = load i32, i32* @EFTYPE, align 4
  store i32 %143, i32* %5, align 4
  br label %180

144:                                              ; preds = %137
  %145 = call i32 @_region_head(%struct._citrus_region* %12)
  %146 = load %struct._citrus_region*, %struct._citrus_region** %7, align 8
  %147 = call i32 @_region_head(%struct._citrus_region* %146)
  %148 = load %struct._citrus_region*, %struct._citrus_region** %7, align 8
  %149 = call i64 @_region_size(%struct._citrus_region* %148)
  %150 = call i64 @memcmp(i32 %145, i32 %147, i64 %149)
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %152, label %173

152:                                              ; preds = %144
  %153 = load %struct._citrus_db_entry_x*, %struct._citrus_db_entry_x** %10, align 8
  %154 = getelementptr inbounds %struct._citrus_db_entry_x, %struct._citrus_db_entry_x* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = call i64 @be32toh(i32 %155)
  %157 = load i32, i32* @SEEK_SET, align 4
  %158 = call i64 @_memstream_seek(%struct._memstream* %13, i64 %156, i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %152
  %161 = load i32, i32* @EFTYPE, align 4
  store i32 %161, i32* %5, align 4
  br label %180

162:                                              ; preds = %152
  %163 = load %struct._citrus_region*, %struct._citrus_region** %8, align 8
  %164 = load %struct._citrus_db_entry_x*, %struct._citrus_db_entry_x** %10, align 8
  %165 = getelementptr inbounds %struct._citrus_db_entry_x, %struct._citrus_db_entry_x* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i64 @be32toh(i32 %166)
  %168 = call %struct._citrus_db_header_x* @_memstream_getregion(%struct._memstream* %13, %struct._citrus_region* %163, i64 %167)
  %169 = icmp eq %struct._citrus_db_header_x* %168, null
  br i1 %169, label %170, label %172

170:                                              ; preds = %162
  %171 = load i32, i32* @EFTYPE, align 4
  store i32 %171, i32* %5, align 4
  br label %180

172:                                              ; preds = %162
  store i32 0, i32* %5, align 4
  br label %180

173:                                              ; preds = %144
  br label %174

174:                                              ; preds = %173, %119
  br label %175

175:                                              ; preds = %174
  %176 = load i64, i64* %16, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %76, label %178

178:                                              ; preds = %175, %118
  %179 = load i32, i32* @ENOENT, align 4
  store i32 %179, i32* %5, align 4
  br label %180

180:                                              ; preds = %178, %172, %170, %160, %142, %135, %89, %81, %49, %27
  %181 = load i32, i32* %5, align 4
  ret i32 %181
}

declare dso_local i32 @_memstream_bind(%struct._memstream*, %struct._citrus_region*) #1

declare dso_local %struct._citrus_db_header_x* @_memstream_getregion(%struct._memstream*, %struct._citrus_region*, i64) #1

declare dso_local i64 @be32toh(i32) #1

declare dso_local i64 @_region_size(%struct._citrus_region*) #1

declare dso_local i64 @_citrus_memory_stream_seek(%struct._memstream*, i64, i32) #1

declare dso_local i64 @_memstream_seek(%struct._memstream*, i64, i32) #1

declare dso_local i64 @memcmp(i32, i32, i64) #1

declare dso_local i32 @_region_head(%struct._citrus_region*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

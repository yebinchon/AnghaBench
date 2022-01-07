; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/rtld-elf/extr_rtld.c_allocate_tls.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/rtld-elf/extr_rtld.c_allocate_tls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i8*, i32, i32, i64, i64 }

@tls_static_max_align = common dso_local global i64 0, align 8
@tls_static_space = common dso_local global i64 0, align 8
@tls_max_index = common dso_local global i64 0, align 8
@tls_dtv_generation = common dso_local global i64 0, align 8
@next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @allocate_tls(%struct.TYPE_5__* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %19 = load i64, i64* %8, align 8
  store i64 %19, i64* %11, align 8
  %20 = load i64, i64* @tls_static_max_align, align 8
  %21 = load i64, i64* %11, align 8
  %22 = icmp ugt i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i64, i64* @tls_static_max_align, align 8
  store i64 %24, i64* %11, align 8
  br label %25

25:                                               ; preds = %23, %4
  %26 = load i64, i64* @tls_static_space, align 8
  %27 = load i64, i64* %11, align 8
  %28 = call i64 @round(i64 %26, i64 %27)
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* %11, align 8
  %31 = call i64 @round(i64 %29, i64 %30)
  %32 = add i64 %28, %31
  store i64 %32, i64* %10, align 8
  %33 = load i64, i64* %7, align 8
  %34 = icmp uge i64 %33, 16
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* %11, align 8
  %39 = call i8* @malloc_aligned(i64 %37, i64 %38)
  store i8* %39, i8** %12, align 8
  %40 = load i64, i64* @tls_max_index, align 8
  %41 = add i64 %40, 2
  %42 = call i64* @xcalloc(i64 %41, i32 8)
  store i64* %42, i64** %13, align 8
  %43 = load i8*, i8** %12, align 8
  %44 = load i64, i64* @tls_static_space, align 8
  %45 = load i64, i64* %11, align 8
  %46 = call i64 @round(i64 %44, i64 %45)
  %47 = getelementptr inbounds i8, i8* %43, i64 %46
  %48 = ptrtoint i8* %47 to i64
  store i64 %48, i64* %15, align 8
  %49 = load i64, i64* %15, align 8
  %50 = load i64, i64* %15, align 8
  %51 = inttoptr i64 %50 to i64*
  %52 = getelementptr inbounds i64, i64* %51, i64 0
  store i64 %49, i64* %52, align 8
  %53 = load i64*, i64** %13, align 8
  %54 = ptrtoint i64* %53 to i64
  %55 = load i64, i64* %15, align 8
  %56 = inttoptr i64 %55 to i64*
  %57 = getelementptr inbounds i64, i64* %56, i64 1
  store i64 %54, i64* %57, align 8
  %58 = load i64, i64* @tls_dtv_generation, align 8
  %59 = load i64*, i64** %13, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 0
  store i64 %58, i64* %60, align 8
  %61 = load i64, i64* @tls_max_index, align 8
  %62 = load i64*, i64** %13, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 1
  store i64 %61, i64* %63, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %128

66:                                               ; preds = %25
  %67 = load i8*, i8** %6, align 8
  %68 = ptrtoint i8* %67 to i64
  store i64 %68, i64* %16, align 8
  %69 = load i64, i64* %15, align 8
  %70 = load i64, i64* @tls_static_space, align 8
  %71 = sub i64 %69, %70
  %72 = inttoptr i64 %71 to i8*
  %73 = load i64, i64* %16, align 8
  %74 = load i64, i64* @tls_static_space, align 8
  %75 = sub i64 %73, %74
  %76 = inttoptr i64 %75 to i8*
  %77 = load i64, i64* @tls_static_space, align 8
  %78 = call i32 @memcpy(i8* %72, i8* %76, i64 %77)
  %79 = load i64, i64* %16, align 8
  %80 = inttoptr i64 %79 to i64**
  %81 = getelementptr inbounds i64*, i64** %80, i64 1
  %82 = load i64*, i64** %81, align 8
  store i64* %82, i64** %14, align 8
  store i64 0, i64* %18, align 8
  br label %83

83:                                               ; preds = %122, %66
  %84 = load i64, i64* %18, align 8
  %85 = load i64*, i64** %14, align 8
  %86 = getelementptr inbounds i64, i64* %85, i64 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ult i64 %84, %87
  br i1 %88, label %89, label %125

89:                                               ; preds = %83
  %90 = load i64*, i64** %14, align 8
  %91 = load i64, i64* %18, align 8
  %92 = add i64 %91, 2
  %93 = getelementptr inbounds i64, i64* %90, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* %16, align 8
  %96 = load i64, i64* %10, align 8
  %97 = sub i64 %95, %96
  %98 = icmp ult i64 %94, %97
  br i1 %98, label %107, label %99

99:                                               ; preds = %89
  %100 = load i64*, i64** %14, align 8
  %101 = load i64, i64* %18, align 8
  %102 = add i64 %101, 2
  %103 = getelementptr inbounds i64, i64* %100, i64 %102
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* %16, align 8
  %106 = icmp ugt i64 %104, %105
  br i1 %106, label %107, label %121

107:                                              ; preds = %99, %89
  %108 = load i64*, i64** %14, align 8
  %109 = load i64, i64* %18, align 8
  %110 = add i64 %109, 2
  %111 = getelementptr inbounds i64, i64* %108, i64 %110
  %112 = load i64, i64* %111, align 8
  %113 = load i64*, i64** %13, align 8
  %114 = load i64, i64* %18, align 8
  %115 = add i64 %114, 2
  %116 = getelementptr inbounds i64, i64* %113, i64 %115
  store i64 %112, i64* %116, align 8
  %117 = load i64*, i64** %14, align 8
  %118 = load i64, i64* %18, align 8
  %119 = add i64 %118, 2
  %120 = getelementptr inbounds i64, i64* %117, i64 %119
  store i64 0, i64* %120, align 8
  br label %121

121:                                              ; preds = %107, %99
  br label %122

122:                                              ; preds = %121
  %123 = load i64, i64* %18, align 8
  %124 = add i64 %123, 1
  store i64 %124, i64* %18, align 8
  br label %83

125:                                              ; preds = %83
  %126 = load i8*, i8** %6, align 8
  %127 = call i32 @free_tls(i8* %126, i32 16, i32 8)
  br label %194

128:                                              ; preds = %25
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  store %struct.TYPE_5__* %129, %struct.TYPE_5__** %9, align 8
  br label %130

130:                                              ; preds = %189, %128
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %132 = icmp ne %struct.TYPE_5__* %131, null
  br i1 %132, label %133, label %193

133:                                              ; preds = %130
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 6
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %143, label %138

138:                                              ; preds = %133
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %138, %133
  br label %189

144:                                              ; preds = %138
  %145 = load i64, i64* %15, align 8
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = sub i64 %145, %148
  store i64 %149, i64* %17, align 8
  %150 = load i64, i64* %17, align 8
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = add i64 %150, %153
  %155 = inttoptr i64 %154 to i8*
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 5
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = sub i64 %158, %161
  %163 = call i32 @memset(i8* %155, i32 0, i64 %162)
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 2
  %166 = load i8*, i8** %165, align 8
  %167 = icmp ne i8* %166, null
  br i1 %167, label %168, label %180

168:                                              ; preds = %144
  %169 = load i64, i64* %17, align 8
  %170 = inttoptr i64 %169 to i8*
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 2
  %173 = load i8*, i8** %172, align 8
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = call i32 @memcpy(i8* %170, i8* %173, i64 %176)
  %178 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 3
  store i32 1, i32* %179, align 8
  br label %180

180:                                              ; preds = %168, %144
  %181 = load i64, i64* %17, align 8
  %182 = load i64*, i64** %13, align 8
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 4
  %185 = load i32, i32* %184, align 4
  %186 = add nsw i32 %185, 1
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i64, i64* %182, i64 %187
  store i64 %181, i64* %188, align 8
  br label %189

189:                                              ; preds = %180, %143
  %190 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %191 = load i32, i32* @next, align 4
  %192 = call %struct.TYPE_5__* @TAILQ_NEXT(%struct.TYPE_5__* %190, i32 %191)
  store %struct.TYPE_5__* %192, %struct.TYPE_5__** %9, align 8
  br label %130

193:                                              ; preds = %130
  br label %194

194:                                              ; preds = %193, %125
  %195 = load i64, i64* %15, align 8
  %196 = inttoptr i64 %195 to i8*
  ret i8* %196
}

declare dso_local i64 @round(i64, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @malloc_aligned(i64, i64) #1

declare dso_local i64* @xcalloc(i64, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @free_tls(i8*, i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local %struct.TYPE_5__* @TAILQ_NEXT(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

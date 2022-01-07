; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_cab.c_lzx_br_fillup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_cab.c_lzx_br_fillup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzx_stream = type { i32, i32* }
%struct.lzx_br = type { i32, i32, i32, i32 }

@CACHE_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lzx_stream*, %struct.lzx_br*)* @lzx_br_fillup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lzx_br_fillup(%struct.lzx_stream* %0, %struct.lzx_br* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lzx_stream*, align 8
  %5 = alloca %struct.lzx_br*, align 8
  %6 = alloca i32, align 4
  store %struct.lzx_stream* %0, %struct.lzx_stream** %4, align 8
  store %struct.lzx_br* %1, %struct.lzx_br** %5, align 8
  %7 = load i32, i32* @CACHE_BITS, align 4
  %8 = load %struct.lzx_br*, %struct.lzx_br** %5, align 8
  %9 = getelementptr inbounds %struct.lzx_br, %struct.lzx_br* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = sub nsw i32 %7, %10
  store i32 %11, i32* %6, align 4
  br label %12

12:                                               ; preds = %183, %2
  %13 = load i32, i32* %6, align 4
  %14 = ashr i32 %13, 4
  switch i32 %14, label %157 [
    i32 4, label %15
    i32 3, label %90
    i32 0, label %156
  ]

15:                                               ; preds = %12
  %16 = load %struct.lzx_stream*, %struct.lzx_stream** %4, align 8
  %17 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp sge i32 %18, 8
  br i1 %19, label %20, label %89

20:                                               ; preds = %15
  %21 = load %struct.lzx_stream*, %struct.lzx_stream** %4, align 8
  %22 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 %25, 56
  %27 = load %struct.lzx_stream*, %struct.lzx_stream** %4, align 8
  %28 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = shl i32 %31, 48
  %33 = or i32 %26, %32
  %34 = load %struct.lzx_stream*, %struct.lzx_stream** %4, align 8
  %35 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 3
  %38 = load i32, i32* %37, align 4
  %39 = shl i32 %38, 40
  %40 = or i32 %33, %39
  %41 = load %struct.lzx_stream*, %struct.lzx_stream** %4, align 8
  %42 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 2
  %45 = load i32, i32* %44, align 4
  %46 = shl i32 %45, 32
  %47 = or i32 %40, %46
  %48 = load %struct.lzx_stream*, %struct.lzx_stream** %4, align 8
  %49 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 5
  %52 = load i32, i32* %51, align 4
  %53 = shl i32 %52, 24
  %54 = or i32 %47, %53
  %55 = load %struct.lzx_stream*, %struct.lzx_stream** %4, align 8
  %56 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 4
  %59 = load i32, i32* %58, align 4
  %60 = shl i32 %59, 16
  %61 = or i32 %54, %60
  %62 = load %struct.lzx_stream*, %struct.lzx_stream** %4, align 8
  %63 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 7
  %66 = load i32, i32* %65, align 4
  %67 = shl i32 %66, 8
  %68 = or i32 %61, %67
  %69 = load %struct.lzx_stream*, %struct.lzx_stream** %4, align 8
  %70 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 6
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %68, %73
  %75 = load %struct.lzx_br*, %struct.lzx_br** %5, align 8
  %76 = getelementptr inbounds %struct.lzx_br, %struct.lzx_br* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load %struct.lzx_stream*, %struct.lzx_stream** %4, align 8
  %78 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 8
  store i32* %80, i32** %78, align 8
  %81 = load %struct.lzx_stream*, %struct.lzx_stream** %4, align 8
  %82 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = sub nsw i32 %83, 8
  store i32 %84, i32* %82, align 8
  %85 = load %struct.lzx_br*, %struct.lzx_br** %5, align 8
  %86 = getelementptr inbounds %struct.lzx_br, %struct.lzx_br* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 64
  store i32 %88, i32* %86, align 4
  store i32 1, i32* %3, align 4
  br label %209

89:                                               ; preds = %15
  br label %158

90:                                               ; preds = %12
  %91 = load %struct.lzx_stream*, %struct.lzx_stream** %4, align 8
  %92 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp sge i32 %93, 6
  br i1 %94, label %95, label %155

95:                                               ; preds = %90
  %96 = load %struct.lzx_br*, %struct.lzx_br** %5, align 8
  %97 = getelementptr inbounds %struct.lzx_br, %struct.lzx_br* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = shl i32 %98, 48
  %100 = load %struct.lzx_stream*, %struct.lzx_stream** %4, align 8
  %101 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 1
  %104 = load i32, i32* %103, align 4
  %105 = shl i32 %104, 40
  %106 = or i32 %99, %105
  %107 = load %struct.lzx_stream*, %struct.lzx_stream** %4, align 8
  %108 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  %111 = load i32, i32* %110, align 4
  %112 = shl i32 %111, 32
  %113 = or i32 %106, %112
  %114 = load %struct.lzx_stream*, %struct.lzx_stream** %4, align 8
  %115 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 3
  %118 = load i32, i32* %117, align 4
  %119 = shl i32 %118, 24
  %120 = or i32 %113, %119
  %121 = load %struct.lzx_stream*, %struct.lzx_stream** %4, align 8
  %122 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 2
  %125 = load i32, i32* %124, align 4
  %126 = shl i32 %125, 16
  %127 = or i32 %120, %126
  %128 = load %struct.lzx_stream*, %struct.lzx_stream** %4, align 8
  %129 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 5
  %132 = load i32, i32* %131, align 4
  %133 = shl i32 %132, 8
  %134 = or i32 %127, %133
  %135 = load %struct.lzx_stream*, %struct.lzx_stream** %4, align 8
  %136 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 4
  %139 = load i32, i32* %138, align 4
  %140 = or i32 %134, %139
  %141 = load %struct.lzx_br*, %struct.lzx_br** %5, align 8
  %142 = getelementptr inbounds %struct.lzx_br, %struct.lzx_br* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 4
  %143 = load %struct.lzx_stream*, %struct.lzx_stream** %4, align 8
  %144 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %143, i32 0, i32 1
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 6
  store i32* %146, i32** %144, align 8
  %147 = load %struct.lzx_stream*, %struct.lzx_stream** %4, align 8
  %148 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = sub nsw i32 %149, 6
  store i32 %150, i32* %148, align 8
  %151 = load %struct.lzx_br*, %struct.lzx_br** %5, align 8
  %152 = getelementptr inbounds %struct.lzx_br, %struct.lzx_br* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = add nsw i32 %153, 48
  store i32 %154, i32* %152, align 4
  store i32 1, i32* %3, align 4
  br label %209

155:                                              ; preds = %90
  br label %158

156:                                              ; preds = %12
  store i32 1, i32* %3, align 4
  br label %209

157:                                              ; preds = %12
  br label %158

158:                                              ; preds = %157, %155, %89
  %159 = load %struct.lzx_stream*, %struct.lzx_stream** %4, align 8
  %160 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = icmp slt i32 %161, 2
  br i1 %162, label %163, label %183

163:                                              ; preds = %158
  %164 = load %struct.lzx_stream*, %struct.lzx_stream** %4, align 8
  %165 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = icmp eq i32 %166, 1
  br i1 %167, label %168, label %182

168:                                              ; preds = %163
  %169 = load %struct.lzx_stream*, %struct.lzx_stream** %4, align 8
  %170 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %169, i32 0, i32 1
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds i32, i32* %171, i32 1
  store i32* %172, i32** %170, align 8
  %173 = load i32, i32* %171, align 4
  %174 = load %struct.lzx_br*, %struct.lzx_br** %5, align 8
  %175 = getelementptr inbounds %struct.lzx_br, %struct.lzx_br* %174, i32 0, i32 3
  store i32 %173, i32* %175, align 4
  %176 = load %struct.lzx_stream*, %struct.lzx_stream** %4, align 8
  %177 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = add nsw i32 %178, -1
  store i32 %179, i32* %177, align 8
  %180 = load %struct.lzx_br*, %struct.lzx_br** %5, align 8
  %181 = getelementptr inbounds %struct.lzx_br, %struct.lzx_br* %180, i32 0, i32 2
  store i32 1, i32* %181, align 4
  br label %182

182:                                              ; preds = %168, %163
  store i32 0, i32* %3, align 4
  br label %209

183:                                              ; preds = %158
  %184 = load %struct.lzx_br*, %struct.lzx_br** %5, align 8
  %185 = getelementptr inbounds %struct.lzx_br, %struct.lzx_br* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = shl i32 %186, 16
  %188 = load %struct.lzx_stream*, %struct.lzx_stream** %4, align 8
  %189 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %188, i32 0, i32 1
  %190 = load i32*, i32** %189, align 8
  %191 = call i32 @archive_le16dec(i32* %190)
  %192 = or i32 %187, %191
  %193 = load %struct.lzx_br*, %struct.lzx_br** %5, align 8
  %194 = getelementptr inbounds %struct.lzx_br, %struct.lzx_br* %193, i32 0, i32 1
  store i32 %192, i32* %194, align 4
  %195 = load %struct.lzx_stream*, %struct.lzx_stream** %4, align 8
  %196 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %195, i32 0, i32 1
  %197 = load i32*, i32** %196, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 2
  store i32* %198, i32** %196, align 8
  %199 = load %struct.lzx_stream*, %struct.lzx_stream** %4, align 8
  %200 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = sub nsw i32 %201, 2
  store i32 %202, i32* %200, align 8
  %203 = load %struct.lzx_br*, %struct.lzx_br** %5, align 8
  %204 = getelementptr inbounds %struct.lzx_br, %struct.lzx_br* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = add nsw i32 %205, 16
  store i32 %206, i32* %204, align 4
  %207 = load i32, i32* %6, align 4
  %208 = sub nsw i32 %207, 16
  store i32 %208, i32* %6, align 4
  br label %12

209:                                              ; preds = %182, %156, %95, %20
  %210 = load i32, i32* %3, align 4
  ret i32 %210
}

declare dso_local i32 @archive_le16dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

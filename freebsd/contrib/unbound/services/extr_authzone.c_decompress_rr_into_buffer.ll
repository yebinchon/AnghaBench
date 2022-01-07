; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_decompress_rr_into_buffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_decompress_rr_into_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sldns_buffer = type { i32 }
%struct.TYPE_3__ = type { i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sldns_buffer*, i32*, i64, i32*, i64, i64, i32, i32*, i64)* @decompress_rr_into_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decompress_rr_into_buffer(%struct.sldns_buffer* %0, i32* %1, i64 %2, i32* %3, i64 %4, i64 %5, i32 %6, i32* %7, i64 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.sldns_buffer*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.sldns_buffer, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32*, align 8
  %25 = alloca %struct.TYPE_3__*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  store %struct.sldns_buffer* %0, %struct.sldns_buffer** %11, align 8
  store i32* %1, i32** %12, align 8
  store i64 %2, i64* %13, align 8
  store i32* %3, i32** %14, align 8
  store i64 %4, i64* %15, align 8
  store i64 %5, i64* %16, align 8
  store i32 %6, i32* %17, align 4
  store i32* %7, i32** %18, align 8
  store i64 %8, i64* %19, align 8
  store i64 0, i64* %21, align 8
  %32 = load i32*, i32** %12, align 8
  %33 = load i64, i64* %13, align 8
  %34 = call i32 @sldns_buffer_init_frm_data(%struct.sldns_buffer* %20, i32* %32, i64 %33)
  %35 = load %struct.sldns_buffer*, %struct.sldns_buffer** %11, align 8
  %36 = call i32 @sldns_buffer_clear(%struct.sldns_buffer* %35)
  %37 = load i32*, i32** %14, align 8
  %38 = call i32* @sldns_buffer_current(%struct.sldns_buffer* %20)
  %39 = ptrtoint i32* %37 to i64
  %40 = ptrtoint i32* %38 to i64
  %41 = sub i64 %39, %40
  %42 = sdiv exact i64 %41, 4
  %43 = call i32 @sldns_buffer_set_position(%struct.sldns_buffer* %20, i64 %42)
  %44 = call i64 @pkt_dname_len(%struct.sldns_buffer* %20)
  store i64 %44, i64* %21, align 8
  %45 = load i64, i64* %21, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %9
  store i32 0, i32* %10, align 4
  br label %219

48:                                               ; preds = %9
  %49 = load %struct.sldns_buffer*, %struct.sldns_buffer** %11, align 8
  %50 = load i64, i64* %21, align 8
  %51 = call i32 @sldns_buffer_available(%struct.sldns_buffer* %49, i64 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %48
  store i32 0, i32* %10, align 4
  br label %219

54:                                               ; preds = %48
  %55 = load %struct.sldns_buffer*, %struct.sldns_buffer** %11, align 8
  %56 = call i32* @sldns_buffer_current(%struct.sldns_buffer* %55)
  %57 = load i32*, i32** %14, align 8
  %58 = call i32 @dname_pkt_copy(%struct.sldns_buffer* %20, i32* %56, i32* %57)
  %59 = load %struct.sldns_buffer*, %struct.sldns_buffer** %11, align 8
  %60 = load i64, i64* %21, align 8
  %61 = trunc i64 %60 to i32
  %62 = call i32 @sldns_buffer_skip(%struct.sldns_buffer* %59, i32 %61)
  %63 = load %struct.sldns_buffer*, %struct.sldns_buffer** %11, align 8
  %64 = call i32 @sldns_buffer_available(%struct.sldns_buffer* %63, i64 10)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %54
  store i32 0, i32* %10, align 4
  br label %219

67:                                               ; preds = %54
  %68 = load %struct.sldns_buffer*, %struct.sldns_buffer** %11, align 8
  %69 = load i64, i64* %15, align 8
  %70 = call i32 @sldns_buffer_write_u16(%struct.sldns_buffer* %68, i64 %69)
  %71 = load %struct.sldns_buffer*, %struct.sldns_buffer** %11, align 8
  %72 = load i64, i64* %16, align 8
  %73 = call i32 @sldns_buffer_write_u16(%struct.sldns_buffer* %71, i64 %72)
  %74 = load %struct.sldns_buffer*, %struct.sldns_buffer** %11, align 8
  %75 = load i32, i32* %17, align 4
  %76 = call i32 @sldns_buffer_write_u32(%struct.sldns_buffer* %74, i32 %75)
  %77 = load %struct.sldns_buffer*, %struct.sldns_buffer** %11, align 8
  %78 = call i64 @sldns_buffer_position(%struct.sldns_buffer* %77)
  store i64 %78, i64* %22, align 8
  %79 = load %struct.sldns_buffer*, %struct.sldns_buffer** %11, align 8
  %80 = call i32 @sldns_buffer_write_u16(%struct.sldns_buffer* %79, i64 0)
  %81 = load i64, i64* %15, align 8
  %82 = call %struct.TYPE_3__* @sldns_rr_descript(i64 %81)
  store %struct.TYPE_3__* %82, %struct.TYPE_3__** %25, align 8
  %83 = load i32*, i32** %18, align 8
  store i32* %83, i32** %24, align 8
  %84 = load i64, i64* %19, align 8
  store i64 %84, i64* %23, align 8
  %85 = load i64, i64* %23, align 8
  %86 = icmp ugt i64 %85, 0
  br i1 %86, label %87, label %194

87:                                               ; preds = %67
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %89 = icmp ne %struct.TYPE_3__* %88, null
  br i1 %89, label %90, label %194

90:                                               ; preds = %87
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp sgt i64 %93, 0
  br i1 %94, label %95, label %194

95:                                               ; preds = %90
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %26, align 4
  store i32 0, i32* %27, align 4
  br label %100

100:                                              ; preds = %190, %95
  %101 = load i64, i64* %23, align 8
  %102 = icmp ugt i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load i32, i32* %26, align 4
  %105 = icmp ne i32 %104, 0
  br label %106

106:                                              ; preds = %103, %100
  %107 = phi i1 [ false, %100 ], [ %105, %103 ]
  br i1 %107, label %108, label %193

108:                                              ; preds = %106
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %27, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  switch i32 %115, label %161 [
    i32 129, label %116
    i32 128, label %155
  ]

116:                                              ; preds = %108
  %117 = load i32*, i32** %24, align 8
  %118 = call i32 @sldns_buffer_begin(%struct.sldns_buffer* %20)
  %119 = sext i32 %118 to i64
  %120 = sub i64 0, %119
  %121 = getelementptr inbounds i32, i32* %117, i64 %120
  %122 = ptrtoint i32* %121 to i64
  %123 = call i32 @sldns_buffer_set_position(%struct.sldns_buffer* %20, i64 %122)
  %124 = call i64 @sldns_buffer_position(%struct.sldns_buffer* %20)
  store i64 %124, i64* %31, align 8
  %125 = call i64 @pkt_dname_len(%struct.sldns_buffer* %20)
  store i64 %125, i64* %29, align 8
  %126 = load i64, i64* %29, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %116
  store i32 0, i32* %10, align 4
  br label %219

129:                                              ; preds = %116
  %130 = load %struct.sldns_buffer*, %struct.sldns_buffer** %11, align 8
  %131 = load i64, i64* %29, align 8
  %132 = call i32 @sldns_buffer_available(%struct.sldns_buffer* %130, i64 %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %129
  store i32 0, i32* %10, align 4
  br label %219

135:                                              ; preds = %129
  %136 = load %struct.sldns_buffer*, %struct.sldns_buffer** %11, align 8
  %137 = call i32* @sldns_buffer_current(%struct.sldns_buffer* %136)
  %138 = load i32*, i32** %24, align 8
  %139 = call i32 @dname_pkt_copy(%struct.sldns_buffer* %20, i32* %137, i32* %138)
  %140 = load %struct.sldns_buffer*, %struct.sldns_buffer** %11, align 8
  %141 = load i64, i64* %29, align 8
  %142 = trunc i64 %141 to i32
  %143 = call i32 @sldns_buffer_skip(%struct.sldns_buffer* %140, i32 %142)
  %144 = call i64 @sldns_buffer_position(%struct.sldns_buffer* %20)
  %145 = load i64, i64* %31, align 8
  %146 = sub i64 %144, %145
  store i64 %146, i64* %30, align 8
  %147 = load i64, i64* %30, align 8
  %148 = load i32*, i32** %24, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 %147
  store i32* %149, i32** %24, align 8
  %150 = load i64, i64* %30, align 8
  %151 = load i64, i64* %23, align 8
  %152 = sub i64 %151, %150
  store i64 %152, i64* %23, align 8
  %153 = load i32, i32* %26, align 4
  %154 = add nsw i32 %153, -1
  store i32 %154, i32* %26, align 4
  store i64 0, i64* %28, align 8
  br label %170

155:                                              ; preds = %108
  %156 = load i32*, i32** %24, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 0
  %158 = load i32, i32* %157, align 4
  %159 = add nsw i32 %158, 1
  %160 = sext i32 %159 to i64
  store i64 %160, i64* %28, align 8
  br label %170

161:                                              ; preds = %108
  %162 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 1
  %164 = load i32*, i32** %163, align 8
  %165 = load i32, i32* %27, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = call i64 @get_rdf_size(i32 %168)
  store i64 %169, i64* %28, align 8
  br label %170

170:                                              ; preds = %161, %155, %135
  %171 = load i64, i64* %28, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %190

173:                                              ; preds = %170
  %174 = load %struct.sldns_buffer*, %struct.sldns_buffer** %11, align 8
  %175 = load i64, i64* %28, align 8
  %176 = call i32 @sldns_buffer_available(%struct.sldns_buffer* %174, i64 %175)
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %179, label %178

178:                                              ; preds = %173
  store i32 0, i32* %10, align 4
  br label %219

179:                                              ; preds = %173
  %180 = load %struct.sldns_buffer*, %struct.sldns_buffer** %11, align 8
  %181 = load i32*, i32** %24, align 8
  %182 = load i64, i64* %28, align 8
  %183 = call i32 @sldns_buffer_write(%struct.sldns_buffer* %180, i32* %181, i64 %182)
  %184 = load i64, i64* %28, align 8
  %185 = load i32*, i32** %24, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 %184
  store i32* %186, i32** %24, align 8
  %187 = load i64, i64* %28, align 8
  %188 = load i64, i64* %23, align 8
  %189 = sub i64 %188, %187
  store i64 %189, i64* %23, align 8
  br label %190

190:                                              ; preds = %179, %170
  %191 = load i32, i32* %27, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %27, align 4
  br label %100

193:                                              ; preds = %106
  br label %194

194:                                              ; preds = %193, %90, %87, %67
  %195 = load i64, i64* %23, align 8
  %196 = icmp ugt i64 %195, 0
  br i1 %196, label %197, label %208

197:                                              ; preds = %194
  %198 = load %struct.sldns_buffer*, %struct.sldns_buffer** %11, align 8
  %199 = load i64, i64* %23, align 8
  %200 = call i32 @sldns_buffer_available(%struct.sldns_buffer* %198, i64 %199)
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %203, label %202

202:                                              ; preds = %197
  store i32 0, i32* %10, align 4
  br label %219

203:                                              ; preds = %197
  %204 = load %struct.sldns_buffer*, %struct.sldns_buffer** %11, align 8
  %205 = load i32*, i32** %24, align 8
  %206 = load i64, i64* %23, align 8
  %207 = call i32 @sldns_buffer_write(%struct.sldns_buffer* %204, i32* %205, i64 %206)
  br label %208

208:                                              ; preds = %203, %194
  %209 = load %struct.sldns_buffer*, %struct.sldns_buffer** %11, align 8
  %210 = load i64, i64* %22, align 8
  %211 = load %struct.sldns_buffer*, %struct.sldns_buffer** %11, align 8
  %212 = call i64 @sldns_buffer_position(%struct.sldns_buffer* %211)
  %213 = load i64, i64* %22, align 8
  %214 = sub i64 %212, %213
  %215 = sub i64 %214, 2
  %216 = call i32 @sldns_buffer_write_u16_at(%struct.sldns_buffer* %209, i64 %210, i64 %215)
  %217 = load %struct.sldns_buffer*, %struct.sldns_buffer** %11, align 8
  %218 = call i32 @sldns_buffer_flip(%struct.sldns_buffer* %217)
  store i32 1, i32* %10, align 4
  br label %219

219:                                              ; preds = %208, %202, %178, %134, %128, %66, %53, %47
  %220 = load i32, i32* %10, align 4
  ret i32 %220
}

declare dso_local i32 @sldns_buffer_init_frm_data(%struct.sldns_buffer*, i32*, i64) #1

declare dso_local i32 @sldns_buffer_clear(%struct.sldns_buffer*) #1

declare dso_local i32 @sldns_buffer_set_position(%struct.sldns_buffer*, i64) #1

declare dso_local i32* @sldns_buffer_current(%struct.sldns_buffer*) #1

declare dso_local i64 @pkt_dname_len(%struct.sldns_buffer*) #1

declare dso_local i32 @sldns_buffer_available(%struct.sldns_buffer*, i64) #1

declare dso_local i32 @dname_pkt_copy(%struct.sldns_buffer*, i32*, i32*) #1

declare dso_local i32 @sldns_buffer_skip(%struct.sldns_buffer*, i32) #1

declare dso_local i32 @sldns_buffer_write_u16(%struct.sldns_buffer*, i64) #1

declare dso_local i32 @sldns_buffer_write_u32(%struct.sldns_buffer*, i32) #1

declare dso_local i64 @sldns_buffer_position(%struct.sldns_buffer*) #1

declare dso_local %struct.TYPE_3__* @sldns_rr_descript(i64) #1

declare dso_local i32 @sldns_buffer_begin(%struct.sldns_buffer*) #1

declare dso_local i64 @get_rdf_size(i32) #1

declare dso_local i32 @sldns_buffer_write(%struct.sldns_buffer*, i32*, i64) #1

declare dso_local i32 @sldns_buffer_write_u16_at(%struct.sldns_buffer*, i64, i64) #1

declare dso_local i32 @sldns_buffer_flip(%struct.sldns_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

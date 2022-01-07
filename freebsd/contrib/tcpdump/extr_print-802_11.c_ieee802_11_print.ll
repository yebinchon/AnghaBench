; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-802_11.c_ieee802_11_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-802_11.c_ieee802_11_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i64, i64, i32 }
%struct.lladdr_info = type { i32, i8* }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@tstr = common dso_local global i32 0, align 4
@IEEE802_11_FC_LEN = common dso_local global i64 0, align 8
@etheraddr_string = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"Data\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_10__*, i32*, i64, i64, i32, i64)* @ieee802_11_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ieee802_11_print(%struct.TYPE_10__* %0, i32* %1, i64 %2, i64 %3, i32 %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.lladdr_info, align 8
  %19 = alloca %struct.lladdr_info, align 8
  %20 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %21 = load i64, i64* %11, align 8
  store i64 %21, i64* %15, align 8
  %22 = load i64, i64* %10, align 8
  %23 = load i64, i64* %13, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %6
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %27 = load i32, i32* @tstr, align 4
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to %struct.TYPE_10__*
  %30 = call i32 @ND_PRINT(%struct.TYPE_10__* %29)
  %31 = load i64, i64* %15, align 8
  store i64 %31, i64* %7, align 8
  br label %245

32:                                               ; preds = %6
  %33 = load i64, i64* %13, align 8
  %34 = load i64, i64* %10, align 8
  %35 = sub nsw i64 %34, %33
  store i64 %35, i64* %10, align 8
  %36 = load i64, i64* %15, align 8
  %37 = load i64, i64* %10, align 8
  %38 = icmp sgt i64 %36, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %32
  %40 = load i64, i64* %15, align 8
  %41 = load i64, i64* %10, align 8
  %42 = sub nsw i64 %40, %41
  store i64 %42, i64* %13, align 8
  %43 = load i64, i64* %13, align 8
  %44 = load i64, i64* %15, align 8
  %45 = sub nsw i64 %44, %43
  store i64 %45, i64* %15, align 8
  %46 = load i64, i64* %13, align 8
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = sub nsw i64 %50, %46
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %48, align 8
  br label %53

53:                                               ; preds = %39, %32
  %54 = load i64, i64* %15, align 8
  %55 = load i64, i64* @IEEE802_11_FC_LEN, align 8
  %56 = icmp slt i64 %54, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %53
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %59 = load i32, i32* @tstr, align 4
  %60 = sext i32 %59 to i64
  %61 = inttoptr i64 %60 to %struct.TYPE_10__*
  %62 = call i32 @ND_PRINT(%struct.TYPE_10__* %61)
  %63 = load i64, i64* %11, align 8
  store i64 %63, i64* %7, align 8
  br label %245

64:                                               ; preds = %53
  %65 = load i32*, i32** %9, align 8
  %66 = call i32 @EXTRACT_LE_16BITS(i32* %65)
  store i32 %66, i32* %14, align 4
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %68 = load i32, i32* %14, align 4
  %69 = call i64 @extract_header_length(%struct.TYPE_10__* %67, i32 %68)
  store i64 %69, i64* %16, align 8
  %70 = load i64, i64* %16, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  store i64 0, i64* %7, align 8
  br label %245

73:                                               ; preds = %64
  %74 = load i32, i32* %12, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load i64, i64* %16, align 8
  %78 = call i64 @roundup2(i64 %77, i32 4)
  store i64 %78, i64* %16, align 8
  br label %79

79:                                               ; preds = %76, %73
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %101

84:                                               ; preds = %79
  %85 = load i32, i32* %14, align 4
  %86 = call i32 @FC_TYPE(i32 %85)
  %87 = icmp eq i32 %86, 129
  br i1 %87, label %88, label %101

88:                                               ; preds = %84
  %89 = load i32, i32* %14, align 4
  %90 = call i32 @FC_SUBTYPE(i32 %89)
  %91 = call i64 @DATA_FRAME_IS_QOS(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %88
  %94 = load i32*, i32** %9, align 8
  %95 = load i64, i64* %16, align 8
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  %97 = call i64 @extract_mesh_header_length(i32* %96)
  store i64 %97, i64* %17, align 8
  %98 = load i64, i64* %17, align 8
  %99 = load i64, i64* %16, align 8
  %100 = add nsw i64 %99, %98
  store i64 %100, i64* %16, align 8
  br label %102

101:                                              ; preds = %88, %84, %79
  store i64 0, i64* %17, align 8
  br label %102

102:                                              ; preds = %101, %93
  %103 = load i64, i64* %15, align 8
  %104 = load i64, i64* %16, align 8
  %105 = icmp slt i64 %103, %104
  br i1 %105, label %106, label %113

106:                                              ; preds = %102
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %108 = load i32, i32* @tstr, align 4
  %109 = sext i32 %108 to i64
  %110 = inttoptr i64 %109 to %struct.TYPE_10__*
  %111 = call i32 @ND_PRINT(%struct.TYPE_10__* %110)
  %112 = load i64, i64* %16, align 8
  store i64 %112, i64* %7, align 8
  br label %245

113:                                              ; preds = %102
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %113
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %120 = load i32, i32* %14, align 4
  %121 = load i32*, i32** %9, align 8
  %122 = load i64, i64* %16, align 8
  %123 = load i64, i64* %17, align 8
  %124 = call i32 @ieee_802_11_hdr_print(%struct.TYPE_10__* %119, i32 %120, i32* %121, i64 %122, i64 %123)
  br label %125

125:                                              ; preds = %118, %113
  %126 = load i64, i64* %16, align 8
  %127 = load i64, i64* %10, align 8
  %128 = sub nsw i64 %127, %126
  store i64 %128, i64* %10, align 8
  %129 = load i64, i64* %16, align 8
  %130 = load i64, i64* %15, align 8
  %131 = sub nsw i64 %130, %129
  store i64 %131, i64* %15, align 8
  %132 = load i64, i64* %16, align 8
  %133 = load i32*, i32** %9, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 %132
  store i32* %134, i32** %9, align 8
  %135 = load i8*, i8** @etheraddr_string, align 8
  %136 = getelementptr inbounds %struct.lladdr_info, %struct.lladdr_info* %18, i32 0, i32 1
  store i8* %135, i8** %136, align 8
  %137 = load i8*, i8** @etheraddr_string, align 8
  %138 = getelementptr inbounds %struct.lladdr_info, %struct.lladdr_info* %19, i32 0, i32 1
  store i8* %137, i8** %138, align 8
  %139 = load i32, i32* %14, align 4
  %140 = call i32 @FC_TYPE(i32 %139)
  switch i32 %140, label %242 [
    i32 128, label %141
    i32 130, label %165
    i32 129, label %182
  ]

141:                                              ; preds = %125
  %142 = load i32*, i32** %9, align 8
  %143 = load i64, i64* %16, align 8
  %144 = sub i64 0, %143
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = getelementptr inbounds %struct.lladdr_info, %struct.lladdr_info* %18, i32 0, i32 0
  %147 = getelementptr inbounds %struct.lladdr_info, %struct.lladdr_info* %19, i32 0, i32 0
  %148 = call i32 @get_mgmt_src_dst_mac(i32* %145, i32* %146, i32* %147)
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %150 = load i32, i32* %14, align 4
  %151 = getelementptr inbounds %struct.lladdr_info, %struct.lladdr_info* %18, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i32*, i32** %9, align 8
  %154 = load i64, i64* %10, align 8
  %155 = call i32 @mgmt_body_print(%struct.TYPE_10__* %149, i32 %150, i32 %152, i32* %153, i64 %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %164, label %157

157:                                              ; preds = %141
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %159 = load i32, i32* @tstr, align 4
  %160 = sext i32 %159 to i64
  %161 = inttoptr i64 %160 to %struct.TYPE_10__*
  %162 = call i32 @ND_PRINT(%struct.TYPE_10__* %161)
  %163 = load i64, i64* %16, align 8
  store i64 %163, i64* %7, align 8
  br label %245

164:                                              ; preds = %141
  br label %243

165:                                              ; preds = %125
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %167 = load i32, i32* %14, align 4
  %168 = load i32*, i32** %9, align 8
  %169 = load i64, i64* %16, align 8
  %170 = sub i64 0, %169
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = call i32 @ctrl_body_print(%struct.TYPE_10__* %166, i32 %167, i32* %171)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %181, label %174

174:                                              ; preds = %165
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %176 = load i32, i32* @tstr, align 4
  %177 = sext i32 %176 to i64
  %178 = inttoptr i64 %177 to %struct.TYPE_10__*
  %179 = call i32 @ND_PRINT(%struct.TYPE_10__* %178)
  %180 = load i64, i64* %16, align 8
  store i64 %180, i64* %7, align 8
  br label %245

181:                                              ; preds = %165
  br label %243

182:                                              ; preds = %125
  %183 = load i32, i32* %14, align 4
  %184 = call i32 @FC_SUBTYPE(i32 %183)
  %185 = call i32 @DATA_FRAME_IS_NULL(i32 %184)
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %182
  %188 = load i64, i64* %16, align 8
  store i64 %188, i64* %7, align 8
  br label %245

189:                                              ; preds = %182
  %190 = load i32, i32* %14, align 4
  %191 = call i32 @FC_PROTECTED(i32 %190)
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %208

193:                                              ; preds = %189
  %194 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %195 = call i32 @ND_PRINT(%struct.TYPE_10__* bitcast ([5 x i8]* @.str.1 to %struct.TYPE_10__*))
  %196 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %197 = load i32*, i32** %9, align 8
  %198 = call i32 @wep_print(%struct.TYPE_10__* %196, i32* %197)
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %207, label %200

200:                                              ; preds = %193
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %202 = load i32, i32* @tstr, align 4
  %203 = sext i32 %202 to i64
  %204 = inttoptr i64 %203 to %struct.TYPE_10__*
  %205 = call i32 @ND_PRINT(%struct.TYPE_10__* %204)
  %206 = load i64, i64* %16, align 8
  store i64 %206, i64* %7, align 8
  br label %245

207:                                              ; preds = %193
  br label %241

208:                                              ; preds = %189
  %209 = load i32, i32* %14, align 4
  %210 = load i32*, i32** %9, align 8
  %211 = load i64, i64* %16, align 8
  %212 = sub i64 0, %211
  %213 = getelementptr inbounds i32, i32* %210, i64 %212
  %214 = getelementptr inbounds %struct.lladdr_info, %struct.lladdr_info* %18, i32 0, i32 0
  %215 = getelementptr inbounds %struct.lladdr_info, %struct.lladdr_info* %19, i32 0, i32 0
  %216 = call i32 @get_data_src_dst_mac(i32 %209, i32* %213, i32* %214, i32* %215)
  %217 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %218 = load i32*, i32** %9, align 8
  %219 = load i64, i64* %10, align 8
  %220 = load i64, i64* %15, align 8
  %221 = call i32 @llc_print(%struct.TYPE_10__* %217, i32* %218, i64 %219, i64 %220, %struct.lladdr_info* %18, %struct.lladdr_info* %19)
  store i32 %221, i32* %20, align 4
  %222 = load i32, i32* %20, align 4
  %223 = icmp slt i32 %222, 0
  br i1 %223, label %224, label %236

224:                                              ; preds = %208
  %225 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %226 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %233, label %229

229:                                              ; preds = %224
  %230 = load i32*, i32** %9, align 8
  %231 = load i64, i64* %15, align 8
  %232 = call i32 @ND_DEFAULTPRINT(i32* %230, i64 %231)
  br label %233

233:                                              ; preds = %229, %224
  %234 = load i32, i32* %20, align 4
  %235 = sub nsw i32 0, %234
  store i32 %235, i32* %20, align 4
  br label %236

236:                                              ; preds = %233, %208
  %237 = load i32, i32* %20, align 4
  %238 = sext i32 %237 to i64
  %239 = load i64, i64* %16, align 8
  %240 = add nsw i64 %239, %238
  store i64 %240, i64* %16, align 8
  br label %241

241:                                              ; preds = %236, %207
  br label %243

242:                                              ; preds = %125
  br label %243

243:                                              ; preds = %242, %241, %181, %164
  %244 = load i64, i64* %16, align 8
  store i64 %244, i64* %7, align 8
  br label %245

245:                                              ; preds = %243, %200, %187, %174, %157, %106, %72, %57, %25
  %246 = load i64, i64* %7, align 8
  ret i64 %246
}

declare dso_local i32 @ND_PRINT(%struct.TYPE_10__*) #1

declare dso_local i32 @EXTRACT_LE_16BITS(i32*) #1

declare dso_local i64 @extract_header_length(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @roundup2(i64, i32) #1

declare dso_local i32 @FC_TYPE(i32) #1

declare dso_local i64 @DATA_FRAME_IS_QOS(i32) #1

declare dso_local i32 @FC_SUBTYPE(i32) #1

declare dso_local i64 @extract_mesh_header_length(i32*) #1

declare dso_local i32 @ieee_802_11_hdr_print(%struct.TYPE_10__*, i32, i32*, i64, i64) #1

declare dso_local i32 @get_mgmt_src_dst_mac(i32*, i32*, i32*) #1

declare dso_local i32 @mgmt_body_print(%struct.TYPE_10__*, i32, i32, i32*, i64) #1

declare dso_local i32 @ctrl_body_print(%struct.TYPE_10__*, i32, i32*) #1

declare dso_local i32 @DATA_FRAME_IS_NULL(i32) #1

declare dso_local i32 @FC_PROTECTED(i32) #1

declare dso_local i32 @wep_print(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @get_data_src_dst_mac(i32, i32*, i32*, i32*) #1

declare dso_local i32 @llc_print(%struct.TYPE_10__*, i32*, i64, i64, %struct.lladdr_info*, %struct.lladdr_info*) #1

declare dso_local i32 @ND_DEFAULTPRINT(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

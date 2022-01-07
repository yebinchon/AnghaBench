; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius.c_radius_msg_get_tunnel_password.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius.c_radius_msg_get_tunnel_password.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radius_msg = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64* }
%struct.radius_attr_hdr = type { i64, i32 }

@RADIUS_ATTR_TUNNEL_PASSWORD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @radius_msg_get_tunnel_password(%struct.radius_msg* %0, i32* %1, i64* %2, i64 %3, %struct.radius_msg* %4, i64 %5) #0 {
  %7 = alloca %struct.radius_msg*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.radius_msg*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca [3 x i64*], align 16
  %18 = alloca [3 x i64], align 16
  %19 = alloca [16 x i64], align 16
  %20 = alloca i64*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.radius_attr_hdr*, align 8
  %24 = alloca i64*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i8*, align 8
  store %struct.radius_msg* %0, %struct.radius_msg** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64* %2, i64** %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.radius_msg* %4, %struct.radius_msg** %11, align 8
  store i64 %5, i64* %12, align 8
  store i64* null, i64** %13, align 8
  store i64 0, i64* %22, align 8
  store i64* null, i64** %26, align 8
  store i64 -1, i64* %27, align 8
  store i8* null, i8** %28, align 8
  store i64 0, i64* %21, align 8
  br label %29

29:                                               ; preds = %80, %6
  %30 = load i64, i64* %21, align 8
  %31 = load %struct.radius_msg*, %struct.radius_msg** %7, align 8
  %32 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ult i64 %30, %33
  br i1 %34, label %35, label %83

35:                                               ; preds = %29
  %36 = load %struct.radius_msg*, %struct.radius_msg** %7, align 8
  %37 = load i64, i64* %21, align 8
  %38 = call %struct.radius_attr_hdr* @radius_get_attr_hdr(%struct.radius_msg* %36, i64 %37)
  store %struct.radius_attr_hdr* %38, %struct.radius_attr_hdr** %23, align 8
  %39 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %23, align 8
  %40 = icmp eq %struct.radius_attr_hdr* %39, null
  br i1 %40, label %47, label %41

41:                                               ; preds = %35
  %42 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %23, align 8
  %43 = getelementptr inbounds %struct.radius_attr_hdr, %struct.radius_attr_hdr* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @RADIUS_ATTR_TUNNEL_PASSWORD, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %41, %35
  br label %80

48:                                               ; preds = %41
  %49 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %23, align 8
  %50 = getelementptr inbounds %struct.radius_attr_hdr, %struct.radius_attr_hdr* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = icmp sle i32 %51, 5
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %80

54:                                               ; preds = %48
  %55 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %23, align 8
  %56 = getelementptr inbounds %struct.radius_attr_hdr, %struct.radius_attr_hdr* %55, i64 1
  %57 = bitcast %struct.radius_attr_hdr* %56 to i64*
  store i64* %57, i64** %24, align 8
  %58 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %23, align 8
  %59 = getelementptr inbounds %struct.radius_attr_hdr, %struct.radius_attr_hdr* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = sub i64 %61, 16
  store i64 %62, i64* %25, align 8
  %63 = load i64, i64* %25, align 8
  %64 = icmp ule i64 %63, 3
  br i1 %64, label %69, label %65

65:                                               ; preds = %54
  %66 = load i64, i64* %25, align 8
  %67 = urem i64 %66, 16
  %68 = icmp ne i64 %67, 3
  br i1 %68, label %69, label %70

69:                                               ; preds = %65, %54
  br label %80

70:                                               ; preds = %65
  %71 = load i64, i64* %22, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %22, align 8
  %73 = load i64, i64* %22, align 8
  %74 = load i64, i64* %12, align 8
  %75 = icmp ule i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  br label %80

77:                                               ; preds = %70
  %78 = load i64*, i64** %24, align 8
  store i64* %78, i64** %26, align 8
  %79 = load i64, i64* %25, align 8
  store i64 %79, i64* %27, align 8
  br label %83

80:                                               ; preds = %76, %69, %53, %47
  %81 = load i64, i64* %21, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %21, align 8
  br label %29

83:                                               ; preds = %77, %29
  %84 = load i64*, i64** %26, align 8
  %85 = icmp eq i64* %84, null
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  br label %215

87:                                               ; preds = %83
  %88 = load i64*, i64** %26, align 8
  %89 = load i64, i64* %27, align 8
  %90 = call i64* @os_memdup(i64* %88, i64 %89)
  store i64* %90, i64** %13, align 8
  %91 = load i64*, i64** %13, align 8
  %92 = icmp eq i64* %91, null
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  br label %215

94:                                               ; preds = %87
  %95 = load i64, i64* %27, align 8
  store i64 %95, i64* %14, align 8
  %96 = load i64*, i64** %13, align 8
  %97 = getelementptr inbounds i64, i64* %96, i64 1
  store i64* %97, i64** %15, align 8
  %98 = load i64*, i64** %13, align 8
  %99 = getelementptr inbounds i64, i64* %98, i64 3
  store i64* %99, i64** %16, align 8
  %100 = load i64*, i64** %13, align 8
  %101 = load i64, i64* %14, align 8
  %102 = getelementptr inbounds i64, i64* %100, i64 %101
  %103 = getelementptr inbounds i64, i64* %102, i64 -16
  store i64* %103, i64** %20, align 8
  br label %104

104:                                              ; preds = %137, %94
  %105 = load i64*, i64** %20, align 8
  %106 = load i64*, i64** %16, align 8
  %107 = getelementptr inbounds i64, i64* %106, i64 16
  %108 = icmp uge i64* %105, %107
  br i1 %108, label %109, label %140

109:                                              ; preds = %104
  %110 = load i64*, i64** %9, align 8
  %111 = getelementptr inbounds [3 x i64*], [3 x i64*]* %17, i64 0, i64 0
  store i64* %110, i64** %111, align 16
  %112 = load i64, i64* %10, align 8
  %113 = getelementptr inbounds [3 x i64], [3 x i64]* %18, i64 0, i64 0
  store i64 %112, i64* %113, align 16
  %114 = load i64*, i64** %20, align 8
  %115 = getelementptr inbounds i64, i64* %114, i64 -16
  %116 = getelementptr inbounds [3 x i64*], [3 x i64*]* %17, i64 0, i64 1
  store i64* %115, i64** %116, align 8
  %117 = getelementptr inbounds [3 x i64], [3 x i64]* %18, i64 0, i64 1
  store i64 16, i64* %117, align 8
  %118 = getelementptr inbounds [3 x i64*], [3 x i64*]* %17, i64 0, i64 0
  %119 = getelementptr inbounds [3 x i64], [3 x i64]* %18, i64 0, i64 0
  %120 = getelementptr inbounds [16 x i64], [16 x i64]* %19, i64 0, i64 0
  %121 = call i32 @md5_vector(i32 2, i64** %118, i64* %119, i64* %120)
  store i64 0, i64* %21, align 8
  br label %122

122:                                              ; preds = %134, %109
  %123 = load i64, i64* %21, align 8
  %124 = icmp ult i64 %123, 16
  br i1 %124, label %125, label %137

125:                                              ; preds = %122
  %126 = load i64, i64* %21, align 8
  %127 = getelementptr inbounds [16 x i64], [16 x i64]* %19, i64 0, i64 %126
  %128 = load i64, i64* %127, align 8
  %129 = load i64*, i64** %20, align 8
  %130 = load i64, i64* %21, align 8
  %131 = getelementptr inbounds i64, i64* %129, i64 %130
  %132 = load i64, i64* %131, align 8
  %133 = xor i64 %132, %128
  store i64 %133, i64* %131, align 8
  br label %134

134:                                              ; preds = %125
  %135 = load i64, i64* %21, align 8
  %136 = add i64 %135, 1
  store i64 %136, i64* %21, align 8
  br label %122

137:                                              ; preds = %122
  %138 = load i64*, i64** %20, align 8
  %139 = getelementptr inbounds i64, i64* %138, i64 -16
  store i64* %139, i64** %20, align 8
  br label %104

140:                                              ; preds = %104
  %141 = load i64*, i64** %16, align 8
  %142 = load i64*, i64** %20, align 8
  %143 = icmp ne i64* %141, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %140
  br label %215

145:                                              ; preds = %140
  %146 = load i64*, i64** %9, align 8
  %147 = getelementptr inbounds [3 x i64*], [3 x i64*]* %17, i64 0, i64 0
  store i64* %146, i64** %147, align 16
  %148 = load i64, i64* %10, align 8
  %149 = getelementptr inbounds [3 x i64], [3 x i64]* %18, i64 0, i64 0
  store i64 %148, i64* %149, align 16
  %150 = load %struct.radius_msg*, %struct.radius_msg** %11, align 8
  %151 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %150, i32 0, i32 1
  %152 = load %struct.TYPE_2__*, %struct.TYPE_2__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 0
  %154 = load i64*, i64** %153, align 8
  %155 = getelementptr inbounds [3 x i64*], [3 x i64*]* %17, i64 0, i64 1
  store i64* %154, i64** %155, align 8
  %156 = getelementptr inbounds [3 x i64], [3 x i64]* %18, i64 0, i64 1
  store i64 16, i64* %156, align 8
  %157 = load i64*, i64** %15, align 8
  %158 = getelementptr inbounds [3 x i64*], [3 x i64*]* %17, i64 0, i64 2
  store i64* %157, i64** %158, align 16
  %159 = getelementptr inbounds [3 x i64], [3 x i64]* %18, i64 0, i64 2
  store i64 2, i64* %159, align 16
  %160 = getelementptr inbounds [3 x i64*], [3 x i64*]* %17, i64 0, i64 0
  %161 = getelementptr inbounds [3 x i64], [3 x i64]* %18, i64 0, i64 0
  %162 = getelementptr inbounds [16 x i64], [16 x i64]* %19, i64 0, i64 0
  %163 = call i32 @md5_vector(i32 3, i64** %160, i64* %161, i64* %162)
  store i64 0, i64* %21, align 8
  br label %164

164:                                              ; preds = %176, %145
  %165 = load i64, i64* %21, align 8
  %166 = icmp ult i64 %165, 16
  br i1 %166, label %167, label %179

167:                                              ; preds = %164
  %168 = load i64, i64* %21, align 8
  %169 = getelementptr inbounds [16 x i64], [16 x i64]* %19, i64 0, i64 %168
  %170 = load i64, i64* %169, align 8
  %171 = load i64*, i64** %20, align 8
  %172 = load i64, i64* %21, align 8
  %173 = getelementptr inbounds i64, i64* %171, i64 %172
  %174 = load i64, i64* %173, align 8
  %175 = xor i64 %174, %170
  store i64 %175, i64* %173, align 8
  br label %176

176:                                              ; preds = %167
  %177 = load i64, i64* %21, align 8
  %178 = add i64 %177, 1
  store i64 %178, i64* %21, align 8
  br label %164

179:                                              ; preds = %164
  %180 = load i64*, i64** %16, align 8
  %181 = getelementptr inbounds i64, i64* %180, i64 0
  %182 = load i64, i64* %181, align 8
  %183 = trunc i64 %182 to i8
  %184 = zext i8 %183 to i32
  %185 = load i32*, i32** %8, align 8
  store i32 %184, i32* %185, align 4
  %186 = load i64*, i64** %16, align 8
  %187 = load i32*, i32** %8, align 8
  %188 = load i32, i32* %187, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i64, i64* %186, i64 %189
  %191 = load i64*, i64** %13, align 8
  %192 = load i64, i64* %14, align 8
  %193 = getelementptr inbounds i64, i64* %191, i64 %192
  %194 = icmp uge i64* %190, %193
  br i1 %194, label %195, label %196

195:                                              ; preds = %179
  br label %215

196:                                              ; preds = %179
  %197 = load i32*, i32** %8, align 8
  %198 = load i32, i32* %197, align 4
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %196
  br label %215

201:                                              ; preds = %196
  %202 = load i32*, i32** %8, align 8
  %203 = load i32, i32* %202, align 4
  %204 = call i8* @os_malloc(i32 %203)
  store i8* %204, i8** %28, align 8
  %205 = load i8*, i8** %28, align 8
  %206 = icmp ne i8* %205, null
  br i1 %206, label %207, label %214

207:                                              ; preds = %201
  %208 = load i8*, i8** %28, align 8
  %209 = load i64*, i64** %16, align 8
  %210 = getelementptr inbounds i64, i64* %209, i64 1
  %211 = load i32*, i32** %8, align 8
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @os_memcpy(i8* %208, i64* %210, i32 %212)
  br label %214

214:                                              ; preds = %207, %201
  br label %215

215:                                              ; preds = %214, %200, %195, %144, %93, %86
  %216 = load i64*, i64** %13, align 8
  %217 = call i32 @os_free(i64* %216)
  %218 = load i8*, i8** %28, align 8
  ret i8* %218
}

declare dso_local %struct.radius_attr_hdr* @radius_get_attr_hdr(%struct.radius_msg*, i64) #1

declare dso_local i64* @os_memdup(i64*, i64) #1

declare dso_local i32 @md5_vector(i32, i64**, i64*, i64*) #1

declare dso_local i8* @os_malloc(i32) #1

declare dso_local i32 @os_memcpy(i8*, i64*, i32) #1

declare dso_local i32 @os_free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

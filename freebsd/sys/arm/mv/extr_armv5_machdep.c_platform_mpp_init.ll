; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_armv5_machdep.c_platform_mpp_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_armv5_machdep.c_platform_mpp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MPP_PIN_MAX = common dso_local global i32 0, align 4
@MPP_PIN_CELLS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"mpp\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"mrvl,mpp\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"simple-bus\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@fdt_immr_va = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [10 x i8] c"pin-count\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c"#pin-cells\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"pin-map\00", align 1
@MPP_PINS_PER_REG = common dso_local global i32 0, align 4
@fdtbus_bs_tag = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @platform_mpp_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @platform_mpp_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [4 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = load i32, i32* @MPP_PIN_MAX, align 4
  %27 = load i32, i32* @MPP_PIN_CELLS, align 4
  %28 = mul nsw i32 %26, %27
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %2, align 8
  %31 = alloca i32, i64 %29, align 16
  store i64 %29, i64* %3, align 8
  %32 = load i32, i32* @MPP_PIN_MAX, align 4
  %33 = zext i32 %32 to i64
  %34 = alloca i32, i64 %33, align 16
  store i64 %33, i64* %4, align 8
  %35 = call i32 @OF_finddevice(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %35, i32* %10, align 4
  %36 = icmp ne i32 %35, -1
  br i1 %36, label %37, label %43

37:                                               ; preds = %0
  %38 = load i32, i32* %10, align 4
  %39 = call i64 @ofw_bus_node_is_compatible(i32 %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %60

42:                                               ; preds = %37
  br label %43

43:                                               ; preds = %42, %0
  %44 = call i32 @OF_finddevice(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 %44, i32* %10, align 4
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i32, i32* @ENXIO, align 4
  store i32 %47, i32* %1, align 4
  store i32 1, i32* %25, align 4
  br label %225

48:                                               ; preds = %43
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @fdt_find_compatible(i32 %49, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 0)
  store i32 %50, i32* %10, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i32, i32* @ENXIO, align 4
  store i32 %53, i32* %1, align 4
  store i32 1, i32* %25, align 4
  br label %225

54:                                               ; preds = %48
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @fdt_find_compatible(i32 %55, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store i32 %56, i32* %10, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i32 0, i32* %1, align 4
  store i32 1, i32* %25, align 4
  br label %225

59:                                               ; preds = %54
  br label %60

60:                                               ; preds = %59, %41
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @OF_parent(i32 %61)
  %63 = call i32 @fdt_addrsize_cells(i32 %62, i32* %15, i32* %16)
  store i32 %63, i32* %19, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = load i32, i32* @ENXIO, align 4
  store i32 %66, i32* %1, align 4
  store i32 1, i32* %25, align 4
  br label %225

67:                                               ; preds = %60
  %68 = load i32, i32* %15, align 4
  %69 = load i32, i32* %16, align 4
  %70 = add nsw i32 %68, %69
  %71 = sext i32 %70 to i64
  %72 = mul i64 4, %71
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %17, align 4
  %74 = load i32, i32* %10, align 4
  %75 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %76 = call i32 @OF_getprop(i32 %74, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32* %75, i32 16)
  store i32 %76, i32* %14, align 4
  %77 = load i32, i32* %14, align 4
  %78 = load i32, i32* %17, align 4
  %79 = sdiv i32 %77, %78
  store i32 %79, i32* %18, align 4
  %80 = load i32, i32* %17, align 4
  %81 = icmp sle i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %67
  %83 = load i32, i32* @EINVAL, align 4
  store i32 %83, i32* %1, align 4
  store i32 1, i32* %25, align 4
  br label %225

84:                                               ; preds = %67
  %85 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %86 = load i32, i32* %15, align 4
  %87 = load i32, i32* %16, align 4
  %88 = call i32 @fdt_data_to_res(i32* %85, i32 %86, i32 %87, i32* %8, i32* %9)
  store i32 %88, i32* %19, align 4
  %89 = load i32, i32* %19, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %84
  %92 = load i32, i32* %19, align 4
  store i32 %92, i32* %1, align 4
  store i32 1, i32* %25, align 4
  br label %225

93:                                               ; preds = %84
  %94 = load i64, i64* @fdt_immr_va, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = add nsw i64 %96, %94
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* %10, align 4
  %100 = call i32 @OF_getencprop(i32 %99, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32* %13, i32 4)
  %101 = icmp sle i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %93
  %103 = load i32, i32* @ENXIO, align 4
  store i32 %103, i32* %1, align 4
  store i32 1, i32* %25, align 4
  br label %225

104:                                              ; preds = %93
  %105 = load i32, i32* %13, align 4
  %106 = load i32, i32* @MPP_PIN_MAX, align 4
  %107 = icmp sgt i32 %105, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %104
  %109 = load i32, i32* @ERANGE, align 4
  store i32 %109, i32* %1, align 4
  store i32 1, i32* %25, align 4
  br label %225

110:                                              ; preds = %104
  %111 = load i32, i32* %10, align 4
  %112 = call i32 @OF_getencprop(i32 %111, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32* %11, i32 4)
  %113 = icmp sle i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %110
  %115 = load i32, i32* @MPP_PIN_CELLS, align 4
  store i32 %115, i32* %11, align 4
  br label %116

116:                                              ; preds = %114, %110
  %117 = load i32, i32* %11, align 4
  %118 = load i32, i32* @MPP_PIN_CELLS, align 4
  %119 = icmp sgt i32 %117, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %116
  %121 = load i32, i32* @ERANGE, align 4
  store i32 %121, i32* %1, align 4
  store i32 1, i32* %25, align 4
  br label %225

122:                                              ; preds = %116
  %123 = load i32, i32* %11, align 4
  %124 = sext i32 %123 to i64
  %125 = mul i64 4, %124
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %17, align 4
  %127 = mul nuw i64 4, %29
  %128 = trunc i64 %127 to i32
  %129 = call i32 @bzero(i32* %31, i32 %128)
  %130 = load i32, i32* %10, align 4
  %131 = mul nuw i64 4, %29
  %132 = trunc i64 %131 to i32
  %133 = call i32 @OF_getencprop(i32 %130, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32* %31, i32 %132)
  store i32 %133, i32* %14, align 4
  %134 = load i32, i32* %14, align 4
  %135 = icmp sle i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %122
  %137 = load i32, i32* @ERANGE, align 4
  store i32 %137, i32* %1, align 4
  store i32 1, i32* %25, align 4
  br label %225

138:                                              ; preds = %122
  %139 = load i32, i32* %14, align 4
  %140 = load i32, i32* %17, align 4
  %141 = srem i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %138
  %144 = load i32, i32* @ERANGE, align 4
  store i32 %144, i32* %1, align 4
  store i32 1, i32* %25, align 4
  br label %225

145:                                              ; preds = %138
  %146 = load i32, i32* %14, align 4
  %147 = load i32, i32* %17, align 4
  %148 = sdiv i32 %146, %147
  store i32 %148, i32* %20, align 4
  %149 = load i32, i32* %20, align 4
  %150 = load i32, i32* %13, align 4
  %151 = icmp sgt i32 %149, %150
  br i1 %151, label %152, label %154

152:                                              ; preds = %145
  %153 = load i32, i32* @ERANGE, align 4
  store i32 %153, i32* %1, align 4
  store i32 1, i32* %25, align 4
  br label %225

154:                                              ; preds = %145
  %155 = mul nuw i64 4, %33
  %156 = trunc i64 %155 to i32
  %157 = call i32 @bzero(i32* %34, i32 %156)
  store i32* %31, i32** %12, align 8
  store i32 0, i32* %21, align 4
  br label %158

158:                                              ; preds = %176, %154
  %159 = load i32, i32* %21, align 4
  %160 = load i32, i32* %20, align 4
  %161 = icmp slt i32 %159, %160
  br i1 %161, label %162, label %179

162:                                              ; preds = %158
  %163 = load i32*, i32** %12, align 8
  %164 = load i32, i32* %163, align 4
  store i32 %164, i32* %23, align 4
  %165 = load i32*, i32** %12, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 1
  %167 = load i32, i32* %166, align 4
  store i32 %167, i32* %24, align 4
  %168 = load i32, i32* %24, align 4
  %169 = load i32, i32* %23, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %34, i64 %170
  store i32 %168, i32* %171, align 4
  %172 = load i32, i32* %11, align 4
  %173 = load i32*, i32** %12, align 8
  %174 = sext i32 %172 to i64
  %175 = getelementptr inbounds i32, i32* %173, i64 %174
  store i32* %175, i32** %12, align 8
  br label %176

176:                                              ; preds = %162
  %177 = load i32, i32* %21, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %21, align 4
  br label %158

179:                                              ; preds = %158
  store i32 0, i32* %6, align 4
  store i32 0, i32* %21, align 4
  br label %180

180:                                              ; preds = %213, %179
  %181 = load i32, i32* %21, align 4
  %182 = load i32, i32* %13, align 4
  %183 = icmp slt i32 %181, %182
  br i1 %183, label %184, label %224

184:                                              ; preds = %180
  store i32 0, i32* %5, align 4
  store i32 0, i32* %22, align 4
  br label %185

185:                                              ; preds = %210, %184
  %186 = load i32, i32* %22, align 4
  %187 = load i32, i32* @MPP_PINS_PER_REG, align 4
  %188 = icmp slt i32 %186, %187
  br i1 %188, label %189, label %213

189:                                              ; preds = %185
  %190 = load i32, i32* %21, align 4
  %191 = load i32, i32* %22, align 4
  %192 = add nsw i32 %190, %191
  %193 = load i32, i32* %13, align 4
  %194 = sub nsw i32 %193, 1
  %195 = icmp eq i32 %192, %194
  br i1 %195, label %196, label %197

196:                                              ; preds = %189
  br label %213

197:                                              ; preds = %189
  %198 = load i32, i32* %21, align 4
  %199 = load i32, i32* %22, align 4
  %200 = add nsw i32 %198, %199
  %201 = load i32, i32* %21, align 4
  %202 = load i32, i32* %22, align 4
  %203 = add nsw i32 %201, %202
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %34, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @MPP_SEL(i32 %200, i32 %206)
  %208 = load i32, i32* %5, align 4
  %209 = or i32 %208, %207
  store i32 %209, i32* %5, align 4
  br label %210

210:                                              ; preds = %197
  %211 = load i32, i32* %22, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %22, align 4
  br label %185

213:                                              ; preds = %196, %185
  %214 = load i32, i32* @MPP_PINS_PER_REG, align 4
  %215 = load i32, i32* %21, align 4
  %216 = add nsw i32 %215, %214
  store i32 %216, i32* %21, align 4
  %217 = load i32, i32* @fdtbus_bs_tag, align 4
  %218 = load i32, i32* %8, align 4
  %219 = load i32, i32* %6, align 4
  %220 = load i32, i32* %5, align 4
  %221 = call i32 @bus_space_write_4(i32 %217, i32 %218, i32 %219, i32 %220)
  %222 = load i32, i32* %6, align 4
  %223 = add nsw i32 %222, 4
  store i32 %223, i32* %6, align 4
  br label %180

224:                                              ; preds = %180
  store i32 0, i32* %1, align 4
  store i32 1, i32* %25, align 4
  br label %225

225:                                              ; preds = %224, %152, %143, %136, %120, %108, %102, %91, %82, %65, %58, %52, %46
  %226 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %226)
  %227 = load i32, i32* %1, align 4
  ret i32 %227
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @OF_finddevice(i8*) #2

declare dso_local i64 @ofw_bus_node_is_compatible(i32, i8*) #2

declare dso_local i32 @fdt_find_compatible(i32, i8*, i32) #2

declare dso_local i32 @fdt_addrsize_cells(i32, i32*, i32*) #2

declare dso_local i32 @OF_parent(i32) #2

declare dso_local i32 @OF_getprop(i32, i8*, i32*, i32) #2

declare dso_local i32 @fdt_data_to_res(i32*, i32, i32, i32*, i32*) #2

declare dso_local i32 @OF_getencprop(i32, i8*, i32*, i32) #2

declare dso_local i32 @bzero(i32*, i32) #2

declare dso_local i32 @MPP_SEL(i32, i32) #2

declare dso_local i32 @bus_space_write_4(i32, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

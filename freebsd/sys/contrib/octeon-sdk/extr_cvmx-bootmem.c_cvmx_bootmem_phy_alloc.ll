; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-bootmem.c_cvmx_bootmem_phy_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-bootmem.c_cvmx_bootmem_phy_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CVMX_BOOTMEM_ALIGNMENT_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Internal bootmem_alloc() error: ent: 0x%llx, next: 0x%llx\0A\00", align 1
@CVMX_BOOTMEM_FLAG_END_ALLOC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_bootmem_phy_alloc(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %21 = load i32, i32* %10, align 4
  %22 = sub nsw i32 %21, 1
  %23 = xor i32 %22, -1
  store i32 %23, i32* %17, align 4
  %24 = call i64 @__cvmx_bootmem_check_version(i32 0)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %5
  br label %217

27:                                               ; preds = %5
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  br label %217

31:                                               ; preds = %27
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @CVMX_BOOTMEM_ALIGNMENT_SIZE, align 4
  %34 = sub nsw i32 %33, 1
  %35 = add nsw i32 %32, %34
  %36 = load i32, i32* @CVMX_BOOTMEM_ALIGNMENT_SIZE, align 4
  %37 = sub nsw i32 %36, 1
  %38 = xor i32 %37, -1
  %39 = and i32 %35, %38
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @CVMX_BOOTMEM_ALIGNMENT_SIZE, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %31
  %44 = load i32, i32* @CVMX_BOOTMEM_ALIGNMENT_SIZE, align 4
  store i32 %44, i32* %10, align 4
  br label %45

45:                                               ; preds = %43, %31
  %46 = load i32, i32* %10, align 4
  %47 = sub nsw i32 %46, 1
  %48 = xor i32 %47, -1
  store i32 %48, i32* %17, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %45
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %10, align 4
  %54 = sub nsw i32 %53, 1
  %55 = add nsw i32 %52, %54
  %56 = load i32, i32* %10, align 4
  %57 = sub nsw i32 %56, 1
  %58 = xor i32 %57, -1
  %59 = and i32 %55, %58
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %51, %45
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %60
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %67, %68
  store i32 %69, i32* %9, align 4
  br label %78

70:                                               ; preds = %63, %60
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %70
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %73
  store i32 -1, i32* %9, align 4
  br label %77

77:                                               ; preds = %76, %73, %70
  br label %78

78:                                               ; preds = %77, %66
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %8, align 4
  %82 = sub nsw i32 %80, %81
  %83 = icmp sgt i32 %79, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  br label %217

85:                                               ; preds = %78
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @__cvmx_bootmem_lock(i32 %86)
  %88 = load i32, i32* %12, align 4
  %89 = call i32 @CVMX_BOOTMEM_DESC_GET_FIELD(i32 %88)
  store i32 %89, i32* %12, align 4
  %90 = load i32, i32* %12, align 4
  store i32 %90, i32* %13, align 4
  br label %91

91:                                               ; preds = %212, %85
  %92 = load i32, i32* %13, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %216

94:                                               ; preds = %91
  %95 = load i32, i32* %13, align 4
  %96 = call i32 @cvmx_bootmem_phy_get_size(i32 %95)
  store i32 %96, i32* %20, align 4
  %97 = load i32, i32* %13, align 4
  %98 = call i32 @cvmx_bootmem_phy_get_next(i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %110

100:                                              ; preds = %94
  %101 = load i32, i32* %13, align 4
  %102 = load i32, i32* %13, align 4
  %103 = call i32 @cvmx_bootmem_phy_get_next(i32 %102)
  %104 = icmp sgt i32 %101, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %100
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* %13, align 4
  %108 = call i32 @cvmx_bootmem_phy_get_next(i32 %107)
  %109 = call i32 (i8*, i32, i32, ...) @cvmx_dprintf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %106, i32 %108)
  br label %217

110:                                              ; preds = %100, %94
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* %13, align 4
  %113 = call i32 @MAX(i32 %111, i32 %112)
  %114 = load i32, i32* %17, align 4
  %115 = call i32 @ALIGN_ADDR_UP(i32 %113, i32 %114)
  store i32 %115, i32* %18, align 4
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* %13, align 4
  %118 = load i32, i32* %20, align 4
  %119 = add nsw i32 %117, %118
  %120 = call i32 @MIN(i32 %116, i32 %119)
  store i32 %120, i32* %19, align 4
  %121 = load i32, i32* %18, align 4
  store i32 %121, i32* %16, align 4
  %122 = load i32, i32* %13, align 4
  %123 = load i32, i32* %20, align 4
  %124 = add nsw i32 %122, %123
  %125 = load i32, i32* %18, align 4
  %126 = icmp sgt i32 %124, %125
  br i1 %126, label %127, label %212

127:                                              ; preds = %110
  %128 = load i32, i32* %13, align 4
  %129 = load i32, i32* %9, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %212

131:                                              ; preds = %127
  %132 = load i32, i32* %7, align 4
  %133 = load i32, i32* %19, align 4
  %134 = load i32, i32* %18, align 4
  %135 = sub nsw i32 %133, %134
  %136 = icmp sle i32 %132, %135
  br i1 %136, label %137, label %212

137:                                              ; preds = %131
  %138 = load i32, i32* %11, align 4
  %139 = load i32, i32* @CVMX_BOOTMEM_FLAG_END_ALLOC, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %149

142:                                              ; preds = %137
  %143 = load i32, i32* %19, align 4
  %144 = load i32, i32* %7, align 4
  %145 = sub nsw i32 %143, %144
  store i32 %145, i32* %16, align 4
  %146 = load i32, i32* %17, align 4
  %147 = load i32, i32* %16, align 4
  %148 = and i32 %147, %146
  store i32 %148, i32* %16, align 4
  br label %149

149:                                              ; preds = %142, %137
  %150 = load i32, i32* %16, align 4
  %151 = load i32, i32* %13, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %190

153:                                              ; preds = %149
  %154 = load i32, i32* %7, align 4
  %155 = load i32, i32* %20, align 4
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %157, label %173

157:                                              ; preds = %153
  %158 = load i32, i32* %13, align 4
  %159 = load i32, i32* %7, align 4
  %160 = add nsw i32 %158, %159
  store i32 %160, i32* %15, align 4
  %161 = load i32, i32* %15, align 4
  %162 = load i32, i32* %13, align 4
  %163 = call i32 @cvmx_bootmem_phy_get_next(i32 %162)
  %164 = call i32 @cvmx_bootmem_phy_set_next(i32 %161, i32 %163)
  %165 = load i32, i32* %15, align 4
  %166 = load i32, i32* %20, align 4
  %167 = load i32, i32* %7, align 4
  %168 = sub nsw i32 %166, %167
  %169 = call i32 @cvmx_bootmem_phy_set_size(i32 %165, i32 %168)
  %170 = load i32, i32* %13, align 4
  %171 = load i32, i32* %15, align 4
  %172 = call i32 @cvmx_bootmem_phy_set_next(i32 %170, i32 %171)
  br label %173

173:                                              ; preds = %157, %153
  %174 = load i32, i32* %14, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %181

176:                                              ; preds = %173
  %177 = load i32, i32* %14, align 4
  %178 = load i32, i32* %13, align 4
  %179 = call i32 @cvmx_bootmem_phy_get_next(i32 %178)
  %180 = call i32 @cvmx_bootmem_phy_set_next(i32 %177, i32 %179)
  br label %186

181:                                              ; preds = %173
  %182 = load i32, i32* %12, align 4
  %183 = load i32, i32* %13, align 4
  %184 = call i32 @cvmx_bootmem_phy_get_next(i32 %183)
  %185 = call i32 @CVMX_BOOTMEM_DESC_SET_FIELD(i32 %182, i32 %184)
  br label %186

186:                                              ; preds = %181, %176
  %187 = load i32, i32* %11, align 4
  %188 = call i32 @__cvmx_bootmem_unlock(i32 %187)
  %189 = load i32, i32* %16, align 4
  store i32 %189, i32* %6, align 4
  br label %220

190:                                              ; preds = %149
  %191 = load i32, i32* %16, align 4
  store i32 %191, i32* %15, align 4
  %192 = load i32, i32* %15, align 4
  %193 = load i32, i32* %13, align 4
  %194 = call i32 @cvmx_bootmem_phy_get_next(i32 %193)
  %195 = call i32 @cvmx_bootmem_phy_set_next(i32 %192, i32 %194)
  %196 = load i32, i32* %15, align 4
  %197 = load i32, i32* %13, align 4
  %198 = call i32 @cvmx_bootmem_phy_get_size(i32 %197)
  %199 = load i32, i32* %16, align 4
  %200 = load i32, i32* %13, align 4
  %201 = sub nsw i32 %199, %200
  %202 = sub nsw i32 %198, %201
  %203 = call i32 @cvmx_bootmem_phy_set_size(i32 %196, i32 %202)
  %204 = load i32, i32* %13, align 4
  %205 = load i32, i32* %16, align 4
  %206 = load i32, i32* %13, align 4
  %207 = sub nsw i32 %205, %206
  %208 = call i32 @cvmx_bootmem_phy_set_size(i32 %204, i32 %207)
  %209 = load i32, i32* %13, align 4
  %210 = load i32, i32* %15, align 4
  %211 = call i32 @cvmx_bootmem_phy_set_next(i32 %209, i32 %210)
  br label %212

212:                                              ; preds = %190, %131, %127, %110
  %213 = load i32, i32* %13, align 4
  store i32 %213, i32* %14, align 4
  %214 = load i32, i32* %13, align 4
  %215 = call i32 @cvmx_bootmem_phy_get_next(i32 %214)
  store i32 %215, i32* %13, align 4
  br label %91

216:                                              ; preds = %91
  br label %217

217:                                              ; preds = %216, %105, %84, %30, %26
  %218 = load i32, i32* %11, align 4
  %219 = call i32 @__cvmx_bootmem_unlock(i32 %218)
  store i32 -1, i32* %6, align 4
  br label %220

220:                                              ; preds = %217, %186
  %221 = load i32, i32* %6, align 4
  ret i32 %221
}

declare dso_local i64 @__cvmx_bootmem_check_version(i32) #1

declare dso_local i32 @__cvmx_bootmem_lock(i32) #1

declare dso_local i32 @CVMX_BOOTMEM_DESC_GET_FIELD(i32) #1

declare dso_local i32 @cvmx_bootmem_phy_get_size(i32) #1

declare dso_local i32 @cvmx_bootmem_phy_get_next(i32) #1

declare dso_local i32 @cvmx_dprintf(i8*, i32, i32, ...) #1

declare dso_local i32 @ALIGN_ADDR_UP(i32, i32) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @cvmx_bootmem_phy_set_next(i32, i32) #1

declare dso_local i32 @cvmx_bootmem_phy_set_size(i32, i32) #1

declare dso_local i32 @CVMX_BOOTMEM_DESC_SET_FIELD(i32, i32) #1

declare dso_local i32 @__cvmx_bootmem_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

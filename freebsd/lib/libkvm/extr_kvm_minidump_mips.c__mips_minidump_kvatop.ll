; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm_minidump_mips.c__mips_minidump_kvatop.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm_minidump_mips.c__mips_minidump_kvatop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_10__, %struct.vmstate* }
%struct.TYPE_10__ = type { i64* }
%struct.vmstate = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }

@.str = private unnamed_addr constant [45 x i8] c"_mips_minidump_kvatop called in live kernel!\00", align 1
@MIPS_PAGE_MASK = common dso_local global i32 0, align 4
@EI_CLASS = common dso_local global i64 0, align 8
@ELFCLASS64 = common dso_local global i64 0, align 8
@MIPS_XKPHYS_START = common dso_local global i32 0, align 4
@MIPS_XKPHYS_END = common dso_local global i32 0, align 4
@MIPS_XKPHYS_PHYS_MASK = common dso_local global i32 0, align 4
@MIPS64_KSEG0_START = common dso_local global i32 0, align 4
@MIPS64_KSEG0_END = common dso_local global i32 0, align 4
@MIPS_KSEG0_PHYS_MASK = common dso_local global i32 0, align 4
@MIPS64_KSEG1_START = common dso_local global i32 0, align 4
@MIPS64_KSEG1_END = common dso_local global i32 0, align 4
@MIPS32_KSEG0_START = common dso_local global i32 0, align 4
@MIPS32_KSEG0_END = common dso_local global i32 0, align 4
@MIPS32_KSEG1_START = common dso_local global i32 0, align 4
@MIPS32_KSEG1_END = common dso_local global i32 0, align 4
@MIPS_PAGE_SHIFT = common dso_local global i32 0, align 4
@MIPS_PTE_V = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"_mips_minidump_kvatop: pte not valid\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"_mips_minidump_kvatop: virtual address 0x%jx not minidumped\00", align 1
@MIPS_PAGE_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [62 x i8] c"_mips_minidump_kvatop: physical address 0x%jx not in minidump\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"invalid address (0x%jx)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32, i32*)* @_mips_minidump_kvatop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_mips_minidump_kvatop(%struct.TYPE_12__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.vmstate*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %17 = call i64 @ISALIVE(%struct.TYPE_12__* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %21 = call i32 (%struct.TYPE_12__*, i32, i8*, ...) @_kvm_err(%struct.TYPE_12__* %20, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %226

22:                                               ; preds = %3
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @MIPS_PAGE_MASK, align 4
  %25 = and i32 %23, %24
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* @MIPS_PAGE_MASK, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %6, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %6, align 4
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 2
  %32 = load %struct.vmstate*, %struct.vmstate** %31, align 8
  store %struct.vmstate* %32, %struct.vmstate** %8, align 8
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = load i64, i64* @EI_CLASS, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @ELFCLASS64, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %79

42:                                               ; preds = %22
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @MIPS_XKPHYS_START, align 4
  %45 = icmp sge i32 %43, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %42
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @MIPS_XKPHYS_END, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @MIPS_XKPHYS_PHYS_MASK, align 4
  %53 = and i32 %51, %52
  store i32 %53, i32* %10, align 4
  br label %200

54:                                               ; preds = %46, %42
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @MIPS64_KSEG0_START, align 4
  %57 = icmp sge i32 %55, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %54
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @MIPS64_KSEG0_END, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @MIPS_KSEG0_PHYS_MASK, align 4
  %65 = and i32 %63, %64
  store i32 %65, i32* %10, align 4
  br label %200

66:                                               ; preds = %58, %54
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @MIPS64_KSEG1_START, align 4
  %69 = icmp sge i32 %67, %68
  br i1 %69, label %70, label %78

70:                                               ; preds = %66
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @MIPS64_KSEG1_END, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @MIPS_KSEG0_PHYS_MASK, align 4
  %77 = and i32 %75, %76
  store i32 %77, i32* %10, align 4
  br label %200

78:                                               ; preds = %70, %66
  br label %104

79:                                               ; preds = %22
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @MIPS32_KSEG0_START, align 4
  %82 = icmp sge i32 %80, %81
  br i1 %82, label %83, label %91

83:                                               ; preds = %79
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* @MIPS32_KSEG0_END, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %83
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* @MIPS_KSEG0_PHYS_MASK, align 4
  %90 = and i32 %88, %89
  store i32 %90, i32* %10, align 4
  br label %200

91:                                               ; preds = %83, %79
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* @MIPS32_KSEG1_START, align 4
  %94 = icmp sge i32 %92, %93
  br i1 %94, label %95, label %103

95:                                               ; preds = %91
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* @MIPS32_KSEG1_END, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %95
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* @MIPS_KSEG0_PHYS_MASK, align 4
  %102 = and i32 %100, %101
  store i32 %102, i32* %10, align 4
  br label %200

103:                                              ; preds = %95, %91
  br label %104

104:                                              ; preds = %103, %78
  %105 = load i32, i32* %6, align 4
  %106 = load %struct.vmstate*, %struct.vmstate** %8, align 8
  %107 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = icmp sge i32 %105, %109
  br i1 %110, label %111, label %192

111:                                              ; preds = %104
  %112 = load i32, i32* %6, align 4
  %113 = load %struct.vmstate*, %struct.vmstate** %8, align 8
  %114 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = sub nsw i32 %112, %116
  %118 = load i32, i32* @MIPS_PAGE_SHIFT, align 4
  %119 = ashr i32 %117, %118
  store i32 %119, i32* %11, align 4
  %120 = load %struct.vmstate*, %struct.vmstate** %8, align 8
  %121 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = icmp eq i32 %122, 64
  br i1 %123, label %124, label %158

124:                                              ; preds = %111
  %125 = load i32, i32* %11, align 4
  %126 = sext i32 %125 to i64
  %127 = load %struct.vmstate*, %struct.vmstate** %8, align 8
  %128 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = sext i32 %130 to i64
  %132 = udiv i64 %131, 4
  %133 = icmp ult i64 %126, %132
  %134 = zext i1 %133 to i32
  store i32 %134, i32* %12, align 4
  %135 = load i32, i32* %11, align 4
  %136 = sext i32 %135 to i64
  %137 = load %struct.vmstate*, %struct.vmstate** %8, align 8
  %138 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = sext i32 %140 to i64
  %142 = udiv i64 %141, 4
  %143 = icmp uge i64 %136, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %124
  br label %222

145:                                              ; preds = %124
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %147 = load i32, i32* %11, align 4
  %148 = call i32 @_mips64_pte_get(%struct.TYPE_12__* %146, i32 %147)
  store i32 %148, i32* %15, align 4
  %149 = load i32, i32* %15, align 4
  %150 = load i32, i32* @MIPS_PTE_V, align 4
  %151 = and i32 %149, %150
  store i32 %151, i32* %12, align 4
  %152 = load i32, i32* %12, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %145
  %155 = load i32, i32* %15, align 4
  %156 = call i32 @MIPS64_PTE_TO_PA(i32 %155)
  store i32 %156, i32* %10, align 4
  br label %157

157:                                              ; preds = %154, %145
  br label %182

158:                                              ; preds = %111
  %159 = load i32, i32* %11, align 4
  %160 = sext i32 %159 to i64
  %161 = load %struct.vmstate*, %struct.vmstate** %8, align 8
  %162 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = sext i32 %164 to i64
  %166 = udiv i64 %165, 4
  %167 = icmp uge i64 %160, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %158
  br label %222

169:                                              ; preds = %158
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %171 = load i32, i32* %11, align 4
  %172 = call i32 @_mips32_pte_get(%struct.TYPE_12__* %170, i32 %171)
  store i32 %172, i32* %14, align 4
  %173 = load i32, i32* %14, align 4
  %174 = load i32, i32* @MIPS_PTE_V, align 4
  %175 = and i32 %173, %174
  store i32 %175, i32* %12, align 4
  %176 = load i32, i32* %12, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %169
  %179 = load i32, i32* %14, align 4
  %180 = call i32 @MIPS32_PTE_TO_PA(i32 %179)
  store i32 %180, i32* %10, align 4
  br label %181

181:                                              ; preds = %178, %169
  br label %182

182:                                              ; preds = %181, %157
  %183 = load i32, i32* %12, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %191, label %185

185:                                              ; preds = %182
  %186 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = call i32 (%struct.TYPE_12__*, i32, i8*, ...) @_kvm_err(%struct.TYPE_12__* %186, i32 %189, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %222

191:                                              ; preds = %182
  br label %199

192:                                              ; preds = %104
  %193 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %194 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* %6, align 4
  %198 = call i32 (%struct.TYPE_12__*, i32, i8*, ...) @_kvm_err(%struct.TYPE_12__* %193, i32 %196, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 %197)
  store i32 0, i32* %4, align 4
  br label %226

199:                                              ; preds = %191
  br label %200

200:                                              ; preds = %199, %99, %87, %74, %62, %50
  %201 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %202 = load i32, i32* %10, align 4
  %203 = load i32, i32* @MIPS_PAGE_SIZE, align 4
  %204 = call i32 @_kvm_pt_find(%struct.TYPE_12__* %201, i32 %202, i32 %203)
  store i32 %204, i32* %13, align 4
  %205 = load i32, i32* %13, align 4
  %206 = icmp eq i32 %205, -1
  br i1 %206, label %207, label %214

207:                                              ; preds = %200
  %208 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* %10, align 4
  %213 = call i32 (%struct.TYPE_12__*, i32, i8*, ...) @_kvm_err(%struct.TYPE_12__* %208, i32 %211, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0), i32 %212)
  br label %222

214:                                              ; preds = %200
  %215 = load i32, i32* %13, align 4
  %216 = load i32, i32* %9, align 4
  %217 = add nsw i32 %215, %216
  %218 = load i32*, i32** %7, align 8
  store i32 %217, i32* %218, align 4
  %219 = load i32, i32* @MIPS_PAGE_SIZE, align 4
  %220 = load i32, i32* %9, align 4
  %221 = sub nsw i32 %219, %220
  store i32 %221, i32* %4, align 4
  br label %226

222:                                              ; preds = %207, %185, %168, %144
  %223 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %224 = load i32, i32* %6, align 4
  %225 = call i32 (%struct.TYPE_12__*, i32, i8*, ...) @_kvm_err(%struct.TYPE_12__* %223, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %224)
  store i32 0, i32* %4, align 4
  br label %226

226:                                              ; preds = %222, %214, %192, %19
  %227 = load i32, i32* %4, align 4
  ret i32 %227
}

declare dso_local i64 @ISALIVE(%struct.TYPE_12__*) #1

declare dso_local i32 @_kvm_err(%struct.TYPE_12__*, i32, i8*, ...) #1

declare dso_local i32 @_mips64_pte_get(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @MIPS64_PTE_TO_PA(i32) #1

declare dso_local i32 @_mips32_pte_get(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @MIPS32_PTE_TO_PA(i32) #1

declare dso_local i32 @_kvm_pt_find(%struct.TYPE_12__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

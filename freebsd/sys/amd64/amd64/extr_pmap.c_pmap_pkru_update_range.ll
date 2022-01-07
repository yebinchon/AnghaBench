; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_pkru_update_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_pkru_update_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }

@MA_OWNED = common dso_local global i32 0, align 4
@PT_X86 = common dso_local global i64 0, align 8
@PMAP_MAX_PKRU_IDX = common dso_local global i64 0, align 8
@X86_PG_V = common dso_local global i32 0, align 4
@NBPML4 = common dso_local global i32 0, align 4
@PML4MASK = common dso_local global i32 0, align 4
@NBPDP = common dso_local global i32 0, align 4
@PDPMASK = common dso_local global i32 0, align 4
@NBPDR = common dso_local global i32 0, align 4
@PDRMASK = common dso_local global i32 0, align 4
@PG_PS = common dso_local global i32 0, align 4
@X86_PG_PKU_MASK = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32, i32, i64)* @pmap_pkru_update_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmap_pkru_update_range(%struct.TYPE_7__* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %21 = load i32, i32* @MA_OWNED, align 4
  %22 = call i32 @PMAP_LOCK_ASSERT(%struct.TYPE_7__* %20, i32 %21)
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @PT_X86, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @MPASS(i32 %28)
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* @PMAP_MAX_PKRU_IDX, align 8
  %32 = icmp sle i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @MPASS(i32 %33)
  store i32 0, i32* %19, align 4
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %17, align 4
  br label %36

36:                                               ; preds = %196, %4
  %37 = load i32, i32* %17, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %198

40:                                               ; preds = %36
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %42 = load i32, i32* %17, align 4
  %43 = call i32* @pmap_pml4e(%struct.TYPE_7__* %41, i32 %42)
  store i32* %43, i32** %9, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @X86_PG_V, align 4
  %47 = and i32 %45, %46
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %40
  %50 = load i32, i32* %17, align 4
  %51 = load i32, i32* @NBPML4, align 4
  %52 = add nsw i32 %50, %51
  %53 = load i32, i32* @PML4MASK, align 4
  %54 = xor i32 %53, -1
  %55 = and i32 %52, %54
  store i32 %55, i32* %18, align 4
  %56 = load i32, i32* %18, align 4
  %57 = load i32, i32* %17, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %49
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %18, align 4
  br label %61

61:                                               ; preds = %59, %49
  br label %196

62:                                               ; preds = %40
  %63 = load i32*, i32** %9, align 8
  %64 = load i32, i32* %17, align 4
  %65 = call i32* @pmap_pml4e_to_pdpe(i32* %63, i32 %64)
  store i32* %65, i32** %10, align 8
  %66 = load i32*, i32** %10, align 8
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @X86_PG_V, align 4
  %69 = and i32 %67, %68
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %84

71:                                               ; preds = %62
  %72 = load i32, i32* %17, align 4
  %73 = load i32, i32* @NBPDP, align 4
  %74 = add nsw i32 %72, %73
  %75 = load i32, i32* @PDPMASK, align 4
  %76 = xor i32 %75, -1
  %77 = and i32 %74, %76
  store i32 %77, i32* %18, align 4
  %78 = load i32, i32* %18, align 4
  %79 = load i32, i32* %17, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %71
  %82 = load i32, i32* %7, align 4
  store i32 %82, i32* %18, align 4
  br label %83

83:                                               ; preds = %81, %71
  br label %196

84:                                               ; preds = %62
  %85 = load i32, i32* %17, align 4
  %86 = load i32, i32* @NBPDR, align 4
  %87 = add nsw i32 %85, %86
  %88 = load i32, i32* @PDRMASK, align 4
  %89 = xor i32 %88, -1
  %90 = and i32 %87, %89
  store i32 %90, i32* %18, align 4
  %91 = load i32, i32* %18, align 4
  %92 = load i32, i32* %17, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %84
  %95 = load i32, i32* %7, align 4
  store i32 %95, i32* %18, align 4
  br label %96

96:                                               ; preds = %94, %84
  %97 = load i32*, i32** %10, align 8
  %98 = load i32, i32* %17, align 4
  %99 = call i32* @pmap_pdpe_to_pde(i32* %97, i32 %98)
  store i32* %99, i32** %13, align 8
  %100 = load i32*, i32** %13, align 8
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %12, align 4
  %102 = load i32, i32* %12, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %96
  br label %196

105:                                              ; preds = %96
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* @X86_PG_V, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  %110 = zext i1 %109 to i32
  %111 = call i32 @MPASS(i32 %110)
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* @PG_PS, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %150

116:                                              ; preds = %105
  %117 = load i32, i32* %17, align 4
  %118 = load i32, i32* @NBPDR, align 4
  %119 = add nsw i32 %117, %118
  %120 = load i32, i32* %18, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %141

122:                                              ; preds = %116
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* %18, align 4
  %125 = icmp sge i32 %123, %124
  br i1 %125, label %126, label %141

126:                                              ; preds = %122
  %127 = load i32, i32* %12, align 4
  %128 = load i32, i32* @X86_PG_PKU_MASK, align 4
  %129 = xor i32 %128, -1
  %130 = and i32 %127, %129
  %131 = load i64, i64* %8, align 8
  %132 = call i32 @X86_PG_PKU(i64 %131)
  %133 = or i32 %130, %132
  store i32 %133, i32* %11, align 4
  %134 = load i32, i32* %11, align 4
  %135 = load i32, i32* %12, align 4
  %136 = icmp ne i32 %134, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %126
  %138 = load i32, i32* %11, align 4
  %139 = load i32*, i32** %13, align 8
  store i32 %138, i32* %139, align 4
  store i32 1, i32* %19, align 4
  br label %140

140:                                              ; preds = %137, %126
  br label %196

141:                                              ; preds = %122, %116
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %143 = load i32*, i32** %13, align 8
  %144 = load i32, i32* %17, align 4
  %145 = call i32 @pmap_demote_pde(%struct.TYPE_7__* %142, i32* %143, i32 %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %148, label %147

147:                                              ; preds = %141
  br label %196

148:                                              ; preds = %141
  br label %149

149:                                              ; preds = %148
  br label %150

150:                                              ; preds = %149, %105
  %151 = load i32, i32* %18, align 4
  %152 = load i32, i32* %7, align 4
  %153 = icmp sgt i32 %151, %152
  br i1 %153, label %154, label %156

154:                                              ; preds = %150
  %155 = load i32, i32* %7, align 4
  store i32 %155, i32* %18, align 4
  br label %156

156:                                              ; preds = %154, %150
  %157 = load i32*, i32** %13, align 8
  %158 = load i32, i32* %17, align 4
  %159 = call i32* @pmap_pde_to_pte(i32* %157, i32 %158)
  store i32* %159, i32** %15, align 8
  br label %160

160:                                              ; preds = %187, %156
  %161 = load i32, i32* %17, align 4
  %162 = load i32, i32* %18, align 4
  %163 = icmp ne i32 %161, %162
  br i1 %163, label %164, label %195

164:                                              ; preds = %160
  %165 = load i32*, i32** %15, align 8
  %166 = load i32, i32* %165, align 4
  store i32 %166, i32* %16, align 4
  %167 = load i32, i32* %16, align 4
  %168 = load i32, i32* @X86_PG_V, align 4
  %169 = and i32 %167, %168
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %164
  br label %187

172:                                              ; preds = %164
  %173 = load i32, i32* %16, align 4
  %174 = load i32, i32* @X86_PG_PKU_MASK, align 4
  %175 = xor i32 %174, -1
  %176 = and i32 %173, %175
  %177 = load i64, i64* %8, align 8
  %178 = call i32 @X86_PG_PKU(i64 %177)
  %179 = or i32 %176, %178
  store i32 %179, i32* %14, align 4
  %180 = load i32, i32* %14, align 4
  %181 = load i32, i32* %16, align 4
  %182 = icmp ne i32 %180, %181
  br i1 %182, label %183, label %186

183:                                              ; preds = %172
  %184 = load i32, i32* %14, align 4
  %185 = load i32*, i32** %15, align 8
  store i32 %184, i32* %185, align 4
  store i32 1, i32* %19, align 4
  br label %186

186:                                              ; preds = %183, %172
  br label %187

187:                                              ; preds = %186, %171
  %188 = load i32*, i32** %15, align 8
  %189 = getelementptr inbounds i32, i32* %188, i32 1
  store i32* %189, i32** %15, align 8
  %190 = load i64, i64* @PAGE_SIZE, align 8
  %191 = load i32, i32* %17, align 4
  %192 = sext i32 %191 to i64
  %193 = add nsw i64 %192, %190
  %194 = trunc i64 %193 to i32
  store i32 %194, i32* %17, align 4
  br label %160

195:                                              ; preds = %160
  br label %196

196:                                              ; preds = %195, %147, %140, %104, %83, %61
  %197 = load i32, i32* %18, align 4
  store i32 %197, i32* %17, align 4
  br label %36

198:                                              ; preds = %36
  %199 = load i32, i32* %19, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %206

201:                                              ; preds = %198
  %202 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %203 = load i32, i32* %6, align 4
  %204 = load i32, i32* %7, align 4
  %205 = call i32 @pmap_invalidate_range(%struct.TYPE_7__* %202, i32 %203, i32 %204)
  br label %206

206:                                              ; preds = %201, %198
  ret void
}

declare dso_local i32 @PMAP_LOCK_ASSERT(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32* @pmap_pml4e(%struct.TYPE_7__*, i32) #1

declare dso_local i32* @pmap_pml4e_to_pdpe(i32*, i32) #1

declare dso_local i32* @pmap_pdpe_to_pde(i32*, i32) #1

declare dso_local i32 @X86_PG_PKU(i64) #1

declare dso_local i32 @pmap_demote_pde(%struct.TYPE_7__*, i32*, i32) #1

declare dso_local i32* @pmap_pde_to_pte(i32*, i32) #1

declare dso_local i32 @pmap_invalidate_range(%struct.TYPE_7__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

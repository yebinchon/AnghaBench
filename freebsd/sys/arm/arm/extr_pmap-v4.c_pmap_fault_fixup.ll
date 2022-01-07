; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v4.c_pmap_fault_fixup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v4.c_pmap_fault_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__*, i32, %struct.l2_dtable** }
%struct.TYPE_9__ = type { i32*, i32 }
%struct.l2_dtable = type { %struct.l2_bucket* }
%struct.l2_bucket = type { i32*, i32 }
%struct.pv_entry = type { i32 }
%struct.vm_page = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@pvh_global_lock = common dso_local global i32 0, align 4
@L2_S_PROT_U = common dso_local global i32 0, align 4
@vector_page = common dso_local global i64 0, align 8
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@L2_S_PROT_W = common dso_local global i32 0, align 4
@PVF_WRITE = common dso_local global i32 0, align 4
@PVF_REF = common dso_local global i32 0, align 4
@PVF_MOD = common dso_local global i32 0, align 4
@L2_TYPE_MASK = common dso_local global i32 0, align 4
@L2_S_PROTO = common dso_local global i32 0, align 4
@L2_TYPE_INV = common dso_local global i32 0, align 4
@L1_C_PROTO = common dso_local global i32 0, align 4
@last_fault_code = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmap_fault_fixup(%struct.TYPE_10__* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.l2_dtable*, align 8
  %10 = alloca %struct.l2_bucket*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.pv_entry*, align 8
  %19 = alloca %struct.vm_page*, align 8
  %20 = alloca %struct.pv_entry*, align 8
  %21 = alloca %struct.vm_page*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %17, align 4
  %22 = load i64, i64* %6, align 8
  %23 = call i64 @L1_IDX(i64 %22)
  store i64 %23, i64* %16, align 8
  %24 = call i32 @rw_wlock(i32* @pvh_global_lock)
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %26 = call i32 @PMAP_LOCK(%struct.TYPE_10__* %25)
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 2
  %29 = load %struct.l2_dtable**, %struct.l2_dtable*** %28, align 8
  %30 = load i64, i64* %16, align 8
  %31 = call i64 @L2_IDX(i64 %30)
  %32 = getelementptr inbounds %struct.l2_dtable*, %struct.l2_dtable** %29, i64 %31
  %33 = load %struct.l2_dtable*, %struct.l2_dtable** %32, align 8
  store %struct.l2_dtable* %33, %struct.l2_dtable** %9, align 8
  %34 = load %struct.l2_dtable*, %struct.l2_dtable** %9, align 8
  %35 = icmp eq %struct.l2_dtable* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %4
  br label %209

37:                                               ; preds = %4
  %38 = load %struct.l2_dtable*, %struct.l2_dtable** %9, align 8
  %39 = getelementptr inbounds %struct.l2_dtable, %struct.l2_dtable* %38, i32 0, i32 0
  %40 = load %struct.l2_bucket*, %struct.l2_bucket** %39, align 8
  %41 = load i64, i64* %16, align 8
  %42 = call i64 @L2_BUCKET(i64 %41)
  %43 = getelementptr inbounds %struct.l2_bucket, %struct.l2_bucket* %40, i64 %42
  store %struct.l2_bucket* %43, %struct.l2_bucket** %10, align 8
  %44 = load %struct.l2_bucket*, %struct.l2_bucket** %10, align 8
  %45 = getelementptr inbounds %struct.l2_bucket, %struct.l2_bucket* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %37
  br label %209

49:                                               ; preds = %37
  %50 = load %struct.l2_bucket*, %struct.l2_bucket** %10, align 8
  %51 = getelementptr inbounds %struct.l2_bucket, %struct.l2_bucket* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* %6, align 8
  %54 = call i64 @l2pte_index(i64 %53)
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32* %55, i32** %13, align 8
  %56 = load i32*, i32** %13, align 8
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %14, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %49
  br label %209

61:                                               ; preds = %49
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* @L2_S_PROT_U, align 4
  %67 = and i32 %65, %66
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  br label %209

70:                                               ; preds = %64, %61
  %71 = load i64, i64* %6, align 8
  %72 = load i64, i64* @vector_page, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  br label %209

75:                                               ; preds = %70
  %76 = load i32, i32* %14, align 4
  %77 = call i32 @l2pte_pa(i32 %76)
  store i32 %77, i32* %15, align 4
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @VM_PROT_WRITE, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %137

82:                                               ; preds = %75
  %83 = load i32, i32* %14, align 4
  %84 = load i32, i32* @L2_S_PROT_W, align 4
  %85 = and i32 %83, %84
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %137

87:                                               ; preds = %82
  %88 = load i32, i32* %15, align 4
  %89 = call %struct.vm_page* @PHYS_TO_VM_PAGE(i32 %88)
  store %struct.vm_page* %89, %struct.vm_page** %19, align 8
  %90 = icmp eq %struct.vm_page* %89, null
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  br label %209

92:                                               ; preds = %87
  %93 = load %struct.vm_page*, %struct.vm_page** %19, align 8
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %95 = load i64, i64* %6, align 8
  %96 = call %struct.pv_entry* @pmap_find_pv(%struct.vm_page* %93, %struct.TYPE_10__* %94, i64 %95)
  store %struct.pv_entry* %96, %struct.pv_entry** %18, align 8
  %97 = load %struct.pv_entry*, %struct.pv_entry** %18, align 8
  %98 = icmp eq %struct.pv_entry* %97, null
  br i1 %98, label %99, label %100

99:                                               ; preds = %92
  br label %209

100:                                              ; preds = %92
  %101 = load %struct.pv_entry*, %struct.pv_entry** %18, align 8
  %102 = getelementptr inbounds %struct.pv_entry, %struct.pv_entry* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @PVF_WRITE, align 4
  %105 = and i32 %103, %104
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %100
  br label %209

108:                                              ; preds = %100
  %109 = load i32, i32* @PVF_REF, align 4
  %110 = load i32, i32* @PVF_MOD, align 4
  %111 = or i32 %109, %110
  %112 = load %struct.vm_page*, %struct.vm_page** %19, align 8
  %113 = getelementptr inbounds %struct.vm_page, %struct.vm_page* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = or i32 %115, %111
  store i32 %116, i32* %114, align 4
  %117 = load %struct.vm_page*, %struct.vm_page** %19, align 8
  %118 = call i32 @vm_page_dirty(%struct.vm_page* %117)
  %119 = load i32, i32* @PVF_REF, align 4
  %120 = load i32, i32* @PVF_MOD, align 4
  %121 = or i32 %119, %120
  %122 = load %struct.pv_entry*, %struct.pv_entry** %18, align 8
  %123 = getelementptr inbounds %struct.pv_entry, %struct.pv_entry* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = or i32 %124, %121
  store i32 %125, i32* %123, align 4
  %126 = load i32, i32* %14, align 4
  %127 = load i32, i32* @L2_TYPE_MASK, align 4
  %128 = xor i32 %127, -1
  %129 = and i32 %126, %128
  %130 = load i32, i32* @L2_S_PROTO, align 4
  %131 = or i32 %129, %130
  %132 = load i32, i32* @L2_S_PROT_W, align 4
  %133 = or i32 %131, %132
  %134 = load i32*, i32** %13, align 8
  store i32 %133, i32* %134, align 4
  %135 = load i32*, i32** %13, align 8
  %136 = call i32 @PTE_SYNC(i32* %135)
  store i32 1, i32* %17, align 4
  br label %178

137:                                              ; preds = %82, %75
  %138 = load i32, i32* %14, align 4
  %139 = load i32, i32* @L2_TYPE_MASK, align 4
  %140 = and i32 %138, %139
  %141 = load i32, i32* @L2_TYPE_INV, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %177

143:                                              ; preds = %137
  %144 = load i32, i32* %15, align 4
  %145 = call %struct.vm_page* @PHYS_TO_VM_PAGE(i32 %144)
  store %struct.vm_page* %145, %struct.vm_page** %21, align 8
  %146 = icmp eq %struct.vm_page* %145, null
  br i1 %146, label %147, label %148

147:                                              ; preds = %143
  br label %209

148:                                              ; preds = %143
  %149 = load %struct.vm_page*, %struct.vm_page** %21, align 8
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %151 = load i64, i64* %6, align 8
  %152 = call %struct.pv_entry* @pmap_find_pv(%struct.vm_page* %149, %struct.TYPE_10__* %150, i64 %151)
  store %struct.pv_entry* %152, %struct.pv_entry** %20, align 8
  %153 = load %struct.pv_entry*, %struct.pv_entry** %20, align 8
  %154 = icmp eq %struct.pv_entry* %153, null
  br i1 %154, label %155, label %156

155:                                              ; preds = %148
  br label %209

156:                                              ; preds = %148
  %157 = load i32, i32* @PVF_REF, align 4
  %158 = load %struct.vm_page*, %struct.vm_page** %21, align 8
  %159 = getelementptr inbounds %struct.vm_page, %struct.vm_page* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = or i32 %161, %157
  store i32 %162, i32* %160, align 4
  %163 = load i32, i32* @PVF_REF, align 4
  %164 = load %struct.pv_entry*, %struct.pv_entry** %20, align 8
  %165 = getelementptr inbounds %struct.pv_entry, %struct.pv_entry* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = or i32 %166, %163
  store i32 %167, i32* %165, align 4
  %168 = load i32, i32* %14, align 4
  %169 = load i32, i32* @L2_TYPE_MASK, align 4
  %170 = xor i32 %169, -1
  %171 = and i32 %168, %170
  %172 = load i32, i32* @L2_S_PROTO, align 4
  %173 = or i32 %171, %172
  %174 = load i32*, i32** %13, align 8
  store i32 %173, i32* %174, align 4
  %175 = load i32*, i32** %13, align 8
  %176 = call i32 @PTE_SYNC(i32* %175)
  store i32 1, i32* %17, align 4
  br label %177

177:                                              ; preds = %156, %137
  br label %178

178:                                              ; preds = %177, %108
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 0
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 0
  %183 = load i32*, i32** %182, align 8
  %184 = load i64, i64* %16, align 8
  %185 = getelementptr inbounds i32, i32* %183, i64 %184
  store i32* %185, i32** %11, align 8
  %186 = load %struct.l2_bucket*, %struct.l2_bucket** %10, align 8
  %187 = getelementptr inbounds %struct.l2_bucket, %struct.l2_bucket* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @L1_C_DOM(i32 %191)
  %193 = or i32 %188, %192
  %194 = load i32, i32* @L1_C_PROTO, align 4
  %195 = or i32 %193, %194
  store i32 %195, i32* %12, align 4
  %196 = load i32*, i32** %11, align 8
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* %12, align 4
  %199 = icmp ne i32 %197, %198
  br i1 %199, label %200, label %205

200:                                              ; preds = %178
  %201 = load i32, i32* %12, align 4
  %202 = load i32*, i32** %11, align 8
  store i32 %201, i32* %202, align 4
  %203 = load i32*, i32** %11, align 8
  %204 = call i32 @PTE_SYNC(i32* %203)
  store i32 1, i32* %17, align 4
  br label %205

205:                                              ; preds = %200, %178
  %206 = load i64, i64* %6, align 8
  %207 = call i32 @cpu_tlb_flushID_SE(i64 %206)
  %208 = call i32 (...) @cpu_cpwait()
  store i32 1, i32* %17, align 4
  br label %209

209:                                              ; preds = %205, %155, %147, %107, %99, %91, %74, %69, %60, %48, %36
  %210 = call i32 @rw_wunlock(i32* @pvh_global_lock)
  %211 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %212 = call i32 @PMAP_UNLOCK(%struct.TYPE_10__* %211)
  %213 = load i32, i32* %17, align 4
  ret i32 %213
}

declare dso_local i64 @L1_IDX(i64) #1

declare dso_local i32 @rw_wlock(i32*) #1

declare dso_local i32 @PMAP_LOCK(%struct.TYPE_10__*) #1

declare dso_local i64 @L2_IDX(i64) #1

declare dso_local i64 @L2_BUCKET(i64) #1

declare dso_local i64 @l2pte_index(i64) #1

declare dso_local i32 @l2pte_pa(i32) #1

declare dso_local %struct.vm_page* @PHYS_TO_VM_PAGE(i32) #1

declare dso_local %struct.pv_entry* @pmap_find_pv(%struct.vm_page*, %struct.TYPE_10__*, i64) #1

declare dso_local i32 @vm_page_dirty(%struct.vm_page*) #1

declare dso_local i32 @PTE_SYNC(i32*) #1

declare dso_local i32 @L1_C_DOM(i32) #1

declare dso_local i32 @cpu_tlb_flushID_SE(i64) #1

declare dso_local i32 @cpu_cpwait(...) #1

declare dso_local i32 @rw_wunlock(i32*) #1

declare dso_local i32 @PMAP_UNLOCK(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

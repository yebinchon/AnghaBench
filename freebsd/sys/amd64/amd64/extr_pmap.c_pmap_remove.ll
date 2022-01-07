; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64 }
%struct.rwlock = type { i32 }
%struct.spglist = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@PG_PS = common dso_local global i32 0, align 4
@NBPML4 = common dso_local global i32 0, align 4
@PML4MASK = common dso_local global i32 0, align 4
@NBPDP = common dso_local global i32 0, align 4
@PDPMASK = common dso_local global i32 0, align 4
@NBPDR = common dso_local global i32 0, align 4
@PDRMASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_remove(%struct.TYPE_17__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rwlock*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.spglist, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %18 = call i32 @pmap_global_bit(%struct.TYPE_17__* %17)
  store i32 %18, i32* %13, align 4
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %20 = call i32 @pmap_valid_bit(%struct.TYPE_17__* %19)
  store i32 %20, i32* %14, align 4
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  br label %209

27:                                               ; preds = %3
  store i32 0, i32* %16, align 4
  %28 = call i32 @SLIST_INIT(%struct.spglist* %15)
  %29 = call i32 (...) @pmap_delayed_invl_start()
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %31 = call i32 @PMAP_LOCK(%struct.TYPE_17__* %30)
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @pmap_pkru_on_remove(%struct.TYPE_17__* %32, i32 %33, i32 %34)
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @PAGE_SIZE, align 4
  %38 = add nsw i32 %36, %37
  %39 = load i32, i32* %6, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %59

41:                                               ; preds = %27
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32* @pmap_pde(%struct.TYPE_17__* %42, i32 %43)
  store i32* %44, i32** %12, align 8
  %45 = load i32*, i32** %12, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %58

47:                                               ; preds = %41
  %48 = load i32*, i32** %12, align 8
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @PG_PS, align 4
  %51 = and i32 %49, %50
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %55 = load i32, i32* %5, align 4
  %56 = load i32*, i32** %12, align 8
  %57 = call i32 @pmap_remove_page(%struct.TYPE_17__* %54, i32 %55, i32* %56, %struct.spglist* %15)
  br label %198

58:                                               ; preds = %47, %41
  br label %59

59:                                               ; preds = %58, %27
  store %struct.rwlock* null, %struct.rwlock** %7, align 8
  br label %60

60:                                               ; preds = %189, %59
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %191

64:                                               ; preds = %60
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  br label %191

71:                                               ; preds = %64
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %73 = load i32, i32* %5, align 4
  %74 = call i32* @pmap_pml4e(%struct.TYPE_17__* %72, i32 %73)
  store i32* %74, i32** %9, align 8
  %75 = load i32*, i32** %9, align 8
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %14, align 4
  %78 = and i32 %76, %77
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %93

80:                                               ; preds = %71
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @NBPML4, align 4
  %83 = add nsw i32 %81, %82
  %84 = load i32, i32* @PML4MASK, align 4
  %85 = xor i32 %84, -1
  %86 = and i32 %83, %85
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %5, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %80
  %91 = load i32, i32* %6, align 4
  store i32 %91, i32* %8, align 4
  br label %92

92:                                               ; preds = %90, %80
  br label %189

93:                                               ; preds = %71
  %94 = load i32*, i32** %9, align 8
  %95 = load i32, i32* %5, align 4
  %96 = call i32* @pmap_pml4e_to_pdpe(i32* %94, i32 %95)
  store i32* %96, i32** %10, align 8
  %97 = load i32*, i32** %10, align 8
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %14, align 4
  %100 = and i32 %98, %99
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %115

102:                                              ; preds = %93
  %103 = load i32, i32* %5, align 4
  %104 = load i32, i32* @NBPDP, align 4
  %105 = add nsw i32 %103, %104
  %106 = load i32, i32* @PDPMASK, align 4
  %107 = xor i32 %106, -1
  %108 = and i32 %105, %107
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* %5, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %102
  %113 = load i32, i32* %6, align 4
  store i32 %113, i32* %8, align 4
  br label %114

114:                                              ; preds = %112, %102
  br label %189

115:                                              ; preds = %93
  %116 = load i32, i32* %5, align 4
  %117 = load i32, i32* @NBPDR, align 4
  %118 = add nsw i32 %116, %117
  %119 = load i32, i32* @PDRMASK, align 4
  %120 = xor i32 %119, -1
  %121 = and i32 %118, %120
  store i32 %121, i32* %8, align 4
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* %5, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %115
  %126 = load i32, i32* %6, align 4
  store i32 %126, i32* %8, align 4
  br label %127

127:                                              ; preds = %125, %115
  %128 = load i32*, i32** %10, align 8
  %129 = load i32, i32* %5, align 4
  %130 = call i32* @pmap_pdpe_to_pde(i32* %128, i32 %129)
  store i32* %130, i32** %12, align 8
  %131 = load i32*, i32** %12, align 8
  %132 = load i32, i32* %131, align 4
  store i32 %132, i32* %11, align 4
  %133 = load i32, i32* %11, align 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %127
  br label %189

136:                                              ; preds = %127
  %137 = load i32, i32* %11, align 4
  %138 = load i32, i32* @PG_PS, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %174

141:                                              ; preds = %136
  %142 = load i32, i32* %5, align 4
  %143 = load i32, i32* @NBPDR, align 4
  %144 = add nsw i32 %142, %143
  %145 = load i32, i32* %8, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %162

147:                                              ; preds = %141
  %148 = load i32, i32* %6, align 4
  %149 = load i32, i32* %8, align 4
  %150 = icmp sge i32 %148, %149
  br i1 %150, label %151, label %162

151:                                              ; preds = %147
  %152 = load i32, i32* %11, align 4
  %153 = load i32, i32* %13, align 4
  %154 = and i32 %152, %153
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %151
  store i32 1, i32* %16, align 4
  br label %157

157:                                              ; preds = %156, %151
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %159 = load i32*, i32** %12, align 8
  %160 = load i32, i32* %5, align 4
  %161 = call i32 @pmap_remove_pde(%struct.TYPE_17__* %158, i32* %159, i32 %160, %struct.spglist* %15, %struct.rwlock** %7)
  br label %189

162:                                              ; preds = %147, %141
  %163 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %164 = load i32*, i32** %12, align 8
  %165 = load i32, i32* %5, align 4
  %166 = call i32 @pmap_demote_pde_locked(%struct.TYPE_17__* %163, i32* %164, i32 %165, %struct.rwlock** %7)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %169, label %168

168:                                              ; preds = %162
  br label %189

169:                                              ; preds = %162
  %170 = load i32*, i32** %12, align 8
  %171 = load i32, i32* %170, align 4
  store i32 %171, i32* %11, align 4
  br label %172

172:                                              ; preds = %169
  br label %173

173:                                              ; preds = %172
  br label %174

174:                                              ; preds = %173, %136
  %175 = load i32, i32* %8, align 4
  %176 = load i32, i32* %6, align 4
  %177 = icmp sgt i32 %175, %176
  br i1 %177, label %178, label %180

178:                                              ; preds = %174
  %179 = load i32, i32* %6, align 4
  store i32 %179, i32* %8, align 4
  br label %180

180:                                              ; preds = %178, %174
  %181 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %182 = load i32, i32* %5, align 4
  %183 = load i32, i32* %8, align 4
  %184 = load i32*, i32** %12, align 8
  %185 = call i64 @pmap_remove_ptes(%struct.TYPE_17__* %181, i32 %182, i32 %183, i32* %184, %struct.spglist* %15, %struct.rwlock** %7)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %180
  store i32 1, i32* %16, align 4
  br label %188

188:                                              ; preds = %187, %180
  br label %189

189:                                              ; preds = %188, %168, %157, %135, %114, %92
  %190 = load i32, i32* %8, align 4
  store i32 %190, i32* %5, align 4
  br label %60

191:                                              ; preds = %70, %60
  %192 = load %struct.rwlock*, %struct.rwlock** %7, align 8
  %193 = icmp ne %struct.rwlock* %192, null
  br i1 %193, label %194, label %197

194:                                              ; preds = %191
  %195 = load %struct.rwlock*, %struct.rwlock** %7, align 8
  %196 = call i32 @rw_wunlock(%struct.rwlock* %195)
  br label %197

197:                                              ; preds = %194, %191
  br label %198

198:                                              ; preds = %197, %53
  %199 = load i32, i32* %16, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %204

201:                                              ; preds = %198
  %202 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %203 = call i32 @pmap_invalidate_all(%struct.TYPE_17__* %202)
  br label %204

204:                                              ; preds = %201, %198
  %205 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %206 = call i32 @PMAP_UNLOCK(%struct.TYPE_17__* %205)
  %207 = call i32 (...) @pmap_delayed_invl_finish()
  %208 = call i32 @vm_page_free_pages_toq(%struct.spglist* %15, i32 1)
  br label %209

209:                                              ; preds = %204, %26
  ret void
}

declare dso_local i32 @pmap_global_bit(%struct.TYPE_17__*) #1

declare dso_local i32 @pmap_valid_bit(%struct.TYPE_17__*) #1

declare dso_local i32 @SLIST_INIT(%struct.spglist*) #1

declare dso_local i32 @pmap_delayed_invl_start(...) #1

declare dso_local i32 @PMAP_LOCK(%struct.TYPE_17__*) #1

declare dso_local i32 @pmap_pkru_on_remove(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32* @pmap_pde(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @pmap_remove_page(%struct.TYPE_17__*, i32, i32*, %struct.spglist*) #1

declare dso_local i32* @pmap_pml4e(%struct.TYPE_17__*, i32) #1

declare dso_local i32* @pmap_pml4e_to_pdpe(i32*, i32) #1

declare dso_local i32* @pmap_pdpe_to_pde(i32*, i32) #1

declare dso_local i32 @pmap_remove_pde(%struct.TYPE_17__*, i32*, i32, %struct.spglist*, %struct.rwlock**) #1

declare dso_local i32 @pmap_demote_pde_locked(%struct.TYPE_17__*, i32*, i32, %struct.rwlock**) #1

declare dso_local i64 @pmap_remove_ptes(%struct.TYPE_17__*, i32, i32, i32*, %struct.spglist*, %struct.rwlock**) #1

declare dso_local i32 @rw_wunlock(%struct.rwlock*) #1

declare dso_local i32 @pmap_invalidate_all(%struct.TYPE_17__*) #1

declare dso_local i32 @PMAP_UNLOCK(%struct.TYPE_17__*) #1

declare dso_local i32 @pmap_delayed_invl_finish(...) #1

declare dso_local i32 @vm_page_free_pages_toq(%struct.spglist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_mp_machdep.c_cpu_mp_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_mp_machdep.c_cpu_mp_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (...)* }

@MAXCPU = common dso_local global i32 0, align 4
@cpu_apic_ids = common dso_local global i32* null, align 8
@pmap_pcid_enabled = common dso_local global i64 0, align 8
@invpcid_works = common dso_local global i64 0, align 8
@IPI_INVLTLB = common dso_local global i32 0, align 4
@pti = common dso_local global i64 0, align 8
@invltlb_invpcid_pti_pti = common dso_local global i32 0, align 4
@invltlb_invpcid_nopti = common dso_local global i32 0, align 4
@SDT_SYSIGT = common dso_local global i32 0, align 4
@SEL_KPL = common dso_local global i32 0, align 4
@IPI_INVLPG = common dso_local global i32 0, align 4
@invlpg_invpcid_pti = common dso_local global i32 0, align 4
@invlpg_invpcid = common dso_local global i32 0, align 4
@IPI_INVLRNG = common dso_local global i32 0, align 4
@invlrng_invpcid_pti = common dso_local global i32 0, align 4
@invlrng_invpcid = common dso_local global i32 0, align 4
@invltlb_pcid_pti = common dso_local global i32 0, align 4
@invltlb_pcid = common dso_local global i32 0, align 4
@invlpg_pcid_pti = common dso_local global i32 0, align 4
@invlpg_pcid = common dso_local global i32 0, align 4
@invlrng_pcid_pti = common dso_local global i32 0, align 4
@invlrng_pcid = common dso_local global i32 0, align 4
@invltlb_pti = common dso_local global i32 0, align 4
@invltlb = common dso_local global i32 0, align 4
@invlpg_pti = common dso_local global i32 0, align 4
@invlpg = common dso_local global i32 0, align 4
@invlrng_pti = common dso_local global i32 0, align 4
@invlrng = common dso_local global i32 0, align 4
@IPI_INVLCACHE = common dso_local global i32 0, align 4
@invlcache_pti = common dso_local global i32 0, align 4
@invlcache = common dso_local global i32 0, align 4
@IPI_RENDEZVOUS = common dso_local global i32 0, align 4
@rendezvous_pti = common dso_local global i32 0, align 4
@rendezvous = common dso_local global i32 0, align 4
@IPI_BITMAP_VECTOR = common dso_local global i32 0, align 4
@ipi_intr_bitmap_handler_pti = common dso_local global i32 0, align 4
@ipi_intr_bitmap_handler = common dso_local global i32 0, align 4
@IPI_STOP = common dso_local global i32 0, align 4
@cpustop_pti = common dso_local global i32 0, align 4
@cpustop = common dso_local global i32 0, align 4
@IPI_SUSPEND = common dso_local global i32 0, align 4
@cpususpend_pti = common dso_local global i32 0, align 4
@cpususpend = common dso_local global i32 0, align 4
@boot_cpu_id = common dso_local global i32 0, align 4
@apic_id = common dso_local global i32 0, align 4
@cpu_info = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [40 x i8] c"BSP's APIC ID doesn't match boot_cpu_id\00", align 1
@init_ops = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_mp_start() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %11, %0
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* @MAXCPU, align 4
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = load i32*, i32** @cpu_apic_ids, align 8
  %8 = load i32, i32* %1, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, i32* %7, i64 %9
  store i32 -1, i32* %10, align 4
  br label %11

11:                                               ; preds = %6
  %12 = load i32, i32* %1, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %1, align 4
  br label %2

14:                                               ; preds = %2
  %15 = load i64, i64* @pmap_pcid_enabled, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %107

17:                                               ; preds = %14
  %18 = load i64, i64* @invpcid_works, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %63

20:                                               ; preds = %17
  %21 = load i32, i32* @IPI_INVLTLB, align 4
  %22 = load i64, i64* @pti, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* @invltlb_invpcid_pti_pti, align 4
  %26 = call i32 @IDTVEC(i32 %25)
  br label %30

27:                                               ; preds = %20
  %28 = load i32, i32* @invltlb_invpcid_nopti, align 4
  %29 = call i32 @IDTVEC(i32 %28)
  br label %30

30:                                               ; preds = %27, %24
  %31 = phi i32 [ %26, %24 ], [ %29, %27 ]
  %32 = load i32, i32* @SDT_SYSIGT, align 4
  %33 = load i32, i32* @SEL_KPL, align 4
  %34 = call i32 @setidt(i32 %21, i32 %31, i32 %32, i32 %33, i32 0)
  %35 = load i32, i32* @IPI_INVLPG, align 4
  %36 = load i64, i64* @pti, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load i32, i32* @invlpg_invpcid_pti, align 4
  %40 = call i32 @IDTVEC(i32 %39)
  br label %44

41:                                               ; preds = %30
  %42 = load i32, i32* @invlpg_invpcid, align 4
  %43 = call i32 @IDTVEC(i32 %42)
  br label %44

44:                                               ; preds = %41, %38
  %45 = phi i32 [ %40, %38 ], [ %43, %41 ]
  %46 = load i32, i32* @SDT_SYSIGT, align 4
  %47 = load i32, i32* @SEL_KPL, align 4
  %48 = call i32 @setidt(i32 %35, i32 %45, i32 %46, i32 %47, i32 0)
  %49 = load i32, i32* @IPI_INVLRNG, align 4
  %50 = load i64, i64* @pti, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %44
  %53 = load i32, i32* @invlrng_invpcid_pti, align 4
  %54 = call i32 @IDTVEC(i32 %53)
  br label %58

55:                                               ; preds = %44
  %56 = load i32, i32* @invlrng_invpcid, align 4
  %57 = call i32 @IDTVEC(i32 %56)
  br label %58

58:                                               ; preds = %55, %52
  %59 = phi i32 [ %54, %52 ], [ %57, %55 ]
  %60 = load i32, i32* @SDT_SYSIGT, align 4
  %61 = load i32, i32* @SEL_KPL, align 4
  %62 = call i32 @setidt(i32 %49, i32 %59, i32 %60, i32 %61, i32 0)
  br label %106

63:                                               ; preds = %17
  %64 = load i32, i32* @IPI_INVLTLB, align 4
  %65 = load i64, i64* @pti, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load i32, i32* @invltlb_pcid_pti, align 4
  %69 = call i32 @IDTVEC(i32 %68)
  br label %73

70:                                               ; preds = %63
  %71 = load i32, i32* @invltlb_pcid, align 4
  %72 = call i32 @IDTVEC(i32 %71)
  br label %73

73:                                               ; preds = %70, %67
  %74 = phi i32 [ %69, %67 ], [ %72, %70 ]
  %75 = load i32, i32* @SDT_SYSIGT, align 4
  %76 = load i32, i32* @SEL_KPL, align 4
  %77 = call i32 @setidt(i32 %64, i32 %74, i32 %75, i32 %76, i32 0)
  %78 = load i32, i32* @IPI_INVLPG, align 4
  %79 = load i64, i64* @pti, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %73
  %82 = load i32, i32* @invlpg_pcid_pti, align 4
  %83 = call i32 @IDTVEC(i32 %82)
  br label %87

84:                                               ; preds = %73
  %85 = load i32, i32* @invlpg_pcid, align 4
  %86 = call i32 @IDTVEC(i32 %85)
  br label %87

87:                                               ; preds = %84, %81
  %88 = phi i32 [ %83, %81 ], [ %86, %84 ]
  %89 = load i32, i32* @SDT_SYSIGT, align 4
  %90 = load i32, i32* @SEL_KPL, align 4
  %91 = call i32 @setidt(i32 %78, i32 %88, i32 %89, i32 %90, i32 0)
  %92 = load i32, i32* @IPI_INVLRNG, align 4
  %93 = load i64, i64* @pti, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %87
  %96 = load i32, i32* @invlrng_pcid_pti, align 4
  %97 = call i32 @IDTVEC(i32 %96)
  br label %101

98:                                               ; preds = %87
  %99 = load i32, i32* @invlrng_pcid, align 4
  %100 = call i32 @IDTVEC(i32 %99)
  br label %101

101:                                              ; preds = %98, %95
  %102 = phi i32 [ %97, %95 ], [ %100, %98 ]
  %103 = load i32, i32* @SDT_SYSIGT, align 4
  %104 = load i32, i32* @SEL_KPL, align 4
  %105 = call i32 @setidt(i32 %92, i32 %102, i32 %103, i32 %104, i32 0)
  br label %106

106:                                              ; preds = %101, %58
  br label %150

107:                                              ; preds = %14
  %108 = load i32, i32* @IPI_INVLTLB, align 4
  %109 = load i64, i64* @pti, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %107
  %112 = load i32, i32* @invltlb_pti, align 4
  %113 = call i32 @IDTVEC(i32 %112)
  br label %117

114:                                              ; preds = %107
  %115 = load i32, i32* @invltlb, align 4
  %116 = call i32 @IDTVEC(i32 %115)
  br label %117

117:                                              ; preds = %114, %111
  %118 = phi i32 [ %113, %111 ], [ %116, %114 ]
  %119 = load i32, i32* @SDT_SYSIGT, align 4
  %120 = load i32, i32* @SEL_KPL, align 4
  %121 = call i32 @setidt(i32 %108, i32 %118, i32 %119, i32 %120, i32 0)
  %122 = load i32, i32* @IPI_INVLPG, align 4
  %123 = load i64, i64* @pti, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %117
  %126 = load i32, i32* @invlpg_pti, align 4
  %127 = call i32 @IDTVEC(i32 %126)
  br label %131

128:                                              ; preds = %117
  %129 = load i32, i32* @invlpg, align 4
  %130 = call i32 @IDTVEC(i32 %129)
  br label %131

131:                                              ; preds = %128, %125
  %132 = phi i32 [ %127, %125 ], [ %130, %128 ]
  %133 = load i32, i32* @SDT_SYSIGT, align 4
  %134 = load i32, i32* @SEL_KPL, align 4
  %135 = call i32 @setidt(i32 %122, i32 %132, i32 %133, i32 %134, i32 0)
  %136 = load i32, i32* @IPI_INVLRNG, align 4
  %137 = load i64, i64* @pti, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %131
  %140 = load i32, i32* @invlrng_pti, align 4
  %141 = call i32 @IDTVEC(i32 %140)
  br label %145

142:                                              ; preds = %131
  %143 = load i32, i32* @invlrng, align 4
  %144 = call i32 @IDTVEC(i32 %143)
  br label %145

145:                                              ; preds = %142, %139
  %146 = phi i32 [ %141, %139 ], [ %144, %142 ]
  %147 = load i32, i32* @SDT_SYSIGT, align 4
  %148 = load i32, i32* @SEL_KPL, align 4
  %149 = call i32 @setidt(i32 %136, i32 %146, i32 %147, i32 %148, i32 0)
  br label %150

150:                                              ; preds = %145, %106
  %151 = load i32, i32* @IPI_INVLCACHE, align 4
  %152 = load i64, i64* @pti, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %150
  %155 = load i32, i32* @invlcache_pti, align 4
  %156 = call i32 @IDTVEC(i32 %155)
  br label %160

157:                                              ; preds = %150
  %158 = load i32, i32* @invlcache, align 4
  %159 = call i32 @IDTVEC(i32 %158)
  br label %160

160:                                              ; preds = %157, %154
  %161 = phi i32 [ %156, %154 ], [ %159, %157 ]
  %162 = load i32, i32* @SDT_SYSIGT, align 4
  %163 = load i32, i32* @SEL_KPL, align 4
  %164 = call i32 @setidt(i32 %151, i32 %161, i32 %162, i32 %163, i32 0)
  %165 = load i32, i32* @IPI_RENDEZVOUS, align 4
  %166 = load i64, i64* @pti, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %160
  %169 = load i32, i32* @rendezvous_pti, align 4
  %170 = call i32 @IDTVEC(i32 %169)
  br label %174

171:                                              ; preds = %160
  %172 = load i32, i32* @rendezvous, align 4
  %173 = call i32 @IDTVEC(i32 %172)
  br label %174

174:                                              ; preds = %171, %168
  %175 = phi i32 [ %170, %168 ], [ %173, %171 ]
  %176 = load i32, i32* @SDT_SYSIGT, align 4
  %177 = load i32, i32* @SEL_KPL, align 4
  %178 = call i32 @setidt(i32 %165, i32 %175, i32 %176, i32 %177, i32 0)
  %179 = load i32, i32* @IPI_BITMAP_VECTOR, align 4
  %180 = load i64, i64* @pti, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %174
  %183 = load i32, i32* @ipi_intr_bitmap_handler_pti, align 4
  %184 = call i32 @IDTVEC(i32 %183)
  br label %188

185:                                              ; preds = %174
  %186 = load i32, i32* @ipi_intr_bitmap_handler, align 4
  %187 = call i32 @IDTVEC(i32 %186)
  br label %188

188:                                              ; preds = %185, %182
  %189 = phi i32 [ %184, %182 ], [ %187, %185 ]
  %190 = load i32, i32* @SDT_SYSIGT, align 4
  %191 = load i32, i32* @SEL_KPL, align 4
  %192 = call i32 @setidt(i32 %179, i32 %189, i32 %190, i32 %191, i32 0)
  %193 = load i32, i32* @IPI_STOP, align 4
  %194 = load i64, i64* @pti, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %188
  %197 = load i32, i32* @cpustop_pti, align 4
  %198 = call i32 @IDTVEC(i32 %197)
  br label %202

199:                                              ; preds = %188
  %200 = load i32, i32* @cpustop, align 4
  %201 = call i32 @IDTVEC(i32 %200)
  br label %202

202:                                              ; preds = %199, %196
  %203 = phi i32 [ %198, %196 ], [ %201, %199 ]
  %204 = load i32, i32* @SDT_SYSIGT, align 4
  %205 = load i32, i32* @SEL_KPL, align 4
  %206 = call i32 @setidt(i32 %193, i32 %203, i32 %204, i32 %205, i32 0)
  %207 = load i32, i32* @IPI_SUSPEND, align 4
  %208 = load i64, i64* @pti, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %202
  %211 = load i32, i32* @cpususpend_pti, align 4
  %212 = call i32 @IDTVEC(i32 %211)
  br label %216

213:                                              ; preds = %202
  %214 = load i32, i32* @cpususpend, align 4
  %215 = call i32 @IDTVEC(i32 %214)
  br label %216

216:                                              ; preds = %213, %210
  %217 = phi i32 [ %212, %210 ], [ %215, %213 ]
  %218 = load i32, i32* @SDT_SYSIGT, align 4
  %219 = load i32, i32* @SEL_KPL, align 4
  %220 = call i32 @setidt(i32 %207, i32 %217, i32 %218, i32 %219, i32 0)
  %221 = load i32, i32* @boot_cpu_id, align 4
  %222 = icmp eq i32 %221, -1
  br i1 %222, label %223, label %231

223:                                              ; preds = %216
  %224 = load i32, i32* @apic_id, align 4
  %225 = call i32 @PCPU_GET(i32 %224)
  store i32 %225, i32* @boot_cpu_id, align 4
  %226 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cpu_info, align 8
  %227 = load i32, i32* @boot_cpu_id, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %226, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %229, i32 0, i32 0
  store i32 1, i32* %230, align 4
  br label %238

231:                                              ; preds = %216
  %232 = load i32, i32* @boot_cpu_id, align 4
  %233 = load i32, i32* @apic_id, align 4
  %234 = call i32 @PCPU_GET(i32 %233)
  %235 = icmp eq i32 %232, %234
  %236 = zext i1 %235 to i32
  %237 = call i32 @KASSERT(i32 %236, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %238

238:                                              ; preds = %231, %223
  %239 = call i32 (...) @topo_probe()
  %240 = call i32 (...) @assign_cpu_ids()
  %241 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @init_ops, i32 0, i32 0), align 8
  %242 = call i32 (...) %241()
  %243 = call i32 (...) @set_interrupt_apic_ids()
  ret void
}

declare dso_local i32 @setidt(i32, i32, i32, i32, i32) #1

declare dso_local i32 @IDTVEC(i32) #1

declare dso_local i32 @PCPU_GET(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @topo_probe(...) #1

declare dso_local i32 @assign_cpu_ids(...) #1

declare dso_local i32 @set_interrupt_apic_ids(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

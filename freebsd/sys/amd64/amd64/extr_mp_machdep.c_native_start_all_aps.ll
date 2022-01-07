; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_mp_machdep.c_native_start_all_aps.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_mp_machdep.c_native_start_all_aps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ap_boot_mtx = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"ap boot\00", align 1
@MTX_SPIN = common dso_local global i32 0, align 4
@mptramp_start = common dso_local global i32 0, align 4
@boot_address = common dso_local global i32 0, align 4
@bootMP_size = common dso_local global i32 0, align 4
@mptramp_pagetables = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PG_V = common dso_local global i32 0, align 4
@PG_RW = common dso_local global i32 0, align 4
@PG_U = common dso_local global i32 0, align 4
@PG_PS = common dso_local global i32 0, align 4
@WARMBOOT_OFF = common dso_local global i64 0, align 8
@CMOS_REG = common dso_local global i32 0, align 4
@BIOS_RESET = common dso_local global i32 0, align 4
@CMOS_DATA = common dso_local global i32 0, align 4
@WARMBOOT_TARGET = common dso_local global i32 0, align 4
@WARMBOOT_SEG = common dso_local global i64 0, align 8
@BIOS_WARM = common dso_local global i32 0, align 4
@mp_ncpus = common dso_local global i32 0, align 4
@cpu_apic_ids = common dso_local global i32* null, align 8
@kstack_pages = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@bootstacks = common dso_local global i8** null, align 8
@doublefault_stack = common dso_local global i8* null, align 8
@mce_stack = common dso_local global i8* null, align 8
@nmi_stack = common dso_local global i8* null, align 8
@dbg_stack = common dso_local global i8* null, align 8
@DPCPU_SIZE = common dso_local global i32 0, align 4
@dpcpu = common dso_local global i8* null, align 8
@bootSTK = common dso_local global i8* null, align 8
@bootAP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"AP #%d (PHY# %d) failed!\00", align 1
@all_cpus = common dso_local global i32 0, align 4
@mp_naps = common dso_local global i32 0, align 4
@vm_ndomains = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @native_start_all_aps() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = load i32, i32* @MTX_SPIN, align 4
  %11 = call i32 @mtx_init(i32* @ap_boot_mtx, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* null, i32 %10)
  %12 = load i32, i32* @mptramp_start, align 4
  %13 = load i32, i32* @boot_address, align 4
  %14 = call i64 @PHYS_TO_DMAP(i32 %13)
  %15 = inttoptr i64 %14 to i8*
  %16 = load i32, i32* @bootMP_size, align 4
  %17 = call i32 @bcopy(i32 %12, i8* %15, i32 %16)
  %18 = load i32, i32* @mptramp_pagetables, align 4
  %19 = call i64 @PHYS_TO_DMAP(i32 %18)
  %20 = inttoptr i64 %19 to i32*
  store i32* %20, i32** %1, align 8
  %21 = load i32*, i32** %1, align 8
  %22 = load i32, i32* @PAGE_SIZE, align 4
  %23 = sext i32 %22 to i64
  %24 = udiv i64 %23, 4
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  store i32* %25, i32** %2, align 8
  %26 = load i32*, i32** %2, align 8
  %27 = load i32, i32* @PAGE_SIZE, align 4
  %28 = sext i32 %27 to i64
  %29 = udiv i64 %28, 4
  %30 = getelementptr inbounds i32, i32* %26, i64 %29
  store i32* %30, i32** %3, align 8
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %95, %0
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %32, 512
  br i1 %33, label %34, label %98

34:                                               ; preds = %31
  %35 = load i32, i32* @mptramp_pagetables, align 4
  %36 = load i32, i32* @PAGE_SIZE, align 4
  %37 = add nsw i32 %35, %36
  %38 = sext i32 %37 to i64
  %39 = trunc i64 %38 to i32
  %40 = load i32*, i32** %1, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  store i32 %39, i32* %43, align 4
  %44 = load i32, i32* @PG_V, align 4
  %45 = load i32, i32* @PG_RW, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @PG_U, align 4
  %48 = or i32 %46, %47
  %49 = load i32*, i32** %1, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %48
  store i32 %54, i32* %52, align 4
  %55 = load i32, i32* @mptramp_pagetables, align 4
  %56 = load i32, i32* @PAGE_SIZE, align 4
  %57 = mul nsw i32 2, %56
  %58 = add nsw i32 %55, %57
  %59 = sext i32 %58 to i64
  %60 = trunc i64 %59 to i32
  %61 = load i32*, i32** %2, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  store i32 %60, i32* %64, align 4
  %65 = load i32, i32* @PG_V, align 4
  %66 = load i32, i32* @PG_RW, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @PG_U, align 4
  %69 = or i32 %67, %68
  %70 = load i32*, i32** %2, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %69
  store i32 %75, i32* %73, align 4
  %76 = load i32, i32* %8, align 4
  %77 = mul nsw i32 %76, 2097152
  %78 = load i32*, i32** %3, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32 %77, i32* %81, align 4
  %82 = load i32, i32* @PG_V, align 4
  %83 = load i32, i32* @PG_RW, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @PG_PS, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @PG_U, align 4
  %88 = or i32 %86, %87
  %89 = load i32*, i32** %3, align 8
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %88
  store i32 %94, i32* %92, align 4
  br label %95

95:                                               ; preds = %34
  %96 = load i32, i32* %8, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %8, align 4
  br label %31

98:                                               ; preds = %31
  %99 = load i64, i64* @WARMBOOT_OFF, align 8
  %100 = inttoptr i64 %99 to i32*
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %4, align 4
  %102 = load i32, i32* @CMOS_REG, align 4
  %103 = load i32, i32* @BIOS_RESET, align 4
  %104 = call i32 @outb(i32 %102, i32 %103)
  %105 = load i32, i32* @CMOS_DATA, align 4
  %106 = call i32 @inb(i32 %105)
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* @WARMBOOT_TARGET, align 4
  %108 = load i64, i64* @WARMBOOT_OFF, align 8
  %109 = inttoptr i64 %108 to i32*
  store volatile i32 %107, i32* %109, align 4
  %110 = load i32, i32* @boot_address, align 4
  %111 = ashr i32 %110, 4
  %112 = load i64, i64* @WARMBOOT_SEG, align 8
  %113 = inttoptr i64 %112 to i32*
  store volatile i32 %111, i32* %113, align 4
  %114 = load i32, i32* @CMOS_REG, align 4
  %115 = load i32, i32* @BIOS_RESET, align 4
  %116 = call i32 @outb(i32 %114, i32 %115)
  %117 = load i32, i32* @CMOS_DATA, align 4
  %118 = load i32, i32* @BIOS_WARM, align 4
  %119 = call i32 @outb(i32 %117, i32 %118)
  store i32 0, i32* %7, align 4
  store i32 1, i32* %6, align 4
  br label %120

120:                                              ; preds = %203, %98
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* @mp_ncpus, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %206

124:                                              ; preds = %120
  %125 = load i32*, i32** @cpu_apic_ids, align 8
  %126 = load i32, i32* %6, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* %5, align 4
  %130 = load i32, i32* @kstack_pages, align 4
  %131 = load i32, i32* @PAGE_SIZE, align 4
  %132 = mul nsw i32 %130, %131
  %133 = load i32, i32* @M_WAITOK, align 4
  %134 = load i32, i32* @M_ZERO, align 4
  %135 = or i32 %133, %134
  %136 = call i64 @kmem_malloc(i32 %132, i32 %135)
  %137 = inttoptr i64 %136 to i8*
  %138 = load i8**, i8*** @bootstacks, align 8
  %139 = load i32, i32* %6, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8*, i8** %138, i64 %140
  store i8* %137, i8** %141, align 8
  %142 = load i32, i32* @PAGE_SIZE, align 4
  %143 = load i32, i32* @M_WAITOK, align 4
  %144 = load i32, i32* @M_ZERO, align 4
  %145 = or i32 %143, %144
  %146 = call i64 @kmem_malloc(i32 %142, i32 %145)
  %147 = inttoptr i64 %146 to i8*
  store i8* %147, i8** @doublefault_stack, align 8
  %148 = load i32, i32* @PAGE_SIZE, align 4
  %149 = load i32, i32* @M_WAITOK, align 4
  %150 = load i32, i32* @M_ZERO, align 4
  %151 = or i32 %149, %150
  %152 = call i64 @kmem_malloc(i32 %148, i32 %151)
  %153 = inttoptr i64 %152 to i8*
  store i8* %153, i8** @mce_stack, align 8
  %154 = load i32, i32* %7, align 4
  %155 = call i32 @DOMAINSET_PREF(i32 %154)
  %156 = load i32, i32* @PAGE_SIZE, align 4
  %157 = load i32, i32* @M_WAITOK, align 4
  %158 = load i32, i32* @M_ZERO, align 4
  %159 = or i32 %157, %158
  %160 = call i64 @kmem_malloc_domainset(i32 %155, i32 %156, i32 %159)
  %161 = inttoptr i64 %160 to i8*
  store i8* %161, i8** @nmi_stack, align 8
  %162 = load i32, i32* %7, align 4
  %163 = call i32 @DOMAINSET_PREF(i32 %162)
  %164 = load i32, i32* @PAGE_SIZE, align 4
  %165 = load i32, i32* @M_WAITOK, align 4
  %166 = load i32, i32* @M_ZERO, align 4
  %167 = or i32 %165, %166
  %168 = call i64 @kmem_malloc_domainset(i32 %163, i32 %164, i32 %167)
  %169 = inttoptr i64 %168 to i8*
  store i8* %169, i8** @dbg_stack, align 8
  %170 = load i32, i32* %7, align 4
  %171 = call i32 @DOMAINSET_PREF(i32 %170)
  %172 = load i32, i32* @DPCPU_SIZE, align 4
  %173 = load i32, i32* @M_WAITOK, align 4
  %174 = load i32, i32* @M_ZERO, align 4
  %175 = or i32 %173, %174
  %176 = call i64 @kmem_malloc_domainset(i32 %171, i32 %172, i32 %175)
  %177 = inttoptr i64 %176 to i8*
  store i8* %177, i8** @dpcpu, align 8
  %178 = load i8**, i8*** @bootstacks, align 8
  %179 = load i32, i32* %6, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i8*, i8** %178, i64 %180
  %182 = load i8*, i8** %181, align 8
  %183 = load i32, i32* @kstack_pages, align 4
  %184 = load i32, i32* @PAGE_SIZE, align 4
  %185 = mul nsw i32 %183, %184
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i8, i8* %182, i64 %186
  %188 = getelementptr inbounds i8, i8* %187, i64 -8
  store i8* %188, i8** @bootSTK, align 8
  %189 = load i32, i32* %6, align 4
  store i32 %189, i32* @bootAP, align 4
  %190 = load i32, i32* %5, align 4
  %191 = call i32 @start_ap(i32 %190)
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %200, label %193

193:                                              ; preds = %124
  %194 = load i32, i32* %4, align 4
  %195 = load i64, i64* @WARMBOOT_OFF, align 8
  %196 = inttoptr i64 %195 to i32*
  store i32 %194, i32* %196, align 4
  %197 = load i32, i32* %6, align 4
  %198 = load i32, i32* %5, align 4
  %199 = call i32 @panic(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %197, i32 %198)
  br label %200

200:                                              ; preds = %193, %124
  %201 = load i32, i32* %6, align 4
  %202 = call i32 @CPU_SET(i32 %201, i32* @all_cpus)
  br label %203

203:                                              ; preds = %200
  %204 = load i32, i32* %6, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %6, align 4
  br label %120

206:                                              ; preds = %120
  %207 = load i32, i32* %4, align 4
  %208 = load i64, i64* @WARMBOOT_OFF, align 8
  %209 = inttoptr i64 %208 to i32*
  store i32 %207, i32* %209, align 4
  %210 = load i32, i32* @CMOS_REG, align 4
  %211 = load i32, i32* @BIOS_RESET, align 4
  %212 = call i32 @outb(i32 %210, i32 %211)
  %213 = load i32, i32* @CMOS_DATA, align 4
  %214 = load i32, i32* %9, align 4
  %215 = call i32 @outb(i32 %213, i32 %214)
  %216 = load i32, i32* @mp_naps, align 4
  ret i32 %216
}

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @bcopy(i32, i8*, i32) #1

declare dso_local i64 @PHYS_TO_DMAP(i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i64 @kmem_malloc(i32, i32) #1

declare dso_local i64 @kmem_malloc_domainset(i32, i32, i32) #1

declare dso_local i32 @DOMAINSET_PREF(i32) #1

declare dso_local i32 @start_ap(i32) #1

declare dso_local i32 @panic(i8*, i32, i32) #1

declare dso_local i32 @CPU_SET(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

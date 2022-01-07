; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm_minidump_amd64.c__amd64_minidump_vatop.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm_minidump_amd64.c__amd64_minidump_vatop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, %struct.vmstate* }
%struct.vmstate = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }

@AMD64_NPTEPG = common dso_local global i32 0, align 4
@AMD64_PAGE_MASK = common dso_local global i32 0, align 4
@AMD64_PDRSHIFT = common dso_local global i32 0, align 4
@AMD64_PG_V = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"_amd64_minidump_vatop: pde not valid\00", align 1
@AMD64_PG_PS = common dso_local global i32 0, align 4
@AMD64_PG_FRAME = common dso_local global i32 0, align 4
@AMD64_PAGE_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"cannot find page table entry for %ju\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"cannot read page table entry for %ju\00", align 1
@AMD64_PAGE_SHIFT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"_amd64_minidump_vatop: pte not valid\00", align 1
@AMD64_PG_PS_FRAME = common dso_local global i32 0, align 4
@AMD64_PDRMASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [62 x i8] c"_amd64_minidump_vatop: physical address 0x%jx not in minidump\00", align 1
@.str.5 = private unnamed_addr constant [64 x i8] c"_amd64_minidump_vatop: direct map address 0x%jx not in minidump\00", align 1
@.str.6 = private unnamed_addr constant [60 x i8] c"_amd64_minidump_vatop: virtual address 0x%jx not minidumped\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"invalid address (0x%jx)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32, i32*)* @_amd64_minidump_vatop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_amd64_minidump_vatop(%struct.TYPE_8__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.vmstate*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %19 = load i32, i32* @AMD64_NPTEPG, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %8, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %9, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 2
  %25 = load %struct.vmstate*, %struct.vmstate** %24, align 8
  store %struct.vmstate* %25, %struct.vmstate** %10, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @AMD64_PAGE_MASK, align 4
  %28 = and i32 %26, %27
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.vmstate*, %struct.vmstate** %10, align 8
  %31 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp sge i32 %29, %33
  br i1 %34, label %35, label %168

35:                                               ; preds = %3
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.vmstate*, %struct.vmstate** %10, align 8
  %38 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 %36, %40
  %42 = load i32, i32* @AMD64_PDRSHIFT, align 4
  %43 = ashr i32 %41, %42
  store i32 %43, i32* %15, align 4
  %44 = load i32, i32* %15, align 4
  %45 = sext i32 %44 to i64
  %46 = load %struct.vmstate*, %struct.vmstate** %10, align 8
  %47 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = udiv i64 %50, 4
  %52 = icmp uge i64 %45, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %35
  br label %222

54:                                               ; preds = %35
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %56 = load i32, i32* %15, align 4
  %57 = call i32 @_amd64_pde_get(%struct.TYPE_8__* %55, i32 %56)
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* @AMD64_PG_V, align 4
  %60 = and i32 %58, %59
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %54
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 (%struct.TYPE_8__*, i32, i8*, ...) @_kvm_err(%struct.TYPE_8__* %63, i32 %66, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %222

68:                                               ; preds = %54
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* @AMD64_PG_PS, align 4
  %71 = and i32 %69, %70
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %133

73:                                               ; preds = %68
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* @AMD64_PG_FRAME, align 4
  %76 = and i32 %74, %75
  store i32 %76, i32* %16, align 4
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %78 = load i32, i32* %16, align 4
  %79 = load i64, i64* @AMD64_PAGE_SIZE, align 8
  %80 = call i32 @_kvm_pt_find(%struct.TYPE_8__* %77, i32 %78, i64 %79)
  store i32 %80, i32* %17, align 4
  %81 = load i32, i32* %17, align 4
  %82 = icmp eq i32 %81, -1
  br i1 %82, label %83, label %90

83:                                               ; preds = %73
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %16, align 4
  %89 = call i32 (%struct.TYPE_8__*, i32, i8*, ...) @_kvm_err(%struct.TYPE_8__* %84, i32 %87, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %88)
  br label %222

90:                                               ; preds = %73
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = bitcast i32* %22 to i32**
  %95 = load i64, i64* @AMD64_PAGE_SIZE, align 8
  %96 = load i32, i32* %17, align 4
  %97 = call i64 @pread(i32 %93, i32** %94, i64 %95, i32 %96)
  %98 = load i64, i64* @AMD64_PAGE_SIZE, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %107

100:                                              ; preds = %90
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* %16, align 4
  %106 = call i32 (%struct.TYPE_8__*, i32, i8*, ...) @_kvm_err(%struct.TYPE_8__* %101, i32 %104, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %105)
  br label %222

107:                                              ; preds = %90
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* @AMD64_PAGE_SHIFT, align 4
  %110 = ashr i32 %108, %109
  %111 = load i32, i32* @AMD64_NPTEPG, align 4
  %112 = sub nsw i32 %111, 1
  %113 = and i32 %110, %112
  store i32 %113, i32* %14, align 4
  %114 = load i32, i32* %14, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %22, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @le64toh(i32 %117)
  store i32 %118, i32* %13, align 4
  %119 = load i32, i32* %13, align 4
  %120 = load i32, i32* @AMD64_PG_V, align 4
  %121 = and i32 %119, %120
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %107
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i32 (%struct.TYPE_8__*, i32, i8*, ...) @_kvm_err(%struct.TYPE_8__* %124, i32 %127, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %222

129:                                              ; preds = %107
  %130 = load i32, i32* %13, align 4
  %131 = load i32, i32* @AMD64_PG_FRAME, align 4
  %132 = and i32 %130, %131
  store i32 %132, i32* %16, align 4
  br label %144

133:                                              ; preds = %68
  %134 = load i32, i32* %12, align 4
  %135 = load i32, i32* @AMD64_PG_PS_FRAME, align 4
  %136 = and i32 %134, %135
  store i32 %136, i32* %16, align 4
  %137 = load i32, i32* %6, align 4
  %138 = load i32, i32* @AMD64_PDRMASK, align 4
  %139 = and i32 %137, %138
  %140 = load i32, i32* %11, align 4
  %141 = xor i32 %139, %140
  %142 = load i32, i32* %16, align 4
  %143 = add nsw i32 %142, %141
  store i32 %143, i32* %16, align 4
  br label %144

144:                                              ; preds = %133, %129
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %146 = load i32, i32* %16, align 4
  %147 = load i64, i64* @AMD64_PAGE_SIZE, align 8
  %148 = call i32 @_kvm_pt_find(%struct.TYPE_8__* %145, i32 %146, i64 %147)
  store i32 %148, i32* %17, align 4
  %149 = load i32, i32* %17, align 4
  %150 = icmp eq i32 %149, -1
  br i1 %150, label %151, label %158

151:                                              ; preds = %144
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* %16, align 4
  %157 = call i32 (%struct.TYPE_8__*, i32, i8*, ...) @_kvm_err(%struct.TYPE_8__* %152, i32 %155, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.4, i64 0, i64 0), i32 %156)
  br label %222

158:                                              ; preds = %144
  %159 = load i32, i32* %17, align 4
  %160 = load i32, i32* %11, align 4
  %161 = add nsw i32 %159, %160
  %162 = load i32*, i32** %7, align 8
  store i32 %161, i32* %162, align 4
  %163 = load i64, i64* @AMD64_PAGE_SIZE, align 8
  %164 = load i32, i32* %11, align 4
  %165 = sext i32 %164 to i64
  %166 = sub nsw i64 %163, %165
  %167 = trunc i64 %166 to i32
  store i32 %167, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %226

168:                                              ; preds = %3
  %169 = load i32, i32* %6, align 4
  %170 = load %struct.vmstate*, %struct.vmstate** %10, align 8
  %171 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 4
  %174 = icmp sge i32 %169, %173
  br i1 %174, label %175, label %215

175:                                              ; preds = %168
  %176 = load i32, i32* %6, align 4
  %177 = load %struct.vmstate*, %struct.vmstate** %10, align 8
  %178 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = icmp slt i32 %176, %180
  br i1 %181, label %182, label %215

182:                                              ; preds = %175
  %183 = load i32, i32* %6, align 4
  %184 = load %struct.vmstate*, %struct.vmstate** %10, align 8
  %185 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 4
  %188 = sub nsw i32 %183, %187
  %189 = load i32, i32* @AMD64_PAGE_MASK, align 4
  %190 = xor i32 %189, -1
  %191 = and i32 %188, %190
  store i32 %191, i32* %16, align 4
  %192 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %193 = load i32, i32* %16, align 4
  %194 = load i64, i64* @AMD64_PAGE_SIZE, align 8
  %195 = call i32 @_kvm_pt_find(%struct.TYPE_8__* %192, i32 %193, i64 %194)
  store i32 %195, i32* %17, align 4
  %196 = load i32, i32* %17, align 4
  %197 = icmp eq i32 %196, -1
  br i1 %197, label %198, label %205

198:                                              ; preds = %182
  %199 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %200 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* %6, align 4
  %204 = call i32 (%struct.TYPE_8__*, i32, i8*, ...) @_kvm_err(%struct.TYPE_8__* %199, i32 %202, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.5, i64 0, i64 0), i32 %203)
  br label %222

205:                                              ; preds = %182
  %206 = load i32, i32* %17, align 4
  %207 = load i32, i32* %11, align 4
  %208 = add nsw i32 %206, %207
  %209 = load i32*, i32** %7, align 8
  store i32 %208, i32* %209, align 4
  %210 = load i64, i64* @AMD64_PAGE_SIZE, align 8
  %211 = load i32, i32* %11, align 4
  %212 = sext i32 %211 to i64
  %213 = sub nsw i64 %210, %212
  %214 = trunc i64 %213 to i32
  store i32 %214, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %226

215:                                              ; preds = %175, %168
  %216 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %217 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* %6, align 4
  %221 = call i32 (%struct.TYPE_8__*, i32, i8*, ...) @_kvm_err(%struct.TYPE_8__* %216, i32 %219, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.6, i64 0, i64 0), i32 %220)
  br label %222

222:                                              ; preds = %215, %198, %151, %123, %100, %83, %62, %53
  %223 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %224 = load i32, i32* %6, align 4
  %225 = call i32 (%struct.TYPE_8__*, i32, i8*, ...) @_kvm_err(%struct.TYPE_8__* %223, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %224)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %226

226:                                              ; preds = %222, %205, %158
  %227 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %227)
  %228 = load i32, i32* %4, align 4
  ret i32 %228
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @_amd64_pde_get(%struct.TYPE_8__*, i32) #2

declare dso_local i32 @_kvm_err(%struct.TYPE_8__*, i32, i8*, ...) #2

declare dso_local i32 @_kvm_pt_find(%struct.TYPE_8__*, i32, i64) #2

declare dso_local i64 @pread(i32, i32**, i64, i32) #2

declare dso_local i32 @le64toh(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

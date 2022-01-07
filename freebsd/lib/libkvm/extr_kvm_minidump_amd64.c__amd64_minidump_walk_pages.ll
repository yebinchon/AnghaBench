; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm_minidump_amd64.c__amd64_minidump_walk_pages.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm_minidump_amd64.c__amd64_minidump_walk_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.vmstate* }
%struct.vmstate = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i64, i64, i64, i32 }
%struct.kvm_bitmap = type { i32 }

@AMD64_PAGE_SIZE = common dso_local global i64 0, align 8
@AMD64_PDRSHIFT = common dso_local global i64 0, align 8
@AMD64_PG_V = common dso_local global i64 0, align 8
@AMD64_PG_PS = common dso_local global i64 0, align 8
@AMD64_PG_PS_FRAME = common dso_local global i64 0, align 8
@AMD64_PDRMASK = common dso_local global i64 0, align 8
@AMD64_NBPDR = common dso_local global i32 0, align 4
@AMD64_NPTEPG = common dso_local global i64 0, align 8
@AMD64_PG_FRAME = common dso_local global i64 0, align 8
@VM_PROT_READ = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32*, i8*)* @_amd64_minidump_walk_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_amd64_minidump_walk_pages(%struct.TYPE_8__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.vmstate*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.kvm_bitmap, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load %struct.vmstate*, %struct.vmstate** %24, align 8
  store %struct.vmstate* %25, %struct.vmstate** %8, align 8
  %26 = load %struct.vmstate*, %struct.vmstate** %8, align 8
  %27 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = udiv i64 %30, 8
  store i64 %31, i64* %9, align 8
  store i32 0, i32* %16, align 4
  %32 = load i64, i64* @AMD64_PAGE_SIZE, align 8
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %18, align 4
  %34 = load %struct.vmstate*, %struct.vmstate** %8, align 8
  %35 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %37, 2
  br i1 %38, label %39, label %40

39:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %212

40:                                               ; preds = %3
  %41 = load %struct.vmstate*, %struct.vmstate** %8, align 8
  %42 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @_kvm_bitmap_init(%struct.kvm_bitmap* %15, i32 %44, i64* %10)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %212

48:                                               ; preds = %40
  store i64 0, i64* %13, align 8
  br label %49

49:                                               ; preds = %165, %48
  %50 = load i64, i64* %13, align 8
  %51 = load i64, i64* %9, align 8
  %52 = icmp ult i64 %50, %51
  br i1 %52, label %53, label %168

53:                                               ; preds = %49
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %55 = load i64, i64* %13, align 8
  %56 = call i64 @_amd64_pde_get(%struct.TYPE_8__* %54, i64 %55)
  store i64 %56, i64* %19, align 8
  %57 = load %struct.vmstate*, %struct.vmstate** %8, align 8
  %58 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %13, align 8
  %62 = load i64, i64* @AMD64_PDRSHIFT, align 8
  %63 = shl i64 %61, %62
  %64 = add i64 %60, %63
  store i64 %64, i64* %14, align 8
  %65 = load i64, i64* %19, align 8
  %66 = load i64, i64* @AMD64_PG_V, align 8
  %67 = and i64 %65, %66
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %53
  br label %165

70:                                               ; preds = %53
  %71 = load i64, i64* %19, align 8
  %72 = load i64, i64* @AMD64_PG_PS, align 8
  %73 = and i64 %71, %72
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %110

75:                                               ; preds = %70
  %76 = load i64, i64* %19, align 8
  %77 = load i64, i64* @AMD64_PG_PS_FRAME, align 8
  %78 = and i64 %76, %77
  %79 = load i64, i64* %14, align 8
  %80 = load i64, i64* @AMD64_PDRMASK, align 8
  %81 = and i64 %79, %80
  %82 = load %struct.vmstate*, %struct.vmstate** %8, align 8
  %83 = load i64, i64* %14, align 8
  %84 = call i64 @VA_OFF(%struct.vmstate* %82, i64 %83)
  %85 = xor i64 %81, %84
  %86 = add i64 %78, %85
  store i64 %86, i64* %12, align 8
  %87 = load %struct.vmstate*, %struct.vmstate** %8, align 8
  %88 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* %12, align 8
  %92 = add i64 %90, %91
  store i64 %92, i64* %11, align 8
  %93 = load i64, i64* %12, align 8
  %94 = load i64, i64* @AMD64_PAGE_SIZE, align 8
  %95 = call i32 @_kvm_bitmap_set(%struct.kvm_bitmap* %15, i64 %93, i64 %94)
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %97 = load i32*, i32** %6, align 8
  %98 = load i8*, i8** %7, align 8
  %99 = load i64, i64* %12, align 8
  %100 = load i64, i64* %14, align 8
  %101 = load i64, i64* %11, align 8
  %102 = load i64, i64* %19, align 8
  %103 = call i32 @_amd64_entry_to_prot(i64 %102)
  %104 = load i32, i32* @AMD64_NBPDR, align 4
  %105 = load i32, i32* %18, align 4
  %106 = call i32 @_kvm_visit_cb(%struct.TYPE_8__* %96, i32* %97, i8* %98, i64 %99, i64 %100, i64 %101, i32 %103, i32 %104, i32 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %75
  br label %209

109:                                              ; preds = %75
  br label %165

110:                                              ; preds = %70
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %112 = load i64, i64* %13, align 8
  %113 = call i64* @_amd64_pde_first_pte(%struct.TYPE_8__* %111, i64 %112)
  store i64* %113, i64** %20, align 8
  %114 = load i64*, i64** %20, align 8
  %115 = icmp eq i64* %114, null
  br i1 %115, label %116, label %117

116:                                              ; preds = %110
  br label %165

117:                                              ; preds = %110
  store i64 0, i64* %21, align 8
  br label %118

118:                                              ; preds = %161, %117
  %119 = load i64, i64* %21, align 8
  %120 = load i64, i64* @AMD64_NPTEPG, align 8
  %121 = icmp ult i64 %119, %120
  br i1 %121, label %122, label %164

122:                                              ; preds = %118
  %123 = load i64*, i64** %20, align 8
  %124 = load i64, i64* %21, align 8
  %125 = getelementptr inbounds i64, i64* %123, i64 %124
  %126 = load i64, i64* %125, align 8
  store i64 %126, i64* %22, align 8
  %127 = load i64, i64* %22, align 8
  %128 = load i64, i64* @AMD64_PG_FRAME, align 8
  %129 = and i64 %127, %128
  store i64 %129, i64* %12, align 8
  %130 = load %struct.vmstate*, %struct.vmstate** %8, align 8
  %131 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* %12, align 8
  %135 = add i64 %133, %134
  store i64 %135, i64* %11, align 8
  %136 = load i64, i64* %22, align 8
  %137 = load i64, i64* @AMD64_PG_V, align 8
  %138 = and i64 %136, %137
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %157

140:                                              ; preds = %122
  %141 = load i64, i64* %12, align 8
  %142 = load i64, i64* @AMD64_PAGE_SIZE, align 8
  %143 = call i32 @_kvm_bitmap_set(%struct.kvm_bitmap* %15, i64 %141, i64 %142)
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %145 = load i32*, i32** %6, align 8
  %146 = load i8*, i8** %7, align 8
  %147 = load i64, i64* %12, align 8
  %148 = load i64, i64* %14, align 8
  %149 = load i64, i64* %11, align 8
  %150 = load i64, i64* %22, align 8
  %151 = call i32 @_amd64_entry_to_prot(i64 %150)
  %152 = load i32, i32* %18, align 4
  %153 = call i32 @_kvm_visit_cb(%struct.TYPE_8__* %144, i32* %145, i8* %146, i64 %147, i64 %148, i64 %149, i32 %151, i32 %152, i32 0)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %156, label %155

155:                                              ; preds = %140
  br label %209

156:                                              ; preds = %140
  br label %157

157:                                              ; preds = %156, %122
  %158 = load i64, i64* @AMD64_PAGE_SIZE, align 8
  %159 = load i64, i64* %14, align 8
  %160 = add i64 %159, %158
  store i64 %160, i64* %14, align 8
  br label %161

161:                                              ; preds = %157
  %162 = load i64, i64* %21, align 8
  %163 = add i64 %162, 1
  store i64 %163, i64* %21, align 8
  br label %118

164:                                              ; preds = %118
  br label %165

165:                                              ; preds = %164, %116, %109, %69
  %166 = load i64, i64* %13, align 8
  %167 = add i64 %166, 1
  store i64 %167, i64* %13, align 8
  br label %49

168:                                              ; preds = %49
  br label %169

169:                                              ; preds = %207, %168
  %170 = call i64 @_kvm_bitmap_next(%struct.kvm_bitmap* %15, i64* %10)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %208

172:                                              ; preds = %169
  %173 = load i64, i64* %10, align 8
  %174 = load i64, i64* @AMD64_PAGE_SIZE, align 8
  %175 = mul i64 %173, %174
  store i64 %175, i64* %12, align 8
  %176 = load %struct.vmstate*, %struct.vmstate** %8, align 8
  %177 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 3
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* %12, align 8
  %181 = add i64 %179, %180
  store i64 %181, i64* %11, align 8
  %182 = load %struct.vmstate*, %struct.vmstate** %8, align 8
  %183 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 4
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* %11, align 8
  %187 = load i32, i32* %18, align 4
  %188 = zext i32 %187 to i64
  %189 = add i64 %186, %188
  %190 = icmp ult i64 %185, %189
  br i1 %190, label %191, label %192

191:                                              ; preds = %172
  br label %208

192:                                              ; preds = %172
  store i64 0, i64* %14, align 8
  %193 = load i32, i32* @VM_PROT_READ, align 4
  %194 = load i32, i32* @VM_PROT_WRITE, align 4
  %195 = or i32 %193, %194
  store i32 %195, i32* %17, align 4
  %196 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %197 = load i32*, i32** %6, align 8
  %198 = load i8*, i8** %7, align 8
  %199 = load i64, i64* %12, align 8
  %200 = load i64, i64* %14, align 8
  %201 = load i64, i64* %11, align 8
  %202 = load i32, i32* %17, align 4
  %203 = load i32, i32* %18, align 4
  %204 = call i32 @_kvm_visit_cb(%struct.TYPE_8__* %196, i32* %197, i8* %198, i64 %199, i64 %200, i64 %201, i32 %202, i32 %203, i32 0)
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %207, label %206

206:                                              ; preds = %192
  br label %209

207:                                              ; preds = %192
  br label %169

208:                                              ; preds = %191, %169
  store i32 1, i32* %16, align 4
  br label %209

209:                                              ; preds = %208, %206, %155, %108
  %210 = call i32 @_kvm_bitmap_deinit(%struct.kvm_bitmap* %15)
  %211 = load i32, i32* %16, align 4
  store i32 %211, i32* %4, align 4
  br label %212

212:                                              ; preds = %209, %47, %39
  %213 = load i32, i32* %4, align 4
  ret i32 %213
}

declare dso_local i32 @_kvm_bitmap_init(%struct.kvm_bitmap*, i32, i64*) #1

declare dso_local i64 @_amd64_pde_get(%struct.TYPE_8__*, i64) #1

declare dso_local i64 @VA_OFF(%struct.vmstate*, i64) #1

declare dso_local i32 @_kvm_bitmap_set(%struct.kvm_bitmap*, i64, i64) #1

declare dso_local i32 @_kvm_visit_cb(%struct.TYPE_8__*, i32*, i8*, i64, i64, i64, i32, i32, i32) #1

declare dso_local i32 @_amd64_entry_to_prot(i64) #1

declare dso_local i64* @_amd64_pde_first_pte(%struct.TYPE_8__*, i64) #1

declare dso_local i64 @_kvm_bitmap_next(%struct.kvm_bitmap*, i64*) #1

declare dso_local i32 @_kvm_bitmap_deinit(%struct.kvm_bitmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

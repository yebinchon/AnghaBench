; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm_i386.c__i386_vatop_pae.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm_i386.c__i386_vatop_pae.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.vmstate* }
%struct.vmstate = type { i64 }

@I386_PAGE_MASK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"_i386_vatop_pae: bootstrap data not in dump\00", align 1
@I386_PAGE_SIZE = common dso_local global i32 0, align 4
@I386_PDRSHIFT_PAE = common dso_local global i64 0, align 8
@I386_PG_V = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"_kvm_kvatop_pae: pde not valid\00", align 1
@I386_PG_PS = common dso_local global i32 0, align 4
@I386_PAGE_PS_MASK_PAE = common dso_local global i64 0, align 8
@I386_PG_PS_FRAME_PAE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"_i386_vatop: 2MB page address not in dump\00", align 1
@I386_NBPDR_PAE = common dso_local global i32 0, align 4
@I386_PAGE_SHIFT = common dso_local global i64 0, align 8
@I386_NPTEPG_PAE = common dso_local global i32 0, align 4
@I386_PG_FRAME_PAE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"_i386_vatop_pae: pdpe_pa not found\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"_i386_vatop_pae: read\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"_i386_vatop_pae: pte not valid\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"_i386_vatop_pae: address not in dump\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"invalid address (0x%jx)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i64, i32*)* @_i386_vatop_pae to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_i386_vatop_pae(%struct.TYPE_6__* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.vmstate*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 2
  %21 = load %struct.vmstate*, %struct.vmstate** %20, align 8
  store %struct.vmstate* %21, %struct.vmstate** %8, align 8
  %22 = load %struct.vmstate*, %struct.vmstate** %8, align 8
  %23 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i32*
  store i32* %25, i32** %18, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* @I386_PAGE_MASK, align 8
  %28 = and i64 %26, %27
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %9, align 4
  %30 = load i32*, i32** %18, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %50

32:                                               ; preds = %3
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %34 = load i64, i64* %6, align 8
  %35 = trunc i64 %34 to i32
  %36 = load i32*, i32** %7, align 8
  %37 = call i64 @_kvm_pa2off(%struct.TYPE_6__* %33, i32 %35, i32* %36)
  store i64 %37, i64* %15, align 8
  %38 = load i64, i64* %15, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %32
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @_kvm_err(%struct.TYPE_6__* %41, i32 %44, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %176

46:                                               ; preds = %32
  %47 = load i32, i32* @I386_PAGE_SIZE, align 4
  %48 = load i32, i32* %9, align 4
  %49 = sub nsw i32 %47, %48
  store i32 %49, i32* %4, align 4
  br label %181

50:                                               ; preds = %3
  %51 = load i64, i64* %6, align 8
  %52 = load i64, i64* @I386_PDRSHIFT_PAE, align 8
  %53 = lshr i64 %51, %52
  store i64 %53, i64* %13, align 8
  %54 = load i32*, i32** %18, align 8
  %55 = load i64, i64* %13, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @le64toh(i32 %57)
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* @I386_PG_V, align 4
  %61 = and i32 %59, %60
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %50
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @_kvm_err(%struct.TYPE_6__* %64, i32 %67, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %176

69:                                               ; preds = %50
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* @I386_PG_PS, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %100

74:                                               ; preds = %69
  %75 = load i64, i64* %6, align 8
  %76 = load i64, i64* @I386_PAGE_PS_MASK_PAE, align 8
  %77 = and i64 %75, %76
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* @I386_PG_PS_FRAME_PAE, align 4
  %81 = and i32 %79, %80
  %82 = load i32, i32* %9, align 4
  %83 = add nsw i32 %81, %82
  store i32 %83, i32* %16, align 4
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %85 = load i32, i32* %16, align 4
  %86 = load i32*, i32** %7, align 8
  %87 = call i64 @_kvm_pa2off(%struct.TYPE_6__* %84, i32 %85, i32* %86)
  store i64 %87, i64* %15, align 8
  %88 = load i64, i64* %15, align 8
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %74
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @_kvm_err(%struct.TYPE_6__* %91, i32 %94, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %176

96:                                               ; preds = %74
  %97 = load i32, i32* @I386_NBPDR_PAE, align 4
  %98 = load i32, i32* %9, align 4
  %99 = sub nsw i32 %97, %98
  store i32 %99, i32* %4, align 4
  br label %181

100:                                              ; preds = %69
  %101 = load i64, i64* %6, align 8
  %102 = load i64, i64* @I386_PAGE_SHIFT, align 8
  %103 = lshr i64 %101, %102
  %104 = load i32, i32* @I386_NPTEPG_PAE, align 4
  %105 = sub nsw i32 %104, 1
  %106 = sext i32 %105 to i64
  %107 = and i64 %103, %106
  store i64 %107, i64* %14, align 8
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* @I386_PG_FRAME_PAE, align 4
  %110 = and i32 %108, %109
  %111 = sext i32 %110 to i64
  %112 = load i64, i64* %14, align 8
  %113 = mul i64 %112, 4
  %114 = add i64 %111, %113
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %10, align 4
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %117 = load i32, i32* %10, align 4
  %118 = call i64 @_kvm_pa2off(%struct.TYPE_6__* %116, i32 %117, i32* %17)
  store i64 %118, i64* %15, align 8
  %119 = load i64, i64* %15, align 8
  %120 = icmp ult i64 %119, 4
  br i1 %120, label %121, label %127

121:                                              ; preds = %100
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @_kvm_err(%struct.TYPE_6__* %122, i32 %125, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %176

127:                                              ; preds = %100
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %17, align 4
  %132 = call i32 @pread(i32 %130, i32* %12, i32 4, i32 %131)
  %133 = sext i32 %132 to i64
  %134 = icmp ne i64 %133, 4
  br i1 %134, label %135, label %141

135:                                              ; preds = %127
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @_kvm_syserr(%struct.TYPE_6__* %136, i32 %139, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %176

141:                                              ; preds = %127
  %142 = load i32, i32* %12, align 4
  %143 = call i32 @le64toh(i32 %142)
  store i32 %143, i32* %12, align 4
  %144 = load i32, i32* %12, align 4
  %145 = load i32, i32* @I386_PG_V, align 4
  %146 = and i32 %144, %145
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %141
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @_kvm_err(%struct.TYPE_6__* %149, i32 %152, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  br label %176

154:                                              ; preds = %141
  %155 = load i32, i32* %12, align 4
  %156 = load i32, i32* @I386_PG_FRAME_PAE, align 4
  %157 = and i32 %155, %156
  %158 = load i32, i32* %9, align 4
  %159 = add nsw i32 %157, %158
  store i32 %159, i32* %16, align 4
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %161 = load i32, i32* %16, align 4
  %162 = load i32*, i32** %7, align 8
  %163 = call i64 @_kvm_pa2off(%struct.TYPE_6__* %160, i32 %161, i32* %162)
  store i64 %163, i64* %15, align 8
  %164 = load i64, i64* %15, align 8
  %165 = icmp eq i64 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %154
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @_kvm_err(%struct.TYPE_6__* %167, i32 %170, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  br label %176

172:                                              ; preds = %154
  %173 = load i32, i32* @I386_PAGE_SIZE, align 4
  %174 = load i32, i32* %9, align 4
  %175 = sub nsw i32 %173, %174
  store i32 %175, i32* %4, align 4
  br label %181

176:                                              ; preds = %166, %148, %135, %121, %90, %63, %40
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %178 = load i64, i64* %6, align 8
  %179 = trunc i64 %178 to i32
  %180 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @_kvm_err(%struct.TYPE_6__* %177, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %179)
  store i32 0, i32* %4, align 4
  br label %181

181:                                              ; preds = %176, %172, %96, %46
  %182 = load i32, i32* %4, align 4
  ret i32 %182
}

declare dso_local i64 @_kvm_pa2off(%struct.TYPE_6__*, i32, i32*) #1

declare dso_local i32 @_kvm_err(%struct.TYPE_6__*, i32, i8*, ...) #1

declare dso_local i32 @le64toh(i32) #1

declare dso_local i32 @pread(i32, i32*, i32, i32) #1

declare dso_local i32 @_kvm_syserr(%struct.TYPE_6__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

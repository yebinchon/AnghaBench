; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm.c_vm_mmap_memseg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm.c_vm_mmap_memseg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm = type { %struct.TYPE_2__*, %struct.mem_map*, %struct.mem_seg* }
%struct.TYPE_2__ = type { i32 }
%struct.mem_map = type { i64, i32, i32, i32, i64, i64 }
%struct.mem_seg = type { i64, i32* }

@VM_PROT_ALL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@VM_MEMMAP_F_WIRED = common dso_local global i32 0, align 4
@VM_MAX_MEMSEGS = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8
@VM_MAX_MEMMAPS = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@VMFS_NO_SPACE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@VM_MAP_WIRE_USER = common dso_local global i32 0, align 4
@VM_MAP_WIRE_NOHOLES = common dso_local global i32 0, align 4
@KERN_RESOURCE_SHORTAGE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_mmap_memseg(%struct.vm* %0, i64 %1, i32 %2, i64 %3, i64 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.vm*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.mem_seg*, align 8
  %17 = alloca %struct.mem_map*, align 8
  %18 = alloca %struct.mem_map*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.vm* %0, %struct.vm** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32 %2, i32* %11, align 4
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %22 = load i32, i32* %14, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %7
  %25 = load i32, i32* %14, align 4
  %26 = load i32, i32* @VM_PROT_ALL, align 4
  %27 = xor i32 %26, -1
  %28 = and i32 %25, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24, %7
  %31 = load i32, i32* @EINVAL, align 4
  store i32 %31, i32* %8, align 4
  br label %203

32:                                               ; preds = %24
  %33 = load i32, i32* %15, align 4
  %34 = load i32, i32* @VM_MEMMAP_F_WIRED, align 4
  %35 = xor i32 %34, -1
  %36 = and i32 %33, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* @EINVAL, align 4
  store i32 %39, i32* %8, align 4
  br label %203

40:                                               ; preds = %32
  %41 = load i32, i32* %11, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* @VM_MAX_MEMSEGS, align 4
  %46 = icmp sge i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %43, %40
  %48 = load i32, i32* @EINVAL, align 4
  store i32 %48, i32* %8, align 4
  br label %203

49:                                               ; preds = %43
  %50 = load %struct.vm*, %struct.vm** %9, align 8
  %51 = getelementptr inbounds %struct.vm, %struct.vm* %50, i32 0, i32 2
  %52 = load %struct.mem_seg*, %struct.mem_seg** %51, align 8
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.mem_seg, %struct.mem_seg* %52, i64 %54
  store %struct.mem_seg* %55, %struct.mem_seg** %16, align 8
  %56 = load %struct.mem_seg*, %struct.mem_seg** %16, align 8
  %57 = getelementptr inbounds %struct.mem_seg, %struct.mem_seg* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %49
  %61 = load i32, i32* @EINVAL, align 4
  store i32 %61, i32* %8, align 4
  br label %203

62:                                               ; preds = %49
  %63 = load i64, i64* %12, align 8
  %64 = load i64, i64* %13, align 8
  %65 = add i64 %63, %64
  store i64 %65, i64* %19, align 8
  %66 = load i64, i64* %12, align 8
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %78, label %68

68:                                               ; preds = %62
  %69 = load i64, i64* %12, align 8
  %70 = load i64, i64* %19, align 8
  %71 = icmp sge i64 %69, %70
  br i1 %71, label %78, label %72

72:                                               ; preds = %68
  %73 = load i64, i64* %19, align 8
  %74 = load %struct.mem_seg*, %struct.mem_seg** %16, align 8
  %75 = getelementptr inbounds %struct.mem_seg, %struct.mem_seg* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp sgt i64 %73, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %72, %68, %62
  %79 = load i32, i32* @EINVAL, align 4
  store i32 %79, i32* %8, align 4
  br label %203

80:                                               ; preds = %72
  %81 = load i64, i64* %10, align 8
  %82 = load i64, i64* %12, align 8
  %83 = or i64 %81, %82
  %84 = load i64, i64* %19, align 8
  %85 = or i64 %83, %84
  %86 = load i64, i64* @PAGE_MASK, align 8
  %87 = and i64 %85, %86
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %80
  %90 = load i32, i32* @EINVAL, align 4
  store i32 %90, i32* %8, align 4
  br label %203

91:                                               ; preds = %80
  store %struct.mem_map* null, %struct.mem_map** %18, align 8
  store i32 0, i32* %20, align 4
  br label %92

92:                                               ; preds = %110, %91
  %93 = load i32, i32* %20, align 4
  %94 = load i32, i32* @VM_MAX_MEMMAPS, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %113

96:                                               ; preds = %92
  %97 = load %struct.vm*, %struct.vm** %9, align 8
  %98 = getelementptr inbounds %struct.vm, %struct.vm* %97, i32 0, i32 1
  %99 = load %struct.mem_map*, %struct.mem_map** %98, align 8
  %100 = load i32, i32* %20, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.mem_map, %struct.mem_map* %99, i64 %101
  store %struct.mem_map* %102, %struct.mem_map** %17, align 8
  %103 = load %struct.mem_map*, %struct.mem_map** %17, align 8
  %104 = getelementptr inbounds %struct.mem_map, %struct.mem_map* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %96
  %108 = load %struct.mem_map*, %struct.mem_map** %17, align 8
  store %struct.mem_map* %108, %struct.mem_map** %18, align 8
  br label %113

109:                                              ; preds = %96
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %20, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %20, align 4
  br label %92

113:                                              ; preds = %107, %92
  %114 = load %struct.mem_map*, %struct.mem_map** %18, align 8
  %115 = icmp eq %struct.mem_map* %114, null
  br i1 %115, label %116, label %118

116:                                              ; preds = %113
  %117 = load i32, i32* @ENOSPC, align 4
  store i32 %117, i32* %8, align 4
  br label %203

118:                                              ; preds = %113
  %119 = load %struct.vm*, %struct.vm** %9, align 8
  %120 = getelementptr inbounds %struct.vm, %struct.vm* %119, i32 0, i32 0
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load %struct.mem_seg*, %struct.mem_seg** %16, align 8
  %124 = getelementptr inbounds %struct.mem_seg, %struct.mem_seg* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = load i64, i64* %12, align 8
  %127 = load i64, i64* %13, align 8
  %128 = load i32, i32* @VMFS_NO_SPACE, align 4
  %129 = load i32, i32* %14, align 4
  %130 = load i32, i32* %14, align 4
  %131 = call i32 @vm_map_find(i32* %122, i32* %125, i64 %126, i64* %10, i64 %127, i32 0, i32 %128, i32 %129, i32 %130, i32 0)
  store i32 %131, i32* %21, align 4
  %132 = load i32, i32* %21, align 4
  %133 = load i32, i32* @KERN_SUCCESS, align 4
  %134 = icmp ne i32 %132, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %118
  %136 = load i32, i32* @EFAULT, align 4
  store i32 %136, i32* %8, align 4
  br label %203

137:                                              ; preds = %118
  %138 = load %struct.mem_seg*, %struct.mem_seg** %16, align 8
  %139 = getelementptr inbounds %struct.mem_seg, %struct.mem_seg* %138, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = call i32 @vm_object_reference(i32* %140)
  %142 = load i32, i32* %15, align 4
  %143 = load i32, i32* @VM_MEMMAP_F_WIRED, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %184

146:                                              ; preds = %137
  %147 = load %struct.vm*, %struct.vm** %9, align 8
  %148 = getelementptr inbounds %struct.vm, %struct.vm* %147, i32 0, i32 0
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 0
  %151 = load i64, i64* %10, align 8
  %152 = load i64, i64* %10, align 8
  %153 = load i64, i64* %13, align 8
  %154 = add i64 %152, %153
  %155 = trunc i64 %154 to i32
  %156 = load i32, i32* @VM_MAP_WIRE_USER, align 4
  %157 = load i32, i32* @VM_MAP_WIRE_NOHOLES, align 4
  %158 = or i32 %156, %157
  %159 = call i32 @vm_map_wire(i32* %150, i64 %151, i32 %155, i32 %158)
  store i32 %159, i32* %21, align 4
  %160 = load i32, i32* %21, align 4
  %161 = load i32, i32* @KERN_SUCCESS, align 4
  %162 = icmp ne i32 %160, %161
  br i1 %162, label %163, label %183

163:                                              ; preds = %146
  %164 = load %struct.vm*, %struct.vm** %9, align 8
  %165 = getelementptr inbounds %struct.vm, %struct.vm* %164, i32 0, i32 0
  %166 = load %struct.TYPE_2__*, %struct.TYPE_2__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 0
  %168 = load i64, i64* %10, align 8
  %169 = load i64, i64* %10, align 8
  %170 = load i64, i64* %13, align 8
  %171 = add i64 %169, %170
  %172 = trunc i64 %171 to i32
  %173 = call i32 @vm_map_remove(i32* %167, i64 %168, i32 %172)
  %174 = load i32, i32* %21, align 4
  %175 = load i32, i32* @KERN_RESOURCE_SHORTAGE, align 4
  %176 = icmp eq i32 %174, %175
  br i1 %176, label %177, label %179

177:                                              ; preds = %163
  %178 = load i32, i32* @ENOMEM, align 4
  br label %181

179:                                              ; preds = %163
  %180 = load i32, i32* @EFAULT, align 4
  br label %181

181:                                              ; preds = %179, %177
  %182 = phi i32 [ %178, %177 ], [ %180, %179 ]
  store i32 %182, i32* %8, align 4
  br label %203

183:                                              ; preds = %146
  br label %184

184:                                              ; preds = %183, %137
  %185 = load i64, i64* %10, align 8
  %186 = load %struct.mem_map*, %struct.mem_map** %18, align 8
  %187 = getelementptr inbounds %struct.mem_map, %struct.mem_map* %186, i32 0, i32 5
  store i64 %185, i64* %187, align 8
  %188 = load i64, i64* %13, align 8
  %189 = load %struct.mem_map*, %struct.mem_map** %18, align 8
  %190 = getelementptr inbounds %struct.mem_map, %struct.mem_map* %189, i32 0, i32 0
  store i64 %188, i64* %190, align 8
  %191 = load i64, i64* %12, align 8
  %192 = load %struct.mem_map*, %struct.mem_map** %18, align 8
  %193 = getelementptr inbounds %struct.mem_map, %struct.mem_map* %192, i32 0, i32 4
  store i64 %191, i64* %193, align 8
  %194 = load i32, i32* %11, align 4
  %195 = load %struct.mem_map*, %struct.mem_map** %18, align 8
  %196 = getelementptr inbounds %struct.mem_map, %struct.mem_map* %195, i32 0, i32 1
  store i32 %194, i32* %196, align 8
  %197 = load i32, i32* %14, align 4
  %198 = load %struct.mem_map*, %struct.mem_map** %18, align 8
  %199 = getelementptr inbounds %struct.mem_map, %struct.mem_map* %198, i32 0, i32 2
  store i32 %197, i32* %199, align 4
  %200 = load i32, i32* %15, align 4
  %201 = load %struct.mem_map*, %struct.mem_map** %18, align 8
  %202 = getelementptr inbounds %struct.mem_map, %struct.mem_map* %201, i32 0, i32 3
  store i32 %200, i32* %202, align 8
  store i32 0, i32* %8, align 4
  br label %203

203:                                              ; preds = %184, %181, %135, %116, %89, %78, %60, %47, %38, %30
  %204 = load i32, i32* %8, align 4
  ret i32 %204
}

declare dso_local i32 @vm_map_find(i32*, i32*, i64, i64*, i64, i32, i32, i32, i32, i32) #1

declare dso_local i32 @vm_object_reference(i32*) #1

declare dso_local i32 @vm_map_wire(i32*, i64, i32, i32) #1

declare dso_local i32 @vm_map_remove(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

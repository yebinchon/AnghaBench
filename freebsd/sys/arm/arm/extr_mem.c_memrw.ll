; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_mem.c_memrw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_mem.c_memrw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.uio = type { i64, i64, i64, i64, %struct.iovec* }
%struct.iovec = type { i64, i64 }

@.str = private unnamed_addr constant [6 x i8] c"memrw\00", align 1
@CDEV_MINOR_MEM = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@dump_avail = common dso_local global i64* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@tmppt_lock = common dso_local global i32 0, align 4
@_tmppt = common dso_local global i32* null, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@CDEV_MINOR_KMEM = common dso_local global i64 0, align 8
@kernel_pmap = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@UIO_READ = common dso_local global i64 0, align 8
@VM_PROT_READ = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memrw(%struct.cdev* %0, %struct.uio* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca %struct.uio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.iovec*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store %struct.uio* %1, %struct.uio** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 0, i64* %9, align 8
  store i32 0, i32* %12, align 4
  br label %17

17:                                               ; preds = %223, %213, %108, %50, %3
  %18 = load %struct.uio*, %struct.uio** %6, align 8
  %19 = getelementptr inbounds %struct.uio, %struct.uio* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* %12, align 4
  %24 = icmp eq i32 %23, 0
  br label %25

25:                                               ; preds = %22, %17
  %26 = phi i1 [ false, %17 ], [ %24, %22 ]
  br i1 %26, label %27, label %224

27:                                               ; preds = %25
  %28 = load %struct.uio*, %struct.uio** %6, align 8
  %29 = getelementptr inbounds %struct.uio, %struct.uio* %28, i32 0, i32 4
  %30 = load %struct.iovec*, %struct.iovec** %29, align 8
  store %struct.iovec* %30, %struct.iovec** %11, align 8
  %31 = load %struct.iovec*, %struct.iovec** %11, align 8
  %32 = getelementptr inbounds %struct.iovec, %struct.iovec* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %27
  %36 = load %struct.uio*, %struct.uio** %6, align 8
  %37 = getelementptr inbounds %struct.uio, %struct.uio* %36, i32 0, i32 4
  %38 = load %struct.iovec*, %struct.iovec** %37, align 8
  %39 = getelementptr inbounds %struct.iovec, %struct.iovec* %38, i32 1
  store %struct.iovec* %39, %struct.iovec** %37, align 8
  %40 = load %struct.uio*, %struct.uio** %6, align 8
  %41 = getelementptr inbounds %struct.uio, %struct.uio* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, -1
  store i64 %43, i64* %41, align 8
  %44 = load %struct.uio*, %struct.uio** %6, align 8
  %45 = getelementptr inbounds %struct.uio, %struct.uio* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %35
  %49 = call i32 @panic(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %35
  br label %17

51:                                               ; preds = %27
  %52 = load %struct.cdev*, %struct.cdev** %5, align 8
  %53 = call i64 @dev2unit(%struct.cdev* %52)
  %54 = load i64, i64* @CDEV_MINOR_MEM, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %156

56:                                               ; preds = %51
  store i32 0, i32* %16, align 4
  %57 = load %struct.uio*, %struct.uio** %6, align 8
  %58 = getelementptr inbounds %struct.uio, %struct.uio* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %10, align 8
  %60 = load i64, i64* @PAGE_MASK, align 8
  %61 = xor i64 %60, -1
  %62 = load i64, i64* %10, align 8
  %63 = and i64 %62, %61
  store i64 %63, i64* %10, align 8
  store i32 0, i32* %15, align 4
  br label %64

64:                                               ; preds = %100, %56
  %65 = load i64*, i64** @dump_avail, align 8
  %66 = load i32, i32* %15, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %79, label %71

71:                                               ; preds = %64
  %72 = load i64*, i64** @dump_avail, align 8
  %73 = load i32, i32* %15, align 4
  %74 = add nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %72, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br label %79

79:                                               ; preds = %71, %64
  %80 = phi i1 [ true, %64 ], [ %78, %71 ]
  br i1 %80, label %81, label %103

81:                                               ; preds = %79
  %82 = load i64, i64* %10, align 8
  %83 = load i64*, i64** @dump_avail, align 8
  %84 = load i32, i32* %15, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %83, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = icmp sge i64 %82, %87
  br i1 %88, label %89, label %99

89:                                               ; preds = %81
  %90 = load i64, i64* %10, align 8
  %91 = load i64*, i64** @dump_avail, align 8
  %92 = load i32, i32* %15, align 4
  %93 = add nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %91, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = icmp slt i64 %90, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %89
  store i32 1, i32* %16, align 4
  br label %103

99:                                               ; preds = %89, %81
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %15, align 4
  %102 = add nsw i32 %101, 2
  store i32 %102, i32* %15, align 4
  br label %64

103:                                              ; preds = %98, %79
  %104 = load i32, i32* %16, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %103
  %107 = load i32, i32* @EINVAL, align 4
  store i32 %107, i32* %4, align 4
  br label %226

108:                                              ; preds = %103
  %109 = call i32 @sx_xlock(i32* @tmppt_lock)
  %110 = load i32*, i32** @_tmppt, align 8
  %111 = ptrtoint i32* %110 to i64
  %112 = load i64, i64* %10, align 8
  %113 = call i32 @pmap_kenter(i64 %111, i64 %112)
  %114 = load %struct.uio*, %struct.uio** %6, align 8
  %115 = getelementptr inbounds %struct.uio, %struct.uio* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = trunc i64 %116 to i32
  %118 = sext i32 %117 to i64
  %119 = load i64, i64* @PAGE_MASK, align 8
  %120 = and i64 %118, %119
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %8, align 4
  %122 = load i32, i32* @PAGE_SIZE, align 4
  %123 = sext i32 %122 to i64
  %124 = load %struct.iovec*, %struct.iovec** %11, align 8
  %125 = getelementptr inbounds %struct.iovec, %struct.iovec* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = trunc i64 %126 to i32
  %128 = sext i32 %127 to i64
  %129 = load i64, i64* @PAGE_MASK, align 8
  %130 = and i64 %128, %129
  %131 = sub nsw i64 %123, %130
  store i64 %131, i64* %9, align 8
  %132 = load i64, i64* %9, align 8
  %133 = load i32, i32* @PAGE_SIZE, align 4
  %134 = load i32, i32* %8, align 4
  %135 = sub nsw i32 %133, %134
  %136 = sext i32 %135 to i64
  %137 = call i64 @min(i64 %132, i64 %136)
  store i64 %137, i64* %9, align 8
  %138 = load i64, i64* %9, align 8
  %139 = load %struct.iovec*, %struct.iovec** %11, align 8
  %140 = getelementptr inbounds %struct.iovec, %struct.iovec* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = call i64 @min(i64 %138, i64 %141)
  store i64 %142, i64* %9, align 8
  %143 = load i32*, i32** @_tmppt, align 8
  %144 = load i32, i32* %8, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = ptrtoint i32* %146 to i32
  %148 = load i64, i64* %9, align 8
  %149 = trunc i64 %148 to i32
  %150 = load %struct.uio*, %struct.uio** %6, align 8
  %151 = call i32 @uiomove(i32 %147, i32 %149, %struct.uio* %150)
  store i32 %151, i32* %12, align 4
  %152 = load i32*, i32** @_tmppt, align 8
  %153 = ptrtoint i32* %152 to i64
  %154 = call i32 @pmap_qremove(i64 %153, i32 1)
  %155 = call i32 @sx_xunlock(i32* @tmppt_lock)
  br label %17

156:                                              ; preds = %51
  %157 = load %struct.cdev*, %struct.cdev** %5, align 8
  %158 = call i64 @dev2unit(%struct.cdev* %157)
  %159 = load i64, i64* @CDEV_MINOR_KMEM, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %222

161:                                              ; preds = %156
  %162 = load %struct.iovec*, %struct.iovec** %11, align 8
  %163 = getelementptr inbounds %struct.iovec, %struct.iovec* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  store i64 %164, i64* %9, align 8
  %165 = load %struct.uio*, %struct.uio** %6, align 8
  %166 = getelementptr inbounds %struct.uio, %struct.uio* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = call i64 @trunc_page(i64 %167)
  store i64 %168, i64* %13, align 8
  %169 = load %struct.uio*, %struct.uio** %6, align 8
  %170 = getelementptr inbounds %struct.uio, %struct.uio* %169, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* %9, align 8
  %173 = add nsw i64 %171, %172
  %174 = call i64 @round_page(i64 %173)
  store i64 %174, i64* %14, align 8
  br label %175

175:                                              ; preds = %187, %161
  %176 = load i64, i64* %13, align 8
  %177 = load i64, i64* %14, align 8
  %178 = icmp slt i64 %176, %177
  br i1 %178, label %179, label %192

179:                                              ; preds = %175
  %180 = load i32, i32* @kernel_pmap, align 4
  %181 = load i64, i64* %13, align 8
  %182 = call i64 @pmap_extract(i32 %180, i64 %181)
  %183 = icmp eq i64 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %179
  %185 = load i32, i32* @EFAULT, align 4
  store i32 %185, i32* %4, align 4
  br label %226

186:                                              ; preds = %179
  br label %187

187:                                              ; preds = %186
  %188 = load i32, i32* @PAGE_SIZE, align 4
  %189 = sext i32 %188 to i64
  %190 = load i64, i64* %13, align 8
  %191 = add nsw i64 %190, %189
  store i64 %191, i64* %13, align 8
  br label %175

192:                                              ; preds = %175
  %193 = load %struct.uio*, %struct.uio** %6, align 8
  %194 = getelementptr inbounds %struct.uio, %struct.uio* %193, i32 0, i32 2
  %195 = load i64, i64* %194, align 8
  %196 = trunc i64 %195 to i32
  %197 = load i64, i64* %9, align 8
  %198 = load %struct.uio*, %struct.uio** %6, align 8
  %199 = getelementptr inbounds %struct.uio, %struct.uio* %198, i32 0, i32 3
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @UIO_READ, align 8
  %202 = icmp eq i64 %200, %201
  br i1 %202, label %203, label %205

203:                                              ; preds = %192
  %204 = load i32, i32* @VM_PROT_READ, align 4
  br label %207

205:                                              ; preds = %192
  %206 = load i32, i32* @VM_PROT_WRITE, align 4
  br label %207

207:                                              ; preds = %205, %203
  %208 = phi i32 [ %204, %203 ], [ %206, %205 ]
  %209 = call i32 @kernacc(i32 %196, i64 %197, i32 %208)
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %213, label %211

211:                                              ; preds = %207
  %212 = load i32, i32* @EFAULT, align 4
  store i32 %212, i32* %4, align 4
  br label %226

213:                                              ; preds = %207
  %214 = load %struct.uio*, %struct.uio** %6, align 8
  %215 = getelementptr inbounds %struct.uio, %struct.uio* %214, i32 0, i32 2
  %216 = load i64, i64* %215, align 8
  %217 = trunc i64 %216 to i32
  %218 = load i64, i64* %9, align 8
  %219 = trunc i64 %218 to i32
  %220 = load %struct.uio*, %struct.uio** %6, align 8
  %221 = call i32 @uiomove(i32 %217, i32 %219, %struct.uio* %220)
  store i32 %221, i32* %12, align 4
  br label %17

222:                                              ; preds = %156
  br label %223

223:                                              ; preds = %222
  br label %17

224:                                              ; preds = %25
  %225 = load i32, i32* %12, align 4
  store i32 %225, i32* %4, align 4
  br label %226

226:                                              ; preds = %224, %211, %184, %106
  %227 = load i32, i32* %4, align 4
  ret i32 %227
}

declare dso_local i32 @panic(i8*) #1

declare dso_local i64 @dev2unit(%struct.cdev*) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @pmap_kenter(i64, i64) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @uiomove(i32, i32, %struct.uio*) #1

declare dso_local i32 @pmap_qremove(i64, i32) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i64 @trunc_page(i64) #1

declare dso_local i64 @round_page(i64) #1

declare dso_local i64 @pmap_extract(i32, i64) #1

declare dso_local i32 @kernacc(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

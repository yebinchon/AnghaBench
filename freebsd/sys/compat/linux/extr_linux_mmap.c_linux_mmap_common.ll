; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_mmap.c_linux_mmap_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_mmap.c_linux_mmap_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32*, %struct.proc* }
%struct.proc = type { %struct.TYPE_2__*, %struct.vmspace* }
%struct.TYPE_2__ = type { i64 }
%struct.vmspace = type { i64 }
%struct.file = type { i64, i32 }

@mmap2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"0x%lx, %ld, %ld, 0x%08lx, %ld, 0x%lx\00", align 1
@LINUX_MAP_SHARED = common dso_local global i32 0, align 4
@LINUX_MAP_PRIVATE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@LINUX_MAP_FIXED = common dso_local global i32 0, align 4
@MAP_FIXED = common dso_local global i32 0, align 4
@LINUX_MAP_ANON = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@MAP_ANON = common dso_local global i32 0, align 4
@MAP_NOSYNC = common dso_local global i32 0, align 4
@LINUX_MAP_GROWSDOWN = common dso_local global i32 0, align 4
@MAP_STACK = common dso_local global i32 0, align 4
@cap_mmap_rights = common dso_local global i32 0, align 4
@DTYPE_VNODE = common dso_local global i64 0, align 8
@DTYPE_DEV = common dso_local global i64 0, align 8
@FREAD = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@RLIMIT_STACK = common dso_local global i32 0, align 4
@STACK_SIZE = common dso_local global i64 0, align 8
@GUARD_SIZE = common dso_local global i64 0, align 8
@MAP_EXCL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"return: %d (%p)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_mmap_common(%struct.thread* %0, i64 %1, i64 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.thread*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.proc*, align 8
  %17 = alloca %struct.vmspace*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.file*, align 8
  store %struct.thread* %0, %struct.thread** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %21 = load %struct.thread*, %struct.thread** %9, align 8
  %22 = getelementptr inbounds %struct.thread, %struct.thread* %21, i32 0, i32 1
  %23 = load %struct.proc*, %struct.proc** %22, align 8
  store %struct.proc* %23, %struct.proc** %16, align 8
  %24 = load %struct.thread*, %struct.thread** %9, align 8
  %25 = getelementptr inbounds %struct.thread, %struct.thread* %24, i32 0, i32 1
  %26 = load %struct.proc*, %struct.proc** %25, align 8
  %27 = getelementptr inbounds %struct.proc, %struct.proc* %26, i32 0, i32 1
  %28 = load %struct.vmspace*, %struct.vmspace** %27, align 8
  store %struct.vmspace* %28, %struct.vmspace** %17, align 8
  %29 = load i32, i32* @mmap2, align 4
  %30 = load i64, i64* %10, align 8
  %31 = load i64, i64* %11, align 8
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* %14, align 4
  %35 = load i32, i32* %15, align 4
  %36 = call i32 @LINUX_CTR6(i32 %29, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %30, i64 %31, i32 %32, i32 %33, i32 %34, i32 %35)
  store i32 0, i32* %19, align 4
  store i32 0, i32* %18, align 4
  store %struct.file* null, %struct.file** %20, align 8
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* @LINUX_MAP_SHARED, align 4
  %39 = and i32 %37, %38
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* @LINUX_MAP_PRIVATE, align 4
  %42 = and i32 %40, %41
  %43 = xor i32 %39, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %7
  %46 = load i32, i32* @EINVAL, align 4
  store i32 %46, i32* %8, align 4
  br label %258

47:                                               ; preds = %7
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* @LINUX_MAP_SHARED, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load i32, i32* @MAP_SHARED, align 4
  %54 = load i32, i32* %18, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %18, align 4
  br label %56

56:                                               ; preds = %52, %47
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* @LINUX_MAP_PRIVATE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load i32, i32* @MAP_PRIVATE, align 4
  %63 = load i32, i32* %18, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %18, align 4
  br label %65

65:                                               ; preds = %61, %56
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* @LINUX_MAP_FIXED, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load i32, i32* @MAP_FIXED, align 4
  %72 = load i32, i32* %18, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %18, align 4
  br label %74

74:                                               ; preds = %70, %65
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* @LINUX_MAP_ANON, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %90

79:                                               ; preds = %74
  %80 = load i32, i32* %15, align 4
  %81 = load i32, i32* @PAGE_MASK, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = load i32, i32* @EINVAL, align 4
  store i32 %85, i32* %8, align 4
  br label %258

86:                                               ; preds = %79
  store i32 0, i32* %15, align 4
  %87 = load i32, i32* @MAP_ANON, align 4
  %88 = load i32, i32* %18, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %18, align 4
  br label %94

90:                                               ; preds = %74
  %91 = load i32, i32* @MAP_NOSYNC, align 4
  %92 = load i32, i32* %18, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %18, align 4
  br label %94

94:                                               ; preds = %90, %86
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* @LINUX_MAP_GROWSDOWN, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %94
  %100 = load i32, i32* @MAP_STACK, align 4
  %101 = load i32, i32* %18, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %18, align 4
  br label %103

103:                                              ; preds = %99, %94
  %104 = load %struct.thread*, %struct.thread** %9, align 8
  %105 = call i32 @linux_fixup_prot(%struct.thread* %104, i32* %12)
  %106 = load i32, i32* %18, align 4
  %107 = load i32, i32* @MAP_ANON, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %103
  br label %113

111:                                              ; preds = %103
  %112 = load i32, i32* %14, align 4
  br label %113

113:                                              ; preds = %111, %110
  %114 = phi i32 [ -1, %110 ], [ %112, %111 ]
  store i32 %114, i32* %14, align 4
  %115 = load i32, i32* %14, align 4
  %116 = icmp ne i32 %115, -1
  br i1 %116, label %117, label %158

117:                                              ; preds = %113
  %118 = load %struct.thread*, %struct.thread** %9, align 8
  %119 = load i32, i32* %14, align 4
  %120 = call i32 @fget(%struct.thread* %118, i32 %119, i32* @cap_mmap_rights, %struct.file** %20)
  store i32 %120, i32* %19, align 4
  %121 = load i32, i32* %19, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %117
  %124 = load i32, i32* %19, align 4
  store i32 %124, i32* %8, align 4
  br label %258

125:                                              ; preds = %117
  %126 = load %struct.file*, %struct.file** %20, align 8
  %127 = getelementptr inbounds %struct.file, %struct.file* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @DTYPE_VNODE, align 8
  %130 = icmp ne i64 %128, %129
  br i1 %130, label %131, label %142

131:                                              ; preds = %125
  %132 = load %struct.file*, %struct.file** %20, align 8
  %133 = getelementptr inbounds %struct.file, %struct.file* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @DTYPE_DEV, align 8
  %136 = icmp ne i64 %134, %135
  br i1 %136, label %137, label %142

137:                                              ; preds = %131
  %138 = load %struct.file*, %struct.file** %20, align 8
  %139 = load %struct.thread*, %struct.thread** %9, align 8
  %140 = call i32 @fdrop(%struct.file* %138, %struct.thread* %139)
  %141 = load i32, i32* @EINVAL, align 4
  store i32 %141, i32* %8, align 4
  br label %258

142:                                              ; preds = %131, %125
  %143 = load %struct.file*, %struct.file** %20, align 8
  %144 = getelementptr inbounds %struct.file, %struct.file* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @FREAD, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %154, label %149

149:                                              ; preds = %142
  %150 = load %struct.file*, %struct.file** %20, align 8
  %151 = load %struct.thread*, %struct.thread** %9, align 8
  %152 = call i32 @fdrop(%struct.file* %150, %struct.thread* %151)
  %153 = load i32, i32* @EACCES, align 4
  store i32 %153, i32* %8, align 4
  br label %258

154:                                              ; preds = %142
  %155 = load %struct.file*, %struct.file** %20, align 8
  %156 = load %struct.thread*, %struct.thread** %9, align 8
  %157 = call i32 @fdrop(%struct.file* %155, %struct.thread* %156)
  br label %158

158:                                              ; preds = %154, %113
  %159 = load i32, i32* %13, align 4
  %160 = load i32, i32* @LINUX_MAP_GROWSDOWN, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %209

163:                                              ; preds = %158
  %164 = load i64, i64* %10, align 8
  %165 = load i64, i64* %11, align 8
  %166 = add i64 %164, %165
  %167 = load %struct.vmspace*, %struct.vmspace** %17, align 8
  %168 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = icmp ugt i64 %166, %169
  br i1 %170, label %171, label %191

171:                                              ; preds = %163
  %172 = load %struct.proc*, %struct.proc** %16, align 8
  %173 = call i32 @PROC_LOCK(%struct.proc* %172)
  %174 = load %struct.proc*, %struct.proc** %16, align 8
  %175 = getelementptr inbounds %struct.proc, %struct.proc* %174, i32 0, i32 0
  %176 = load %struct.TYPE_2__*, %struct.TYPE_2__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = inttoptr i64 %178 to i8*
  %180 = load %struct.proc*, %struct.proc** %16, align 8
  %181 = load i32, i32* @RLIMIT_STACK, align 4
  %182 = call i32 @lim_cur_proc(%struct.proc* %180, i32 %181)
  %183 = sext i32 %182 to i64
  %184 = sub i64 0, %183
  %185 = getelementptr inbounds i8, i8* %179, i64 %184
  %186 = ptrtoint i8* %185 to i64
  %187 = load %struct.vmspace*, %struct.vmspace** %17, align 8
  %188 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %187, i32 0, i32 0
  store i64 %186, i64* %188, align 8
  %189 = load %struct.proc*, %struct.proc** %16, align 8
  %190 = call i32 @PROC_UNLOCK(%struct.proc* %189)
  br label %191

191:                                              ; preds = %171, %163
  %192 = load i64, i64* %11, align 8
  %193 = load i64, i64* @STACK_SIZE, align 8
  %194 = load i64, i64* @GUARD_SIZE, align 8
  %195 = sub i64 %193, %194
  %196 = icmp ule i64 %192, %195
  br i1 %196, label %197, label %208

197:                                              ; preds = %191
  %198 = load i64, i64* %10, align 8
  %199 = load i64, i64* @STACK_SIZE, align 8
  %200 = load i64, i64* @GUARD_SIZE, align 8
  %201 = sub i64 %199, %200
  %202 = load i64, i64* %11, align 8
  %203 = sub i64 %201, %202
  %204 = sub i64 %198, %203
  store i64 %204, i64* %10, align 8
  %205 = load i64, i64* @STACK_SIZE, align 8
  %206 = load i64, i64* @GUARD_SIZE, align 8
  %207 = sub i64 %205, %206
  store i64 %207, i64* %11, align 8
  br label %208

208:                                              ; preds = %197, %191
  br label %209

209:                                              ; preds = %208, %158
  %210 = load i64, i64* %10, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %239

212:                                              ; preds = %209
  %213 = load i32, i32* %18, align 4
  %214 = load i32, i32* @MAP_FIXED, align 4
  %215 = and i32 %213, %214
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %239

217:                                              ; preds = %212
  %218 = load i32, i32* %18, align 4
  %219 = load i32, i32* @MAP_EXCL, align 4
  %220 = and i32 %218, %219
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %239

222:                                              ; preds = %217
  %223 = load %struct.thread*, %struct.thread** %9, align 8
  %224 = load i64, i64* %10, align 8
  %225 = load i64, i64* %11, align 8
  %226 = load i32, i32* %12, align 4
  %227 = load i32, i32* %18, align 4
  %228 = load i32, i32* @MAP_FIXED, align 4
  %229 = or i32 %227, %228
  %230 = load i32, i32* @MAP_EXCL, align 4
  %231 = or i32 %229, %230
  %232 = load i32, i32* %14, align 4
  %233 = load i32, i32* %15, align 4
  %234 = call i32 @kern_mmap(%struct.thread* %223, i64 %224, i64 %225, i32 %226, i32 %231, i32 %232, i32 %233)
  store i32 %234, i32* %19, align 4
  %235 = load i32, i32* %19, align 4
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %238

237:                                              ; preds = %222
  br label %248

238:                                              ; preds = %222
  br label %239

239:                                              ; preds = %238, %217, %212, %209
  %240 = load %struct.thread*, %struct.thread** %9, align 8
  %241 = load i64, i64* %10, align 8
  %242 = load i64, i64* %11, align 8
  %243 = load i32, i32* %12, align 4
  %244 = load i32, i32* %18, align 4
  %245 = load i32, i32* %14, align 4
  %246 = load i32, i32* %15, align 4
  %247 = call i32 @kern_mmap(%struct.thread* %240, i64 %241, i64 %242, i32 %243, i32 %244, i32 %245, i32 %246)
  store i32 %247, i32* %19, align 4
  br label %248

248:                                              ; preds = %239, %237
  %249 = load i32, i32* @mmap2, align 4
  %250 = load i32, i32* %19, align 4
  %251 = load %struct.thread*, %struct.thread** %9, align 8
  %252 = getelementptr inbounds %struct.thread, %struct.thread* %251, i32 0, i32 0
  %253 = load i32*, i32** %252, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 0
  %255 = load i32, i32* %254, align 4
  %256 = call i32 @LINUX_CTR2(i32 %249, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %250, i32 %255)
  %257 = load i32, i32* %19, align 4
  store i32 %257, i32* %8, align 4
  br label %258

258:                                              ; preds = %248, %149, %137, %123, %84, %45
  %259 = load i32, i32* %8, align 4
  ret i32 %259
}

declare dso_local i32 @LINUX_CTR6(i32, i8*, i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @linux_fixup_prot(%struct.thread*, i32*) #1

declare dso_local i32 @fget(%struct.thread*, i32, i32*, %struct.file**) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i32 @lim_cur_proc(%struct.proc*, i32) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i32 @kern_mmap(%struct.thread*, i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @LINUX_CTR2(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

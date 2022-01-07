; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/linux32/extr_linux32_sysvec.c_linux_copyout_auxargs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/linux32/extr_linux32_sysvec.c_linux_copyout_auxargs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.image_params = type { i64, i64, i32*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@LINUX_AT_COUNT = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@P_SUGID = common dso_local global i32 0, align 4
@LINUX_AT_SYSINFO_EHDR = common dso_local global i32 0, align 4
@LINUX_AT_SYSINFO = common dso_local global i32 0, align 4
@linux32_vsyscall = common dso_local global i32 0, align 4
@LINUX_AT_HWCAP = common dso_local global i32 0, align 4
@cpu_feature = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@LINUX_KERNVER_2004000 = common dso_local global i64 0, align 8
@LINUX_AT_CLKTCK = common dso_local global i32 0, align 4
@stclohz = common dso_local global i32 0, align 4
@AT_PHDR = common dso_local global i32 0, align 4
@AT_PHENT = common dso_local global i32 0, align 4
@AT_PHNUM = common dso_local global i32 0, align 4
@AT_PAGESZ = common dso_local global i32 0, align 4
@AT_FLAGS = common dso_local global i32 0, align 4
@AT_ENTRY = common dso_local global i32 0, align 4
@AT_BASE = common dso_local global i32 0, align 4
@LINUX_AT_SECURE = common dso_local global i32 0, align 4
@AT_UID = common dso_local global i32 0, align 4
@AT_EUID = common dso_local global i32 0, align 4
@AT_GID = common dso_local global i32 0, align 4
@AT_EGID = common dso_local global i32 0, align 4
@LINUX_AT_PLATFORM = common dso_local global i32 0, align 4
@linux_platform = common dso_local global i64 0, align 8
@LINUX_AT_RANDOM = common dso_local global i32 0, align 4
@LINUX_AT_EXECFN = common dso_local global i32 0, align 4
@AT_EXECFD = common dso_local global i32 0, align 4
@AT_NULL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Too many auxargs\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.image_params*, i32*)* @linux_copyout_auxargs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @linux_copyout_auxargs(%struct.image_params* %0, i32* %1) #0 {
  %3 = alloca %struct.image_params*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.image_params* %0, %struct.image_params** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load %struct.image_params*, %struct.image_params** %3, align 8
  %11 = getelementptr inbounds %struct.image_params, %struct.image_params* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  %13 = bitcast i32* %12 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %5, align 8
  %14 = load i32, i32* @LINUX_AT_COUNT, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 4
  %17 = trunc i64 %16 to i32
  %18 = load i32, i32* @M_TEMP, align 4
  %19 = load i32, i32* @M_WAITOK, align 4
  %20 = load i32, i32* @M_ZERO, align 4
  %21 = or i32 %19, %20
  %22 = call i32* @malloc(i32 %17, i32 %18, i32 %21)
  store i32* %22, i32** %7, align 8
  store i32* %22, i32** %6, align 8
  %23 = load %struct.image_params*, %struct.image_params** %3, align 8
  %24 = getelementptr inbounds %struct.image_params, %struct.image_params* %23, i32 0, i32 3
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @P_SUGID, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 1, i32 0
  store i32 %32, i32* %9, align 4
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* @LINUX_AT_SYSINFO_EHDR, align 4
  %35 = load %struct.image_params*, %struct.image_params** %3, align 8
  %36 = getelementptr inbounds %struct.image_params, %struct.image_params* %35, i32 0, i32 3
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @AUXARGS_ENTRY(i32* %33, i32 %34, i32 %41)
  %43 = load i32*, i32** %7, align 8
  %44 = load i32, i32* @LINUX_AT_SYSINFO, align 4
  %45 = load i32, i32* @linux32_vsyscall, align 4
  %46 = call i32 @AUXARGS_ENTRY(i32* %43, i32 %44, i32 %45)
  %47 = load i32*, i32** %7, align 8
  %48 = load i32, i32* @LINUX_AT_HWCAP, align 4
  %49 = load i32, i32* @cpu_feature, align 4
  %50 = call i32 @AUXARGS_ENTRY(i32* %47, i32 %48, i32 %49)
  %51 = load i32, i32* @curthread, align 4
  %52 = call i64 @linux_kernver(i32 %51)
  %53 = load i64, i64* @LINUX_KERNVER_2004000, align 8
  %54 = icmp sge i64 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %2
  %56 = load i32*, i32** %7, align 8
  %57 = load i32, i32* @LINUX_AT_CLKTCK, align 4
  %58 = load i32, i32* @stclohz, align 4
  %59 = call i32 @AUXARGS_ENTRY(i32* %56, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %55, %2
  %61 = load i32*, i32** %7, align 8
  %62 = load i32, i32* @AT_PHDR, align 4
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @AUXARGS_ENTRY(i32* %61, i32 %62, i32 %65)
  %67 = load i32*, i32** %7, align 8
  %68 = load i32, i32* @AT_PHENT, align 4
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @AUXARGS_ENTRY(i32* %67, i32 %68, i32 %71)
  %73 = load i32*, i32** %7, align 8
  %74 = load i32, i32* @AT_PHNUM, align 4
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @AUXARGS_ENTRY(i32* %73, i32 %74, i32 %77)
  %79 = load i32*, i32** %7, align 8
  %80 = load i32, i32* @AT_PAGESZ, align 4
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @AUXARGS_ENTRY(i32* %79, i32 %80, i32 %83)
  %85 = load i32*, i32** %7, align 8
  %86 = load i32, i32* @AT_FLAGS, align 4
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @AUXARGS_ENTRY(i32* %85, i32 %86, i32 %89)
  %91 = load i32*, i32** %7, align 8
  %92 = load i32, i32* @AT_ENTRY, align 4
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @AUXARGS_ENTRY(i32* %91, i32 %92, i32 %95)
  %97 = load i32*, i32** %7, align 8
  %98 = load i32, i32* @AT_BASE, align 4
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 6
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @AUXARGS_ENTRY(i32* %97, i32 %98, i32 %101)
  %103 = load i32*, i32** %7, align 8
  %104 = load i32, i32* @LINUX_AT_SECURE, align 4
  %105 = load i32, i32* %9, align 4
  %106 = call i32 @AUXARGS_ENTRY(i32* %103, i32 %104, i32 %105)
  %107 = load i32*, i32** %7, align 8
  %108 = load i32, i32* @AT_UID, align 4
  %109 = load %struct.image_params*, %struct.image_params** %3, align 8
  %110 = getelementptr inbounds %struct.image_params, %struct.image_params* %109, i32 0, i32 3
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @AUXARGS_ENTRY(i32* %107, i32 %108, i32 %115)
  %117 = load i32*, i32** %7, align 8
  %118 = load i32, i32* @AT_EUID, align 4
  %119 = load %struct.image_params*, %struct.image_params** %3, align 8
  %120 = getelementptr inbounds %struct.image_params, %struct.image_params* %119, i32 0, i32 3
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @AUXARGS_ENTRY(i32* %117, i32 %118, i32 %125)
  %127 = load i32*, i32** %7, align 8
  %128 = load i32, i32* @AT_GID, align 4
  %129 = load %struct.image_params*, %struct.image_params** %3, align 8
  %130 = getelementptr inbounds %struct.image_params, %struct.image_params* %129, i32 0, i32 3
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @AUXARGS_ENTRY(i32* %127, i32 %128, i32 %135)
  %137 = load i32*, i32** %7, align 8
  %138 = load i32, i32* @AT_EGID, align 4
  %139 = load %struct.image_params*, %struct.image_params** %3, align 8
  %140 = getelementptr inbounds %struct.image_params, %struct.image_params* %139, i32 0, i32 3
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 1
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @AUXARGS_ENTRY(i32* %137, i32 %138, i32 %145)
  %147 = load i32*, i32** %7, align 8
  %148 = load i32, i32* @LINUX_AT_PLATFORM, align 4
  %149 = load i64, i64* @linux_platform, align 8
  %150 = call i32 @PTROUT(i64 %149)
  %151 = call i32 @AUXARGS_ENTRY(i32* %147, i32 %148, i32 %150)
  %152 = load i32*, i32** %7, align 8
  %153 = load i32, i32* @LINUX_AT_RANDOM, align 4
  %154 = load %struct.image_params*, %struct.image_params** %3, align 8
  %155 = getelementptr inbounds %struct.image_params, %struct.image_params* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = call i32 @PTROUT(i64 %156)
  %158 = call i32 @AUXARGS_ENTRY(i32* %152, i32 %153, i32 %157)
  %159 = load %struct.image_params*, %struct.image_params** %3, align 8
  %160 = getelementptr inbounds %struct.image_params, %struct.image_params* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %171

163:                                              ; preds = %60
  %164 = load i32*, i32** %7, align 8
  %165 = load i32, i32* @LINUX_AT_EXECFN, align 4
  %166 = load %struct.image_params*, %struct.image_params** %3, align 8
  %167 = getelementptr inbounds %struct.image_params, %struct.image_params* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = call i32 @PTROUT(i64 %168)
  %170 = call i32 @AUXARGS_ENTRY(i32* %164, i32 %165, i32 %169)
  br label %171

171:                                              ; preds = %163, %60
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 7
  %174 = load i32, i32* %173, align 4
  %175 = icmp ne i32 %174, -1
  br i1 %175, label %176, label %183

176:                                              ; preds = %171
  %177 = load i32*, i32** %7, align 8
  %178 = load i32, i32* @AT_EXECFD, align 4
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 7
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @AUXARGS_ENTRY(i32* %177, i32 %178, i32 %181)
  br label %183

183:                                              ; preds = %176, %171
  %184 = load i32*, i32** %7, align 8
  %185 = load i32, i32* @AT_NULL, align 4
  %186 = call i32 @AUXARGS_ENTRY(i32* %184, i32 %185, i32 0)
  %187 = load %struct.image_params*, %struct.image_params** %3, align 8
  %188 = getelementptr inbounds %struct.image_params, %struct.image_params* %187, i32 0, i32 2
  %189 = load i32*, i32** %188, align 8
  %190 = load i32, i32* @M_TEMP, align 4
  %191 = call i32 @free(i32* %189, i32 %190)
  %192 = load %struct.image_params*, %struct.image_params** %3, align 8
  %193 = getelementptr inbounds %struct.image_params, %struct.image_params* %192, i32 0, i32 2
  store i32* null, i32** %193, align 8
  %194 = load i32*, i32** %7, align 8
  %195 = load i32*, i32** %6, align 8
  %196 = ptrtoint i32* %194 to i64
  %197 = ptrtoint i32* %195 to i64
  %198 = sub i64 %196, %197
  %199 = sdiv exact i64 %198, 4
  %200 = load i32, i32* @LINUX_AT_COUNT, align 4
  %201 = sext i32 %200 to i64
  %202 = icmp sle i64 %199, %201
  %203 = zext i1 %202 to i32
  %204 = call i32 @KASSERT(i32 %203, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %205 = load i32*, i32** %7, align 8
  %206 = load i32*, i32** %6, align 8
  %207 = ptrtoint i32* %205 to i64
  %208 = ptrtoint i32* %206 to i64
  %209 = sub i64 %207, %208
  %210 = sdiv exact i64 %209, 4
  %211 = mul i64 4, %210
  %212 = trunc i64 %211 to i32
  store i32 %212, i32* %8, align 4
  %213 = load i32, i32* %8, align 4
  %214 = load i32*, i32** %4, align 8
  %215 = load i32, i32* %214, align 4
  %216 = sub nsw i32 %215, %213
  store i32 %216, i32* %214, align 4
  %217 = load i32*, i32** %6, align 8
  %218 = load i32*, i32** %4, align 8
  %219 = load i32, i32* %218, align 4
  %220 = sext i32 %219 to i64
  %221 = inttoptr i64 %220 to i8*
  %222 = load i32, i32* %8, align 4
  %223 = call i32 @copyout(i32* %217, i8* %221, i32 %222)
  %224 = load i32*, i32** %6, align 8
  %225 = load i32, i32* @M_TEMP, align 4
  %226 = call i32 @free(i32* %224, i32 %225)
  ret void
}

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @AUXARGS_ENTRY(i32*, i32, i32) #1

declare dso_local i64 @linux_kernver(i32) #1

declare dso_local i32 @PTROUT(i64) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @copyout(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/linux/extr_linux_sysvec.c_linux_copyout_auxargs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/linux/extr_linux_sysvec.c_linux_copyout_auxargs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.image_params = type { i32, i32, i32*, %struct.proc* }
%struct.proc = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@LINUX_AT_COUNT = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@P_SUGID = common dso_local global i32 0, align 4
@LINUX_AT_SYSINFO_EHDR = common dso_local global i32 0, align 4
@LINUX_AT_HWCAP = common dso_local global i32 0, align 4
@cpu_feature = common dso_local global i32 0, align 4
@LINUX_AT_CLKTCK = common dso_local global i32 0, align 4
@stclohz = common dso_local global i32 0, align 4
@AT_PHDR = common dso_local global i32 0, align 4
@AT_PHENT = common dso_local global i32 0, align 4
@AT_PHNUM = common dso_local global i32 0, align 4
@AT_PAGESZ = common dso_local global i32 0, align 4
@AT_BASE = common dso_local global i32 0, align 4
@AT_FLAGS = common dso_local global i32 0, align 4
@AT_ENTRY = common dso_local global i32 0, align 4
@AT_UID = common dso_local global i32 0, align 4
@AT_EUID = common dso_local global i32 0, align 4
@AT_GID = common dso_local global i32 0, align 4
@AT_EGID = common dso_local global i32 0, align 4
@LINUX_AT_SECURE = common dso_local global i32 0, align 4
@LINUX_AT_PLATFORM = common dso_local global i32 0, align 4
@linux_platform = common dso_local global i32 0, align 4
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
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.proc*, align 8
  %10 = alloca i32, align 4
  store %struct.image_params* %0, %struct.image_params** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load %struct.image_params*, %struct.image_params** %3, align 8
  %12 = getelementptr inbounds %struct.image_params, %struct.image_params* %11, i32 0, i32 3
  %13 = load %struct.proc*, %struct.proc** %12, align 8
  store %struct.proc* %13, %struct.proc** %9, align 8
  %14 = load %struct.image_params*, %struct.image_params** %3, align 8
  %15 = getelementptr inbounds %struct.image_params, %struct.image_params* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = bitcast i32* %16 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %5, align 8
  %18 = load i32, i32* @LINUX_AT_COUNT, align 4
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 4
  %21 = trunc i64 %20 to i32
  %22 = load i32, i32* @M_TEMP, align 4
  %23 = load i32, i32* @M_WAITOK, align 4
  %24 = load i32, i32* @M_ZERO, align 4
  %25 = or i32 %23, %24
  %26 = call i32* @malloc(i32 %21, i32 %22, i32 %25)
  store i32* %26, i32** %7, align 8
  store i32* %26, i32** %6, align 8
  %27 = load %struct.proc*, %struct.proc** %9, align 8
  %28 = getelementptr inbounds %struct.proc, %struct.proc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @P_SUGID, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 1, i32 0
  store i32 %34, i32* %10, align 4
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* @LINUX_AT_SYSINFO_EHDR, align 4
  %37 = load %struct.image_params*, %struct.image_params** %3, align 8
  %38 = getelementptr inbounds %struct.image_params, %struct.image_params* %37, i32 0, i32 3
  %39 = load %struct.proc*, %struct.proc** %38, align 8
  %40 = getelementptr inbounds %struct.proc, %struct.proc* %39, i32 0, i32 2
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @AUXARGS_ENTRY(i32* %35, i32 %36, i32 %43)
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* @LINUX_AT_HWCAP, align 4
  %47 = load i32, i32* @cpu_feature, align 4
  %48 = call i32 @AUXARGS_ENTRY(i32* %45, i32 %46, i32 %47)
  %49 = load i32*, i32** %7, align 8
  %50 = load i32, i32* @LINUX_AT_CLKTCK, align 4
  %51 = load i32, i32* @stclohz, align 4
  %52 = call i32 @AUXARGS_ENTRY(i32* %49, i32 %50, i32 %51)
  %53 = load i32*, i32** %7, align 8
  %54 = load i32, i32* @AT_PHDR, align 4
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @AUXARGS_ENTRY(i32* %53, i32 %54, i32 %57)
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* @AT_PHENT, align 4
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @AUXARGS_ENTRY(i32* %59, i32 %60, i32 %63)
  %65 = load i32*, i32** %7, align 8
  %66 = load i32, i32* @AT_PHNUM, align 4
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @AUXARGS_ENTRY(i32* %65, i32 %66, i32 %69)
  %71 = load i32*, i32** %7, align 8
  %72 = load i32, i32* @AT_PAGESZ, align 4
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @AUXARGS_ENTRY(i32* %71, i32 %72, i32 %75)
  %77 = load i32*, i32** %7, align 8
  %78 = load i32, i32* @AT_BASE, align 4
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @AUXARGS_ENTRY(i32* %77, i32 %78, i32 %81)
  %83 = load i32*, i32** %7, align 8
  %84 = load i32, i32* @AT_FLAGS, align 4
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @AUXARGS_ENTRY(i32* %83, i32 %84, i32 %87)
  %89 = load i32*, i32** %7, align 8
  %90 = load i32, i32* @AT_ENTRY, align 4
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 6
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @AUXARGS_ENTRY(i32* %89, i32 %90, i32 %93)
  %95 = load i32*, i32** %7, align 8
  %96 = load i32, i32* @AT_UID, align 4
  %97 = load %struct.image_params*, %struct.image_params** %3, align 8
  %98 = getelementptr inbounds %struct.image_params, %struct.image_params* %97, i32 0, i32 3
  %99 = load %struct.proc*, %struct.proc** %98, align 8
  %100 = getelementptr inbounds %struct.proc, %struct.proc* %99, i32 0, i32 1
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @AUXARGS_ENTRY(i32* %95, i32 %96, i32 %103)
  %105 = load i32*, i32** %7, align 8
  %106 = load i32, i32* @AT_EUID, align 4
  %107 = load %struct.image_params*, %struct.image_params** %3, align 8
  %108 = getelementptr inbounds %struct.image_params, %struct.image_params* %107, i32 0, i32 3
  %109 = load %struct.proc*, %struct.proc** %108, align 8
  %110 = getelementptr inbounds %struct.proc, %struct.proc* %109, i32 0, i32 1
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @AUXARGS_ENTRY(i32* %105, i32 %106, i32 %113)
  %115 = load i32*, i32** %7, align 8
  %116 = load i32, i32* @AT_GID, align 4
  %117 = load %struct.image_params*, %struct.image_params** %3, align 8
  %118 = getelementptr inbounds %struct.image_params, %struct.image_params* %117, i32 0, i32 3
  %119 = load %struct.proc*, %struct.proc** %118, align 8
  %120 = getelementptr inbounds %struct.proc, %struct.proc* %119, i32 0, i32 1
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @AUXARGS_ENTRY(i32* %115, i32 %116, i32 %123)
  %125 = load i32*, i32** %7, align 8
  %126 = load i32, i32* @AT_EGID, align 4
  %127 = load %struct.image_params*, %struct.image_params** %3, align 8
  %128 = getelementptr inbounds %struct.image_params, %struct.image_params* %127, i32 0, i32 3
  %129 = load %struct.proc*, %struct.proc** %128, align 8
  %130 = getelementptr inbounds %struct.proc, %struct.proc* %129, i32 0, i32 1
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @AUXARGS_ENTRY(i32* %125, i32 %126, i32 %133)
  %135 = load i32*, i32** %7, align 8
  %136 = load i32, i32* @LINUX_AT_SECURE, align 4
  %137 = load i32, i32* %10, align 4
  %138 = call i32 @AUXARGS_ENTRY(i32* %135, i32 %136, i32 %137)
  %139 = load i32*, i32** %7, align 8
  %140 = load i32, i32* @LINUX_AT_PLATFORM, align 4
  %141 = load i32, i32* @linux_platform, align 4
  %142 = call i32 @PTROUT(i32 %141)
  %143 = call i32 @AUXARGS_ENTRY(i32* %139, i32 %140, i32 %142)
  %144 = load i32*, i32** %7, align 8
  %145 = load i32, i32* @LINUX_AT_RANDOM, align 4
  %146 = load %struct.image_params*, %struct.image_params** %3, align 8
  %147 = getelementptr inbounds %struct.image_params, %struct.image_params* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @AUXARGS_ENTRY(i32* %144, i32 %145, i32 %148)
  %150 = load %struct.image_params*, %struct.image_params** %3, align 8
  %151 = getelementptr inbounds %struct.image_params, %struct.image_params* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %161

154:                                              ; preds = %2
  %155 = load i32*, i32** %7, align 8
  %156 = load i32, i32* @LINUX_AT_EXECFN, align 4
  %157 = load %struct.image_params*, %struct.image_params** %3, align 8
  %158 = getelementptr inbounds %struct.image_params, %struct.image_params* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @AUXARGS_ENTRY(i32* %155, i32 %156, i32 %159)
  br label %161

161:                                              ; preds = %154, %2
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 7
  %164 = load i32, i32* %163, align 4
  %165 = icmp ne i32 %164, -1
  br i1 %165, label %166, label %173

166:                                              ; preds = %161
  %167 = load i32*, i32** %7, align 8
  %168 = load i32, i32* @AT_EXECFD, align 4
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 7
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @AUXARGS_ENTRY(i32* %167, i32 %168, i32 %171)
  br label %173

173:                                              ; preds = %166, %161
  %174 = load i32*, i32** %7, align 8
  %175 = load i32, i32* @AT_NULL, align 4
  %176 = call i32 @AUXARGS_ENTRY(i32* %174, i32 %175, i32 0)
  %177 = load %struct.image_params*, %struct.image_params** %3, align 8
  %178 = getelementptr inbounds %struct.image_params, %struct.image_params* %177, i32 0, i32 2
  %179 = load i32*, i32** %178, align 8
  %180 = load i32, i32* @M_TEMP, align 4
  %181 = call i32 @free(i32* %179, i32 %180)
  %182 = load %struct.image_params*, %struct.image_params** %3, align 8
  %183 = getelementptr inbounds %struct.image_params, %struct.image_params* %182, i32 0, i32 2
  store i32* null, i32** %183, align 8
  %184 = load i32*, i32** %7, align 8
  %185 = load i32*, i32** %6, align 8
  %186 = ptrtoint i32* %184 to i64
  %187 = ptrtoint i32* %185 to i64
  %188 = sub i64 %186, %187
  %189 = sdiv exact i64 %188, 4
  %190 = load i32, i32* @LINUX_AT_COUNT, align 4
  %191 = sext i32 %190 to i64
  %192 = icmp sle i64 %189, %191
  %193 = zext i1 %192 to i32
  %194 = call i32 @KASSERT(i32 %193, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %195 = load i32*, i32** %7, align 8
  %196 = load i32*, i32** %6, align 8
  %197 = ptrtoint i32* %195 to i64
  %198 = ptrtoint i32* %196 to i64
  %199 = sub i64 %197, %198
  %200 = sdiv exact i64 %199, 4
  %201 = mul i64 4, %200
  %202 = trunc i64 %201 to i32
  store i32 %202, i32* %8, align 4
  %203 = load i32, i32* %8, align 4
  %204 = load i32*, i32** %4, align 8
  %205 = load i32, i32* %204, align 4
  %206 = sub nsw i32 %205, %203
  store i32 %206, i32* %204, align 4
  %207 = load i32*, i32** %6, align 8
  %208 = load i32*, i32** %4, align 8
  %209 = load i32, i32* %208, align 4
  %210 = sext i32 %209 to i64
  %211 = inttoptr i64 %210 to i8*
  %212 = load i32, i32* %8, align 4
  %213 = call i32 @copyout(i32* %207, i8* %211, i32 %212)
  %214 = load i32*, i32** %6, align 8
  %215 = load i32, i32* @M_TEMP, align 4
  %216 = call i32 @free(i32* %214, i32 %215)
  ret void
}

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @AUXARGS_ENTRY(i32*, i32, i32) #1

declare dso_local i32 @PTROUT(i32) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @copyout(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

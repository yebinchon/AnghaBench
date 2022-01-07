; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/linux/extr_linux_sysvec.c_linux_copyout_auxargs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/linux/extr_linux_sysvec.c_linux_copyout_auxargs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.image_params = type { i32, i32, i32*, %struct.proc* }
%struct.proc = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@sysvec = common dso_local global i32 0, align 4
@todo = common dso_local global i32 0, align 4
@LINUX_AT_COUNT = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@P_SUGID = common dso_local global i32 0, align 4
@LINUX_AT_SYSINFO_EHDR = common dso_local global i32 0, align 4
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
@LINUX_AT_RANDOM = common dso_local global i32 0, align 4
@LINUX_AT_EXECFN = common dso_local global i32 0, align 4
@AT_EXECFD = common dso_local global i32 0, align 4
@AT_NULL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Too many auxargs\00", align 1
@LINUX_AT_HWCAP = common dso_local global i32 0, align 4
@LINUX_AT_PLATFORM = common dso_local global i32 0, align 4
@cpu_feature = common dso_local global i32 0, align 4
@linux_platform = common dso_local global i32 0, align 4
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
  %11 = load i32, i32* @sysvec, align 4
  %12 = load i32, i32* @todo, align 4
  %13 = call i32 @LIN_SDT_PROBE0(i32 %11, void (%struct.image_params*, i32*)* @linux_copyout_auxargs, i32 %12)
  %14 = load %struct.image_params*, %struct.image_params** %3, align 8
  %15 = getelementptr inbounds %struct.image_params, %struct.image_params* %14, i32 0, i32 3
  %16 = load %struct.proc*, %struct.proc** %15, align 8
  store %struct.proc* %16, %struct.proc** %9, align 8
  %17 = load %struct.image_params*, %struct.image_params** %3, align 8
  %18 = getelementptr inbounds %struct.image_params, %struct.image_params* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = bitcast i32* %19 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** %5, align 8
  %21 = load i32, i32* @LINUX_AT_COUNT, align 4
  %22 = sext i32 %21 to i64
  %23 = mul i64 %22, 4
  %24 = trunc i64 %23 to i32
  %25 = load i32, i32* @M_TEMP, align 4
  %26 = load i32, i32* @M_WAITOK, align 4
  %27 = load i32, i32* @M_ZERO, align 4
  %28 = or i32 %26, %27
  %29 = call i32* @malloc(i32 %24, i32 %25, i32 %28)
  store i32* %29, i32** %7, align 8
  store i32* %29, i32** %6, align 8
  %30 = load %struct.proc*, %struct.proc** %9, align 8
  %31 = getelementptr inbounds %struct.proc, %struct.proc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @P_SUGID, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 1, i32 0
  store i32 %37, i32* %10, align 4
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* @LINUX_AT_SYSINFO_EHDR, align 4
  %40 = load %struct.image_params*, %struct.image_params** %3, align 8
  %41 = getelementptr inbounds %struct.image_params, %struct.image_params* %40, i32 0, i32 3
  %42 = load %struct.proc*, %struct.proc** %41, align 8
  %43 = getelementptr inbounds %struct.proc, %struct.proc* %42, i32 0, i32 2
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @AUXARGS_ENTRY(i32* %38, i32 %39, i32 %46)
  %48 = load i32*, i32** %7, align 8
  %49 = load i32, i32* @LINUX_AT_CLKTCK, align 4
  %50 = load i32, i32* @stclohz, align 4
  %51 = call i32 @AUXARGS_ENTRY(i32* %48, i32 %49, i32 %50)
  %52 = load i32*, i32** %7, align 8
  %53 = load i32, i32* @AT_PHDR, align 4
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @AUXARGS_ENTRY(i32* %52, i32 %53, i32 %56)
  %58 = load i32*, i32** %7, align 8
  %59 = load i32, i32* @AT_PHENT, align 4
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @AUXARGS_ENTRY(i32* %58, i32 %59, i32 %62)
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* @AT_PHNUM, align 4
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @AUXARGS_ENTRY(i32* %64, i32 %65, i32 %68)
  %70 = load i32*, i32** %7, align 8
  %71 = load i32, i32* @AT_PAGESZ, align 4
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @AUXARGS_ENTRY(i32* %70, i32 %71, i32 %74)
  %76 = load i32*, i32** %7, align 8
  %77 = load i32, i32* @AT_BASE, align 4
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @AUXARGS_ENTRY(i32* %76, i32 %77, i32 %80)
  %82 = load i32*, i32** %7, align 8
  %83 = load i32, i32* @AT_FLAGS, align 4
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @AUXARGS_ENTRY(i32* %82, i32 %83, i32 %86)
  %88 = load i32*, i32** %7, align 8
  %89 = load i32, i32* @AT_ENTRY, align 4
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 6
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @AUXARGS_ENTRY(i32* %88, i32 %89, i32 %92)
  %94 = load i32*, i32** %7, align 8
  %95 = load i32, i32* @AT_UID, align 4
  %96 = load %struct.image_params*, %struct.image_params** %3, align 8
  %97 = getelementptr inbounds %struct.image_params, %struct.image_params* %96, i32 0, i32 3
  %98 = load %struct.proc*, %struct.proc** %97, align 8
  %99 = getelementptr inbounds %struct.proc, %struct.proc* %98, i32 0, i32 1
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @AUXARGS_ENTRY(i32* %94, i32 %95, i32 %102)
  %104 = load i32*, i32** %7, align 8
  %105 = load i32, i32* @AT_EUID, align 4
  %106 = load %struct.image_params*, %struct.image_params** %3, align 8
  %107 = getelementptr inbounds %struct.image_params, %struct.image_params* %106, i32 0, i32 3
  %108 = load %struct.proc*, %struct.proc** %107, align 8
  %109 = getelementptr inbounds %struct.proc, %struct.proc* %108, i32 0, i32 1
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @AUXARGS_ENTRY(i32* %104, i32 %105, i32 %112)
  %114 = load i32*, i32** %7, align 8
  %115 = load i32, i32* @AT_GID, align 4
  %116 = load %struct.image_params*, %struct.image_params** %3, align 8
  %117 = getelementptr inbounds %struct.image_params, %struct.image_params* %116, i32 0, i32 3
  %118 = load %struct.proc*, %struct.proc** %117, align 8
  %119 = getelementptr inbounds %struct.proc, %struct.proc* %118, i32 0, i32 1
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @AUXARGS_ENTRY(i32* %114, i32 %115, i32 %122)
  %124 = load i32*, i32** %7, align 8
  %125 = load i32, i32* @AT_EGID, align 4
  %126 = load %struct.image_params*, %struct.image_params** %3, align 8
  %127 = getelementptr inbounds %struct.image_params, %struct.image_params* %126, i32 0, i32 3
  %128 = load %struct.proc*, %struct.proc** %127, align 8
  %129 = getelementptr inbounds %struct.proc, %struct.proc* %128, i32 0, i32 1
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @AUXARGS_ENTRY(i32* %124, i32 %125, i32 %132)
  %134 = load i32*, i32** %7, align 8
  %135 = load i32, i32* @LINUX_AT_SECURE, align 4
  %136 = load i32, i32* %10, align 4
  %137 = call i32 @AUXARGS_ENTRY(i32* %134, i32 %135, i32 %136)
  %138 = load i32*, i32** %7, align 8
  %139 = load i32, i32* @LINUX_AT_RANDOM, align 4
  %140 = load %struct.image_params*, %struct.image_params** %3, align 8
  %141 = getelementptr inbounds %struct.image_params, %struct.image_params* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @AUXARGS_ENTRY(i32* %138, i32 %139, i32 %142)
  %144 = load %struct.image_params*, %struct.image_params** %3, align 8
  %145 = getelementptr inbounds %struct.image_params, %struct.image_params* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %155

148:                                              ; preds = %2
  %149 = load i32*, i32** %7, align 8
  %150 = load i32, i32* @LINUX_AT_EXECFN, align 4
  %151 = load %struct.image_params*, %struct.image_params** %3, align 8
  %152 = getelementptr inbounds %struct.image_params, %struct.image_params* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @AUXARGS_ENTRY(i32* %149, i32 %150, i32 %153)
  br label %155

155:                                              ; preds = %148, %2
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 7
  %158 = load i32, i32* %157, align 4
  %159 = icmp ne i32 %158, -1
  br i1 %159, label %160, label %167

160:                                              ; preds = %155
  %161 = load i32*, i32** %7, align 8
  %162 = load i32, i32* @AT_EXECFD, align 4
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 7
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @AUXARGS_ENTRY(i32* %161, i32 %162, i32 %165)
  br label %167

167:                                              ; preds = %160, %155
  %168 = load i32*, i32** %7, align 8
  %169 = load i32, i32* @AT_NULL, align 4
  %170 = call i32 @AUXARGS_ENTRY(i32* %168, i32 %169, i32 0)
  %171 = load %struct.image_params*, %struct.image_params** %3, align 8
  %172 = getelementptr inbounds %struct.image_params, %struct.image_params* %171, i32 0, i32 2
  %173 = load i32*, i32** %172, align 8
  %174 = load i32, i32* @M_TEMP, align 4
  %175 = call i32 @free(i32* %173, i32 %174)
  %176 = load %struct.image_params*, %struct.image_params** %3, align 8
  %177 = getelementptr inbounds %struct.image_params, %struct.image_params* %176, i32 0, i32 2
  store i32* null, i32** %177, align 8
  %178 = load i32*, i32** %7, align 8
  %179 = load i32*, i32** %6, align 8
  %180 = ptrtoint i32* %178 to i64
  %181 = ptrtoint i32* %179 to i64
  %182 = sub i64 %180, %181
  %183 = sdiv exact i64 %182, 4
  %184 = load i32, i32* @LINUX_AT_COUNT, align 4
  %185 = sext i32 %184 to i64
  %186 = icmp sle i64 %183, %185
  %187 = zext i1 %186 to i32
  %188 = call i32 @KASSERT(i32 %187, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %189 = load i32*, i32** %7, align 8
  %190 = load i32*, i32** %6, align 8
  %191 = ptrtoint i32* %189 to i64
  %192 = ptrtoint i32* %190 to i64
  %193 = sub i64 %191, %192
  %194 = sdiv exact i64 %193, 4
  %195 = mul i64 4, %194
  %196 = trunc i64 %195 to i32
  store i32 %196, i32* %8, align 4
  %197 = load i32, i32* %8, align 4
  %198 = load i32*, i32** %4, align 8
  %199 = load i32, i32* %198, align 4
  %200 = sub nsw i32 %199, %197
  store i32 %200, i32* %198, align 4
  %201 = load i32*, i32** %6, align 8
  %202 = load i32*, i32** %4, align 8
  %203 = load i32, i32* %202, align 4
  %204 = sext i32 %203 to i64
  %205 = inttoptr i64 %204 to i8*
  %206 = load i32, i32* %8, align 4
  %207 = call i32 @copyout(i32* %201, i8* %205, i32 %206)
  %208 = load i32*, i32** %6, align 8
  %209 = load i32, i32* @M_TEMP, align 4
  %210 = call i32 @free(i32* %208, i32 %209)
  ret void
}

declare dso_local i32 @LIN_SDT_PROBE0(i32, void (%struct.image_params*, i32*)*, i32) #1

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @AUXARGS_ENTRY(i32*, i32, i32) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @copyout(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

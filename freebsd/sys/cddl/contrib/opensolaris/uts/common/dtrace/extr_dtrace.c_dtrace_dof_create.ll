; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_dtrace.c_dtrace_dof_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_dtrace.c_dtrace_dof_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32, i64, i64, i32* }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_9__ = type { i32, i32, i64, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }

@DTRACEOPT_MAX = common dso_local global i32 0, align 4
@dtrace_lock = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@DOF_MAG_MAG0 = common dso_local global i32 0, align 4
@DOF_ID_MAG0 = common dso_local global i64 0, align 8
@DOF_MAG_MAG1 = common dso_local global i32 0, align 4
@DOF_ID_MAG1 = common dso_local global i64 0, align 8
@DOF_MAG_MAG2 = common dso_local global i32 0, align 4
@DOF_ID_MAG2 = common dso_local global i64 0, align 8
@DOF_MAG_MAG3 = common dso_local global i32 0, align 4
@DOF_ID_MAG3 = common dso_local global i64 0, align 8
@DOF_MODEL_NATIVE = common dso_local global i32 0, align 4
@DOF_ID_MODEL = common dso_local global i64 0, align 8
@DOF_ENCODE_NATIVE = common dso_local global i32 0, align 4
@DOF_ID_ENCODING = common dso_local global i64 0, align 8
@DOF_VERSION = common dso_local global i32 0, align 4
@DOF_ID_VERSION = common dso_local global i64 0, align 8
@DIF_VERSION = common dso_local global i32 0, align 4
@DOF_ID_DIFVERS = common dso_local global i64 0, align 8
@DIF_DIR_NREGS = common dso_local global i32 0, align 4
@DOF_ID_DIFIREG = common dso_local global i64 0, align 8
@DIF_DTR_NREGS = common dso_local global i32 0, align 4
@DOF_ID_DIFTREG = common dso_local global i64 0, align 8
@DOF_SECT_OPTDESC = common dso_local global i32 0, align 4
@DOF_SECF_LOAD = common dso_local global i32 0, align 4
@DOF_SECIDX_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_11__* (%struct.TYPE_8__*)* @dtrace_dof_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_11__* @dtrace_dof_create(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %8 = call i64 @roundup(i32 32, i32 4)
  %9 = add i64 48, %8
  %10 = load i32, i32* @DTRACEOPT_MAX, align 4
  %11 = sext i32 %10 to i64
  %12 = mul i64 12, %11
  %13 = add i64 %9, %12
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %7, align 4
  %15 = call i32 @MUTEX_HELD(i32* @dtrace_lock)
  %16 = call i32 @ASSERT(i32 %15)
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @KM_SLEEP, align 4
  %19 = call %struct.TYPE_11__* @kmem_zalloc(i32 %17, i32 %18)
  store %struct.TYPE_11__* %19, %struct.TYPE_11__** %3, align 8
  %20 = load i32, i32* @DOF_MAG_MAG0, align 4
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 8
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* @DOF_ID_MAG0, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  store i32 %20, i32* %25, align 4
  %26 = load i32, i32* @DOF_MAG_MAG1, align 4
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 8
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* @DOF_ID_MAG1, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  store i32 %26, i32* %31, align 4
  %32 = load i32, i32* @DOF_MAG_MAG2, align 4
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 8
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* @DOF_ID_MAG2, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  store i32 %32, i32* %37, align 4
  %38 = load i32, i32* @DOF_MAG_MAG3, align 4
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 8
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* @DOF_ID_MAG3, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  store i32 %38, i32* %43, align 4
  %44 = load i32, i32* @DOF_MODEL_NATIVE, align 4
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 8
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* @DOF_ID_MODEL, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  store i32 %44, i32* %49, align 4
  %50 = load i32, i32* @DOF_ENCODE_NATIVE, align 4
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 8
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* @DOF_ID_ENCODING, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  store i32 %50, i32* %55, align 4
  %56 = load i32, i32* @DOF_VERSION, align 4
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 8
  %59 = load i32*, i32** %58, align 8
  %60 = load i64, i64* @DOF_ID_VERSION, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  store i32 %56, i32* %61, align 4
  %62 = load i32, i32* @DIF_VERSION, align 4
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 8
  %65 = load i32*, i32** %64, align 8
  %66 = load i64, i64* @DOF_ID_DIFVERS, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  store i32 %62, i32* %67, align 4
  %68 = load i32, i32* @DIF_DIR_NREGS, align 4
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 8
  %71 = load i32*, i32** %70, align 8
  %72 = load i64, i64* @DOF_ID_DIFIREG, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  store i32 %68, i32* %73, align 4
  %74 = load i32, i32* @DIF_DTR_NREGS, align 4
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 8
  %77 = load i32*, i32** %76, align 8
  %78 = load i64, i64* @DOF_ID_DIFTREG, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  store i32 %74, i32* %79, align 4
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 7
  store i64 0, i64* %81, align 8
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  store i32 48, i32* %83, align 8
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 1
  store i32 32, i32* %85, align 4
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 2
  store i32 1, i32* %87, align 8
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 3
  store i32 48, i32* %89, align 4
  %90 = load i32, i32* %7, align 4
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 4
  store i32 %90, i32* %92, align 8
  %93 = load i32, i32* %7, align 4
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 5
  store i32 %93, i32* %95, align 4
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 6
  store i64 0, i64* %97, align 8
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %99 = ptrtoint %struct.TYPE_11__* %98 to i64
  %100 = add i64 %99, 48
  %101 = inttoptr i64 %100 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %101, %struct.TYPE_9__** %4, align 8
  %102 = load i32, i32* @DOF_SECT_OPTDESC, align 4
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 5
  store i32 %102, i32* %104, align 8
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  store i32 4, i32* %106, align 8
  %107 = load i32, i32* @DOF_SECF_LOAD, align 4
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 4
  store i32 %107, i32* %109, align 4
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 1
  store i32 12, i32* %111, align 4
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %113 = ptrtoint %struct.TYPE_9__* %112 to i64
  %114 = call i64 @roundup(i32 32, i32 4)
  %115 = add i64 %113, %114
  %116 = inttoptr i64 %115 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %116, %struct.TYPE_10__** %5, align 8
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %118 = ptrtoint %struct.TYPE_10__* %117 to i64
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %120 = ptrtoint %struct.TYPE_11__* %119 to i64
  %121 = sub i64 %118, %120
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 2
  store i64 %121, i64* %123, align 8
  %124 = load i32, i32* @DTRACEOPT_MAX, align 4
  %125 = sext i32 %124 to i64
  %126 = mul i64 12, %125
  %127 = trunc i64 %126 to i32
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 3
  store i32 %127, i32* %129, align 8
  store i32 0, i32* %6, align 4
  br label %130

130:                                              ; preds = %159, %1
  %131 = load i32, i32* %6, align 4
  %132 = load i32, i32* @DTRACEOPT_MAX, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %162

134:                                              ; preds = %130
  %135 = load i32, i32* %6, align 4
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %137 = load i32, i32* %6, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 0
  store i32 %135, i32* %140, align 4
  %141 = load i32, i32* @DOF_SECIDX_NONE, align 4
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %143 = load i32, i32* %6, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 2
  store i32 %141, i32* %146, align 4
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* %6, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %155 = load i32, i32* %6, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 1
  store i32 %153, i32* %158, align 4
  br label %159

159:                                              ; preds = %134
  %160 = load i32, i32* %6, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %6, align 4
  br label %130

162:                                              ; preds = %130
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  ret %struct.TYPE_11__* %163
}

declare dso_local i64 @roundup(i32, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @MUTEX_HELD(i32*) #1

declare dso_local %struct.TYPE_11__* @kmem_zalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

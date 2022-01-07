; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_dtrace.c_dtrace_dof_ecbdesc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_dtrace.c_dtrace_dof_ecbdesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32*, %struct.TYPE_13__, i32, i32 }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_15__ = type { i32, i32, i64 }
%struct.TYPE_16__ = type { i64, i64, i64, i32 }

@.str = private unnamed_addr constant [26 x i8] c"truncated ECB description\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"bad alignment in ECB description\00", align 1
@DOF_SECT_PROBEDESC = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@DOF_SECIDX_NONE = common dso_local global i64 0, align 8
@DOF_SECT_DIFOHDR = common dso_local global i32 0, align 4
@DOF_SECT_ACTDESC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_14__* (i32*, %struct.TYPE_15__*, i32*, i32*)* @dtrace_dof_ecbdesc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_14__* @dtrace_dof_ecbdesc(i32* %0, %struct.TYPE_15__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* null, i32** %13, align 8
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = icmp ult i64 %17, 32
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @dtrace_dof_error(i32* %20, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %5, align 8
  br label %133

22:                                               ; preds = %4
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = icmp ne i64 %26, 4
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @dtrace_dof_error(i32* %29, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %5, align 8
  br label %133

31:                                               ; preds = %22
  %32 = load i32*, i32** %6, align 8
  %33 = ptrtoint i32* %32 to i64
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = add i64 %33, %36
  %38 = inttoptr i64 %37 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %38, %struct.TYPE_16__** %11, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* @DOF_SECT_PROBEDESC, align 4
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call %struct.TYPE_15__* @dtrace_dof_sect(i32* %39, i32 %40, i64 %43)
  store %struct.TYPE_15__* %44, %struct.TYPE_15__** %7, align 8
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %46 = icmp eq %struct.TYPE_15__* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %31
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %5, align 8
  br label %133

48:                                               ; preds = %31
  %49 = load i32, i32* @KM_SLEEP, align 4
  %50 = call %struct.TYPE_14__* @kmem_zalloc(i32 24, i32 %49)
  store %struct.TYPE_14__* %50, %struct.TYPE_14__** %10, align 8
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 4
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 2
  store i32* %57, i32** %12, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %60 = load i32*, i32** %12, align 8
  %61 = call i32* @dtrace_dof_probedesc(i32* %58, %struct.TYPE_15__* %59, i32* %60)
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %48
  br label %123

64:                                               ; preds = %48
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @DOF_SECIDX_NONE, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %92

70:                                               ; preds = %64
  %71 = load i32*, i32** %6, align 8
  %72 = load i32, i32* @DOF_SECT_DIFOHDR, align 4
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = call %struct.TYPE_15__* @dtrace_dof_sect(i32* %71, i32 %72, i64 %75)
  store %struct.TYPE_15__* %76, %struct.TYPE_15__** %7, align 8
  %77 = icmp eq %struct.TYPE_15__* %76, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  br label %123

79:                                               ; preds = %70
  %80 = load i32*, i32** %6, align 8
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %82 = load i32*, i32** %8, align 8
  %83 = load i32*, i32** %9, align 8
  %84 = call i32* @dtrace_dof_predicate(i32* %80, %struct.TYPE_15__* %81, i32* %82, i32* %83)
  store i32* %84, i32** %13, align 8
  %85 = icmp eq i32* %84, null
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  br label %123

87:                                               ; preds = %79
  %88 = load i32*, i32** %13, align 8
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  store i32* %88, i32** %91, align 8
  br label %92

92:                                               ; preds = %87, %64
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @DOF_SECIDX_NONE, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %121

98:                                               ; preds = %92
  %99 = load i32*, i32** %6, align 8
  %100 = load i32, i32* @DOF_SECT_ACTDESC, align 4
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = call %struct.TYPE_15__* @dtrace_dof_sect(i32* %99, i32 %100, i64 %103)
  store %struct.TYPE_15__* %104, %struct.TYPE_15__** %7, align 8
  %105 = icmp eq %struct.TYPE_15__* %104, null
  br i1 %105, label %106, label %107

106:                                              ; preds = %98
  br label %123

107:                                              ; preds = %98
  %108 = load i32*, i32** %6, align 8
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %110 = load i32*, i32** %8, align 8
  %111 = load i32*, i32** %9, align 8
  %112 = call i32* @dtrace_dof_actdesc(i32* %108, %struct.TYPE_15__* %109, i32* %110, i32* %111)
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 0
  store i32* %112, i32** %114, align 8
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = icmp eq i32* %117, null
  br i1 %118, label %119, label %120

119:                                              ; preds = %107
  br label %123

120:                                              ; preds = %107
  br label %121

121:                                              ; preds = %120, %92
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  store %struct.TYPE_14__* %122, %struct.TYPE_14__** %5, align 8
  br label %133

123:                                              ; preds = %119, %106, %86, %78, %63
  %124 = load i32*, i32** %13, align 8
  %125 = icmp ne i32* %124, null
  br i1 %125, label %126, label %130

126:                                              ; preds = %123
  %127 = load i32*, i32** %13, align 8
  %128 = load i32*, i32** %8, align 8
  %129 = call i32 @dtrace_predicate_release(i32* %127, i32* %128)
  br label %130

130:                                              ; preds = %126, %123
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %132 = call i32 @kmem_free(%struct.TYPE_14__* %131, i32 24)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %5, align 8
  br label %133

133:                                              ; preds = %130, %121, %47, %28, %19
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  ret %struct.TYPE_14__* %134
}

declare dso_local i32 @dtrace_dof_error(i32*, i8*) #1

declare dso_local %struct.TYPE_15__* @dtrace_dof_sect(i32*, i32, i64) #1

declare dso_local %struct.TYPE_14__* @kmem_zalloc(i32, i32) #1

declare dso_local i32* @dtrace_dof_probedesc(i32*, %struct.TYPE_15__*, i32*) #1

declare dso_local i32* @dtrace_dof_predicate(i32*, %struct.TYPE_15__*, i32*, i32*) #1

declare dso_local i32* @dtrace_dof_actdesc(i32*, %struct.TYPE_15__*, i32*, i32*) #1

declare dso_local i32 @dtrace_predicate_release(i32*, i32*) #1

declare dso_local i32 @kmem_free(%struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

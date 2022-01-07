; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_dtrace.c_dtrace_helper_action_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_dtrace.c_dtrace_helper_action_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_19__*, %struct.TYPE_13__ }
%struct.TYPE_19__ = type { i64, i32*, %struct.TYPE_19__* }
%struct.TYPE_13__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32* }
%struct.TYPE_16__ = type { %struct.TYPE_17__**, i32, %struct.TYPE_14__ }
%struct.TYPE_17__ = type { i32, %struct.TYPE_17__*, i32**, i32*, i32 }
%struct.TYPE_14__ = type { i64 }

@DTRACE_NHELPER_ACTIONS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@dtrace_helper_actions_max = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@DTRACEACT_DIFEXPR = common dso_local global i64 0, align 8
@dtrace_helptrace_nlocals = common dso_local global i64 0, align 8
@dtrace_helptrace_next = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_18__*, %struct.TYPE_16__*)* @dtrace_helper_action_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtrace_helper_action_add(i32 %0, %struct.TYPE_18__* %1, %struct.TYPE_16__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %6, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %7, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @DTRACE_NHELPER_ACTIONS, align 4
  %21 = icmp sge i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18, %3
  %23 = load i32, i32* @EINVAL, align 4
  store i32 %23, i32* %4, align 4
  br label %186

24:                                               ; preds = %18
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %27, i64 %29
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  store %struct.TYPE_17__* %31, %struct.TYPE_17__** %9, align 8
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 2
  store %struct.TYPE_14__* %33, %struct.TYPE_14__** %11, align 8
  store i32 0, i32* %13, align 4
  br label %34

34:                                               ; preds = %46, %24
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %36 = icmp ne %struct.TYPE_17__* %35, null
  br i1 %36, label %37, label %50

37:                                               ; preds = %34
  %38 = load i32, i32* %13, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %13, align 4
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %41, align 8
  %43 = icmp eq %struct.TYPE_17__* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %50

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %45
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %48, align 8
  store %struct.TYPE_17__* %49, %struct.TYPE_17__** %9, align 8
  br label %34

50:                                               ; preds = %44, %34
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* @dtrace_helper_actions_max, align 4
  %53 = icmp sge i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i32, i32* @ENOSPC, align 4
  store i32 %55, i32* %4, align 4
  br label %186

56:                                               ; preds = %50
  %57 = load i32, i32* @KM_SLEEP, align 4
  %58 = call i8* @kmem_zalloc(i32 40, i32 %57)
  %59 = bitcast i8* %58 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %59, %struct.TYPE_17__** %8, align 8
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 4
  store i32 %62, i32* %64, align 8
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %67, align 8
  store %struct.TYPE_15__* %68, %struct.TYPE_15__** %12, align 8
  %69 = icmp ne %struct.TYPE_15__* %68, null
  br i1 %69, label %70, label %86

70:                                               ; preds = %56
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = icmp ne i32* %73, null
  %75 = zext i1 %74 to i32
  %76 = call i32 @ASSERT(i32 %75)
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = call i32 @dtrace_difo_hold(i32* %79)
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 3
  store i32* %83, i32** %85, align 8
  br label %86

86:                                               ; preds = %70, %56
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %88, align 8
  store %struct.TYPE_19__* %89, %struct.TYPE_19__** %10, align 8
  br label %90

90:                                               ; preds = %109, %86
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %92 = icmp ne %struct.TYPE_19__* %91, null
  br i1 %92, label %93, label %113

93:                                               ; preds = %90
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @DTRACEACT_DIFEXPR, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  br label %181

100:                                              ; preds = %93
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = icmp eq i32* %103, null
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  br label %181

106:                                              ; preds = %100
  %107 = load i32, i32* %14, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %14, align 4
  br label %109

109:                                              ; preds = %106
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 2
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %111, align 8
  store %struct.TYPE_19__* %112, %struct.TYPE_19__** %10, align 8
  br label %90

113:                                              ; preds = %90
  %114 = load i32, i32* %14, align 4
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 8
  %117 = sext i32 %114 to i64
  %118 = mul i64 8, %117
  %119 = trunc i64 %118 to i32
  %120 = load i32, i32* @KM_SLEEP, align 4
  %121 = call i8* @kmem_zalloc(i32 %119, i32 %120)
  %122 = bitcast i8* %121 to i32**
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 2
  store i32** %122, i32*** %124, align 8
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %126, align 8
  store %struct.TYPE_19__* %127, %struct.TYPE_19__** %10, align 8
  store i32 0, i32* %15, align 4
  br label %128

128:                                              ; preds = %146, %113
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %130 = icmp ne %struct.TYPE_19__* %129, null
  br i1 %130, label %131, label %150

131:                                              ; preds = %128
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = call i32 @dtrace_difo_hold(i32* %134)
  %136 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %136, i32 0, i32 1
  %138 = load i32*, i32** %137, align 8
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 2
  %141 = load i32**, i32*** %140, align 8
  %142 = load i32, i32* %15, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %15, align 4
  %144 = sext i32 %142 to i64
  %145 = getelementptr inbounds i32*, i32** %141, i64 %144
  store i32* %138, i32** %145, align 8
  br label %146

146:                                              ; preds = %131
  %147 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %148 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %147, i32 0, i32 2
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %148, align 8
  store %struct.TYPE_19__* %149, %struct.TYPE_19__** %10, align 8
  br label %128

150:                                              ; preds = %128
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %152 = call i32 @dtrace_helper_validate(%struct.TYPE_17__* %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %155, label %154

154:                                              ; preds = %150
  br label %181

155:                                              ; preds = %150
  %156 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %157 = icmp eq %struct.TYPE_17__* %156, null
  br i1 %157, label %158, label %166

158:                                              ; preds = %155
  %159 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 0
  %162 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %161, align 8
  %163 = load i32, i32* %5, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %162, i64 %164
  store %struct.TYPE_17__* %159, %struct.TYPE_17__** %165, align 8
  br label %170

166:                                              ; preds = %155
  %167 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %168 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %169 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %168, i32 0, i32 1
  store %struct.TYPE_17__* %167, %struct.TYPE_17__** %169, align 8
  br label %170

170:                                              ; preds = %166, %158
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @dtrace_helptrace_nlocals, align 8
  %175 = icmp sgt i64 %173, %174
  br i1 %175, label %176, label %180

176:                                              ; preds = %170
  %177 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  store i64 %179, i64* @dtrace_helptrace_nlocals, align 8
  store i64 0, i64* @dtrace_helptrace_next, align 8
  br label %180

180:                                              ; preds = %176, %170
  store i32 0, i32* %4, align 4
  br label %186

181:                                              ; preds = %154, %105, %99
  %182 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %184 = call i32 @dtrace_helper_action_destroy(%struct.TYPE_17__* %182, %struct.TYPE_14__* %183)
  %185 = load i32, i32* @EINVAL, align 4
  store i32 %185, i32* %4, align 4
  br label %186

186:                                              ; preds = %181, %180, %54, %22
  %187 = load i32, i32* %4, align 4
  ret i32 %187
}

declare dso_local i8* @kmem_zalloc(i32, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @dtrace_difo_hold(i32*) #1

declare dso_local i32 @dtrace_helper_validate(%struct.TYPE_17__*) #1

declare dso_local i32 @dtrace_helper_action_destroy(%struct.TYPE_17__*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

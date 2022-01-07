; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_dtrace.c_dtrace_helper_destroygen.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_dtrace.c_dtrace_helper_destroygen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_11__**, %struct.TYPE_12__**, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_12__* }

@curproc = common dso_local global %struct.TYPE_9__* null, align 8
@dtrace_lock = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DTRACE_NHELPER_ACTIONS = common dso_local global i32 0, align 4
@dtrace_meta_lock = common dso_local global i32 0, align 4
@dtrace_meta_pid = common dso_local global i32* null, align 8
@dtrace_deferred_pid = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32)* @dtrace_helper_destroygen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtrace_helper_destroygen(%struct.TYPE_10__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** @curproc, align 8
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %6, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %15 = icmp eq %struct.TYPE_10__* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  store %struct.TYPE_10__* %19, %struct.TYPE_10__** %4, align 8
  br label %20

20:                                               ; preds = %16, %2
  %21 = call i32 @MUTEX_HELD(i32* @dtrace_lock)
  %22 = call i32 @ASSERT(i32 %21)
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %24 = icmp eq %struct.TYPE_10__* %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp sgt i32 %26, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %25, %20
  %32 = load i32, i32* @EINVAL, align 4
  store i32 %32, i32* %3, align 4
  br label %170

33:                                               ; preds = %25
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 4
  store i32* %35, i32** %7, align 8
  store i32 0, i32* %8, align 4
  br label %36

36:                                               ; preds = %85, %33
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @DTRACE_NHELPER_ACTIONS, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %88

40:                                               ; preds = %36
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %9, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 3
  %43 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %43, i64 %45
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %46, align 8
  store %struct.TYPE_12__* %47, %struct.TYPE_12__** %10, align 8
  br label %48

48:                                               ; preds = %82, %40
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %50 = icmp ne %struct.TYPE_12__* %49, null
  br i1 %50, label %51, label %84

51:                                               ; preds = %48
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %53, align 8
  store %struct.TYPE_12__* %54, %struct.TYPE_12__** %11, align 8
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %79

60:                                               ; preds = %51
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %62 = icmp ne %struct.TYPE_12__* %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 1
  store %struct.TYPE_12__* %64, %struct.TYPE_12__** %66, align 8
  br label %75

67:                                               ; preds = %60
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 3
  %71 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %71, i64 %73
  store %struct.TYPE_12__* %68, %struct.TYPE_12__** %74, align 8
  br label %75

75:                                               ; preds = %67, %63
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %77 = load i32*, i32** %7, align 8
  %78 = call i32 @dtrace_helper_action_destroy(%struct.TYPE_12__* %76, i32* %77)
  br label %81

79:                                               ; preds = %51
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  store %struct.TYPE_12__* %80, %struct.TYPE_12__** %9, align 8
  br label %81

81:                                               ; preds = %79, %75
  br label %82

82:                                               ; preds = %81
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  store %struct.TYPE_12__* %83, %struct.TYPE_12__** %10, align 8
  br label %48

84:                                               ; preds = %48
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %8, align 4
  br label %36

88:                                               ; preds = %36
  br label %89

89:                                               ; preds = %164, %88
  store i32 0, i32* %8, align 4
  br label %90

90:                                               ; preds = %111, %89
  %91 = load i32, i32* %8, align 4
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = icmp slt i32 %91, %94
  br i1 %95, label %96, label %114

96:                                               ; preds = %90
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 2
  %99 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %98, align 8
  %100 = load i32, i32* %8, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %99, i64 %101
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %102, align 8
  store %struct.TYPE_11__* %103, %struct.TYPE_11__** %12, align 8
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %5, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %96
  br label %114

110:                                              ; preds = %96
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %8, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %8, align 4
  br label %90

114:                                              ; preds = %109, %90
  %115 = load i32, i32* %8, align 4
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = icmp eq i32 %115, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %114
  br label %169

121:                                              ; preds = %114
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %124, -1
  store i32 %125, i32* %123, align 4
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 2
  %128 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %127, align 8
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %128, i64 %132
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %133, align 8
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 2
  %137 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %136, align 8
  %138 = load i32, i32* %8, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %137, i64 %139
  store %struct.TYPE_11__* %134, %struct.TYPE_11__** %140, align 8
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 2
  %143 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %142, align 8
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %143, i64 %147
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %148, align 8
  %149 = call i32 @mutex_exit(i32* @dtrace_lock)
  %150 = call i32 @mutex_enter(i32* @dtrace_meta_lock)
  %151 = load i32*, i32** @dtrace_meta_pid, align 8
  %152 = icmp ne i32* %151, null
  br i1 %152, label %153, label %164

153:                                              ; preds = %121
  %154 = load i32*, i32** @dtrace_deferred_pid, align 8
  %155 = icmp eq i32* %154, null
  %156 = zext i1 %155 to i32
  %157 = call i32 @ASSERT(i32 %156)
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 1
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @dtrace_helper_provider_remove(i32* %159, i32 %162)
  br label %164

164:                                              ; preds = %153, %121
  %165 = call i32 @mutex_exit(i32* @dtrace_meta_lock)
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %167 = call i32 @dtrace_helper_provider_destroy(%struct.TYPE_11__* %166)
  %168 = call i32 @mutex_enter(i32* @dtrace_lock)
  br label %89

169:                                              ; preds = %120
  store i32 0, i32* %3, align 4
  br label %170

170:                                              ; preds = %169, %31
  %171 = load i32, i32* %3, align 4
  ret i32 %171
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @MUTEX_HELD(i32*) #1

declare dso_local i32 @dtrace_helper_action_destroy(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @dtrace_helper_provider_remove(i32*, i32) #1

declare dso_local i32 @dtrace_helper_provider_destroy(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

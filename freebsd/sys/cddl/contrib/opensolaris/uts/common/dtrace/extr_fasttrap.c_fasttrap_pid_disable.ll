; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_fasttrap.c_fasttrap_pid_disable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_fasttrap.c_fasttrap_pid_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32, i32, i64 }

@PGET_HOLD = common dso_local global i32 0, align 4
@PGET_NOTWEXIT = common dso_local global i32 0, align 4
@cpu_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i8*)* @fasttrap_pid_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fasttrap_pid_disable(i8* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %7, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %8, align 8
  store i32 0, i32* %11, align 4
  %17 = load i64, i64* %5, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %17, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @ASSERT(i32 %22)
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  %26 = call i32 @mutex_enter(i32* %25)
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @PGET_HOLD, align 4
  %31 = load i32, i32* @PGET_NOTWEXIT, align 4
  %32 = or i32 %30, %31
  %33 = call i64 @pget(i32 %29, i32 %32, i32** %9)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %3
  store i32* null, i32** %9, align 8
  br label %36

36:                                               ; preds = %35, %3
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %57

41:                                               ; preds = %36
  store i32 0, i32* %10, align 4
  br label %42

42:                                               ; preds = %53, %41
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %42
  %49 = load i32*, i32** %9, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @fasttrap_tracepoint_disable(i32* %49, %struct.TYPE_5__* %50, i32 %51)
  br label %53

53:                                               ; preds = %48
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %10, align 4
  br label %42

56:                                               ; preds = %42
  br label %57

57:                                               ; preds = %56, %36
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp sgt i64 %60, 0
  %62 = zext i1 %61 to i32
  %63 = call i32 @ASSERT(i32 %62)
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %66, -1
  store i64 %67, i64* %65, align 8
  %68 = load i32*, i32** %9, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %87

70:                                               ; preds = %57
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %70
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %75
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  store i32 1, i32* %82, align 8
  store i32 1, i32* %11, align 4
  br label %83

83:                                               ; preds = %80, %75, %70
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 2
  %86 = call i32 @mutex_exit(i32* %85)
  br label %104

87:                                               ; preds = %57
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %87
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %92
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  store i32 1, i32* %99, align 8
  store i32 1, i32* %11, align 4
  br label %100

100:                                              ; preds = %97, %92, %87
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 2
  %103 = call i32 @mutex_exit(i32* %102)
  br label %104

104:                                              ; preds = %100, %83
  %105 = load i32, i32* %11, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %104
  %108 = call i32 (...) @fasttrap_pid_cleanup()
  br label %109

109:                                              ; preds = %107, %104
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %109
  br label %119

115:                                              ; preds = %109
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 2
  store i64 0, i64* %117, align 8
  %118 = call i32 (...) @fasttrap_disable_callbacks()
  br label %119

119:                                              ; preds = %115, %114
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i64 @pget(i32, i32, i32**) #1

declare dso_local i32 @fasttrap_tracepoint_disable(i32*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @fasttrap_pid_cleanup(...) #1

declare dso_local i32 @fasttrap_disable_callbacks(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

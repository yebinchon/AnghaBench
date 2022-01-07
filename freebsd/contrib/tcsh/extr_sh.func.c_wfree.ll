; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.func.c_wfree.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.func.c_wfree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.whyle = type { %struct.TYPE_4__, %struct.TYPE_3__, %struct.whyle* }
%struct.TYPE_4__ = type { i32, i64, i64 }
%struct.TYPE_3__ = type { i32, i64, i64 }
%struct.Ain = type { i32, i64, i64 }

@whyles = common dso_local global %struct.whyle* null, align 8
@TCSH_I_SEEK = common dso_local global i32 0, align 4
@TCSH_F_SEEK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wfree() #0 {
  %1 = alloca %struct.Ain, align 8
  %2 = alloca %struct.whyle*, align 8
  %3 = alloca %struct.whyle*, align 8
  %4 = call i32 @btell(%struct.Ain* %1)
  br label %5

5:                                                ; preds = %96, %0
  %6 = load %struct.whyle*, %struct.whyle** @whyles, align 8
  %7 = icmp ne %struct.whyle* %6, null
  br i1 %7, label %8, label %98

8:                                                ; preds = %5
  %9 = load %struct.whyle*, %struct.whyle** @whyles, align 8
  store %struct.whyle* %9, %struct.whyle** %3, align 8
  %10 = load %struct.whyle*, %struct.whyle** %3, align 8
  %11 = getelementptr inbounds %struct.whyle, %struct.whyle* %10, i32 0, i32 2
  %12 = load %struct.whyle*, %struct.whyle** %11, align 8
  store %struct.whyle* %12, %struct.whyle** %2, align 8
  %13 = load %struct.whyle*, %struct.whyle** %3, align 8
  %14 = getelementptr inbounds %struct.whyle, %struct.whyle* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @TCSH_I_SEEK, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %93

19:                                               ; preds = %8
  %20 = load %struct.whyle*, %struct.whyle** %3, align 8
  %21 = getelementptr inbounds %struct.whyle, %struct.whyle* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.whyle*, %struct.whyle** %3, align 8
  %25 = getelementptr inbounds %struct.whyle, %struct.whyle* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %23, %27
  br i1 %28, label %29, label %93

29:                                               ; preds = %19
  %30 = load %struct.whyle*, %struct.whyle** %3, align 8
  %31 = getelementptr inbounds %struct.whyle, %struct.whyle* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = getelementptr inbounds %struct.Ain, %struct.Ain* %1, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %93

37:                                               ; preds = %29
  %38 = load %struct.whyle*, %struct.whyle** %3, align 8
  %39 = getelementptr inbounds %struct.whyle, %struct.whyle* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @TCSH_F_SEEK, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %68

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.Ain, %struct.Ain* %1, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.whyle*, %struct.whyle** %3, align 8
  %48 = getelementptr inbounds %struct.whyle, %struct.whyle* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp sge i64 %46, %50
  br i1 %51, label %52, label %67

52:                                               ; preds = %44
  %53 = load %struct.whyle*, %struct.whyle** %3, align 8
  %54 = getelementptr inbounds %struct.whyle, %struct.whyle* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %66, label %58

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.Ain, %struct.Ain* %1, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.whyle*, %struct.whyle** %3, align 8
  %62 = getelementptr inbounds %struct.whyle, %struct.whyle* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp slt i64 %60, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %58, %52
  br label %98

67:                                               ; preds = %58, %44
  br label %92

68:                                               ; preds = %37
  %69 = getelementptr inbounds %struct.Ain, %struct.Ain* %1, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.whyle*, %struct.whyle** %3, align 8
  %72 = getelementptr inbounds %struct.whyle, %struct.whyle* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp sge i64 %70, %74
  br i1 %75, label %76, label %91

76:                                               ; preds = %68
  %77 = load %struct.whyle*, %struct.whyle** %3, align 8
  %78 = getelementptr inbounds %struct.whyle, %struct.whyle* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %90, label %82

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct.Ain, %struct.Ain* %1, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.whyle*, %struct.whyle** %3, align 8
  %86 = getelementptr inbounds %struct.whyle, %struct.whyle* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp slt i64 %84, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %82, %76
  br label %98

91:                                               ; preds = %82, %68
  br label %92

92:                                               ; preds = %91, %67
  br label %93

93:                                               ; preds = %92, %29, %19, %8
  %94 = load %struct.whyle*, %struct.whyle** %3, align 8
  %95 = call i32 @wpfree(%struct.whyle* %94)
  br label %96

96:                                               ; preds = %93
  %97 = load %struct.whyle*, %struct.whyle** %2, align 8
  store %struct.whyle* %97, %struct.whyle** @whyles, align 8
  br label %5

98:                                               ; preds = %90, %66, %5
  ret void
}

declare dso_local i32 @btell(%struct.Ain*) #1

declare dso_local i32 @wpfree(%struct.whyle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

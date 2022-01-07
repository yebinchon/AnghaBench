; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_txt.c_v_tcmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_txt.c_v_tcmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_18__ = type { i64, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64, i32 }

@TMAP = common dso_local global %struct.TYPE_15__* null, align 8
@SC_TINPUT_INFO = common dso_local global i32 0, align 4
@TXT_APPENDEOL = common dso_local global i32 0, align 4
@TXT_CR = common dso_local global i32 0, align 4
@TXT_ESCAPE = common dso_local global i32 0, align 4
@TXT_INFOLINE = common dso_local global i32 0, align 4
@TXT_MAPINPUT = common dso_local global i32 0, align 4
@O_ALTWERASE = common dso_local global i32 0, align 4
@TXT_ALTWERASE = common dso_local global i32 0, align 4
@O_TTYWERASE = common dso_local global i32 0, align 4
@TXT_TTYWERASE = common dso_local global i32 0, align 4
@SC_SCR_REDRAW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v_tcmd(%struct.TYPE_18__* %0, %struct.TYPE_17__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %6, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 1
  store i32 %12, i32* %15, align 8
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  store i64 %18, i64* %21, align 8
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %23 = call i64 @txt_map_init(%struct.TYPE_18__* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %100

26:                                               ; preds = %4
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** @TMAP, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i64 0
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %36 = load i32, i32* @SC_TINPUT_INFO, align 4
  %37 = call i32 @F_SET(%struct.TYPE_18__* %35, i32 %36)
  %38 = load i32, i32* @TXT_APPENDEOL, align 4
  %39 = load i32, i32* @TXT_CR, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @TXT_ESCAPE, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @TXT_INFOLINE, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @TXT_MAPINPUT, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @LF_SET(i32 %46)
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %49 = load i32, i32* @O_ALTWERASE, align 4
  %50 = call i64 @O_ISSET(%struct.TYPE_18__* %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %26
  %53 = load i32, i32* @TXT_ALTWERASE, align 4
  %54 = call i32 @LF_SET(i32 %53)
  br label %55

55:                                               ; preds = %52, %26
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %57 = load i32, i32* @O_TTYWERASE, align 4
  %58 = call i64 @O_ISSET(%struct.TYPE_18__* %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i32, i32* @TXT_TTYWERASE, align 4
  %62 = call i32 @LF_SET(i32 %61)
  br label %63

63:                                               ; preds = %60, %55
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %9, align 4
  %68 = call i64 @v_txt(%struct.TYPE_18__* %64, %struct.TYPE_17__* %65, i32* null, i32* null, i32 0, i32 %66, i32 0, i32 1, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  store i32 1, i32* %5, align 4
  br label %100

71:                                               ; preds = %63
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %73 = load i32, i32* @SC_TINPUT_INFO, align 4
  %74 = call i32 @F_CLR(%struct.TYPE_18__* %72, i32 %73)
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %76 = call i64 @txt_map_end(%struct.TYPE_18__* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  store i32 1, i32* %5, align 4
  br label %100

79:                                               ; preds = %71
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %81 = call i64 @IS_ONELINE(%struct.TYPE_18__* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %79
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %85 = load i32, i32* @SC_SCR_REDRAW, align 4
  %86 = call i32 @F_SET(%struct.TYPE_18__* %84, i32 %85)
  br label %87

87:                                               ; preds = %83, %79
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 8
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 0
  store i64 %97, i64* %99, align 8
  store i32 0, i32* %5, align 4
  br label %100

100:                                              ; preds = %87, %78, %70, %25
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local i64 @txt_map_init(%struct.TYPE_18__*) #1

declare dso_local i32 @F_SET(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @LF_SET(i32) #1

declare dso_local i64 @O_ISSET(%struct.TYPE_18__*, i32) #1

declare dso_local i64 @v_txt(%struct.TYPE_18__*, %struct.TYPE_17__*, i32*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @F_CLR(%struct.TYPE_18__*, i32) #1

declare dso_local i64 @txt_map_end(%struct.TYPE_18__*) #1

declare dso_local i64 @IS_ONELINE(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

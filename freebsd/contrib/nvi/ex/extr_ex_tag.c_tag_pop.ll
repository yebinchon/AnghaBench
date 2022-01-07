; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_tag.c_tag_pop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_tag.c_tag_pop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_14__*, i32, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_14__*, i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_13__* }

@q = common dso_local global i32 0, align 4
@FS_ALL = common dso_local global i32 0, align 4
@FS_POSSIBLE = common dso_local global i32 0, align 4
@FR_CURSORSET = common dso_local global i32 0, align 4
@FS_SETALT = common dso_local global i32 0, align 4
@SC_FSWITCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i32*, i32)* @tag_pop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tag_pop(%struct.TYPE_14__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %12 = call %struct.TYPE_15__* @EXP(%struct.TYPE_14__* %11)
  store %struct.TYPE_15__* %12, %struct.TYPE_15__** %8, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* @q, align 4
  %15 = call %struct.TYPE_16__* @TAILQ_NEXT(i32* %13, i32 %14)
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  store %struct.TYPE_13__* %17, %struct.TYPE_13__** %9, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %24 = icmp eq %struct.TYPE_14__* %20, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %3
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  br label %77

36:                                               ; preds = %3
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @FS_ALL, align 4
  %40 = load i32, i32* @FS_POSSIBLE, align 4
  %41 = or i32 %39, %40
  %42 = call i64 @file_m1(%struct.TYPE_14__* %37, i32 %38, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  store i32 1, i32* %4, align 4
  br label %109

45:                                               ; preds = %36
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 2
  store i32 %48, i32* %52, align 4
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 1
  store i32 %55, i32* %59, align 8
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %61, align 8
  %63 = load i32, i32* @FR_CURSORSET, align 4
  %64 = call i32 @F_SET(%struct.TYPE_14__* %62, i32 %63)
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %67, align 8
  %69 = load i32, i32* @FS_SETALT, align 4
  %70 = call i64 @file_init(%struct.TYPE_14__* %65, %struct.TYPE_14__* %68, i32* null, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %45
  store i32 1, i32* %4, align 4
  br label %109

73:                                               ; preds = %45
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %75 = load i32, i32* @SC_FSWITCH, align 4
  %76 = call i32 @F_SET(%struct.TYPE_14__* %74, i32 %75)
  br label %77

77:                                               ; preds = %73, %25
  br label %78

78:                                               ; preds = %89, %77
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32* @TAILQ_FIRST(i32 %81)
  store i32* %82, i32** %10, align 8
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %84 = load i32*, i32** %10, align 8
  %85 = call i64 @tagq_free(%struct.TYPE_14__* %83, i32* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %78
  store i32 0, i32* %4, align 4
  br label %109

88:                                               ; preds = %78
  br label %89

89:                                               ; preds = %88
  %90 = load i32*, i32** %10, align 8
  %91 = load i32*, i32** %6, align 8
  %92 = icmp ne i32* %90, %91
  br i1 %92, label %78, label %93

93:                                               ; preds = %89
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32* @TAILQ_FIRST(i32 %96)
  %98 = load i32, i32* @q, align 4
  %99 = call %struct.TYPE_16__* @TAILQ_NEXT(i32* %97, i32 %98)
  %100 = icmp eq %struct.TYPE_16__* %99, null
  br i1 %100, label %101, label %108

101:                                              ; preds = %93
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32* @TAILQ_FIRST(i32 %105)
  %107 = call i64 @tagq_free(%struct.TYPE_14__* %102, i32* %106)
  br label %108

108:                                              ; preds = %101, %93
  store i32 0, i32* %4, align 4
  br label %109

109:                                              ; preds = %108, %87, %72, %44
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local %struct.TYPE_15__* @EXP(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_16__* @TAILQ_NEXT(i32*, i32) #1

declare dso_local i64 @file_m1(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @F_SET(%struct.TYPE_14__*, i32) #1

declare dso_local i64 @file_init(%struct.TYPE_14__*, %struct.TYPE_14__*, i32*, i32) #1

declare dso_local i32* @TAILQ_FIRST(i32) #1

declare dso_local i64 @tagq_free(%struct.TYPE_14__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

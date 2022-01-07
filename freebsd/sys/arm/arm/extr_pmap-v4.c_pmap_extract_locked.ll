; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v4.c_pmap_extract_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v4.c_pmap_extract_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.l2_dtable**, %struct.TYPE_7__* }
%struct.l2_dtable = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { i32* }

@kernel_pmap = common dso_local global %struct.TYPE_9__* null, align 8
@.str = private unnamed_addr constant [19 x i8] c"unexpected section\00", align 1
@L1_S_SUPERSEC = common dso_local global i32 0, align 4
@L1_SUP_FRAME = common dso_local global i32 0, align 4
@L1_SUP_OFFSET = common dso_local global i32 0, align 4
@L1_S_FRAME = common dso_local global i32 0, align 4
@L1_S_OFFSET = common dso_local global i32 0, align 4
@L2_TYPE_MASK = common dso_local global i32 0, align 4
@L2_TYPE_L = common dso_local global i32 0, align 4
@L2_L_FRAME = common dso_local global i32 0, align 4
@L2_L_OFFSET = common dso_local global i32 0, align 4
@L2_S_FRAME = common dso_local global i32 0, align 4
@L2_S_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32)* @pmap_extract_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmap_extract_locked(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.l2_dtable*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** @kernel_pmap, align 8
  %14 = icmp ne %struct.TYPE_9__* %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %17 = call i32 @PMAP_ASSERT_LOCKED(%struct.TYPE_9__* %16)
  br label %18

18:                                               ; preds = %15, %2
  %19 = load i32, i32* %5, align 4
  %20 = call i64 @L1_IDX(i32 %19)
  store i64 %20, i64* %11, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* %11, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i64 @l1pte_section_p(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %59

32:                                               ; preds = %18
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** @kernel_pmap, align 8
  %35 = icmp eq %struct.TYPE_9__* %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @KASSERT(i32 %36, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @L1_S_SUPERSEC, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %32
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @L1_SUP_FRAME, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @L1_SUP_OFFSET, align 4
  %48 = and i32 %46, %47
  %49 = or i32 %45, %48
  store i32 %49, i32* %10, align 4
  br label %58

50:                                               ; preds = %32
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @L1_S_FRAME, align 4
  %53 = and i32 %51, %52
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @L1_S_OFFSET, align 4
  %56 = and i32 %54, %55
  %57 = or i32 %53, %56
  store i32 %57, i32* %10, align 4
  br label %58

58:                                               ; preds = %50, %42
  br label %112

59:                                               ; preds = %18
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load %struct.l2_dtable**, %struct.l2_dtable*** %61, align 8
  %63 = load i64, i64* %11, align 8
  %64 = call i64 @L2_IDX(i64 %63)
  %65 = getelementptr inbounds %struct.l2_dtable*, %struct.l2_dtable** %62, i64 %64
  %66 = load %struct.l2_dtable*, %struct.l2_dtable** %65, align 8
  store %struct.l2_dtable* %66, %struct.l2_dtable** %6, align 8
  %67 = load %struct.l2_dtable*, %struct.l2_dtable** %6, align 8
  %68 = icmp eq %struct.l2_dtable* %67, null
  br i1 %68, label %79, label %69

69:                                               ; preds = %59
  %70 = load %struct.l2_dtable*, %struct.l2_dtable** %6, align 8
  %71 = getelementptr inbounds %struct.l2_dtable, %struct.l2_dtable* %70, i32 0, i32 0
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = load i64, i64* %11, align 8
  %74 = call i64 @L2_BUCKET(i64 %73)
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  store i32* %77, i32** %8, align 8
  %78 = icmp eq i32* %77, null
  br i1 %78, label %79, label %80

79:                                               ; preds = %69, %59
  store i32 0, i32* %3, align 4
  br label %114

80:                                               ; preds = %69
  %81 = load i32*, i32** %8, align 8
  %82 = load i32, i32* %5, align 4
  %83 = call i64 @l2pte_index(i32 %82)
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %9, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %80
  store i32 0, i32* %3, align 4
  br label %114

89:                                               ; preds = %80
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* @L2_TYPE_MASK, align 4
  %92 = and i32 %90, %91
  %93 = load i32, i32* @L2_TYPE_L, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %103

95:                                               ; preds = %89
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* @L2_L_FRAME, align 4
  %98 = and i32 %96, %97
  %99 = load i32, i32* %5, align 4
  %100 = load i32, i32* @L2_L_OFFSET, align 4
  %101 = and i32 %99, %100
  %102 = or i32 %98, %101
  store i32 %102, i32* %10, align 4
  br label %111

103:                                              ; preds = %89
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* @L2_S_FRAME, align 4
  %106 = and i32 %104, %105
  %107 = load i32, i32* %5, align 4
  %108 = load i32, i32* @L2_S_OFFSET, align 4
  %109 = and i32 %107, %108
  %110 = or i32 %106, %109
  store i32 %110, i32* %10, align 4
  br label %111

111:                                              ; preds = %103, %95
  br label %112

112:                                              ; preds = %111, %58
  %113 = load i32, i32* %10, align 4
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %112, %88, %79
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i32 @PMAP_ASSERT_LOCKED(%struct.TYPE_9__*) #1

declare dso_local i64 @L1_IDX(i32) #1

declare dso_local i64 @l1pte_section_p(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @L2_IDX(i64) #1

declare dso_local i64 @L2_BUCKET(i64) #1

declare dso_local i64 @l2pte_index(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

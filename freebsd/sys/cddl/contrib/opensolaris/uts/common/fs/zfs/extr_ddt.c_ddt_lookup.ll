; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_ddt.c_ddt_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_ddt.c_ddt_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i64, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }

@B_TRUE = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@DDT_TYPES = common dso_local global i32 0, align 4
@DDT_CLASSES = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_16__* @ddt_lookup(%struct.TYPE_15__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_16__, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %16 = call i32 @MUTEX_HELD(i32* %15)
  %17 = call i32 @ASSERT(i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 5
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @ddt_key_fill(i32* %18, i32* %19)
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 1
  %23 = call %struct.TYPE_16__* @avl_find(i32* %22, %struct.TYPE_16__* %9, i32* %12)
  store %struct.TYPE_16__* %23, %struct.TYPE_16__** %8, align 8
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %25 = icmp eq %struct.TYPE_16__* %24, null
  br i1 %25, label %26, label %38

26:                                               ; preds = %3
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %4, align 8
  br label %138

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 5
  %32 = call %struct.TYPE_16__* @ddt_alloc(i32* %31)
  store %struct.TYPE_16__* %32, %struct.TYPE_16__** %8, align 8
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %36 = load i32, i32* %12, align 4
  %37 = call i32 @avl_insert(i32* %34, %struct.TYPE_16__* %35, i32 %36)
  br label %38

38:                                               ; preds = %30, %3
  br label %39

39:                                               ; preds = %44, %38
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 4
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 0
  %49 = call i32 @cv_wait(i32* %46, i32* %48)
  br label %39

50:                                               ; preds = %39
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  store %struct.TYPE_16__* %56, %struct.TYPE_16__** %4, align 8
  br label %138

57:                                               ; preds = %50
  %58 = load i64, i64* @B_TRUE, align 8
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %62 = call i32 @ddt_exit(%struct.TYPE_15__* %61)
  %63 = load i32, i32* @ENOENT, align 4
  store i32 %63, i32* %13, align 4
  store i32 0, i32* %10, align 4
  br label %64

64:                                               ; preds = %95, %57
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* @DDT_TYPES, align 4
  %67 = icmp ult i32 %65, %66
  br i1 %67, label %68, label %98

68:                                               ; preds = %64
  store i32 0, i32* %11, align 4
  br label %69

69:                                               ; preds = %86, %68
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* @DDT_CLASSES, align 4
  %72 = icmp ult i32 %70, %71
  br i1 %72, label %73, label %89

73:                                               ; preds = %69
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %11, align 4
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %78 = call i32 @ddt_object_lookup(%struct.TYPE_15__* %74, i32 %75, i32 %76, %struct.TYPE_16__* %77)
  store i32 %78, i32* %13, align 4
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* @ENOENT, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %73
  %83 = load i32, i32* %13, align 4
  %84 = call i32 @ASSERT0(i32 %83)
  br label %89

85:                                               ; preds = %73
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %11, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* %11, align 4
  br label %69

89:                                               ; preds = %82, %69
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* @ENOENT, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  br label %98

94:                                               ; preds = %89
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %10, align 4
  %97 = add i32 %96, 1
  store i32 %97, i32* %10, align 4
  br label %64

98:                                               ; preds = %93, %64
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %100 = call i32 @ddt_enter(%struct.TYPE_15__* %99)
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @B_FALSE, align 8
  %105 = icmp eq i64 %103, %104
  %106 = zext i1 %105 to i32
  %107 = call i32 @ASSERT(i32 %106)
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @B_TRUE, align 8
  %112 = icmp eq i64 %110, %111
  %113 = zext i1 %112 to i32
  %114 = call i32 @ASSERT(i32 %113)
  %115 = load i32, i32* %10, align 4
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 8
  %118 = load i32, i32* %11, align 4
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 3
  store i32 %118, i32* %120, align 4
  %121 = load i64, i64* @B_TRUE, align 8
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 1
  store i64 %121, i64* %123, align 8
  %124 = load i64, i64* @B_FALSE, align 8
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 0
  store i64 %124, i64* %126, align 8
  %127 = load i32, i32* %13, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %98
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %132 = call i32 @ddt_stat_update(%struct.TYPE_15__* %130, %struct.TYPE_16__* %131, i64 -1)
  br label %133

133:                                              ; preds = %129, %98
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 4
  %136 = call i32 @cv_broadcast(i32* %135)
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  store %struct.TYPE_16__* %137, %struct.TYPE_16__** %4, align 8
  br label %138

138:                                              ; preds = %133, %55, %29
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  ret %struct.TYPE_16__* %139
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @MUTEX_HELD(i32*) #1

declare dso_local i32 @ddt_key_fill(i32*, i32*) #1

declare dso_local %struct.TYPE_16__* @avl_find(i32*, %struct.TYPE_16__*, i32*) #1

declare dso_local %struct.TYPE_16__* @ddt_alloc(i32*) #1

declare dso_local i32 @avl_insert(i32*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @cv_wait(i32*, i32*) #1

declare dso_local i32 @ddt_exit(%struct.TYPE_15__*) #1

declare dso_local i32 @ddt_object_lookup(%struct.TYPE_15__*, i32, i32, %struct.TYPE_16__*) #1

declare dso_local i32 @ASSERT0(i32) #1

declare dso_local i32 @ddt_enter(%struct.TYPE_15__*) #1

declare dso_local i32 @ddt_stat_update(%struct.TYPE_15__*, %struct.TYPE_16__*, i64) #1

declare dso_local i32 @cv_broadcast(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

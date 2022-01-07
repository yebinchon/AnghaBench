; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libnv/extr_nvpair.c_nvpair_append_nvlist_array.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libnv/extr_nvpair.c_nvpair_append_nvlist_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i64 }

@NV_TYPE_NVLIST_ARRAY = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NV_FLAG_IN_ARRAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@NV_TYPE_NVLIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvpair_append_nvlist_array(%struct.TYPE_9__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32**, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %12 = call i32 @NVPAIR_ASSERT(%struct.TYPE_9__* %11)
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @NV_TYPE_NVLIST_ARRAY, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @PJDLOG_ASSERT(i32 %18)
  %20 = load i32*, i32** %5, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %2
  %23 = load i32*, i32** %5, align 8
  %24 = call i64 @nvlist_error(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load i32*, i32** %5, align 8
  %28 = call i32* @nvlist_get_pararr(i32* %27, i32* null)
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %26, %22, %2
  %31 = load i32, i32* @EINVAL, align 4
  %32 = call i32 @ERRNO_SET(i32 %31)
  store i32 -1, i32* %3, align 4
  br label %104

33:                                               ; preds = %26
  %34 = load i32*, i32** %5, align 8
  %35 = call i32* @nvlist_clone(i32* %34)
  store i32* %35, i32** %7, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 -1, i32* %3, align 4
  br label %104

39:                                               ; preds = %33
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @nvlist_flags(i32* %40)
  %42 = load i32, i32* @NV_FLAG_IN_ARRAY, align 4
  %43 = or i32 %41, %42
  store i32 %43, i32* %9, align 4
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @nvlist_set_flags(i32* %44, i32 %45)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %6, align 8
  store i32* null, i32** %8, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp sgt i64 %49, 0
  br i1 %50, label %51, label %77

51:                                               ; preds = %39
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to i8*
  %56 = bitcast i8* %55 to i32**
  store i32** %56, i32*** %10, align 8
  %57 = load i32**, i32*** %10, align 8
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = sub nsw i64 %60, 1
  %62 = getelementptr inbounds i32*, i32** %57, i64 %61
  %63 = load i32*, i32** %62, align 8
  store i32* %63, i32** %8, align 8
  %64 = load i32*, i32** %8, align 8
  %65 = icmp ne i32* %64, null
  %66 = zext i1 %65 to i32
  %67 = call i32 @PJDLOG_ASSERT(i32 %66)
  %68 = load i32, i32* @NV_TYPE_NVLIST, align 4
  %69 = load i32*, i32** %7, align 8
  %70 = ptrtoint i32* %69 to i64
  %71 = trunc i64 %70 to i32
  %72 = call %struct.TYPE_9__* @nvpair_allocv(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %68, i32 %71, i32 0, i32 0)
  store %struct.TYPE_9__* %72, %struct.TYPE_9__** %6, align 8
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %74 = icmp eq %struct.TYPE_9__* %73, null
  br i1 %74, label %75, label %76

75:                                               ; preds = %51
  br label %95

76:                                               ; preds = %51
  br label %77

77:                                               ; preds = %76, %39
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %79 = call i32 @nvpair_append(%struct.TYPE_9__* %78, i32** %7, i32 8, i32 0)
  %80 = icmp eq i32 %79, -1
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  br label %95

82:                                               ; preds = %77
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %84 = icmp ne %struct.TYPE_9__* %83, null
  br i1 %84, label %85, label %91

85:                                               ; preds = %82
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %87 = call i32 @NVPAIR_ASSERT(%struct.TYPE_9__* %86)
  %88 = load i32*, i32** %8, align 8
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %90 = call i32 @nvlist_set_array_next(i32* %88, %struct.TYPE_9__* %89)
  br label %91

91:                                               ; preds = %85, %82
  %92 = load i32*, i32** %7, align 8
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %94 = call i32 @nvlist_set_parent(i32* %92, %struct.TYPE_9__* %93)
  store i32 0, i32* %3, align 4
  br label %104

95:                                               ; preds = %81, %75
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %97 = icmp ne %struct.TYPE_9__* %96, null
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %100 = call i32 @nvpair_free(%struct.TYPE_9__* %99)
  br label %101

101:                                              ; preds = %98, %95
  %102 = load i32*, i32** %7, align 8
  %103 = call i32 @nvlist_destroy(i32* %102)
  store i32 -1, i32* %3, align 4
  br label %104

104:                                              ; preds = %101, %91, %38, %30
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @NVPAIR_ASSERT(%struct.TYPE_9__*) #1

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local i64 @nvlist_error(i32*) #1

declare dso_local i32* @nvlist_get_pararr(i32*, i32*) #1

declare dso_local i32 @ERRNO_SET(i32) #1

declare dso_local i32* @nvlist_clone(i32*) #1

declare dso_local i32 @nvlist_flags(i32*) #1

declare dso_local i32 @nvlist_set_flags(i32*, i32) #1

declare dso_local %struct.TYPE_9__* @nvpair_allocv(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @nvpair_append(%struct.TYPE_9__*, i32**, i32, i32) #1

declare dso_local i32 @nvlist_set_array_next(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @nvlist_set_parent(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @nvpair_free(%struct.TYPE_9__*) #1

declare dso_local i32 @nvlist_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

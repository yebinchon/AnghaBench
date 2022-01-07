; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/rtld-elf/extr_rtld.c_unload_object.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/rtld-elf/extr_rtld.c_unload_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i64, i32, i32, i32, i64 }

@obj_list = common dso_local global i32 0, align 4
@UTRACE_UNLOAD_OBJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"unloading \22%s\22\00", align 1
@obj_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, i32*)* @unload_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unload_object(%struct.TYPE_17__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_17__, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %15 = call i32 @unlink_object(%struct.TYPE_17__* %14)
  %16 = call %struct.TYPE_17__* @TAILQ_FIRST(i32* @obj_list)
  store %struct.TYPE_17__* %16, %struct.TYPE_17__** %6, align 8
  br label %17

17:                                               ; preds = %83, %2
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %19 = icmp ne %struct.TYPE_17__* %18, null
  br i1 %19, label %20, label %85

20:                                               ; preds = %17
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %23 = call %struct.TYPE_17__* @TAILQ_NEXT(%struct.TYPE_17__* %21, %struct.TYPE_17__* %22)
  store %struct.TYPE_17__* %23, %struct.TYPE_17__** %7, align 8
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 5
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %20
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28, %20
  br label %83

34:                                               ; preds = %28
  %35 = load i32, i32* @UTRACE_UNLOAD_OBJECT, align 4
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @LD_UTRACE(i32 %35, %struct.TYPE_17__* %36, i32 %39, i32 %42, i32 0, i32 %45)
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @dbg(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %53 = call i32 @TAILQ_REMOVE(i32* @obj_list, %struct.TYPE_17__* %51, %struct.TYPE_17__* %52)
  %54 = load i32, i32* @obj_count, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* @obj_count, align 4
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %80

60:                                               ; preds = %34
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %62 = icmp ne %struct.TYPE_17__* %61, null
  br i1 %62, label %63, label %75

63:                                               ; preds = %60
  %64 = call i32 @init_marker(%struct.TYPE_17__* %5)
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %67 = call i32 @TAILQ_INSERT_BEFORE(%struct.TYPE_17__* %65, %struct.TYPE_17__* %5, %struct.TYPE_17__* %66)
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %69 = load i32*, i32** %4, align 8
  %70 = call i32 @unload_filtees(%struct.TYPE_17__* %68, i32* %69)
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %72 = call %struct.TYPE_17__* @TAILQ_NEXT(%struct.TYPE_17__* %5, %struct.TYPE_17__* %71)
  store %struct.TYPE_17__* %72, %struct.TYPE_17__** %7, align 8
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %74 = call i32 @TAILQ_REMOVE(i32* @obj_list, %struct.TYPE_17__* %5, %struct.TYPE_17__* %73)
  br label %79

75:                                               ; preds = %60
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %77 = load i32*, i32** %4, align 8
  %78 = call i32 @unload_filtees(%struct.TYPE_17__* %76, i32* %77)
  br label %79

79:                                               ; preds = %75, %63
  br label %80

80:                                               ; preds = %79, %34
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %82 = call i32 @release_object(%struct.TYPE_17__* %81)
  br label %83

83:                                               ; preds = %80, %33
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  store %struct.TYPE_17__* %84, %struct.TYPE_17__** %6, align 8
  br label %17

85:                                               ; preds = %17
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @unlink_object(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_17__* @TAILQ_FIRST(i32*) #1

declare dso_local %struct.TYPE_17__* @TAILQ_NEXT(%struct.TYPE_17__*, %struct.TYPE_17__*) #1

declare dso_local i32 @LD_UTRACE(i32, %struct.TYPE_17__*, i32, i32, i32, i32) #1

declare dso_local i32 @dbg(i8*, i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.TYPE_17__*, %struct.TYPE_17__*) #1

declare dso_local i32 @init_marker(%struct.TYPE_17__*) #1

declare dso_local i32 @TAILQ_INSERT_BEFORE(%struct.TYPE_17__*, %struct.TYPE_17__*, %struct.TYPE_17__*) #1

declare dso_local i32 @unload_filtees(%struct.TYPE_17__*, i32*) #1

declare dso_local i32 @release_object(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

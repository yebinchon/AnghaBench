; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/ndis/extr_subr_ntoskrnl.c_IoAllocateMdl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/ndis/extr_subr_ntoskrnl.c_IoAllocateMdl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }

@MDL_ZONE_SIZE = common dso_local global i64 0, align 8
@NonPagedPool = common dso_local global i32 0, align 4
@mdl_zone = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@MDL_ZONE_ALLOCED = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"leaking an MDL in IoAllocateMdl()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @IoAllocateMdl(i8* %0, i32 %1, i64 %2, i64 %3, %struct.TYPE_9__* %4) #0 {
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_8__*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.TYPE_9__* %4, %struct.TYPE_9__** %11, align 8
  store i32 0, i32* %13, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call i64 @MmSizeOfMdl(i8* %15, i32 %16)
  %18 = load i64, i64* @MDL_ZONE_SIZE, align 8
  %19 = icmp sgt i64 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %5
  %21 = load i32, i32* @NonPagedPool, align 4
  %22 = load i8*, i8** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i64 @MmSizeOfMdl(i8* %22, i32 %23)
  %25 = call %struct.TYPE_8__* @ExAllocatePoolWithTag(i32 %21, i64 %24, i32 0)
  store %struct.TYPE_8__* %25, %struct.TYPE_8__** %12, align 8
  br label %34

26:                                               ; preds = %5
  %27 = load i32, i32* @mdl_zone, align 4
  %28 = load i32, i32* @M_NOWAIT, align 4
  %29 = load i32, i32* @M_ZERO, align 4
  %30 = or i32 %28, %29
  %31 = call %struct.TYPE_8__* @uma_zalloc(i32 %27, i32 %30)
  store %struct.TYPE_8__* %31, %struct.TYPE_8__** %12, align 8
  %32 = load i32, i32* %13, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %13, align 4
  br label %34

34:                                               ; preds = %26, %20
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %36 = icmp eq %struct.TYPE_8__* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %6, align 8
  br label %87

38:                                               ; preds = %34
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @MmInitializeMdl(%struct.TYPE_8__* %39, i8* %40, i32 %41)
  %43 = load i32, i32* %13, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = load i32, i32* @MDL_ZONE_ALLOCED, align 4
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  br label %49

49:                                               ; preds = %45, %38
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %51 = icmp ne %struct.TYPE_9__* %50, null
  br i1 %51, label %52, label %85

52:                                               ; preds = %49
  %53 = load i64, i64* %9, align 8
  %54 = load i64, i64* @TRUE, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %73

56:                                               ; preds = %52
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  store %struct.TYPE_8__* %59, %struct.TYPE_8__** %14, align 8
  br label %60

60:                                               ; preds = %65, %56
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = icmp ne %struct.TYPE_8__* %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  store %struct.TYPE_8__* %68, %struct.TYPE_8__** %14, align 8
  br label %60

69:                                               ; preds = %60
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  store %struct.TYPE_8__* %70, %struct.TYPE_8__** %72, align 8
  br label %84

73:                                               ; preds = %52
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %75, align 8
  %77 = icmp ne %struct.TYPE_8__* %76, null
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = call i32 @panic(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %80

80:                                               ; preds = %78, %73
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  store %struct.TYPE_8__* %81, %struct.TYPE_8__** %83, align 8
  br label %84

84:                                               ; preds = %80, %69
  br label %85

85:                                               ; preds = %84, %49
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  store %struct.TYPE_8__* %86, %struct.TYPE_8__** %6, align 8
  br label %87

87:                                               ; preds = %85, %37
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  ret %struct.TYPE_8__* %88
}

declare dso_local i64 @MmSizeOfMdl(i8*, i32) #1

declare dso_local %struct.TYPE_8__* @ExAllocatePoolWithTag(i32, i64, i32) #1

declare dso_local %struct.TYPE_8__* @uma_zalloc(i32, i32) #1

declare dso_local i32 @MmInitializeMdl(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

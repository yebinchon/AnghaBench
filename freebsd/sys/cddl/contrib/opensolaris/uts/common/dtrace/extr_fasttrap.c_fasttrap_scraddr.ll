; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_fasttrap.c_fasttrap_scraddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_fasttrap.c_fasttrap_scraddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i8*, i8* }
%struct.thread = type { %struct.TYPE_12__*, %struct.proc* }
%struct.proc = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }

@FASTTRAP_SCRBLOCK_SIZE = common dso_local global i32 0, align 4
@VMFS_ANY_SPACE = common dso_local global i32 0, align 4
@VM_PROT_ALL = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@M_SOLARIS = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@ftsb_next = common dso_local global i32 0, align 4
@FASTTRAP_SCRSPACE_SIZE = common dso_local global i32 0, align 4
@ftss_next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @fasttrap_scraddr(%struct.thread* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.proc*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %7, align 8
  %12 = load %struct.thread*, %struct.thread** %4, align 8
  %13 = getelementptr inbounds %struct.thread, %struct.thread* %12, i32 0, i32 0
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %15 = icmp ne %struct.TYPE_12__* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.thread*, %struct.thread** %4, align 8
  %18 = getelementptr inbounds %struct.thread, %struct.thread* %17, i32 0, i32 0
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  store %struct.TYPE_12__* %19, %struct.TYPE_12__** %7, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  store %struct.TYPE_12__* %20, %struct.TYPE_12__** %3, align 8
  br label %105

21:                                               ; preds = %2
  %22 = load %struct.thread*, %struct.thread** %4, align 8
  %23 = getelementptr inbounds %struct.thread, %struct.thread* %22, i32 0, i32 1
  %24 = load %struct.proc*, %struct.proc** %23, align 8
  store %struct.proc* %24, %struct.proc** %8, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = call i32 @mutex_enter(i32* %26)
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 2
  %30 = call i64 @LIST_EMPTY(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %85

32:                                               ; preds = %21
  store i8* null, i8** %9, align 8
  %33 = load %struct.proc*, %struct.proc** %8, align 8
  %34 = getelementptr inbounds %struct.proc, %struct.proc* %33, i32 0, i32 0
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i32, i32* @FASTTRAP_SCRBLOCK_SIZE, align 4
  %38 = load i32, i32* @VMFS_ANY_SPACE, align 4
  %39 = load i32, i32* @VM_PROT_ALL, align 4
  %40 = load i32, i32* @VM_PROT_ALL, align 4
  %41 = call i32 @vm_map_find(i32* %36, i32* null, i32 0, i8** %9, i32 %37, i32 0, i32 %38, i32 %39, i32 %40, i32 0)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @KERN_SUCCESS, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %32
  br label %100

46:                                               ; preds = %32
  %47 = load i32, i32* @M_SOLARIS, align 4
  %48 = load i32, i32* @M_WAITOK, align 4
  %49 = call %struct.TYPE_12__* @malloc(i32 16, i32 %47, i32 %48)
  store %struct.TYPE_12__* %49, %struct.TYPE_12__** %6, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 1
  store i8* %50, i8** %52, align 8
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 3
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %56 = load i32, i32* @ftsb_next, align 4
  %57 = call i32 @LIST_INSERT_HEAD(i32* %54, %struct.TYPE_12__* %55, i32 %56)
  store i32 0, i32* %11, align 4
  br label %58

58:                                               ; preds = %81, %46
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* @FASTTRAP_SCRBLOCK_SIZE, align 4
  %61 = load i32, i32* @FASTTRAP_SCRSPACE_SIZE, align 4
  %62 = sdiv i32 %60, %61
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %84

64:                                               ; preds = %58
  %65 = load i32, i32* @M_SOLARIS, align 4
  %66 = load i32, i32* @M_WAITOK, align 4
  %67 = call %struct.TYPE_12__* @malloc(i32 16, i32 %65, i32 %66)
  store %struct.TYPE_12__* %67, %struct.TYPE_12__** %7, align 8
  %68 = load i8*, i8** %9, align 8
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* @FASTTRAP_SCRSPACE_SIZE, align 4
  %71 = mul nsw i32 %69, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr i8, i8* %68, i64 %72
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  store i8* %73, i8** %75, align 8
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 2
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %79 = load i32, i32* @ftss_next, align 4
  %80 = call i32 @LIST_INSERT_HEAD(i32* %77, %struct.TYPE_12__* %78, i32 %79)
  br label %81

81:                                               ; preds = %64
  %82 = load i32, i32* %11, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %11, align 4
  br label %58

84:                                               ; preds = %58
  br label %85

85:                                               ; preds = %84, %21
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 2
  %88 = call %struct.TYPE_12__* @LIST_FIRST(i32* %87)
  store %struct.TYPE_12__* %88, %struct.TYPE_12__** %7, align 8
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %90 = load i32, i32* @ftss_next, align 4
  %91 = call i32 @LIST_REMOVE(%struct.TYPE_12__* %89, i32 %90)
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %95 = load i32, i32* @ftss_next, align 4
  %96 = call i32 @LIST_INSERT_HEAD(i32* %93, %struct.TYPE_12__* %94, i32 %95)
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %98 = load %struct.thread*, %struct.thread** %4, align 8
  %99 = getelementptr inbounds %struct.thread, %struct.thread* %98, i32 0, i32 0
  store %struct.TYPE_12__* %97, %struct.TYPE_12__** %99, align 8
  br label %100

100:                                              ; preds = %85, %45
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 0
  %103 = call i32 @mutex_exit(i32* %102)
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  store %struct.TYPE_12__* %104, %struct.TYPE_12__** %3, align 8
  br label %105

105:                                              ; preds = %100, %16
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  ret %struct.TYPE_12__* %106
}

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i64 @LIST_EMPTY(i32*) #1

declare dso_local i32 @vm_map_find(i32*, i32*, i32, i8**, i32, i32, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_12__* @malloc(i32, i32, i32) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.TYPE_12__*, i32) #1

declare dso_local %struct.TYPE_12__* @LIST_FIRST(i32*) #1

declare dso_local i32 @LIST_REMOVE(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @mutex_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

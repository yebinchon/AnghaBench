; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_pcid_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_pcid_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32 }

@curthread = common dso_local global i32 0, align 4
@pcid_gen = common dso_local global i32 0, align 4
@PMAP_PCID_KERN = common dso_local global i64 0, align 8
@pti = common dso_local global i64 0, align 8
@CR3_PCID_SAVE = common dso_local global i32 0, align 4
@PMAP_PCID_OVERMAX = common dso_local global i32 0, align 4
@PMAP_PCID_OVERMAX_KERN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"cpu %d pcid_next %#x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i64)* @pmap_pcid_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmap_pcid_alloc(%struct.TYPE_5__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i32, i32* @curthread, align 4
  %10 = call i32 @CRITICAL_ASSERT(i32 %9)
  %11 = load i32, i32* @pcid_gen, align 4
  %12 = call i32 @PCPU_GET(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = load i64, i64* %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @PMAP_PCID_KERN, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %2
  %23 = load i64, i64* @pti, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  br label %28

26:                                               ; preds = %22
  %27 = load i32, i32* @CR3_PCID_SAVE, align 4
  br label %28

28:                                               ; preds = %26, %25
  %29 = phi i32 [ 0, %25 ], [ %27, %26 ]
  store i32 %29, i32* %3, align 4
  br label %116

30:                                               ; preds = %2
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = load i64, i64* %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %30
  %41 = load i32, i32* @CR3_PCID_SAVE, align 4
  store i32 %41, i32* %3, align 4
  br label %116

42:                                               ; preds = %30
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @PCPU_GET(i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i64, i64* @pti, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @PMAP_PCID_OVERMAX, align 4
  %50 = icmp sle i32 %48, %49
  br i1 %50, label %60, label %51

51:                                               ; preds = %47, %42
  %52 = load i64, i64* @pti, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @PMAP_PCID_OVERMAX_KERN, align 4
  %57 = icmp sle i32 %55, %56
  br label %58

58:                                               ; preds = %54, %51
  %59 = phi i1 [ false, %51 ], [ %57, %54 ]
  br label %60

60:                                               ; preds = %58, %47
  %61 = phi i1 [ true, %47 ], [ %59, %58 ]
  %62 = zext i1 %61 to i32
  %63 = load i64, i64* %5, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = inttoptr i64 %65 to i8*
  %67 = call i32 @KASSERT(i32 %62, i8* %66)
  %68 = load i64, i64* @pti, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %60
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @PMAP_PCID_OVERMAX, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %81, label %74

74:                                               ; preds = %70, %60
  %75 = load i64, i64* @pti, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %94

77:                                               ; preds = %74
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @PMAP_PCID_OVERMAX_KERN, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %94

81:                                               ; preds = %77, %70
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  store i32 1, i32* %7, align 4
  br label %87

87:                                               ; preds = %86, %81
  %88 = load i32, i32* @pcid_gen, align 4
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @PCPU_SET(i32 %88, i32 %89)
  %91 = load i64, i64* @PMAP_PCID_KERN, align 8
  %92 = add nsw i64 %91, 1
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %8, align 4
  br label %96

94:                                               ; preds = %77, %74
  %95 = load i32, i32* %6, align 4
  store i32 %95, i32* %7, align 4
  br label %96

96:                                               ; preds = %94, %87
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = load i64, i64* %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  store i64 %98, i64* %104, align 8
  %105 = load i32, i32* %7, align 4
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = load i64, i64* %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  store i32 %105, i32* %111, align 8
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* %8, align 4
  %114 = add nsw i32 %113, 1
  %115 = call i32 @PCPU_SET(i32 %112, i32 %114)
  store i32 0, i32* %3, align 4
  br label %116

116:                                              ; preds = %96, %40, %28
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i32 @CRITICAL_ASSERT(i32) #1

declare dso_local i32 @PCPU_GET(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @PCPU_SET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

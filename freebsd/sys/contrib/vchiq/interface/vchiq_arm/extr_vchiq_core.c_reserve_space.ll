; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/vchiq/interface/vchiq_arm/extr_vchiq_core.c_reserve_space.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/vchiq/interface/vchiq_arm/extr_vchiq_core.c_reserve_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i8*, i32, i32, %struct.TYPE_9__*, %struct.TYPE_11__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32* }

@VCHIQ_SLOT_SIZE = common dso_local global i32 0, align 4
@VCHIQ_SLOT_MASK = common dso_local global i32 0, align 4
@VCHIQ_MSGID_PADDING = common dso_local global i32 0, align 4
@slot_stalls = common dso_local global i32 0, align 4
@VCHIQ_SLOT_QUEUE_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_12__* (%struct.TYPE_10__*, i32, i32)* @reserve_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_12__* @reserve_space(%struct.TYPE_10__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 5
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  store %struct.TYPE_11__* %15, %struct.TYPE_11__** %8, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* @VCHIQ_SLOT_SIZE, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @VCHIQ_SLOT_MASK, align 4
  %22 = and i32 %20, %21
  %23 = sub nsw i32 %19, %22
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %55

27:                                               ; preds = %3
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = icmp eq i8* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i32 @WARN_ON(i32 %32)
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @VCHIQ_SLOT_MASK, align 4
  %39 = and i32 %37, %38
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %36, i64 %40
  %42 = bitcast i8* %41 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %42, %struct.TYPE_12__** %11, align 8
  %43 = load i32, i32* @VCHIQ_MSGID_PADDING, align 4
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = sub i64 %47, 8
  %49 = trunc i64 %48 to i32
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, %52
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %27, %3
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @VCHIQ_SLOT_MASK, align 4
  %58 = and i32 %56, %57
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %114

60:                                               ; preds = %55
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 3
  %63 = call i64 @down_trylock(i32* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %89

65:                                               ; preds = %60
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %67 = load i32, i32* @slot_stalls, align 4
  %68 = call i32 @VCHIQ_STATS_INC(%struct.TYPE_10__* %66, i32 %67)
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load i32, i32* %9, align 4
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 4
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = call i32 @remote_event_signal(i32* %78)
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %65
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 3
  %85 = call i64 @down_interruptible(i32* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82, %65
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %4, align 8
  br label %129

88:                                               ; preds = %82
  br label %89

89:                                               ; preds = %88, %60
  %90 = load i32, i32* %9, align 4
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @VCHIQ_SLOT_SIZE, align 4
  %95 = mul nsw i32 %93, %94
  %96 = icmp eq i32 %90, %95
  %97 = zext i1 %96 to i32
  %98 = call i32 @BUG_ON(i32 %97)
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %9, align 4
  %103 = call i64 @SLOT_QUEUE_INDEX_FROM_POS(i32 %102)
  %104 = load i64, i64* @VCHIQ_SLOT_QUEUE_MASK, align 8
  %105 = and i64 %103, %104
  %106 = getelementptr inbounds i32, i32* %101, i64 %105
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %12, align 4
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %109 = load i32, i32* %12, align 4
  %110 = call i64 @SLOT_DATA_FROM_INDEX(%struct.TYPE_10__* %108, i32 %109)
  %111 = inttoptr i64 %110 to i8*
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 1
  store i8* %111, i8** %113, align 8
  br label %114

114:                                              ; preds = %89, %55
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* %6, align 4
  %117 = add nsw i32 %115, %116
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 1
  %122 = load i8*, i8** %121, align 8
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* @VCHIQ_SLOT_MASK, align 4
  %125 = and i32 %123, %124
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %122, i64 %126
  %128 = bitcast i8* %127 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %128, %struct.TYPE_12__** %4, align 8
  br label %129

129:                                              ; preds = %114, %87
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  ret %struct.TYPE_12__* %130
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @down_trylock(i32*) #1

declare dso_local i32 @VCHIQ_STATS_INC(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @remote_event_signal(i32*) #1

declare dso_local i64 @down_interruptible(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @SLOT_QUEUE_INDEX_FROM_POS(i32) #1

declare dso_local i64 @SLOT_DATA_FROM_INDEX(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_buffer.c_evbuffer_ptr_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_buffer.c_evbuffer_ptr_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer = type { %struct.evbuffer_chain* }
%struct.evbuffer_chain = type { i64, %struct.evbuffer_chain* }
%struct.evbuffer_ptr = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %struct.evbuffer_chain* }

@EV_SIZE_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evbuffer_ptr_set(%struct.evbuffer* %0, %struct.evbuffer_ptr* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.evbuffer*, align 8
  %7 = alloca %struct.evbuffer_ptr*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.evbuffer_chain*, align 8
  %12 = alloca i32, align 4
  store %struct.evbuffer* %0, %struct.evbuffer** %6, align 8
  store %struct.evbuffer_ptr* %1, %struct.evbuffer_ptr** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i64, i64* %8, align 8
  store i64 %13, i64* %10, align 8
  store %struct.evbuffer_chain* null, %struct.evbuffer_chain** %11, align 8
  store i32 0, i32* %12, align 4
  %14 = load %struct.evbuffer*, %struct.evbuffer** %6, align 8
  %15 = call i32 @EVBUFFER_LOCK(%struct.evbuffer* %14)
  %16 = load i32, i32* %9, align 4
  switch i32 %16, label %54 [
    i32 128, label %17
    i32 129, label %24
  ]

17:                                               ; preds = %4
  %18 = load %struct.evbuffer*, %struct.evbuffer** %6, align 8
  %19 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %18, i32 0, i32 0
  %20 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %19, align 8
  store %struct.evbuffer_chain* %20, %struct.evbuffer_chain** %11, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load %struct.evbuffer_ptr*, %struct.evbuffer_ptr** %7, align 8
  %23 = getelementptr inbounds %struct.evbuffer_ptr, %struct.evbuffer_ptr* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  store i64 0, i64* %8, align 8
  br label %54

24:                                               ; preds = %4
  %25 = load %struct.evbuffer_ptr*, %struct.evbuffer_ptr** %7, align 8
  %26 = getelementptr inbounds %struct.evbuffer_ptr, %struct.evbuffer_ptr* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ult i64 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %24
  %30 = load i64, i64* @EV_SIZE_MAX, align 8
  %31 = load i64, i64* %8, align 8
  %32 = sub i64 %30, %31
  %33 = load %struct.evbuffer_ptr*, %struct.evbuffer_ptr** %7, align 8
  %34 = getelementptr inbounds %struct.evbuffer_ptr, %struct.evbuffer_ptr* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ult i64 %32, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %29, %24
  %38 = load %struct.evbuffer*, %struct.evbuffer** %6, align 8
  %39 = call i32 @EVBUFFER_UNLOCK(%struct.evbuffer* %38)
  store i32 -1, i32* %5, align 4
  br label %118

40:                                               ; preds = %29
  %41 = load %struct.evbuffer_ptr*, %struct.evbuffer_ptr** %7, align 8
  %42 = getelementptr inbounds %struct.evbuffer_ptr, %struct.evbuffer_ptr* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %43, align 8
  store %struct.evbuffer_chain* %44, %struct.evbuffer_chain** %11, align 8
  %45 = load i64, i64* %8, align 8
  %46 = load %struct.evbuffer_ptr*, %struct.evbuffer_ptr** %7, align 8
  %47 = getelementptr inbounds %struct.evbuffer_ptr, %struct.evbuffer_ptr* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add i64 %48, %45
  store i64 %49, i64* %47, align 8
  %50 = load %struct.evbuffer_ptr*, %struct.evbuffer_ptr** %7, align 8
  %51 = getelementptr inbounds %struct.evbuffer_ptr, %struct.evbuffer_ptr* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %8, align 8
  br label %54

54:                                               ; preds = %4, %40, %17
  %55 = load i64, i64* @EV_SIZE_MAX, align 8
  %56 = load i64, i64* %10, align 8
  %57 = sub i64 %55, %56
  %58 = load i64, i64* %8, align 8
  %59 = icmp uge i64 %57, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @EVUTIL_ASSERT(i32 %60)
  br label %62

62:                                               ; preds = %75, %54
  %63 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %11, align 8
  %64 = icmp ne %struct.evbuffer_chain* %63, null
  br i1 %64, label %65, label %73

65:                                               ; preds = %62
  %66 = load i64, i64* %8, align 8
  %67 = load i64, i64* %10, align 8
  %68 = add i64 %66, %67
  %69 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %11, align 8
  %70 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp uge i64 %68, %71
  br label %73

73:                                               ; preds = %65, %62
  %74 = phi i1 [ false, %62 ], [ %72, %65 ]
  br i1 %74, label %75, label %86

75:                                               ; preds = %73
  %76 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %11, align 8
  %77 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* %8, align 8
  %80 = sub i64 %78, %79
  %81 = load i64, i64* %10, align 8
  %82 = sub i64 %81, %80
  store i64 %82, i64* %10, align 8
  %83 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %11, align 8
  %84 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %83, i32 0, i32 1
  %85 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %84, align 8
  store %struct.evbuffer_chain* %85, %struct.evbuffer_chain** %11, align 8
  store i64 0, i64* %8, align 8
  br label %62

86:                                               ; preds = %73
  %87 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %11, align 8
  %88 = icmp ne %struct.evbuffer_chain* %87, null
  br i1 %88, label %89, label %100

89:                                               ; preds = %86
  %90 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %11, align 8
  %91 = load %struct.evbuffer_ptr*, %struct.evbuffer_ptr** %7, align 8
  %92 = getelementptr inbounds %struct.evbuffer_ptr, %struct.evbuffer_ptr* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  store %struct.evbuffer_chain* %90, %struct.evbuffer_chain** %93, align 8
  %94 = load i64, i64* %8, align 8
  %95 = load i64, i64* %10, align 8
  %96 = add i64 %94, %95
  %97 = load %struct.evbuffer_ptr*, %struct.evbuffer_ptr** %7, align 8
  %98 = getelementptr inbounds %struct.evbuffer_ptr, %struct.evbuffer_ptr* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  store i64 %96, i64* %99, align 8
  br label %114

100:                                              ; preds = %86
  %101 = load i64, i64* %10, align 8
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %100
  %104 = load %struct.evbuffer_ptr*, %struct.evbuffer_ptr** %7, align 8
  %105 = getelementptr inbounds %struct.evbuffer_ptr, %struct.evbuffer_ptr* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 1
  store %struct.evbuffer_chain* null, %struct.evbuffer_chain** %106, align 8
  %107 = load %struct.evbuffer_ptr*, %struct.evbuffer_ptr** %7, align 8
  %108 = getelementptr inbounds %struct.evbuffer_ptr, %struct.evbuffer_ptr* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  store i64 0, i64* %109, align 8
  br label %113

110:                                              ; preds = %100
  %111 = load %struct.evbuffer_ptr*, %struct.evbuffer_ptr** %7, align 8
  %112 = call i32 @PTR_NOT_FOUND(%struct.evbuffer_ptr* %111)
  store i32 -1, i32* %12, align 4
  br label %113

113:                                              ; preds = %110, %103
  br label %114

114:                                              ; preds = %113, %89
  %115 = load %struct.evbuffer*, %struct.evbuffer** %6, align 8
  %116 = call i32 @EVBUFFER_UNLOCK(%struct.evbuffer* %115)
  %117 = load i32, i32* %12, align 4
  store i32 %117, i32* %5, align 4
  br label %118

118:                                              ; preds = %114, %37
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

declare dso_local i32 @EVBUFFER_LOCK(%struct.evbuffer*) #1

declare dso_local i32 @EVBUFFER_UNLOCK(%struct.evbuffer*) #1

declare dso_local i32 @EVUTIL_ASSERT(i32) #1

declare dso_local i32 @PTR_NOT_FOUND(%struct.evbuffer_ptr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_buffer.c_evbuffer_peek.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_buffer.c_evbuffer_peek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer = type { i64, %struct.evbuffer_chain* }
%struct.evbuffer_chain = type { %struct.evbuffer_chain*, i64, i64, i64 }
%struct.evbuffer_ptr = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %struct.evbuffer_chain* }
%struct.evbuffer_iovec = type { i64, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evbuffer_peek(%struct.evbuffer* %0, i64 %1, %struct.evbuffer_ptr* %2, %struct.evbuffer_iovec* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.evbuffer*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.evbuffer_ptr*, align 8
  %10 = alloca %struct.evbuffer_iovec*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.evbuffer_chain*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.evbuffer* %0, %struct.evbuffer** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.evbuffer_ptr* %2, %struct.evbuffer_ptr** %9, align 8
  store %struct.evbuffer_iovec* %3, %struct.evbuffer_iovec** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %13, align 4
  store i64 0, i64* %14, align 8
  %15 = load %struct.evbuffer_ptr*, %struct.evbuffer_ptr** %9, align 8
  %16 = icmp ne %struct.evbuffer_ptr* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %5
  %18 = load %struct.evbuffer_ptr*, %struct.evbuffer_ptr** %9, align 8
  %19 = getelementptr inbounds %struct.evbuffer_ptr, %struct.evbuffer_ptr* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %20, align 8
  %22 = icmp eq %struct.evbuffer_chain* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 0, i32* %6, align 4
  br label %150

24:                                               ; preds = %17, %5
  %25 = load %struct.evbuffer*, %struct.evbuffer** %7, align 8
  %26 = call i32 @EVBUFFER_LOCK(%struct.evbuffer* %25)
  %27 = load %struct.evbuffer_ptr*, %struct.evbuffer_ptr** %9, align 8
  %28 = icmp ne %struct.evbuffer_ptr* %27, null
  br i1 %28, label %29, label %69

29:                                               ; preds = %24
  %30 = load %struct.evbuffer_ptr*, %struct.evbuffer_ptr** %9, align 8
  %31 = getelementptr inbounds %struct.evbuffer_ptr, %struct.evbuffer_ptr* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %32, align 8
  store %struct.evbuffer_chain* %33, %struct.evbuffer_chain** %12, align 8
  %34 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %12, align 8
  %35 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.evbuffer_ptr*, %struct.evbuffer_ptr** %9, align 8
  %38 = getelementptr inbounds %struct.evbuffer_ptr, %struct.evbuffer_ptr* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = sub nsw i64 %36, %40
  store i64 %41, i64* %14, align 8
  store i32 1, i32* %13, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %65

44:                                               ; preds = %29
  %45 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %12, align 8
  %46 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %12, align 8
  %49 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %47, %50
  %52 = load %struct.evbuffer_ptr*, %struct.evbuffer_ptr** %9, align 8
  %53 = getelementptr inbounds %struct.evbuffer_ptr, %struct.evbuffer_ptr* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %51, %55
  %57 = inttoptr i64 %56 to i8*
  %58 = load %struct.evbuffer_iovec*, %struct.evbuffer_iovec** %10, align 8
  %59 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %58, i64 0
  %60 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %59, i32 0, i32 1
  store i8* %57, i8** %60, align 8
  %61 = load i64, i64* %14, align 8
  %62 = load %struct.evbuffer_iovec*, %struct.evbuffer_iovec** %10, align 8
  %63 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %62, i64 0
  %64 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %63, i32 0, i32 0
  store i64 %61, i64* %64, align 8
  br label %65

65:                                               ; preds = %44, %29
  %66 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %12, align 8
  %67 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %66, i32 0, i32 0
  %68 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %67, align 8
  store %struct.evbuffer_chain* %68, %struct.evbuffer_chain** %12, align 8
  br label %73

69:                                               ; preds = %24
  %70 = load %struct.evbuffer*, %struct.evbuffer** %7, align 8
  %71 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %70, i32 0, i32 1
  %72 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %71, align 8
  store %struct.evbuffer_chain* %72, %struct.evbuffer_chain** %12, align 8
  br label %73

73:                                               ; preds = %69, %65
  %74 = load i32, i32* %11, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %92

76:                                               ; preds = %73
  %77 = load i64, i64* %8, align 8
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %79, label %92

79:                                               ; preds = %76
  %80 = load %struct.evbuffer*, %struct.evbuffer** %7, align 8
  %81 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %8, align 8
  %83 = load %struct.evbuffer_ptr*, %struct.evbuffer_ptr** %9, align 8
  %84 = icmp ne %struct.evbuffer_ptr* %83, null
  br i1 %84, label %85, label %91

85:                                               ; preds = %79
  %86 = load %struct.evbuffer_ptr*, %struct.evbuffer_ptr** %9, align 8
  %87 = getelementptr inbounds %struct.evbuffer_ptr, %struct.evbuffer_ptr* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* %8, align 8
  %90 = sub nsw i64 %89, %88
  store i64 %90, i64* %8, align 8
  br label %91

91:                                               ; preds = %85, %79
  br label %92

92:                                               ; preds = %91, %76, %73
  br label %93

93:                                               ; preds = %135, %92
  %94 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %12, align 8
  %95 = icmp ne %struct.evbuffer_chain* %94, null
  br i1 %95, label %96, label %146

96:                                               ; preds = %93
  %97 = load i64, i64* %8, align 8
  %98 = icmp sge i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %96
  %100 = load i64, i64* %14, align 8
  %101 = load i64, i64* %8, align 8
  %102 = icmp sge i64 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %99
  br label %146

104:                                              ; preds = %99, %96
  %105 = load i32, i32* %13, align 4
  %106 = load i32, i32* %11, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %130

108:                                              ; preds = %104
  %109 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %12, align 8
  %110 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %12, align 8
  %113 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %111, %114
  %116 = inttoptr i64 %115 to i8*
  %117 = load %struct.evbuffer_iovec*, %struct.evbuffer_iovec** %10, align 8
  %118 = load i32, i32* %13, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %117, i64 %119
  %121 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %120, i32 0, i32 1
  store i8* %116, i8** %121, align 8
  %122 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %12, align 8
  %123 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.evbuffer_iovec*, %struct.evbuffer_iovec** %10, align 8
  %126 = load i32, i32* %13, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %125, i64 %127
  %129 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %128, i32 0, i32 0
  store i64 %124, i64* %129, align 8
  br label %135

130:                                              ; preds = %104
  %131 = load i64, i64* %8, align 8
  %132 = icmp slt i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %130
  br label %146

134:                                              ; preds = %130
  br label %135

135:                                              ; preds = %134, %108
  %136 = load i32, i32* %13, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %13, align 4
  %138 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %12, align 8
  %139 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* %14, align 8
  %142 = add nsw i64 %141, %140
  store i64 %142, i64* %14, align 8
  %143 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %12, align 8
  %144 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %143, i32 0, i32 0
  %145 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %144, align 8
  store %struct.evbuffer_chain* %145, %struct.evbuffer_chain** %12, align 8
  br label %93

146:                                              ; preds = %133, %103, %93
  %147 = load %struct.evbuffer*, %struct.evbuffer** %7, align 8
  %148 = call i32 @EVBUFFER_UNLOCK(%struct.evbuffer* %147)
  %149 = load i32, i32* %13, align 4
  store i32 %149, i32* %6, align 4
  br label %150

150:                                              ; preds = %146, %23
  %151 = load i32, i32* %6, align 4
  ret i32 %151
}

declare dso_local i32 @EVBUFFER_LOCK(%struct.evbuffer*) #1

declare dso_local i32 @EVBUFFER_UNLOCK(%struct.evbuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

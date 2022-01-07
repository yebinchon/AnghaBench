; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_buffer.c_evbuffer_peek.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_buffer.c_evbuffer_peek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer = type { i64, %struct.evbuffer_chain* }
%struct.evbuffer_chain = type { %struct.evbuffer_chain*, i64, i64, i64 }
%struct.evbuffer_ptr = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %struct.evbuffer_chain* }
%struct.evbuffer_iovec = type { i64, i64 }

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
  br label %148

24:                                               ; preds = %17, %5
  %25 = load %struct.evbuffer*, %struct.evbuffer** %7, align 8
  %26 = call i32 @EVBUFFER_LOCK(%struct.evbuffer* %25)
  %27 = load %struct.evbuffer_ptr*, %struct.evbuffer_ptr** %9, align 8
  %28 = icmp ne %struct.evbuffer_ptr* %27, null
  br i1 %28, label %29, label %68

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
  br i1 %43, label %44, label %64

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
  %57 = load %struct.evbuffer_iovec*, %struct.evbuffer_iovec** %10, align 8
  %58 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %57, i64 0
  %59 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %58, i32 0, i32 1
  store i64 %56, i64* %59, align 8
  %60 = load i64, i64* %14, align 8
  %61 = load %struct.evbuffer_iovec*, %struct.evbuffer_iovec** %10, align 8
  %62 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %61, i64 0
  %63 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %62, i32 0, i32 0
  store i64 %60, i64* %63, align 8
  br label %64

64:                                               ; preds = %44, %29
  %65 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %12, align 8
  %66 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %65, i32 0, i32 0
  %67 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %66, align 8
  store %struct.evbuffer_chain* %67, %struct.evbuffer_chain** %12, align 8
  br label %72

68:                                               ; preds = %24
  %69 = load %struct.evbuffer*, %struct.evbuffer** %7, align 8
  %70 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %69, i32 0, i32 1
  %71 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %70, align 8
  store %struct.evbuffer_chain* %71, %struct.evbuffer_chain** %12, align 8
  br label %72

72:                                               ; preds = %68, %64
  %73 = load i32, i32* %11, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %91

75:                                               ; preds = %72
  %76 = load i64, i64* %8, align 8
  %77 = icmp slt i64 %76, 0
  br i1 %77, label %78, label %91

78:                                               ; preds = %75
  %79 = load %struct.evbuffer*, %struct.evbuffer** %7, align 8
  %80 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %8, align 8
  %82 = load %struct.evbuffer_ptr*, %struct.evbuffer_ptr** %9, align 8
  %83 = icmp ne %struct.evbuffer_ptr* %82, null
  br i1 %83, label %84, label %90

84:                                               ; preds = %78
  %85 = load %struct.evbuffer_ptr*, %struct.evbuffer_ptr** %9, align 8
  %86 = getelementptr inbounds %struct.evbuffer_ptr, %struct.evbuffer_ptr* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %8, align 8
  %89 = sub nsw i64 %88, %87
  store i64 %89, i64* %8, align 8
  br label %90

90:                                               ; preds = %84, %78
  br label %91

91:                                               ; preds = %90, %75, %72
  br label %92

92:                                               ; preds = %133, %91
  %93 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %12, align 8
  %94 = icmp ne %struct.evbuffer_chain* %93, null
  br i1 %94, label %95, label %144

95:                                               ; preds = %92
  %96 = load i64, i64* %8, align 8
  %97 = icmp sge i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %95
  %99 = load i64, i64* %14, align 8
  %100 = load i64, i64* %8, align 8
  %101 = icmp sge i64 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  br label %144

103:                                              ; preds = %98, %95
  %104 = load i32, i32* %13, align 4
  %105 = load i32, i32* %11, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %128

107:                                              ; preds = %103
  %108 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %12, align 8
  %109 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %12, align 8
  %112 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %110, %113
  %115 = load %struct.evbuffer_iovec*, %struct.evbuffer_iovec** %10, align 8
  %116 = load i32, i32* %13, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %115, i64 %117
  %119 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %118, i32 0, i32 1
  store i64 %114, i64* %119, align 8
  %120 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %12, align 8
  %121 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.evbuffer_iovec*, %struct.evbuffer_iovec** %10, align 8
  %124 = load i32, i32* %13, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %123, i64 %125
  %127 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %126, i32 0, i32 0
  store i64 %122, i64* %127, align 8
  br label %133

128:                                              ; preds = %103
  %129 = load i64, i64* %8, align 8
  %130 = icmp slt i64 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %128
  br label %144

132:                                              ; preds = %128
  br label %133

133:                                              ; preds = %132, %107
  %134 = load i32, i32* %13, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %13, align 4
  %136 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %12, align 8
  %137 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* %14, align 8
  %140 = add nsw i64 %139, %138
  store i64 %140, i64* %14, align 8
  %141 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %12, align 8
  %142 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %141, i32 0, i32 0
  %143 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %142, align 8
  store %struct.evbuffer_chain* %143, %struct.evbuffer_chain** %12, align 8
  br label %92

144:                                              ; preds = %131, %102, %92
  %145 = load %struct.evbuffer*, %struct.evbuffer** %7, align 8
  %146 = call i32 @EVBUFFER_UNLOCK(%struct.evbuffer* %145)
  %147 = load i32, i32* %13, align 4
  store i32 %147, i32* %6, align 4
  br label %148

148:                                              ; preds = %144, %23
  %149 = load i32, i32* %6, align 4
  ret i32 %149
}

declare dso_local i32 @EVBUFFER_LOCK(%struct.evbuffer*) #1

declare dso_local i32 @EVBUFFER_UNLOCK(%struct.evbuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

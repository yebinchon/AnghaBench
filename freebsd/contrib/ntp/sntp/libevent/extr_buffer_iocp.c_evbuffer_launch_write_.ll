; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_buffer_iocp.c_evbuffer_launch_write_.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_buffer_iocp.c_evbuffer_launch_write_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer = type { i64, %struct.evbuffer_chain*, i64 }
%struct.evbuffer_chain = type { i64, i64, i64, %struct.evbuffer_chain* }
%struct.event_overlapped = type { i32 }
%struct.evbuffer_overlapped = type { i32, i32, %struct.TYPE_4__*, i32, %struct.evbuffer_chain*, i32 }
%struct.TYPE_4__ = type { i8*, i64 }

@MAX_WSABUFS = common dso_local global i32 0, align 4
@EVBUFFER_MEM_PINNED_W = common dso_local global i32 0, align 4
@WSA_IO_PENDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evbuffer_launch_write_(%struct.evbuffer* %0, i64 %1, %struct.event_overlapped* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.evbuffer*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.event_overlapped*, align 8
  %8 = alloca %struct.evbuffer_overlapped*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.evbuffer_chain*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_4__*, align 8
  %14 = alloca i32, align 4
  store %struct.evbuffer* %0, %struct.evbuffer** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.event_overlapped* %2, %struct.event_overlapped** %7, align 8
  %15 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %16 = call %struct.evbuffer_overlapped* @upcast_evbuffer(%struct.evbuffer* %15)
  store %struct.evbuffer_overlapped* %16, %struct.evbuffer_overlapped** %8, align 8
  store i32 -1, i32* %9, align 4
  %17 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %18 = icmp ne %struct.evbuffer* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %172

20:                                               ; preds = %3
  %21 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %22 = call i32 @EVBUFFER_LOCK(%struct.evbuffer* %21)
  %23 = load %struct.evbuffer_overlapped*, %struct.evbuffer_overlapped** %8, align 8
  %24 = getelementptr inbounds %struct.evbuffer_overlapped, %struct.evbuffer_overlapped* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @EVUTIL_ASSERT(i32 %28)
  %30 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %31 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %20
  %35 = load %struct.evbuffer_overlapped*, %struct.evbuffer_overlapped** %8, align 8
  %36 = getelementptr inbounds %struct.evbuffer_overlapped, %struct.evbuffer_overlapped* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34, %20
  br label %168

40:                                               ; preds = %34
  %41 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %42 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  store i32 0, i32* %9, align 4
  br label %168

46:                                               ; preds = %40
  %47 = load i64, i64* %6, align 8
  %48 = icmp ult i64 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %46
  %50 = load i64, i64* %6, align 8
  %51 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %52 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ugt i64 %50, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %49, %46
  %56 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %57 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %6, align 8
  br label %59

59:                                               ; preds = %55, %49
  br label %60

60:                                               ; preds = %59
  %61 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %62 = call i32 @evbuffer_freeze(%struct.evbuffer* %61, i32 1)
  %63 = load %struct.evbuffer_overlapped*, %struct.evbuffer_overlapped** %8, align 8
  %64 = getelementptr inbounds %struct.evbuffer_overlapped, %struct.evbuffer_overlapped* %63, i32 0, i32 4
  store %struct.evbuffer_chain* null, %struct.evbuffer_chain** %64, align 8
  %65 = load %struct.evbuffer_overlapped*, %struct.evbuffer_overlapped** %8, align 8
  %66 = getelementptr inbounds %struct.evbuffer_overlapped, %struct.evbuffer_overlapped* %65, i32 0, i32 1
  store i32 0, i32* %66, align 4
  %67 = load %struct.evbuffer_overlapped*, %struct.evbuffer_overlapped** %8, align 8
  %68 = getelementptr inbounds %struct.evbuffer_overlapped, %struct.evbuffer_overlapped* %67, i32 0, i32 2
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = call i32 @memset(%struct.TYPE_4__* %69, i32 0, i32 8)
  %71 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %72 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %71, i32 0, i32 1
  %73 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %72, align 8
  %74 = load %struct.evbuffer_overlapped*, %struct.evbuffer_overlapped** %8, align 8
  %75 = getelementptr inbounds %struct.evbuffer_overlapped, %struct.evbuffer_overlapped* %74, i32 0, i32 4
  store %struct.evbuffer_chain* %73, %struct.evbuffer_chain** %75, align 8
  store %struct.evbuffer_chain* %73, %struct.evbuffer_chain** %11, align 8
  store i32 0, i32* %10, align 4
  br label %76

76:                                               ; preds = %128, %60
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* @MAX_WSABUFS, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %11, align 8
  %82 = icmp ne %struct.evbuffer_chain* %81, null
  br label %83

83:                                               ; preds = %80, %76
  %84 = phi i1 [ false, %76 ], [ %82, %80 ]
  br i1 %84, label %85, label %134

85:                                               ; preds = %83
  %86 = load %struct.evbuffer_overlapped*, %struct.evbuffer_overlapped** %8, align 8
  %87 = getelementptr inbounds %struct.evbuffer_overlapped, %struct.evbuffer_overlapped* %86, i32 0, i32 2
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = load i32, i32* %10, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i64 %90
  store %struct.TYPE_4__* %91, %struct.TYPE_4__** %13, align 8
  %92 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %11, align 8
  %93 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %11, align 8
  %96 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = add nsw i64 %94, %97
  %99 = inttoptr i64 %98 to i8*
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  store i8* %99, i8** %101, align 8
  %102 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %11, align 8
  %103 = load i32, i32* @EVBUFFER_MEM_PINNED_W, align 4
  %104 = call i32 @evbuffer_chain_pin_(%struct.evbuffer_chain* %102, i32 %103)
  %105 = load i64, i64* %6, align 8
  %106 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %11, align 8
  %107 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp ugt i64 %105, %108
  br i1 %109, label %110, label %121

110:                                              ; preds = %85
  %111 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %11, align 8
  %112 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 1
  store i64 %113, i64* %115, align 8
  %116 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %11, align 8
  %117 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* %6, align 8
  %120 = sub i64 %119, %118
  store i64 %120, i64* %6, align 8
  br label %127

121:                                              ; preds = %85
  %122 = load i64, i64* %6, align 8
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 1
  store i64 %122, i64* %124, align 8
  %125 = load i32, i32* %10, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %10, align 4
  br label %134

127:                                              ; preds = %110
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %10, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %10, align 4
  %131 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %11, align 8
  %132 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %131, i32 0, i32 3
  %133 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %132, align 8
  store %struct.evbuffer_chain* %133, %struct.evbuffer_chain** %11, align 8
  br label %76

134:                                              ; preds = %121, %83
  %135 = load i32, i32* %10, align 4
  %136 = load %struct.evbuffer_overlapped*, %struct.evbuffer_overlapped** %8, align 8
  %137 = getelementptr inbounds %struct.evbuffer_overlapped, %struct.evbuffer_overlapped* %136, i32 0, i32 1
  store i32 %135, i32* %137, align 4
  %138 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %139 = call i32 @evbuffer_incref_(%struct.evbuffer* %138)
  %140 = load %struct.evbuffer_overlapped*, %struct.evbuffer_overlapped** %8, align 8
  %141 = getelementptr inbounds %struct.evbuffer_overlapped, %struct.evbuffer_overlapped* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.evbuffer_overlapped*, %struct.evbuffer_overlapped** %8, align 8
  %144 = getelementptr inbounds %struct.evbuffer_overlapped, %struct.evbuffer_overlapped* %143, i32 0, i32 2
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %144, align 8
  %146 = load i32, i32* %10, align 4
  %147 = load %struct.event_overlapped*, %struct.event_overlapped** %7, align 8
  %148 = getelementptr inbounds %struct.event_overlapped, %struct.event_overlapped* %147, i32 0, i32 0
  %149 = call i64 @WSASend(i32 %142, %struct.TYPE_4__* %145, i32 %146, i32* %12, i32 0, i32* %148, i32* null)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %165

151:                                              ; preds = %134
  %152 = call i32 (...) @WSAGetLastError()
  store i32 %152, i32* %14, align 4
  %153 = load i32, i32* %14, align 4
  %154 = load i32, i32* @WSA_IO_PENDING, align 4
  %155 = icmp ne i32 %153, %154
  br i1 %155, label %156, label %164

156:                                              ; preds = %151
  %157 = load %struct.evbuffer_overlapped*, %struct.evbuffer_overlapped** %8, align 8
  %158 = load i32, i32* @EVBUFFER_MEM_PINNED_W, align 4
  %159 = call i32 @pin_release(%struct.evbuffer_overlapped* %157, i32 %158)
  %160 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %161 = call i32 @evbuffer_unfreeze(%struct.evbuffer* %160, i32 1)
  %162 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %163 = call i32 @evbuffer_free(%struct.evbuffer* %162)
  br label %168

164:                                              ; preds = %151
  br label %165

165:                                              ; preds = %164, %134
  %166 = load %struct.evbuffer_overlapped*, %struct.evbuffer_overlapped** %8, align 8
  %167 = getelementptr inbounds %struct.evbuffer_overlapped, %struct.evbuffer_overlapped* %166, i32 0, i32 0
  store i32 1, i32* %167, align 8
  store i32 0, i32* %9, align 4
  br label %168

168:                                              ; preds = %165, %156, %45, %39
  %169 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %170 = call i32 @EVBUFFER_UNLOCK(%struct.evbuffer* %169)
  %171 = load i32, i32* %9, align 4
  store i32 %171, i32* %4, align 4
  br label %172

172:                                              ; preds = %168, %19
  %173 = load i32, i32* %4, align 4
  ret i32 %173
}

declare dso_local %struct.evbuffer_overlapped* @upcast_evbuffer(%struct.evbuffer*) #1

declare dso_local i32 @EVBUFFER_LOCK(%struct.evbuffer*) #1

declare dso_local i32 @EVUTIL_ASSERT(i32) #1

declare dso_local i32 @evbuffer_freeze(%struct.evbuffer*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @evbuffer_chain_pin_(%struct.evbuffer_chain*, i32) #1

declare dso_local i32 @evbuffer_incref_(%struct.evbuffer*) #1

declare dso_local i64 @WSASend(i32, %struct.TYPE_4__*, i32, i32*, i32, i32*, i32*) #1

declare dso_local i32 @WSAGetLastError(...) #1

declare dso_local i32 @pin_release(%struct.evbuffer_overlapped*, i32) #1

declare dso_local i32 @evbuffer_unfreeze(%struct.evbuffer*, i32) #1

declare dso_local i32 @evbuffer_free(%struct.evbuffer*) #1

declare dso_local i32 @EVBUFFER_UNLOCK(%struct.evbuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

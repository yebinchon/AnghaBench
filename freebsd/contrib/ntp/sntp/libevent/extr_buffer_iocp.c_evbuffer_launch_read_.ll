; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_buffer_iocp.c_evbuffer_launch_read_.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_buffer_iocp.c_evbuffer_launch_read_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer = type { i64 }
%struct.event_overlapped = type { i32 }
%struct.evbuffer_overlapped = type { i32, i32, i32*, i32, %struct.evbuffer_chain*, i32 }
%struct.evbuffer_chain = type { %struct.evbuffer_chain* }
%struct.evbuffer_iovec = type { i32 }

@MAX_WSABUFS = common dso_local global i32 0, align 4
@EVBUFFER_MEM_PINNED_R = common dso_local global i32 0, align 4
@WSA_IO_PENDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evbuffer_launch_read_(%struct.evbuffer* %0, i64 %1, %struct.event_overlapped* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.evbuffer*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.event_overlapped*, align 8
  %8 = alloca %struct.evbuffer_overlapped*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.evbuffer_chain*, align 8
  %14 = alloca %struct.evbuffer_chain**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.evbuffer* %0, %struct.evbuffer** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.event_overlapped* %2, %struct.event_overlapped** %7, align 8
  %21 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %22 = call %struct.evbuffer_overlapped* @upcast_evbuffer(%struct.evbuffer* %21)
  store %struct.evbuffer_overlapped* %22, %struct.evbuffer_overlapped** %8, align 8
  store i32 -1, i32* %9, align 4
  store i32 0, i32* %12, align 4
  store %struct.evbuffer_chain* null, %struct.evbuffer_chain** %13, align 8
  store i32 0, i32* %16, align 4
  %23 = load i32, i32* @MAX_WSABUFS, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %17, align 8
  %26 = alloca %struct.evbuffer_iovec, i64 %24, align 16
  store i64 %24, i64* %18, align 8
  %27 = load %struct.evbuffer_overlapped*, %struct.evbuffer_overlapped** %8, align 8
  %28 = icmp ne %struct.evbuffer_overlapped* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %151

30:                                               ; preds = %3
  %31 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %32 = call i32 @EVBUFFER_LOCK(%struct.evbuffer* %31)
  %33 = load %struct.evbuffer_overlapped*, %struct.evbuffer_overlapped** %8, align 8
  %34 = getelementptr inbounds %struct.evbuffer_overlapped, %struct.evbuffer_overlapped* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i32 @EVUTIL_ASSERT(i32 %38)
  %40 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %41 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %30
  %45 = load %struct.evbuffer_overlapped*, %struct.evbuffer_overlapped** %8, align 8
  %46 = getelementptr inbounds %struct.evbuffer_overlapped, %struct.evbuffer_overlapped* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44, %30
  br label %147

50:                                               ; preds = %44
  %51 = load %struct.evbuffer_overlapped*, %struct.evbuffer_overlapped** %8, align 8
  %52 = getelementptr inbounds %struct.evbuffer_overlapped, %struct.evbuffer_overlapped* %51, i32 0, i32 4
  store %struct.evbuffer_chain* null, %struct.evbuffer_chain** %52, align 8
  %53 = load %struct.evbuffer_overlapped*, %struct.evbuffer_overlapped** %8, align 8
  %54 = getelementptr inbounds %struct.evbuffer_overlapped, %struct.evbuffer_overlapped* %53, i32 0, i32 1
  store i32 0, i32* %54, align 4
  %55 = load %struct.evbuffer_overlapped*, %struct.evbuffer_overlapped** %8, align 8
  %56 = getelementptr inbounds %struct.evbuffer_overlapped, %struct.evbuffer_overlapped* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @memset(i32* %57, i32 0, i32 8)
  %59 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %60 = load i64, i64* %6, align 8
  %61 = load i32, i32* @MAX_WSABUFS, align 4
  %62 = call i32 @evbuffer_expand_fast_(%struct.evbuffer* %59, i64 %60, i32 %61)
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %64, label %65

64:                                               ; preds = %50
  br label %147

65:                                               ; preds = %50
  %66 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %67 = call i32 @evbuffer_freeze(%struct.evbuffer* %66, i32 0)
  %68 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %69 = load i64, i64* %6, align 8
  %70 = load i32, i32* @MAX_WSABUFS, align 4
  %71 = call i32 @evbuffer_read_setup_vecs_(%struct.evbuffer* %68, i64 %69, %struct.evbuffer_iovec* %26, i32 %70, %struct.evbuffer_chain*** %14, i32 1)
  store i32 %71, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %72

72:                                               ; preds = %87, %65
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %90

76:                                               ; preds = %72
  %77 = load %struct.evbuffer_overlapped*, %struct.evbuffer_overlapped** %8, align 8
  %78 = getelementptr inbounds %struct.evbuffer_overlapped, %struct.evbuffer_overlapped* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %26, i64 %84
  %86 = call i32 @WSABUF_FROM_EVBUFFER_IOV(i32* %82, %struct.evbuffer_iovec* %85)
  br label %87

87:                                               ; preds = %76
  %88 = load i32, i32* %10, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %10, align 4
  br label %72

90:                                               ; preds = %72
  %91 = load i32, i32* %11, align 4
  %92 = load %struct.evbuffer_overlapped*, %struct.evbuffer_overlapped** %8, align 8
  %93 = getelementptr inbounds %struct.evbuffer_overlapped, %struct.evbuffer_overlapped* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = load %struct.evbuffer_chain**, %struct.evbuffer_chain*** %14, align 8
  %95 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %94, align 8
  store %struct.evbuffer_chain* %95, %struct.evbuffer_chain** %13, align 8
  %96 = load %struct.evbuffer_overlapped*, %struct.evbuffer_overlapped** %8, align 8
  %97 = getelementptr inbounds %struct.evbuffer_overlapped, %struct.evbuffer_overlapped* %96, i32 0, i32 4
  store %struct.evbuffer_chain* %95, %struct.evbuffer_chain** %97, align 8
  store i32 0, i32* %12, align 4
  br label %98

98:                                               ; preds = %107, %90
  %99 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %13, align 8
  %100 = icmp ne %struct.evbuffer_chain* %99, null
  br i1 %100, label %101, label %111

101:                                              ; preds = %98
  %102 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %13, align 8
  %103 = load i32, i32* @EVBUFFER_MEM_PINNED_R, align 4
  %104 = call i32 @evbuffer_chain_pin_(%struct.evbuffer_chain* %102, i32 %103)
  %105 = load i32, i32* %12, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %12, align 4
  br label %107

107:                                              ; preds = %101
  %108 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %13, align 8
  %109 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %108, i32 0, i32 0
  %110 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %109, align 8
  store %struct.evbuffer_chain* %110, %struct.evbuffer_chain** %13, align 8
  br label %98

111:                                              ; preds = %98
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* %11, align 4
  %114 = icmp eq i32 %112, %113
  %115 = zext i1 %114 to i32
  %116 = call i32 @EVUTIL_ASSERT(i32 %115)
  %117 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %118 = call i32 @evbuffer_incref_(%struct.evbuffer* %117)
  %119 = load %struct.evbuffer_overlapped*, %struct.evbuffer_overlapped** %8, align 8
  %120 = getelementptr inbounds %struct.evbuffer_overlapped, %struct.evbuffer_overlapped* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.evbuffer_overlapped*, %struct.evbuffer_overlapped** %8, align 8
  %123 = getelementptr inbounds %struct.evbuffer_overlapped, %struct.evbuffer_overlapped* %122, i32 0, i32 2
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %11, align 4
  %126 = load %struct.event_overlapped*, %struct.event_overlapped** %7, align 8
  %127 = getelementptr inbounds %struct.event_overlapped, %struct.event_overlapped* %126, i32 0, i32 0
  %128 = call i64 @WSARecv(i32 %121, i32* %124, i32 %125, i32* %15, i32* %16, i32* %127, i32* null)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %144

130:                                              ; preds = %111
  %131 = call i32 (...) @WSAGetLastError()
  store i32 %131, i32* %20, align 4
  %132 = load i32, i32* %20, align 4
  %133 = load i32, i32* @WSA_IO_PENDING, align 4
  %134 = icmp ne i32 %132, %133
  br i1 %134, label %135, label %143

135:                                              ; preds = %130
  %136 = load %struct.evbuffer_overlapped*, %struct.evbuffer_overlapped** %8, align 8
  %137 = load i32, i32* @EVBUFFER_MEM_PINNED_R, align 4
  %138 = call i32 @pin_release(%struct.evbuffer_overlapped* %136, i32 %137)
  %139 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %140 = call i32 @evbuffer_unfreeze(%struct.evbuffer* %139, i32 0)
  %141 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %142 = call i32 @evbuffer_free(%struct.evbuffer* %141)
  br label %147

143:                                              ; preds = %130
  br label %144

144:                                              ; preds = %143, %111
  %145 = load %struct.evbuffer_overlapped*, %struct.evbuffer_overlapped** %8, align 8
  %146 = getelementptr inbounds %struct.evbuffer_overlapped, %struct.evbuffer_overlapped* %145, i32 0, i32 0
  store i32 1, i32* %146, align 8
  store i32 0, i32* %9, align 4
  br label %147

147:                                              ; preds = %144, %135, %64, %49
  %148 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %149 = call i32 @EVBUFFER_UNLOCK(%struct.evbuffer* %148)
  %150 = load i32, i32* %9, align 4
  store i32 %150, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %151

151:                                              ; preds = %147, %29
  %152 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %152)
  %153 = load i32, i32* %4, align 4
  ret i32 %153
}

declare dso_local %struct.evbuffer_overlapped* @upcast_evbuffer(%struct.evbuffer*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @EVBUFFER_LOCK(%struct.evbuffer*) #1

declare dso_local i32 @EVUTIL_ASSERT(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @evbuffer_expand_fast_(%struct.evbuffer*, i64, i32) #1

declare dso_local i32 @evbuffer_freeze(%struct.evbuffer*, i32) #1

declare dso_local i32 @evbuffer_read_setup_vecs_(%struct.evbuffer*, i64, %struct.evbuffer_iovec*, i32, %struct.evbuffer_chain***, i32) #1

declare dso_local i32 @WSABUF_FROM_EVBUFFER_IOV(i32*, %struct.evbuffer_iovec*) #1

declare dso_local i32 @evbuffer_chain_pin_(%struct.evbuffer_chain*, i32) #1

declare dso_local i32 @evbuffer_incref_(%struct.evbuffer*) #1

declare dso_local i64 @WSARecv(i32, i32*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @WSAGetLastError(...) #1

declare dso_local i32 @pin_release(%struct.evbuffer_overlapped*, i32) #1

declare dso_local i32 @evbuffer_unfreeze(%struct.evbuffer*, i32) #1

declare dso_local i32 @evbuffer_free(%struct.evbuffer*) #1

declare dso_local i32 @EVBUFFER_UNLOCK(%struct.evbuffer*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

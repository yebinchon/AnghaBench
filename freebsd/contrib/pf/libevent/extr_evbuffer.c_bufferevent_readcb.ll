; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/pf/libevent/extr_evbuffer.c_bufferevent_readcb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/pf/libevent/extr_evbuffer.c_bufferevent_readcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32, i32 (%struct.bufferevent*, i16, i32)*, i32, i32, i32 (%struct.bufferevent*, i32)*, %struct.evbuffer*, %struct.TYPE_2__ }
%struct.evbuffer = type { i32 }
%struct.TYPE_2__ = type { i32, i64 }

@EVBUFFER_READ = common dso_local global i16 0, align 2
@EV_TIMEOUT = common dso_local global i16 0, align 2
@EVBUFFER_TIMEOUT = common dso_local global i16 0, align 2
@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@EVBUFFER_ERROR = common dso_local global i16 0, align 2
@EVBUFFER_EOF = common dso_local global i16 0, align 2
@bufferevent_read_pressure_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i16, i8*)* @bufferevent_readcb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bufferevent_readcb(i32 %0, i16 signext %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca %struct.bufferevent*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.evbuffer*, align 8
  store i32 %0, i32* %4, align 4
  store i16 %1, i16* %5, align 2
  store i8* %2, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.bufferevent*
  store %struct.bufferevent* %14, %struct.bufferevent** %7, align 8
  store i32 0, i32* %8, align 4
  %15 = load i16, i16* @EVBUFFER_READ, align 2
  store i16 %15, i16* %9, align 2
  store i32 -1, i32* %11, align 4
  %16 = load i16, i16* %5, align 2
  %17 = sext i16 %16 to i32
  %18 = load i16, i16* @EV_TIMEOUT, align 2
  %19 = sext i16 %18 to i32
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %3
  %22 = load i16, i16* @EVBUFFER_TIMEOUT, align 2
  %23 = sext i16 %22 to i32
  %24 = load i16, i16* %9, align 2
  %25 = sext i16 %24 to i32
  %26 = or i32 %25, %23
  %27 = trunc i32 %26 to i16
  store i16 %27, i16* %9, align 2
  br label %150

28:                                               ; preds = %3
  %29 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %30 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %29, i32 0, i32 6
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %36 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %35, i32 0, i32 6
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %11, align 4
  br label %39

39:                                               ; preds = %34, %28
  %40 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %41 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %40, i32 0, i32 5
  %42 = load %struct.evbuffer*, %struct.evbuffer** %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @evbuffer_read(%struct.evbuffer* %42, i32 %43, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %64

48:                                               ; preds = %39
  %49 = load i64, i64* @errno, align 8
  %50 = load i64, i64* @EAGAIN, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = load i64, i64* @errno, align 8
  %54 = load i64, i64* @EINTR, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %52, %48
  br label %143

57:                                               ; preds = %52
  %58 = load i16, i16* @EVBUFFER_ERROR, align 2
  %59 = sext i16 %58 to i32
  %60 = load i16, i16* %9, align 2
  %61 = sext i16 %60 to i32
  %62 = or i32 %61, %59
  %63 = trunc i32 %62 to i16
  store i16 %63, i16* %9, align 2
  br label %75

64:                                               ; preds = %39
  %65 = load i32, i32* %8, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %64
  %68 = load i16, i16* @EVBUFFER_EOF, align 2
  %69 = sext i16 %68 to i32
  %70 = load i16, i16* %9, align 2
  %71 = sext i16 %70 to i32
  %72 = or i32 %71, %69
  %73 = trunc i32 %72 to i16
  store i16 %73, i16* %9, align 2
  br label %74

74:                                               ; preds = %67, %64
  br label %75

75:                                               ; preds = %74, %57
  %76 = load i32, i32* %8, align 4
  %77 = icmp sle i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  br label %150

79:                                               ; preds = %75
  %80 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %81 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %80, i32 0, i32 3
  %82 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %83 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @bufferevent_add(i32* %81, i32 %84)
  %86 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %87 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %86, i32 0, i32 5
  %88 = load %struct.evbuffer*, %struct.evbuffer** %87, align 8
  %89 = call i64 @EVBUFFER_LENGTH(%struct.evbuffer* %88)
  store i64 %89, i64* %10, align 8
  %90 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %91 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %90, i32 0, i32 6
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %79
  %96 = load i64, i64* %10, align 8
  %97 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %98 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %97, i32 0, i32 6
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp ult i64 %96, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %95
  br label %160

103:                                              ; preds = %95, %79
  %104 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %105 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %104, i32 0, i32 6
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %128

109:                                              ; preds = %103
  %110 = load i64, i64* %10, align 8
  %111 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %112 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %111, i32 0, i32 6
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = sext i32 %114 to i64
  %116 = icmp ugt i64 %110, %115
  br i1 %116, label %117, label %128

117:                                              ; preds = %109
  %118 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %119 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %118, i32 0, i32 5
  %120 = load %struct.evbuffer*, %struct.evbuffer** %119, align 8
  store %struct.evbuffer* %120, %struct.evbuffer** %12, align 8
  %121 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %122 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %121, i32 0, i32 3
  %123 = call i32 @event_del(i32* %122)
  %124 = load %struct.evbuffer*, %struct.evbuffer** %12, align 8
  %125 = load i32, i32* @bufferevent_read_pressure_cb, align 4
  %126 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %127 = call i32 @evbuffer_setcb(%struct.evbuffer* %124, i32 %125, %struct.bufferevent* %126)
  br label %160

128:                                              ; preds = %109, %103
  %129 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %130 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %129, i32 0, i32 4
  %131 = load i32 (%struct.bufferevent*, i32)*, i32 (%struct.bufferevent*, i32)** %130, align 8
  %132 = icmp ne i32 (%struct.bufferevent*, i32)* %131, null
  br i1 %132, label %133, label %142

133:                                              ; preds = %128
  %134 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %135 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %134, i32 0, i32 4
  %136 = load i32 (%struct.bufferevent*, i32)*, i32 (%struct.bufferevent*, i32)** %135, align 8
  %137 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %138 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %139 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i32 %136(%struct.bufferevent* %137, i32 %140)
  br label %142

142:                                              ; preds = %133, %128
  br label %160

143:                                              ; preds = %56
  %144 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %145 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %144, i32 0, i32 3
  %146 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %147 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @bufferevent_add(i32* %145, i32 %148)
  br label %160

150:                                              ; preds = %78, %21
  %151 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %152 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %151, i32 0, i32 1
  %153 = load i32 (%struct.bufferevent*, i16, i32)*, i32 (%struct.bufferevent*, i16, i32)** %152, align 8
  %154 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %155 = load i16, i16* %9, align 2
  %156 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %157 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = call i32 %153(%struct.bufferevent* %154, i16 signext %155, i32 %158)
  br label %160

160:                                              ; preds = %150, %143, %142, %117, %102
  ret void
}

declare dso_local i32 @evbuffer_read(%struct.evbuffer*, i32, i32) #1

declare dso_local i32 @bufferevent_add(i32*, i32) #1

declare dso_local i64 @EVBUFFER_LENGTH(%struct.evbuffer*) #1

declare dso_local i32 @event_del(i32*) #1

declare dso_local i32 @evbuffer_setcb(%struct.evbuffer*, i32, %struct.bufferevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

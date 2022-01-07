; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/pf/libevent/extr_evbuffer.c_bufferevent_writecb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/pf/libevent/extr_evbuffer.c_bufferevent_writecb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32, i32 (%struct.bufferevent*, i16, i32)*, i32, i32, i32, i32 (%struct.bufferevent*, i32)*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@EVBUFFER_WRITE = common dso_local global i16 0, align 2
@EV_TIMEOUT = common dso_local global i16 0, align 2
@EVBUFFER_TIMEOUT = common dso_local global i16 0, align 2
@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@EINPROGRESS = common dso_local global i64 0, align 8
@EVBUFFER_ERROR = common dso_local global i16 0, align 2
@EVBUFFER_EOF = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i16, i8*)* @bufferevent_writecb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bufferevent_writecb(i32 %0, i16 signext %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca %struct.bufferevent*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  store i32 %0, i32* %4, align 4
  store i16 %1, i16* %5, align 2
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.bufferevent*
  store %struct.bufferevent* %11, %struct.bufferevent** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load i16, i16* @EVBUFFER_WRITE, align 2
  store i16 %12, i16* %9, align 2
  %13 = load i16, i16* %5, align 2
  %14 = sext i16 %13 to i32
  %15 = load i16, i16* @EV_TIMEOUT, align 2
  %16 = sext i16 %15 to i32
  %17 = icmp eq i32 %14, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %3
  %19 = load i16, i16* @EVBUFFER_TIMEOUT, align 2
  %20 = sext i16 %19 to i32
  %21 = load i16, i16* %9, align 2
  %22 = sext i16 %21 to i32
  %23 = or i32 %22, %20
  %24 = trunc i32 %23 to i16
  store i16 %24, i16* %9, align 2
  br label %127

25:                                               ; preds = %3
  %26 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %27 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @EVBUFFER_LENGTH(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %75

31:                                               ; preds = %25
  %32 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %33 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @evbuffer_write(i32 %34, i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %59

39:                                               ; preds = %31
  %40 = load i64, i64* @errno, align 8
  %41 = load i64, i64* @EAGAIN, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %51, label %43

43:                                               ; preds = %39
  %44 = load i64, i64* @errno, align 8
  %45 = load i64, i64* @EINTR, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = load i64, i64* @errno, align 8
  %49 = load i64, i64* @EINPROGRESS, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %47, %43, %39
  br label %113

52:                                               ; preds = %47
  %53 = load i16, i16* @EVBUFFER_ERROR, align 2
  %54 = sext i16 %53 to i32
  %55 = load i16, i16* %9, align 2
  %56 = sext i16 %55 to i32
  %57 = or i32 %56, %54
  %58 = trunc i32 %57 to i16
  store i16 %58, i16* %9, align 2
  br label %70

59:                                               ; preds = %31
  %60 = load i32, i32* %8, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %59
  %63 = load i16, i16* @EVBUFFER_EOF, align 2
  %64 = sext i16 %63 to i32
  %65 = load i16, i16* %9, align 2
  %66 = sext i16 %65 to i32
  %67 = or i32 %66, %64
  %68 = trunc i32 %67 to i16
  store i16 %68, i16* %9, align 2
  br label %69

69:                                               ; preds = %62, %59
  br label %70

70:                                               ; preds = %69, %52
  %71 = load i32, i32* %8, align 4
  %72 = icmp sle i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  br label %127

74:                                               ; preds = %70
  br label %75

75:                                               ; preds = %74, %25
  %76 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %77 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = call i64 @EVBUFFER_LENGTH(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %75
  %82 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %83 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %82, i32 0, i32 3
  %84 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %85 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @bufferevent_add(i32* %83, i32 %86)
  br label %88

88:                                               ; preds = %81, %75
  %89 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %90 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %89, i32 0, i32 5
  %91 = load i32 (%struct.bufferevent*, i32)*, i32 (%struct.bufferevent*, i32)** %90, align 8
  %92 = icmp ne i32 (%struct.bufferevent*, i32)* %91, null
  br i1 %92, label %93, label %112

93:                                               ; preds = %88
  %94 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %95 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = call i64 @EVBUFFER_LENGTH(i32 %96)
  %98 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %99 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %98, i32 0, i32 6
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp sle i64 %97, %101
  br i1 %102, label %103, label %112

103:                                              ; preds = %93
  %104 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %105 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %104, i32 0, i32 5
  %106 = load i32 (%struct.bufferevent*, i32)*, i32 (%struct.bufferevent*, i32)** %105, align 8
  %107 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %108 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %109 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 %106(%struct.bufferevent* %107, i32 %110)
  br label %112

112:                                              ; preds = %103, %93, %88
  br label %137

113:                                              ; preds = %51
  %114 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %115 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = call i64 @EVBUFFER_LENGTH(i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %113
  %120 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %121 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %120, i32 0, i32 3
  %122 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %123 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @bufferevent_add(i32* %121, i32 %124)
  br label %126

126:                                              ; preds = %119, %113
  br label %137

127:                                              ; preds = %73, %18
  %128 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %129 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %128, i32 0, i32 1
  %130 = load i32 (%struct.bufferevent*, i16, i32)*, i32 (%struct.bufferevent*, i16, i32)** %129, align 8
  %131 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %132 = load i16, i16* %9, align 2
  %133 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %134 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i32 %130(%struct.bufferevent* %131, i16 signext %132, i32 %135)
  br label %137

137:                                              ; preds = %127, %126, %112
  ret void
}

declare dso_local i64 @EVBUFFER_LENGTH(i32) #1

declare dso_local i32 @evbuffer_write(i32, i32) #1

declare dso_local i32 @bufferevent_add(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

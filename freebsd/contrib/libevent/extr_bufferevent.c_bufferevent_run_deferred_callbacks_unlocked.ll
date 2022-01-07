; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_bufferevent.c_bufferevent_run_deferred_callbacks_unlocked.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_bufferevent.c_bufferevent_run_deferred_callbacks_unlocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_callback = type { i32 }
%struct.bufferevent_private = type { i16, i32, i64, i64, %struct.bufferevent }
%struct.bufferevent = type { i8*, i32 (%struct.bufferevent*, i16, i8*)*, i32 (%struct.bufferevent*, i8*)*, i32 (%struct.bufferevent*, i8*)* }

@BEV_EVENT_CONNECTED = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.event_callback*, i8*)* @bufferevent_run_deferred_callbacks_unlocked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bufferevent_run_deferred_callbacks_unlocked(%struct.event_callback* %0, i8* %1) #0 {
  %3 = alloca %struct.event_callback*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.bufferevent_private*, align 8
  %6 = alloca %struct.bufferevent*, align 8
  %7 = alloca i32 (%struct.bufferevent*, i16, i8*)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32 (%struct.bufferevent*, i8*)*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32 (%struct.bufferevent*, i8*)*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32 (%struct.bufferevent*, i16, i8*)*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i16, align 2
  %16 = alloca i32, align 4
  store %struct.event_callback* %0, %struct.event_callback** %3, align 8
  store i8* %1, i8** %4, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = bitcast i8* %17 to %struct.bufferevent_private*
  store %struct.bufferevent_private* %18, %struct.bufferevent_private** %5, align 8
  %19 = load %struct.bufferevent_private*, %struct.bufferevent_private** %5, align 8
  %20 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %19, i32 0, i32 4
  store %struct.bufferevent* %20, %struct.bufferevent** %6, align 8
  %21 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %22 = call i32 @BEV_LOCK(%struct.bufferevent* %21)
  %23 = load %struct.bufferevent_private*, %struct.bufferevent_private** %5, align 8
  %24 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %23, i32 0, i32 0
  %25 = load i16, i16* %24, align 8
  %26 = sext i16 %25 to i32
  %27 = load i16, i16* @BEV_EVENT_CONNECTED, align 2
  %28 = sext i16 %27 to i32
  %29 = and i32 %26, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %63

31:                                               ; preds = %2
  %32 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %33 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %32, i32 0, i32 1
  %34 = load i32 (%struct.bufferevent*, i16, i8*)*, i32 (%struct.bufferevent*, i16, i8*)** %33, align 8
  %35 = icmp ne i32 (%struct.bufferevent*, i16, i8*)* %34, null
  br i1 %35, label %36, label %63

36:                                               ; preds = %31
  %37 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %38 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %37, i32 0, i32 1
  %39 = load i32 (%struct.bufferevent*, i16, i8*)*, i32 (%struct.bufferevent*, i16, i8*)** %38, align 8
  store i32 (%struct.bufferevent*, i16, i8*)* %39, i32 (%struct.bufferevent*, i16, i8*)** %7, align 8
  %40 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %41 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %8, align 8
  %43 = load i16, i16* @BEV_EVENT_CONNECTED, align 2
  %44 = sext i16 %43 to i32
  %45 = xor i32 %44, -1
  %46 = load %struct.bufferevent_private*, %struct.bufferevent_private** %5, align 8
  %47 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %46, i32 0, i32 0
  %48 = load i16, i16* %47, align 8
  %49 = sext i16 %48 to i32
  %50 = and i32 %49, %45
  %51 = trunc i32 %50 to i16
  store i16 %51, i16* %47, align 8
  br label %52

52:                                               ; preds = %36
  %53 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %54 = call i32 (%struct.bufferevent*, ...) bitcast (i32 (...)* @BEV_UNLOCK to i32 (%struct.bufferevent*, ...)*)(%struct.bufferevent* %53)
  %55 = load i32 (%struct.bufferevent*, i16, i8*)*, i32 (%struct.bufferevent*, i16, i8*)** %7, align 8
  %56 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %57 = load i16, i16* @BEV_EVENT_CONNECTED, align 2
  %58 = load i8*, i8** %8, align 8
  %59 = call i32 %55(%struct.bufferevent* %56, i16 signext %57, i8* %58)
  %60 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %61 = call i32 @BEV_LOCK(%struct.bufferevent* %60)
  br label %62

62:                                               ; preds = %52
  br label %63

63:                                               ; preds = %62, %31, %2
  %64 = load %struct.bufferevent_private*, %struct.bufferevent_private** %5, align 8
  %65 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %92

68:                                               ; preds = %63
  %69 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %70 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %69, i32 0, i32 3
  %71 = load i32 (%struct.bufferevent*, i8*)*, i32 (%struct.bufferevent*, i8*)** %70, align 8
  %72 = icmp ne i32 (%struct.bufferevent*, i8*)* %71, null
  br i1 %72, label %73, label %92

73:                                               ; preds = %68
  %74 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %75 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %74, i32 0, i32 3
  %76 = load i32 (%struct.bufferevent*, i8*)*, i32 (%struct.bufferevent*, i8*)** %75, align 8
  store i32 (%struct.bufferevent*, i8*)* %76, i32 (%struct.bufferevent*, i8*)** %9, align 8
  %77 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %78 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  store i8* %79, i8** %10, align 8
  %80 = load %struct.bufferevent_private*, %struct.bufferevent_private** %5, align 8
  %81 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %80, i32 0, i32 3
  store i64 0, i64* %81, align 8
  br label %82

82:                                               ; preds = %73
  %83 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %84 = call i32 (%struct.bufferevent*, ...) bitcast (i32 (...)* @BEV_UNLOCK to i32 (%struct.bufferevent*, ...)*)(%struct.bufferevent* %83)
  %85 = load i32 (%struct.bufferevent*, i8*)*, i32 (%struct.bufferevent*, i8*)** %9, align 8
  %86 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %87 = load i8*, i8** %10, align 8
  %88 = call i32 %85(%struct.bufferevent* %86, i8* %87)
  %89 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %90 = call i32 @BEV_LOCK(%struct.bufferevent* %89)
  br label %91

91:                                               ; preds = %82
  br label %92

92:                                               ; preds = %91, %68, %63
  %93 = load %struct.bufferevent_private*, %struct.bufferevent_private** %5, align 8
  %94 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %121

97:                                               ; preds = %92
  %98 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %99 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %98, i32 0, i32 2
  %100 = load i32 (%struct.bufferevent*, i8*)*, i32 (%struct.bufferevent*, i8*)** %99, align 8
  %101 = icmp ne i32 (%struct.bufferevent*, i8*)* %100, null
  br i1 %101, label %102, label %121

102:                                              ; preds = %97
  %103 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %104 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %103, i32 0, i32 2
  %105 = load i32 (%struct.bufferevent*, i8*)*, i32 (%struct.bufferevent*, i8*)** %104, align 8
  store i32 (%struct.bufferevent*, i8*)* %105, i32 (%struct.bufferevent*, i8*)** %11, align 8
  %106 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %107 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  store i8* %108, i8** %12, align 8
  %109 = load %struct.bufferevent_private*, %struct.bufferevent_private** %5, align 8
  %110 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %109, i32 0, i32 2
  store i64 0, i64* %110, align 8
  br label %111

111:                                              ; preds = %102
  %112 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %113 = call i32 (%struct.bufferevent*, ...) bitcast (i32 (...)* @BEV_UNLOCK to i32 (%struct.bufferevent*, ...)*)(%struct.bufferevent* %112)
  %114 = load i32 (%struct.bufferevent*, i8*)*, i32 (%struct.bufferevent*, i8*)** %11, align 8
  %115 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %116 = load i8*, i8** %12, align 8
  %117 = call i32 %114(%struct.bufferevent* %115, i8* %116)
  %118 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %119 = call i32 @BEV_LOCK(%struct.bufferevent* %118)
  br label %120

120:                                              ; preds = %111
  br label %121

121:                                              ; preds = %120, %97, %92
  %122 = load %struct.bufferevent_private*, %struct.bufferevent_private** %5, align 8
  %123 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %122, i32 0, i32 0
  %124 = load i16, i16* %123, align 8
  %125 = sext i16 %124 to i32
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %162

127:                                              ; preds = %121
  %128 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %129 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %128, i32 0, i32 1
  %130 = load i32 (%struct.bufferevent*, i16, i8*)*, i32 (%struct.bufferevent*, i16, i8*)** %129, align 8
  %131 = icmp ne i32 (%struct.bufferevent*, i16, i8*)* %130, null
  br i1 %131, label %132, label %162

132:                                              ; preds = %127
  %133 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %134 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %133, i32 0, i32 1
  %135 = load i32 (%struct.bufferevent*, i16, i8*)*, i32 (%struct.bufferevent*, i16, i8*)** %134, align 8
  store i32 (%struct.bufferevent*, i16, i8*)* %135, i32 (%struct.bufferevent*, i16, i8*)** %13, align 8
  %136 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %137 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %136, i32 0, i32 0
  %138 = load i8*, i8** %137, align 8
  store i8* %138, i8** %14, align 8
  %139 = load %struct.bufferevent_private*, %struct.bufferevent_private** %5, align 8
  %140 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %139, i32 0, i32 0
  %141 = load i16, i16* %140, align 8
  store i16 %141, i16* %15, align 2
  %142 = load %struct.bufferevent_private*, %struct.bufferevent_private** %5, align 8
  %143 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  store i32 %144, i32* %16, align 4
  %145 = load %struct.bufferevent_private*, %struct.bufferevent_private** %5, align 8
  %146 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %145, i32 0, i32 0
  store i16 0, i16* %146, align 8
  %147 = load %struct.bufferevent_private*, %struct.bufferevent_private** %5, align 8
  %148 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %147, i32 0, i32 1
  store i32 0, i32* %148, align 4
  %149 = load i32, i32* %16, align 4
  %150 = call i32 @EVUTIL_SET_SOCKET_ERROR(i32 %149)
  br label %151

151:                                              ; preds = %132
  %152 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %153 = call i32 (%struct.bufferevent*, ...) bitcast (i32 (...)* @BEV_UNLOCK to i32 (%struct.bufferevent*, ...)*)(%struct.bufferevent* %152)
  %154 = load i32 (%struct.bufferevent*, i16, i8*)*, i32 (%struct.bufferevent*, i16, i8*)** %13, align 8
  %155 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %156 = load i16, i16* %15, align 2
  %157 = load i8*, i8** %14, align 8
  %158 = call i32 %154(%struct.bufferevent* %155, i16 signext %156, i8* %157)
  %159 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %160 = call i32 @BEV_LOCK(%struct.bufferevent* %159)
  br label %161

161:                                              ; preds = %151
  br label %162

162:                                              ; preds = %161, %127, %121
  %163 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %164 = call i32 @bufferevent_decref_and_unlock_(%struct.bufferevent* %163)
  ret void
}

declare dso_local i32 @BEV_LOCK(%struct.bufferevent*) #1

declare dso_local i32 @BEV_UNLOCK(...) #1

declare dso_local i32 @EVUTIL_SET_SOCKET_ERROR(i32) #1

declare dso_local i32 @bufferevent_decref_and_unlock_(%struct.bufferevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

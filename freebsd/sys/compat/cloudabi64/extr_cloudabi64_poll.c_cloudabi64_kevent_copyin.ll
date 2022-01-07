; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/cloudabi64/extr_cloudabi64_poll.c_cloudabi64_kevent_copyin.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/cloudabi64/extr_cloudabi64_poll.c_cloudabi64_kevent_copyin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kevent = type { i32, i32, i32, i32, i64, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i64, i32, i32 }
%struct.cloudabi64_kevent_args = type { i32 }

@EVFILT_TIMER = common dso_local global i32 0, align 4
@NOTE_NSECONDS = common dso_local global i32 0, align 4
@CLOUDABI_SUBSCRIPTION_CLOCK_ABSTIME = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@INTPTR_MAX = common dso_local global i64 0, align 8
@EVFILT_READ = common dso_local global i32 0, align 4
@NOTE_FILE_POLL = common dso_local global i32 0, align 4
@EVFILT_WRITE = common dso_local global i32 0, align 4
@EVFILT_PROCDESC = common dso_local global i32 0, align 4
@NOTE_EXIT = common dso_local global i32 0, align 4
@EV_ADD = common dso_local global i32 0, align 4
@EV_ONESHOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.kevent*, i32)* @cloudabi64_kevent_copyin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cloudabi64_kevent_copyin(i8* %0, %struct.kevent* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.kevent*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__, align 8
  %9 = alloca %struct.cloudabi64_kevent_args*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.kevent* %1, %struct.kevent** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.cloudabi64_kevent_args*
  store %struct.cloudabi64_kevent_args* %13, %struct.cloudabi64_kevent_args** %9, align 8
  br label %14

14:                                               ; preds = %135, %3
  %15 = load i32, i32* %7, align 4
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* %7, align 4
  %17 = icmp sgt i32 %15, 0
  br i1 %17, label %18, label %143

18:                                               ; preds = %14
  %19 = load %struct.cloudabi64_kevent_args*, %struct.cloudabi64_kevent_args** %9, align 8
  %20 = getelementptr inbounds %struct.cloudabi64_kevent_args, %struct.cloudabi64_kevent_args* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  %23 = call i32 @copyin(i32 %21, %struct.TYPE_9__* %8, i32 48)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load i32, i32* %11, align 4
  store i32 %27, i32* %4, align 4
  br label %144

28:                                               ; preds = %18
  %29 = load %struct.kevent*, %struct.kevent** %6, align 8
  %30 = call i32 @memset(%struct.kevent* %29, i32 0, i32 32)
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @TO_PTR(i32 %32)
  %34 = load %struct.kevent*, %struct.kevent** %6, align 8
  %35 = getelementptr inbounds %struct.kevent, %struct.kevent* %34, i32 0, i32 5
  store i32 %33, i32* %35, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  switch i32 %37, label %135 [
    i32 131, label %38
    i32 130, label %102
    i32 129, label %114
    i32 128, label %123
  ]

38:                                               ; preds = %28
  %39 = load i32, i32* @EVFILT_TIMER, align 4
  %40 = load %struct.kevent*, %struct.kevent** %6, align 8
  %41 = getelementptr inbounds %struct.kevent, %struct.kevent* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.kevent*, %struct.kevent** %6, align 8
  %46 = getelementptr inbounds %struct.kevent, %struct.kevent* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* @NOTE_NSECONDS, align 4
  %48 = load %struct.kevent*, %struct.kevent** %6, align 8
  %49 = getelementptr inbounds %struct.kevent, %struct.kevent* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @CLOUDABI_SUBSCRIPTION_CLOCK_ABSTIME, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %86

56:                                               ; preds = %38
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp sgt i64 %59, 0
  br i1 %60, label %61, label %86

61:                                               ; preds = %56
  %62 = load i32, i32* @curthread, align 4
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @cloudabi_clock_time_get(i32 %62, i32 %65, i64* %10)
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %61
  %70 = load i32, i32* %11, align 4
  store i32 %70, i32* %4, align 4
  br label %144

71:                                               ; preds = %61
  %72 = load i64, i64* %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp sgt i64 %72, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  br label %84

78:                                               ; preds = %71
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %10, align 8
  %83 = sub nsw i64 %81, %82
  br label %84

84:                                               ; preds = %78, %77
  %85 = phi i64 [ 0, %77 ], [ %83, %78 ]
  store i64 %85, i64* %10, align 8
  br label %90

86:                                               ; preds = %56, %38
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  store i64 %89, i64* %10, align 8
  br label %90

90:                                               ; preds = %86, %84
  %91 = load i64, i64* %10, align 8
  %92 = load i64, i64* @INTPTR_MAX, align 8
  %93 = icmp sgt i64 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = load i64, i64* @INTPTR_MAX, align 8
  br label %98

96:                                               ; preds = %90
  %97 = load i64, i64* %10, align 8
  br label %98

98:                                               ; preds = %96, %94
  %99 = phi i64 [ %95, %94 ], [ %97, %96 ]
  %100 = load %struct.kevent*, %struct.kevent** %6, align 8
  %101 = getelementptr inbounds %struct.kevent, %struct.kevent* %100, i32 0, i32 4
  store i64 %99, i64* %101, align 8
  br label %135

102:                                              ; preds = %28
  %103 = load i32, i32* @EVFILT_READ, align 4
  %104 = load %struct.kevent*, %struct.kevent** %6, align 8
  %105 = getelementptr inbounds %struct.kevent, %struct.kevent* %104, i32 0, i32 3
  store i32 %103, i32* %105, align 4
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.kevent*, %struct.kevent** %6, align 8
  %110 = getelementptr inbounds %struct.kevent, %struct.kevent* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 8
  %111 = load i32, i32* @NOTE_FILE_POLL, align 4
  %112 = load %struct.kevent*, %struct.kevent** %6, align 8
  %113 = getelementptr inbounds %struct.kevent, %struct.kevent* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  br label %135

114:                                              ; preds = %28
  %115 = load i32, i32* @EVFILT_WRITE, align 4
  %116 = load %struct.kevent*, %struct.kevent** %6, align 8
  %117 = getelementptr inbounds %struct.kevent, %struct.kevent* %116, i32 0, i32 3
  store i32 %115, i32* %117, align 4
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.kevent*, %struct.kevent** %6, align 8
  %122 = getelementptr inbounds %struct.kevent, %struct.kevent* %121, i32 0, i32 2
  store i32 %120, i32* %122, align 8
  br label %135

123:                                              ; preds = %28
  %124 = load i32, i32* @EVFILT_PROCDESC, align 4
  %125 = load %struct.kevent*, %struct.kevent** %6, align 8
  %126 = getelementptr inbounds %struct.kevent, %struct.kevent* %125, i32 0, i32 3
  store i32 %124, i32* %126, align 4
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.kevent*, %struct.kevent** %6, align 8
  %131 = getelementptr inbounds %struct.kevent, %struct.kevent* %130, i32 0, i32 2
  store i32 %129, i32* %131, align 8
  %132 = load i32, i32* @NOTE_EXIT, align 4
  %133 = load %struct.kevent*, %struct.kevent** %6, align 8
  %134 = getelementptr inbounds %struct.kevent, %struct.kevent* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 4
  br label %135

135:                                              ; preds = %28, %123, %114, %102, %98
  %136 = load i32, i32* @EV_ADD, align 4
  %137 = load i32, i32* @EV_ONESHOT, align 4
  %138 = or i32 %136, %137
  %139 = load %struct.kevent*, %struct.kevent** %6, align 8
  %140 = getelementptr inbounds %struct.kevent, %struct.kevent* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 8
  %141 = load %struct.kevent*, %struct.kevent** %6, align 8
  %142 = getelementptr inbounds %struct.kevent, %struct.kevent* %141, i32 1
  store %struct.kevent* %142, %struct.kevent** %6, align 8
  br label %14

143:                                              ; preds = %14
  store i32 0, i32* %4, align 4
  br label %144

144:                                              ; preds = %143, %69, %26
  %145 = load i32, i32* %4, align 4
  ret i32 %145
}

declare dso_local i32 @copyin(i32, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @memset(%struct.kevent*, i32, i32) #1

declare dso_local i32 @TO_PTR(i32) #1

declare dso_local i32 @cloudabi_clock_time_get(i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/cloudabi32/extr_cloudabi32_poll.c_cloudabi32_kevent_copyout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/cloudabi32/extr_cloudabi32_poll.c_cloudabi32_kevent_copyout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kevent = type { i32, i32, i32, i64 }
%struct.TYPE_8__ = type { i64, i32, %struct.TYPE_7__, %struct.TYPE_6__, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.cloudabi32_kevent_args = type { i32 }

@CLOUDABI_EVENTTYPE_CLOCK = common dso_local global i32 0, align 4
@CLOUDABI_EVENTTYPE_FD_READ = common dso_local global i32 0, align 4
@CLOUDABI_EVENTTYPE_FD_WRITE = common dso_local global i32 0, align 4
@CLOUDABI_EVENTTYPE_PROC_TERMINATE = common dso_local global i32 0, align 4
@EV_ERROR = common dso_local global i32 0, align 4
@EV_EOF = common dso_local global i32 0, align 4
@CLOUDABI_EVENT_FD_READWRITE_HANGUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.kevent*, i32)* @cloudabi32_kevent_copyout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cloudabi32_kevent_copyout(i8* %0, %struct.kevent* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.kevent*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__, align 8
  %9 = alloca %struct.cloudabi32_kevent_args*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.kevent* %1, %struct.kevent** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.cloudabi32_kevent_args*
  store %struct.cloudabi32_kevent_args* %12, %struct.cloudabi32_kevent_args** %9, align 8
  br label %13

13:                                               ; preds = %113, %3
  %14 = load i32, i32* %7, align 4
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* %7, align 4
  %16 = icmp sgt i32 %14, 0
  br i1 %16, label %17, label %114

17:                                               ; preds = %13
  %18 = call i32 @memset(%struct.TYPE_8__* %8, i32 0, i32 32)
  %19 = load %struct.kevent*, %struct.kevent** %6, align 8
  %20 = getelementptr inbounds %struct.kevent, %struct.kevent* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  store i64 %21, i64* %22, align 8
  %23 = load %struct.kevent*, %struct.kevent** %6, align 8
  %24 = getelementptr inbounds %struct.kevent, %struct.kevent* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %38 [
    i32 129, label %26
    i32 130, label %29
    i32 128, label %32
    i32 131, label %35
  ]

26:                                               ; preds = %17
  %27 = load i32, i32* @CLOUDABI_EVENTTYPE_CLOCK, align 4
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 4
  store i32 %27, i32* %28, align 4
  br label %38

29:                                               ; preds = %17
  %30 = load i32, i32* @CLOUDABI_EVENTTYPE_FD_READ, align 4
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 4
  store i32 %30, i32* %31, align 4
  br label %38

32:                                               ; preds = %17
  %33 = load i32, i32* @CLOUDABI_EVENTTYPE_FD_WRITE, align 4
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 4
  store i32 %33, i32* %34, align 4
  br label %38

35:                                               ; preds = %17
  %36 = load i32, i32* @CLOUDABI_EVENTTYPE_PROC_TERMINATE, align 4
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 4
  store i32 %36, i32* %37, align 4
  br label %38

38:                                               ; preds = %17, %35, %32, %29, %26
  %39 = load %struct.kevent*, %struct.kevent** %6, align 8
  %40 = getelementptr inbounds %struct.kevent, %struct.kevent* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @EV_ERROR, align 4
  %43 = and i32 %41, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %95

45:                                               ; preds = %38
  %46 = load %struct.kevent*, %struct.kevent** %6, align 8
  %47 = getelementptr inbounds %struct.kevent, %struct.kevent* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  switch i32 %48, label %94 [
    i32 130, label %49
    i32 128, label %49
    i32 131, label %68
  ]

49:                                               ; preds = %45, %45
  %50 = load %struct.kevent*, %struct.kevent** %6, align 8
  %51 = getelementptr inbounds %struct.kevent, %struct.kevent* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.kevent*, %struct.kevent** %6, align 8
  %56 = getelementptr inbounds %struct.kevent, %struct.kevent* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @EV_EOF, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %49
  %62 = load i32, i32* @CLOUDABI_EVENT_FD_READWRITE_HANGUP, align 4
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %61, %49
  br label %94

68:                                               ; preds = %45
  %69 = load %struct.kevent*, %struct.kevent** %6, align 8
  %70 = getelementptr inbounds %struct.kevent, %struct.kevent* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @WIFSIGNALED(i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %68
  %75 = load %struct.kevent*, %struct.kevent** %6, align 8
  %76 = getelementptr inbounds %struct.kevent, %struct.kevent* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @WTERMSIG(i32 %77)
  %79 = call i32 @convert_signal(i32 %78)
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  store i32 0, i32* %83, align 4
  br label %93

84:                                               ; preds = %68
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  store i32 0, i32* %86, align 4
  %87 = load %struct.kevent*, %struct.kevent** %6, align 8
  %88 = getelementptr inbounds %struct.kevent, %struct.kevent* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @WEXITSTATUS(i32 %89)
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 4
  br label %93

93:                                               ; preds = %84, %74
  br label %94

94:                                               ; preds = %45, %93, %67
  br label %101

95:                                               ; preds = %38
  %96 = load %struct.kevent*, %struct.kevent** %6, align 8
  %97 = getelementptr inbounds %struct.kevent, %struct.kevent* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @cloudabi_convert_errno(i32 %98)
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  store i32 %99, i32* %100, align 8
  br label %101

101:                                              ; preds = %95, %94
  %102 = load %struct.kevent*, %struct.kevent** %6, align 8
  %103 = getelementptr inbounds %struct.kevent, %struct.kevent* %102, i32 1
  store %struct.kevent* %103, %struct.kevent** %6, align 8
  %104 = load %struct.cloudabi32_kevent_args*, %struct.cloudabi32_kevent_args** %9, align 8
  %105 = getelementptr inbounds %struct.cloudabi32_kevent_args, %struct.cloudabi32_kevent_args* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %105, align 4
  %108 = call i32 @copyout(%struct.TYPE_8__* %8, i32 %106, i32 32)
  store i32 %108, i32* %10, align 4
  %109 = load i32, i32* %10, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %101
  %112 = load i32, i32* %10, align 4
  store i32 %112, i32* %4, align 4
  br label %115

113:                                              ; preds = %101
  br label %13

114:                                              ; preds = %13
  store i32 0, i32* %4, align 4
  br label %115

115:                                              ; preds = %114, %111
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @WIFSIGNALED(i32) #1

declare dso_local i32 @convert_signal(i32) #1

declare dso_local i32 @WTERMSIG(i32) #1

declare dso_local i32 @WEXITSTATUS(i32) #1

declare dso_local i32 @cloudabi_convert_errno(i32) #1

declare dso_local i32 @copyout(%struct.TYPE_8__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

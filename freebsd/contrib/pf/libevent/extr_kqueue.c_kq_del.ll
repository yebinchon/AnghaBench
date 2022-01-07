; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/pf/libevent/extr_kqueue.c_kq_del.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/pf/libevent/extr_kqueue.c_kq_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event = type { i32, i32, i32 }
%struct.kqop = type { i32 }
%struct.kevent = type { i32, i8*, i32 }

@EVLIST_X_KQINKERNEL = common dso_local global i32 0, align 4
@EV_SIGNAL = common dso_local global i32 0, align 4
@EVFILT_SIGNAL = common dso_local global i32 0, align 4
@EV_DELETE = common dso_local global i8* null, align 8
@SIG_DFL = common dso_local global i32 0, align 4
@SIG_ERR = common dso_local global i64 0, align 8
@EV_READ = common dso_local global i32 0, align 4
@EVFILT_READ = common dso_local global i32 0, align 4
@EV_WRITE = common dso_local global i32 0, align 4
@EVFILT_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kq_del(i8* %0, %struct.event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.event*, align 8
  %6 = alloca %struct.kqop*, align 8
  %7 = alloca %struct.kevent, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.event* %1, %struct.event** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.kqop*
  store %struct.kqop* %10, %struct.kqop** %6, align 8
  %11 = load %struct.event*, %struct.event** %5, align 8
  %12 = getelementptr inbounds %struct.event, %struct.event* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @EVLIST_X_KQINKERNEL, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %110

18:                                               ; preds = %2
  %19 = load %struct.event*, %struct.event** %5, align 8
  %20 = getelementptr inbounds %struct.event, %struct.event* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @EV_SIGNAL, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %53

25:                                               ; preds = %18
  %26 = load %struct.event*, %struct.event** %5, align 8
  %27 = call i32 @EVENT_SIGNAL(%struct.event* %26)
  store i32 %27, i32* %8, align 4
  %28 = call i32 @memset(%struct.kevent* %7, i32 0, i32 24)
  %29 = load i32, i32* %8, align 4
  %30 = getelementptr inbounds %struct.kevent, %struct.kevent* %7, i32 0, i32 0
  store i32 %29, i32* %30, align 8
  %31 = load i32, i32* @EVFILT_SIGNAL, align 4
  %32 = getelementptr inbounds %struct.kevent, %struct.kevent* %7, i32 0, i32 2
  store i32 %31, i32* %32, align 8
  %33 = load i8*, i8** @EV_DELETE, align 8
  %34 = getelementptr inbounds %struct.kevent, %struct.kevent* %7, i32 0, i32 1
  store i8* %33, i8** %34, align 8
  %35 = load %struct.kqop*, %struct.kqop** %6, align 8
  %36 = call i32 @kq_insert(%struct.kqop* %35, %struct.kevent* %7)
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %39

38:                                               ; preds = %25
  store i32 -1, i32* %3, align 4
  br label %110

39:                                               ; preds = %25
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @SIG_DFL, align 4
  %42 = call i64 @signal(i32 %40, i32 %41)
  %43 = load i64, i64* @SIG_ERR, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  store i32 -1, i32* %3, align 4
  br label %110

46:                                               ; preds = %39
  %47 = load i32, i32* @EVLIST_X_KQINKERNEL, align 4
  %48 = xor i32 %47, -1
  %49 = load %struct.event*, %struct.event** %5, align 8
  %50 = getelementptr inbounds %struct.event, %struct.event* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, %48
  store i32 %52, i32* %50, align 4
  store i32 0, i32* %3, align 4
  br label %110

53:                                               ; preds = %18
  %54 = load %struct.event*, %struct.event** %5, align 8
  %55 = getelementptr inbounds %struct.event, %struct.event* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @EV_READ, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %81

60:                                               ; preds = %53
  %61 = call i32 @memset(%struct.kevent* %7, i32 0, i32 24)
  %62 = load %struct.event*, %struct.event** %5, align 8
  %63 = getelementptr inbounds %struct.event, %struct.event* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.kevent, %struct.kevent* %7, i32 0, i32 0
  store i32 %64, i32* %65, align 8
  %66 = load i32, i32* @EVFILT_READ, align 4
  %67 = getelementptr inbounds %struct.kevent, %struct.kevent* %7, i32 0, i32 2
  store i32 %66, i32* %67, align 8
  %68 = load i8*, i8** @EV_DELETE, align 8
  %69 = getelementptr inbounds %struct.kevent, %struct.kevent* %7, i32 0, i32 1
  store i8* %68, i8** %69, align 8
  %70 = load %struct.kqop*, %struct.kqop** %6, align 8
  %71 = call i32 @kq_insert(%struct.kqop* %70, %struct.kevent* %7)
  %72 = icmp eq i32 %71, -1
  br i1 %72, label %73, label %74

73:                                               ; preds = %60
  store i32 -1, i32* %3, align 4
  br label %110

74:                                               ; preds = %60
  %75 = load i32, i32* @EVLIST_X_KQINKERNEL, align 4
  %76 = xor i32 %75, -1
  %77 = load %struct.event*, %struct.event** %5, align 8
  %78 = getelementptr inbounds %struct.event, %struct.event* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, %76
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %74, %53
  %82 = load %struct.event*, %struct.event** %5, align 8
  %83 = getelementptr inbounds %struct.event, %struct.event* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @EV_WRITE, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %109

88:                                               ; preds = %81
  %89 = call i32 @memset(%struct.kevent* %7, i32 0, i32 24)
  %90 = load %struct.event*, %struct.event** %5, align 8
  %91 = getelementptr inbounds %struct.event, %struct.event* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds %struct.kevent, %struct.kevent* %7, i32 0, i32 0
  store i32 %92, i32* %93, align 8
  %94 = load i32, i32* @EVFILT_WRITE, align 4
  %95 = getelementptr inbounds %struct.kevent, %struct.kevent* %7, i32 0, i32 2
  store i32 %94, i32* %95, align 8
  %96 = load i8*, i8** @EV_DELETE, align 8
  %97 = getelementptr inbounds %struct.kevent, %struct.kevent* %7, i32 0, i32 1
  store i8* %96, i8** %97, align 8
  %98 = load %struct.kqop*, %struct.kqop** %6, align 8
  %99 = call i32 @kq_insert(%struct.kqop* %98, %struct.kevent* %7)
  %100 = icmp eq i32 %99, -1
  br i1 %100, label %101, label %102

101:                                              ; preds = %88
  store i32 -1, i32* %3, align 4
  br label %110

102:                                              ; preds = %88
  %103 = load i32, i32* @EVLIST_X_KQINKERNEL, align 4
  %104 = xor i32 %103, -1
  %105 = load %struct.event*, %struct.event** %5, align 8
  %106 = getelementptr inbounds %struct.event, %struct.event* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = and i32 %107, %104
  store i32 %108, i32* %106, align 4
  br label %109

109:                                              ; preds = %102, %81
  store i32 0, i32* %3, align 4
  br label %110

110:                                              ; preds = %109, %101, %73, %46, %45, %38, %17
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i32 @EVENT_SIGNAL(%struct.event*) #1

declare dso_local i32 @memset(%struct.kevent*, i32, i32) #1

declare dso_local i32 @kq_insert(%struct.kqop*, %struct.kevent*) #1

declare dso_local i64 @signal(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

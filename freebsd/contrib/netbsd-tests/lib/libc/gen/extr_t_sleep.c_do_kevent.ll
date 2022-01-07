; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/gen/extr_t_sleep.c_do_kevent.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/gen/extr_t_sleep.c_do_kevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32, i32 }
%struct.kevent = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"kqueue: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@KEVNT_TIMEOUT = common dso_local global i32 0, align 4
@MAXSLEEP = common dso_local global i32 0, align 4
@EVFILT_TIMER = common dso_local global i32 0, align 4
@EV_ADD = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"kevent: %s\00", align 1
@BILLION = common dso_local global i32 0, align 4
@MILLION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"kevent: KEVNT_TIMEOUT did not cause EVFILT_TIMER event\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_kevent(%struct.timespec* %0, %struct.timespec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.timespec*, align 8
  %5 = alloca %struct.timespec*, align 8
  %6 = alloca %struct.kevent, align 4
  %7 = alloca %struct.kevent, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.timespec* %0, %struct.timespec** %4, align 8
  store %struct.timespec* %1, %struct.timespec** %5, align 8
  %12 = call i32 (...) @kqueue()
  store i32 %12, i32* %9, align 4
  %13 = icmp ne i32 %12, -1
  %14 = zext i1 %13 to i32
  %15 = load i32, i32* @errno, align 4
  %16 = call i32 @strerror(i32 %15)
  %17 = call i32 (i32, i8*, ...) @ATF_REQUIRE_MSG(i32 %14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @KEVNT_TIMEOUT, align 4
  store i32 %18, i32* %11, align 4
  %19 = call i64 (...) @isQEMU()
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %39

21:                                               ; preds = %2
  %22 = load i32, i32* %11, align 4
  %23 = sdiv i32 %22, 1000
  %24 = load %struct.timespec*, %struct.timespec** %4, align 8
  %25 = getelementptr inbounds %struct.timespec, %struct.timespec* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %21
  %29 = load i32, i32* %11, align 4
  %30 = sdiv i32 %29, 500
  %31 = load %struct.timespec*, %struct.timespec** %4, align 8
  %32 = getelementptr inbounds %struct.timespec, %struct.timespec* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp sgt i32 %30, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load i32, i32* @MAXSLEEP, align 4
  %37 = load %struct.timespec*, %struct.timespec** %4, align 8
  %38 = getelementptr inbounds %struct.timespec, %struct.timespec* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  br label %39

39:                                               ; preds = %35, %28, %21, %2
  %40 = load i32, i32* @EVFILT_TIMER, align 4
  %41 = load i32, i32* @EV_ADD, align 4
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @EV_SET(%struct.kevent* %6, i32 1, i32 %40, i32 %41, i32 0, i32 %42, i32 0)
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.timespec*, %struct.timespec** %4, align 8
  %46 = call i32 @kevent(i32 %44, %struct.kevent* %6, i32 1, %struct.kevent* %7, i32 1, %struct.timespec* %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* @errno, align 4
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @close(i32 %48)
  %50 = load i32, i32* %8, align 4
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %60

52:                                               ; preds = %39
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @EINTR, align 4
  %55 = icmp eq i32 %53, %54
  %56 = zext i1 %55 to i32
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @strerror(i32 %57)
  %59 = call i32 (i32, i8*, ...) @ATF_REQUIRE_MSG(i32 %56, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  store i32 0, i32* %3, align 4
  br label %80

60:                                               ; preds = %39
  %61 = load %struct.timespec*, %struct.timespec** %4, align 8
  %62 = getelementptr inbounds %struct.timespec, %struct.timespec* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @BILLION, align 4
  %65 = mul nsw i32 %63, %64
  %66 = load %struct.timespec*, %struct.timespec** %4, align 8
  %67 = getelementptr inbounds %struct.timespec, %struct.timespec* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %65, %68
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* @MILLION, align 4
  %72 = mul nsw i32 %70, %71
  %73 = icmp sgt i32 %69, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %60
  %75 = load i32, i32* %8, align 4
  %76 = icmp sgt i32 %75, 0
  %77 = zext i1 %76 to i32
  %78 = call i32 (i32, i8*, ...) @ATF_REQUIRE_MSG(i32 %77, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  br label %79

79:                                               ; preds = %74, %60
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %79, %52
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @ATF_REQUIRE_MSG(i32, i8*, ...) #1

declare dso_local i32 @kqueue(...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @isQEMU(...) #1

declare dso_local i32 @EV_SET(%struct.kevent*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @kevent(i32, %struct.kevent*, i32, %struct.kevent*, i32, %struct.timespec*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

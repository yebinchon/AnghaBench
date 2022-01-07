; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_nscachedcli.c_safe_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_nscachedcli.c_safe_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cached_connection_ = type { i32, i32 }
%struct.kevent = type { i64, i64, i32 }
%struct.timespec = type { i64, i32 }

@NS_DEFAULT_CACHED_IO_TIMEOUT = common dso_local global i32 0, align 4
@EVFILT_WRITE = common dso_local global i64 0, align 8
@MSG_NOSIGNAL = common dso_local global i32 0, align 4
@EV_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cached_connection_*, i8*, i64)* @safe_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @safe_write(%struct.cached_connection_* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cached_connection_*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.kevent, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.timespec, align 8
  store %struct.cached_connection_* %0, %struct.cached_connection_** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i64, i64* %7, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %84

16:                                               ; preds = %3
  %17 = load i32, i32* @NS_DEFAULT_CACHED_IO_TIMEOUT, align 4
  %18 = getelementptr inbounds %struct.timespec, %struct.timespec* %12, i32 0, i32 1
  store i32 %17, i32* %18, align 8
  %19 = getelementptr inbounds %struct.timespec, %struct.timespec* %12, i32 0, i32 0
  store i64 0, i64* %19, align 8
  store i64 0, i64* %10, align 8
  br label %20

20:                                               ; preds = %79, %16
  %21 = load %struct.cached_connection_*, %struct.cached_connection_** %5, align 8
  %22 = getelementptr inbounds %struct.cached_connection_, %struct.cached_connection_* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @_kevent(i32 %23, i32* null, i32 0, %struct.kevent* %8, i32 1, %struct.timespec* %12)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %77

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.kevent, %struct.kevent* %8, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @EVFILT_WRITE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %77

32:                                               ; preds = %27
  %33 = load %struct.cached_connection_*, %struct.cached_connection_** %5, align 8
  %34 = getelementptr inbounds %struct.cached_connection_, %struct.cached_connection_* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i8*, i8** %6, align 8
  %37 = load i64, i64* %10, align 8
  %38 = getelementptr i8, i8* %36, i64 %37
  %39 = getelementptr inbounds %struct.kevent, %struct.kevent* %8, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* %10, align 8
  %43 = sub i64 %41, %42
  %44 = icmp ult i64 %40, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %32
  %46 = getelementptr inbounds %struct.kevent, %struct.kevent* %8, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  br label %52

48:                                               ; preds = %32
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* %10, align 8
  %51 = sub i64 %49, %50
  br label %52

52:                                               ; preds = %48, %45
  %53 = phi i64 [ %47, %45 ], [ %51, %48 ]
  %54 = load i32, i32* @MSG_NOSIGNAL, align 4
  %55 = call i32 @_sendto(i32 %35, i8* %38, i64 %53, i32 %54, i32* null, i32 0)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  store i32 -1, i32* %4, align 4
  br label %84

59:                                               ; preds = %52
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = load i64, i64* %10, align 8
  %63 = add i64 %62, %61
  store i64 %63, i64* %10, align 8
  br label %64

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.kevent, %struct.kevent* %8, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @EV_EOF, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %64
  %71 = load i64, i64* %10, align 8
  %72 = load i64, i64* %7, align 8
  %73 = icmp ult i64 %71, %72
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i32 -1, i32 0
  store i32 %75, i32* %4, align 4
  br label %84

76:                                               ; preds = %64
  br label %78

77:                                               ; preds = %27, %20
  store i32 -1, i32* %4, align 4
  br label %84

78:                                               ; preds = %76
  br label %79

79:                                               ; preds = %78
  %80 = load i64, i64* %10, align 8
  %81 = load i64, i64* %7, align 8
  %82 = icmp ult i64 %80, %81
  br i1 %82, label %20, label %83

83:                                               ; preds = %79
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %83, %77, %70, %58, %15
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @_kevent(i32, i32*, i32, %struct.kevent*, i32, %struct.timespec*) #1

declare dso_local i32 @_sendto(i32, i8*, i64, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/pf/libevent/extr_buffer.c_evbuffer_find.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/pf/libevent/extr_buffer.c_evbuffer_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer = type { i64, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @evbuffer_find(%struct.evbuffer* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.evbuffer*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.evbuffer* %0, %struct.evbuffer** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %12 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %8, align 8
  %14 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %15 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %9, align 8
  br label %17

17:                                               ; preds = %49, %3
  %18 = load i32*, i32** %9, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* %19, align 4
  %21 = load i64, i64* %8, align 8
  %22 = call i32* @memchr(i32* %18, i32 %20, i64 %21)
  store i32* %22, i32** %10, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %52

24:                                               ; preds = %17
  %25 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %26 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %30 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = ptrtoint i32* %28 to i64
  %33 = ptrtoint i32* %31 to i64
  %34 = sub i64 %32, %33
  %35 = sdiv exact i64 %34, 4
  %36 = sub i64 %27, %35
  store i64 %36, i64* %8, align 8
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %7, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %24
  br label %52

41:                                               ; preds = %24
  %42 = load i32*, i32** %10, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = load i64, i64* %7, align 8
  %45 = call i64 @memcmp(i32* %42, i32* %43, i64 %44)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32*, i32** %10, align 8
  store i32* %48, i32** %4, align 8
  br label %53

49:                                               ; preds = %41
  %50 = load i32*, i32** %10, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  store i32* %51, i32** %9, align 8
  br label %17

52:                                               ; preds = %40, %17
  store i32* null, i32** %4, align 8
  br label %53

53:                                               ; preds = %52, %47
  %54 = load i32*, i32** %4, align 8
  ret i32* %54
}

declare dso_local i32* @memchr(i32*, i32, i64) #1

declare dso_local i64 @memcmp(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

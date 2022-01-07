; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/pf/libevent/extr_buffer.c_evbuffer_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/pf/libevent/extr_buffer.c_evbuffer_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer = type { i64, i32, i32, i32 (%struct.evbuffer*, i64, i64, i32)*, i32* }

@EVBUFFER_MAX_READ = common dso_local global i32 0, align 4
@FIONREAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evbuffer_read(%struct.evbuffer* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.evbuffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.evbuffer* %0, %struct.evbuffer** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %12 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %9, align 8
  %14 = load i32, i32* @EVBUFFER_MAX_READ, align 4
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17, %3
  %22 = load i32, i32* %10, align 4
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %21, %17
  %24 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @evbuffer_expand(%struct.evbuffer* %24, i32 %25)
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 -1, i32* %4, align 4
  br label %80

29:                                               ; preds = %23
  %30 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %31 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %30, i32 0, i32 4
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %34 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  store i32* %36, i32** %8, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @read(i32 %37, i32* %38, i32 %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %44

43:                                               ; preds = %29
  store i32 -1, i32* %4, align 4
  br label %80

44:                                               ; preds = %29
  %45 = load i32, i32* %10, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 0, i32* %4, align 4
  br label %80

48:                                               ; preds = %44
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %52 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = add i64 %53, %50
  store i64 %54, i64* %52, align 8
  %55 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %56 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %9, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %78

60:                                               ; preds = %48
  %61 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %62 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %61, i32 0, i32 3
  %63 = load i32 (%struct.evbuffer*, i64, i64, i32)*, i32 (%struct.evbuffer*, i64, i64, i32)** %62, align 8
  %64 = icmp ne i32 (%struct.evbuffer*, i64, i64, i32)* %63, null
  br i1 %64, label %65, label %78

65:                                               ; preds = %60
  %66 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %67 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %66, i32 0, i32 3
  %68 = load i32 (%struct.evbuffer*, i64, i64, i32)*, i32 (%struct.evbuffer*, i64, i64, i32)** %67, align 8
  %69 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %70 = load i64, i64* %9, align 8
  %71 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %72 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %75 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = call i32 %68(%struct.evbuffer* %69, i64 %70, i64 %73, i32 %76)
  br label %78

78:                                               ; preds = %65, %60, %48
  %79 = load i32, i32* %10, align 4
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %78, %47, %43, %28
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @evbuffer_expand(%struct.evbuffer*, i32) #1

declare dso_local i32 @read(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

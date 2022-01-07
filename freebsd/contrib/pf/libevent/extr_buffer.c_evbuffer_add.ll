; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/pf/libevent/extr_buffer.c_evbuffer_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/pf/libevent/extr_buffer.c_evbuffer_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer = type { i64, i64, i64, i32, i32 (%struct.evbuffer*, i64, i64, i32)*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evbuffer_add(%struct.evbuffer* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.evbuffer*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.evbuffer* %0, %struct.evbuffer** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %11 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 8
  %13 = sext i32 %12 to i64
  %14 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %15 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add i64 %13, %16
  %18 = load i64, i64* %7, align 8
  %19 = add i64 %17, %18
  store i64 %19, i64* %8, align 8
  %20 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %21 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %9, align 8
  %23 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %24 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %8, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %3
  %29 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @evbuffer_expand(%struct.evbuffer* %29, i64 %30)
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 -1, i32* %4, align 4
  br label %72

34:                                               ; preds = %28
  br label %35

35:                                               ; preds = %34, %3
  %36 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %37 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %40 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add i64 %38, %41
  %43 = load i8*, i8** %6, align 8
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @memcpy(i64 %42, i8* %43, i64 %44)
  %46 = load i64, i64* %7, align 8
  %47 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %48 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add i64 %49, %46
  store i64 %50, i64* %48, align 8
  %51 = load i64, i64* %7, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %71

53:                                               ; preds = %35
  %54 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %55 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %54, i32 0, i32 4
  %56 = load i32 (%struct.evbuffer*, i64, i64, i32)*, i32 (%struct.evbuffer*, i64, i64, i32)** %55, align 8
  %57 = icmp ne i32 (%struct.evbuffer*, i64, i64, i32)* %56, null
  br i1 %57, label %58, label %71

58:                                               ; preds = %53
  %59 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %60 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %59, i32 0, i32 4
  %61 = load i32 (%struct.evbuffer*, i64, i64, i32)*, i32 (%struct.evbuffer*, i64, i64, i32)** %60, align 8
  %62 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %63 = load i64, i64* %9, align 8
  %64 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %65 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %68 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = call i32 %61(%struct.evbuffer* %62, i64 %63, i64 %66, i32 %69)
  br label %71

71:                                               ; preds = %58, %53, %35
  store i32 0, i32* %4, align 4
  br label %72

72:                                               ; preds = %71, %33
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @evbuffer_expand(%struct.evbuffer*, i64) #1

declare dso_local i32 @memcpy(i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

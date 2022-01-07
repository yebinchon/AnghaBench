; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/pf/libevent/extr_buffer.c_evbuffer_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/pf/libevent/extr_buffer.c_evbuffer_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evbuffer_remove(%struct.evbuffer* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.evbuffer*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.evbuffer* %0, %struct.evbuffer** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %6, align 8
  store i64 %8, i64* %7, align 8
  %9 = load i64, i64* %7, align 8
  %10 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %11 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp uge i64 %9, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %16 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %7, align 8
  br label %18

18:                                               ; preds = %14, %3
  %19 = load i8*, i8** %5, align 8
  %20 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %21 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @memcpy(i8* %19, i32 %22, i64 %23)
  %25 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @evbuffer_drain(%struct.evbuffer* %25, i64 %26)
  %28 = load i64, i64* %7, align 8
  %29 = trunc i64 %28 to i32
  ret i32 %29
}

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i32 @evbuffer_drain(%struct.evbuffer*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

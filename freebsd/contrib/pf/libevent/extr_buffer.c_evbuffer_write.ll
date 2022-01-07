; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/pf/libevent/extr_buffer.c_evbuffer_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/pf/libevent/extr_buffer.c_evbuffer_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evbuffer_write(%struct.evbuffer* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.evbuffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.evbuffer* %0, %struct.evbuffer** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %9 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %12 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @write(i32 %7, i32 %10, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %27

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %27

22:                                               ; preds = %18
  %23 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @evbuffer_drain(%struct.evbuffer* %23, i32 %24)
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %22, %21, %17
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @write(i32, i32, i32) #1

declare dso_local i32 @evbuffer_drain(%struct.evbuffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

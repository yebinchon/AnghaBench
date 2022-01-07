; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_buffer.c_evbuffer_chain_insert_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_buffer.c_evbuffer_chain_insert_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer_chain = type { i32 }
%struct.evbuffer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.evbuffer_chain* (%struct.evbuffer*, i64)* @evbuffer_chain_insert_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.evbuffer_chain* @evbuffer_chain_insert_new(%struct.evbuffer* %0, i64 %1) #0 {
  %3 = alloca %struct.evbuffer_chain*, align 8
  %4 = alloca %struct.evbuffer*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.evbuffer_chain*, align 8
  store %struct.evbuffer* %0, %struct.evbuffer** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = call %struct.evbuffer_chain* @evbuffer_chain_new(i64 %7)
  store %struct.evbuffer_chain* %8, %struct.evbuffer_chain** %6, align 8
  %9 = icmp eq %struct.evbuffer_chain* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store %struct.evbuffer_chain* null, %struct.evbuffer_chain** %3, align 8
  br label %16

11:                                               ; preds = %2
  %12 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %13 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %6, align 8
  %14 = call i32 @evbuffer_chain_insert(%struct.evbuffer* %12, %struct.evbuffer_chain* %13)
  %15 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %6, align 8
  store %struct.evbuffer_chain* %15, %struct.evbuffer_chain** %3, align 8
  br label %16

16:                                               ; preds = %11, %10
  %17 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %3, align 8
  ret %struct.evbuffer_chain* %17
}

declare dso_local %struct.evbuffer_chain* @evbuffer_chain_new(i64) #1

declare dso_local i32 @evbuffer_chain_insert(%struct.evbuffer*, %struct.evbuffer_chain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

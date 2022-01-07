; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress_bufferevent.c_bufferevent_input_filter.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress_bufferevent.c_bufferevent_input_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer = type { i32 }

@BEV_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evbuffer*, %struct.evbuffer*, i32, i32, i8*)* @bufferevent_input_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bufferevent_input_filter(%struct.evbuffer* %0, %struct.evbuffer* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.evbuffer*, align 8
  %7 = alloca %struct.evbuffer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.evbuffer* %0, %struct.evbuffer** %6, align 8
  store %struct.evbuffer* %1, %struct.evbuffer** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %13 = load %struct.evbuffer*, %struct.evbuffer** %6, align 8
  %14 = load %struct.evbuffer*, %struct.evbuffer** %6, align 8
  %15 = call i32 @evbuffer_get_length(%struct.evbuffer* %14)
  %16 = call i8* @evbuffer_pullup(%struct.evbuffer* %13, i32 %15)
  store i8* %16, i8** %11, align 8
  store i32 0, i32* %12, align 4
  br label %17

17:                                               ; preds = %48, %5
  %18 = load i32, i32* %12, align 4
  %19 = load %struct.evbuffer*, %struct.evbuffer** %6, align 8
  %20 = call i32 @evbuffer_get_length(%struct.evbuffer* %19)
  %21 = icmp ult i32 %18, %20
  br i1 %21, label %22, label %51

22:                                               ; preds = %17
  %23 = load i8*, i8** %11, align 8
  %24 = load i32, i32* %12, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp eq i32 %28, 45
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  br label %48

31:                                               ; preds = %22
  %32 = load i8*, i8** %11, align 8
  %33 = load i32, i32* %12, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp eq i32 %37, 120
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load %struct.evbuffer*, %struct.evbuffer** %7, align 8
  %42 = load i8*, i8** %11, align 8
  %43 = load i32, i32* %12, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = getelementptr inbounds i8, i8* %45, i64 1
  %47 = call i32 @evbuffer_add(%struct.evbuffer* %41, i8* %46, i32 1)
  br label %48

48:                                               ; preds = %31, %30
  %49 = load i32, i32* %12, align 4
  %50 = add i32 %49, 2
  store i32 %50, i32* %12, align 4
  br label %17

51:                                               ; preds = %17
  %52 = load %struct.evbuffer*, %struct.evbuffer** %6, align 8
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @evbuffer_drain(%struct.evbuffer* %52, i32 %53)
  %55 = load i32, i32* @BEV_OK, align 4
  ret i32 %55
}

declare dso_local i8* @evbuffer_pullup(%struct.evbuffer*, i32) #1

declare dso_local i32 @evbuffer_get_length(%struct.evbuffer*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @evbuffer_add(%struct.evbuffer*, i8*, i32) #1

declare dso_local i32 @evbuffer_drain(%struct.evbuffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

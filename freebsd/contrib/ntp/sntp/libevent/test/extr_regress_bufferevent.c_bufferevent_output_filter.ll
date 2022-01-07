; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_bufferevent.c_bufferevent_output_filter.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_bufferevent.c_bufferevent_output_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"x\00", align 1
@BEV_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evbuffer*, %struct.evbuffer*, i32, i32, i8*)* @bufferevent_output_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bufferevent_output_filter(%struct.evbuffer* %0, %struct.evbuffer* %1, i32 %2, i32 %3, i8* %4) #0 {
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

17:                                               ; preds = %31, %5
  %18 = load i32, i32* %12, align 4
  %19 = load %struct.evbuffer*, %struct.evbuffer** %6, align 8
  %20 = call i32 @evbuffer_get_length(%struct.evbuffer* %19)
  %21 = icmp ult i32 %18, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %17
  %23 = load %struct.evbuffer*, %struct.evbuffer** %7, align 8
  %24 = call i32 (%struct.evbuffer*, ...) @evbuffer_add(%struct.evbuffer* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  %25 = load %struct.evbuffer*, %struct.evbuffer** %7, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = load i32, i32* %12, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  %30 = call i32 (%struct.evbuffer*, ...) @evbuffer_add(%struct.evbuffer* %25, i8* %29, i32 1)
  br label %31

31:                                               ; preds = %22
  %32 = load i32, i32* %12, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %12, align 4
  br label %17

34:                                               ; preds = %17
  %35 = load %struct.evbuffer*, %struct.evbuffer** %6, align 8
  %36 = load %struct.evbuffer*, %struct.evbuffer** %6, align 8
  %37 = call i32 @evbuffer_get_length(%struct.evbuffer* %36)
  %38 = call i32 @evbuffer_drain(%struct.evbuffer* %35, i32 %37)
  %39 = load i32, i32* @BEV_OK, align 4
  ret i32 %39
}

declare dso_local i8* @evbuffer_pullup(%struct.evbuffer*, i32) #1

declare dso_local i32 @evbuffer_get_length(%struct.evbuffer*) #1

declare dso_local i32 @evbuffer_add(%struct.evbuffer*, ...) #1

declare dso_local i32 @evbuffer_drain(%struct.evbuffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

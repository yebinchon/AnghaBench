; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_buffer.c_test_evbuffer_remove_buffer_with_empty.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_buffer.c_test_evbuffer_remove_buffer_with_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer = type { i32 }

@no_cleanup = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @test_evbuffer_remove_buffer_with_empty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_evbuffer_remove_buffer_with_empty(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.evbuffer*, align 8
  %4 = alloca %struct.evbuffer*, align 8
  %5 = alloca [2 x i8], align 1
  store i8* %0, i8** %2, align 8
  %6 = call %struct.evbuffer* (...) @evbuffer_new()
  store %struct.evbuffer* %6, %struct.evbuffer** %3, align 8
  %7 = call %struct.evbuffer* (...) @evbuffer_new()
  store %struct.evbuffer* %7, %struct.evbuffer** %4, align 8
  %8 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %9 = call i32 @evbuffer_validate(%struct.evbuffer* %8)
  %10 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %11 = call i32 @evbuffer_validate(%struct.evbuffer* %10)
  %12 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %13 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 0
  %14 = load i32, i32* @no_cleanup, align 4
  %15 = call i32 @evbuffer_add_reference(%struct.evbuffer* %12, i8* %13, i32 2, i32 %14, i32* null)
  %16 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %17 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 0
  %18 = load i32, i32* @no_cleanup, align 4
  %19 = call i32 @evbuffer_add_reference(%struct.evbuffer* %16, i8* %17, i32 2, i32 %18, i32* null)
  %20 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %21 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 0
  %22 = call i32 @evbuffer_add(%struct.evbuffer* %20, i8* %21, i32 2)
  %23 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %24 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 0
  %25 = load i32, i32* @no_cleanup, align 4
  %26 = call i32 @evbuffer_add_reference(%struct.evbuffer* %23, i8* %24, i32 0, i32 %25, i32* null)
  %27 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %28 = call i32 @evbuffer_validate(%struct.evbuffer* %27)
  %29 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %30 = call i32 @evbuffer_validate(%struct.evbuffer* %29)
  %31 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %32 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %33 = call i32 @evbuffer_remove_buffer(%struct.evbuffer* %31, %struct.evbuffer* %32, i32 3)
  %34 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %35 = call i32 @evbuffer_validate(%struct.evbuffer* %34)
  %36 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %37 = call i32 @evbuffer_validate(%struct.evbuffer* %36)
  br label %38

38:                                               ; preds = %1
  %39 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %40 = call i32 @evbuffer_free(%struct.evbuffer* %39)
  %41 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %42 = call i32 @evbuffer_free(%struct.evbuffer* %41)
  ret void
}

declare dso_local %struct.evbuffer* @evbuffer_new(...) #1

declare dso_local i32 @evbuffer_validate(%struct.evbuffer*) #1

declare dso_local i32 @evbuffer_add_reference(%struct.evbuffer*, i8*, i32, i32, i32*) #1

declare dso_local i32 @evbuffer_add(%struct.evbuffer*, i8*, i32) #1

declare dso_local i32 @evbuffer_remove_buffer(%struct.evbuffer*, %struct.evbuffer*, i32) #1

declare dso_local i32 @evbuffer_free(%struct.evbuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

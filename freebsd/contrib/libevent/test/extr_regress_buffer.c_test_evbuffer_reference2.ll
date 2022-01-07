; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress_buffer.c_test_evbuffer_reference2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress_buffer.c_test_evbuffer_reference2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer = type { i32 }

@test_evbuffer_reference2.data = internal global [4096 x i8] zeroinitializer, align 16
@MIN_BUFFER_SIZE = common dso_local global i32 0, align 4
@EVBUFFER_CHAIN_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"2\00", align 1
@no_cleanup = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @test_evbuffer_reference2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_evbuffer_reference2(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.evbuffer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i32, i32* @MIN_BUFFER_SIZE, align 4
  %8 = load i32, i32* @EVBUFFER_CHAIN_SIZE, align 4
  %9 = sub nsw i32 %7, %8
  %10 = sub nsw i32 %9, 10
  store i32 %10, i32* %4, align 4
  %11 = call i32 @memset(i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @test_evbuffer_reference2.data, i64 0, i64 0), i8 signext 80, i32 4096)
  %12 = call %struct.evbuffer* (...) @evbuffer_new()
  store %struct.evbuffer* %12, %struct.evbuffer** %3, align 8
  %13 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @evbuffer_add(%struct.evbuffer* %13, i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @test_evbuffer_reference2.data, i64 0, i64 0), i32 %14)
  %16 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %17 = call i32 @evbuffer_validate(%struct.evbuffer* %16)
  %18 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %19 = call i32 @evbuffer_expand(%struct.evbuffer* %18, i32 100)
  %20 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %21 = call i32 @evbuffer_validate(%struct.evbuffer* %20)
  %22 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %23 = load i32, i32* @no_cleanup, align 4
  %24 = call i32 @evbuffer_add_reference(%struct.evbuffer* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1, i32 %23, i32* null)
  %25 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %26 = call i32 @evbuffer_validate(%struct.evbuffer* %25)
  %27 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %28 = call i32 @evbuffer_add_printf(%struct.evbuffer* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %29 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %30 = call i32 @evbuffer_validate(%struct.evbuffer* %29)
  %31 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %32 = call i32 @evbuffer_get_length(%struct.evbuffer* %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 2
  %36 = icmp eq i32 %33, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @tt_assert(i32 %37)
  %39 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %40 = call i64 @evbuffer_pullup(%struct.evbuffer* %39, i32 -1)
  %41 = inttoptr i64 %40 to i8*
  store i8* %41, i8** %5, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sub nsw i32 %43, 3
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %42, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 80
  %50 = zext i1 %49 to i32
  %51 = call i32 @tt_assert(i32 %50)
  %52 = load i8*, i8** %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sub nsw i32 %53, 2
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %52, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 50
  %60 = zext i1 %59 to i32
  %61 = call i32 @tt_assert(i32 %60)
  %62 = load i8*, i8** %5, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sub nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %62, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 51
  %70 = zext i1 %69 to i32
  %71 = call i32 @tt_assert(i32 %70)
  br label %72

72:                                               ; preds = %1
  %73 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %74 = call i32 @evbuffer_free(%struct.evbuffer* %73)
  ret void
}

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local %struct.evbuffer* @evbuffer_new(...) #1

declare dso_local i32 @evbuffer_add(%struct.evbuffer*, i8*, i32) #1

declare dso_local i32 @evbuffer_validate(%struct.evbuffer*) #1

declare dso_local i32 @evbuffer_expand(%struct.evbuffer*, i32) #1

declare dso_local i32 @evbuffer_add_reference(%struct.evbuffer*, i8*, i32, i32, i32*) #1

declare dso_local i32 @evbuffer_add_printf(%struct.evbuffer*, i8*) #1

declare dso_local i32 @evbuffer_get_length(%struct.evbuffer*) #1

declare dso_local i32 @tt_assert(i32) #1

declare dso_local i64 @evbuffer_pullup(%struct.evbuffer*, i32) #1

declare dso_local i32 @evbuffer_free(%struct.evbuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

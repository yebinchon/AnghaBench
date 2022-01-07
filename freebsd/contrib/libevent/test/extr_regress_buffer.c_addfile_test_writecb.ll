; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress_buffer.c_addfile_test_writecb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress_buffer.c_addfile_test_writecb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer = type { i32 }

@addfile_test_total_written = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Wrote %d/%d bytes\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@addfile_test_event_base = common dso_local global i32 0, align 4
@addfile_test_done_writing = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i16, i8*)* @addfile_test_writecb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addfile_test_writecb(i32 %0, i16 signext %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca %struct.evbuffer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i16 %1, i16* %5, align 2
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.evbuffer*
  store %struct.evbuffer* %11, %struct.evbuffer** %7, align 8
  %12 = load %struct.evbuffer*, %struct.evbuffer** %7, align 8
  %13 = call i32 @evbuffer_validate(%struct.evbuffer* %12)
  br label %14

14:                                               ; preds = %44, %3
  %15 = load %struct.evbuffer*, %struct.evbuffer** %7, align 8
  %16 = call i64 @evbuffer_get_length(%struct.evbuffer* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %47

18:                                               ; preds = %14
  %19 = load %struct.evbuffer*, %struct.evbuffer** %7, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @evbuffer_write(%struct.evbuffer* %19, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %18
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @addfile_test_total_written, align 4
  %27 = add nsw i32 %26, %25
  store i32 %27, i32* @addfile_test_total_written, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @addfile_test_total_written, align 4
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to i8*
  %32 = call i32 @TT_BLATHER(i8* %31)
  br label %44

33:                                               ; preds = %18
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @evutil_socket_geterror(i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i64 @EVUTIL_ERR_RW_RETRIABLE(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %51

40:                                               ; preds = %33
  %41 = call i32 @tt_fail_perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* @addfile_test_event_base, align 4
  %43 = call i32 @event_base_loopexit(i32 %42, i32* null)
  br label %44

44:                                               ; preds = %40, %24
  %45 = load %struct.evbuffer*, %struct.evbuffer** %7, align 8
  %46 = call i32 @evbuffer_validate(%struct.evbuffer* %45)
  br label %14

47:                                               ; preds = %14
  store i32 1, i32* @addfile_test_done_writing, align 4
  br label %51

48:                                               ; No predecessors!
  %49 = load i32, i32* @addfile_test_event_base, align 4
  %50 = call i32 @event_base_loopexit(i32 %49, i32* null)
  br label %51

51:                                               ; preds = %48, %47, %39
  ret void
}

declare dso_local i32 @evbuffer_validate(%struct.evbuffer*) #1

declare dso_local i64 @evbuffer_get_length(%struct.evbuffer*) #1

declare dso_local i32 @evbuffer_write(%struct.evbuffer*, i32) #1

declare dso_local i32 @TT_BLATHER(i8*) #1

declare dso_local i32 @evutil_socket_geterror(i32) #1

declare dso_local i64 @EVUTIL_ERR_RW_RETRIABLE(i32) #1

declare dso_local i32 @tt_fail_perror(i8*) #1

declare dso_local i32 @event_base_loopexit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_ssl.c_respond_to_number.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_ssl.c_respond_to_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32 }
%struct.evbuffer = type { i32 }

@EVBUFFER_EOL_LF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Bad number: %s\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"The number was %d\00", align 1
@test_is_done = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"client\00", align 1
@renegotiate_at = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Done reading; now writing.\00", align 1
@EV_WRITE = common dso_local global i32 0, align 4
@EV_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bufferevent*, i8*)* @respond_to_number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @respond_to_number(%struct.bufferevent* %0, i8* %1) #0 {
  %3 = alloca %struct.bufferevent*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.evbuffer*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.bufferevent* %0, %struct.bufferevent** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %9 = call %struct.evbuffer* @bufferevent_get_input(%struct.bufferevent* %8)
  store %struct.evbuffer* %9, %struct.evbuffer** %5, align 8
  %10 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %11 = load i32, i32* @EVBUFFER_EOL_LF, align 4
  %12 = call i8* @evbuffer_readln(%struct.evbuffer* %10, i32* null, i32 %11)
  store i8* %12, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %64

16:                                               ; preds = %2
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @atoi(i8* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp sle i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @TT_FAIL(i8* %22)
  br label %24

24:                                               ; preds = %21, %16
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @free(i8* %25)
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i8*
  %30 = call i32 @TT_BLATHER(i8* %29)
  %31 = load i32, i32* %7, align 4
  %32 = icmp eq i32 %31, 1001
  br i1 %32, label %33, label %38

33:                                               ; preds = %24
  %34 = load i32, i32* @test_is_done, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* @test_is_done, align 4
  %36 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %37 = call i32 @bufferevent_free(%struct.bufferevent* %36)
  br label %64

38:                                               ; preds = %24
  %39 = load i8*, i8** %4, align 8
  %40 = call i32 @strcmp(i8* %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @renegotiate_at, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %48 = call i32 @bufferevent_openssl_get_ssl(%struct.bufferevent* %47)
  %49 = call i32 @SSL_renegotiate(i32 %48)
  br label %50

50:                                               ; preds = %46, %42, %38
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  %53 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %54 = call i32 @bufferevent_get_output(%struct.bufferevent* %53)
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @evbuffer_add_printf(i32 %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %55)
  %57 = call i32 @TT_BLATHER(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %58 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %59 = load i32, i32* @EV_WRITE, align 4
  %60 = call i32 @bufferevent_enable(%struct.bufferevent* %58, i32 %59)
  %61 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %62 = load i32, i32* @EV_READ, align 4
  %63 = call i32 @bufferevent_disable(%struct.bufferevent* %61, i32 %62)
  br label %64

64:                                               ; preds = %50, %33, %15
  ret void
}

declare dso_local %struct.evbuffer* @bufferevent_get_input(%struct.bufferevent*) #1

declare dso_local i8* @evbuffer_readln(%struct.evbuffer*, i32*, i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @TT_FAIL(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @TT_BLATHER(i8*) #1

declare dso_local i32 @bufferevent_free(%struct.bufferevent*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @SSL_renegotiate(i32) #1

declare dso_local i32 @bufferevent_openssl_get_ssl(%struct.bufferevent*) #1

declare dso_local i32 @evbuffer_add_printf(i32, i8*, i32) #1

declare dso_local i32 @bufferevent_get_output(%struct.bufferevent*) #1

declare dso_local i32 @bufferevent_enable(%struct.bufferevent*, i32) #1

declare dso_local i32 @bufferevent_disable(%struct.bufferevent*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

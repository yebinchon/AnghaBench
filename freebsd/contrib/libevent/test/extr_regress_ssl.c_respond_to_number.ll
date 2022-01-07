; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress_ssl.c_respond_to_number.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress_ssl.c_respond_to_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32 }
%struct.evbuffer = type { i32 }

@EVBUFFER_EOL_LF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Bad number: %s\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"The number was %d\00", align 1
@test_is_done = common dso_local global i32 0, align 4
@REGRESS_OPENSSL_CLIENT = common dso_local global i32 0, align 4
@renegotiate_at = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Done reading; now writing.\00", align 1
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
  %8 = alloca i32, align 4
  store %struct.bufferevent* %0, %struct.bufferevent** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %10 = call %struct.evbuffer* @bufferevent_get_input(%struct.bufferevent* %9)
  store %struct.evbuffer* %10, %struct.evbuffer** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = ptrtoint i8* %11 to i32
  store i32 %12, i32* %8, align 4
  %13 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %14 = load i32, i32* @EVBUFFER_EOL_LF, align 4
  %15 = call i8* @evbuffer_readln(%struct.evbuffer* %13, i32* null, i32 %14)
  store i8* %15, i8** %6, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %68

19:                                               ; preds = %2
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @atoi(i8* %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp sle i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @TT_FAIL(i8* %25)
  br label %27

27:                                               ; preds = %24, %19
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @free(i8* %28)
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to i8*
  %33 = call i32 @TT_BLATHER(i8* %32)
  %34 = load i32, i32* %7, align 4
  %35 = icmp eq i32 %34, 1001
  br i1 %35, label %36, label %41

36:                                               ; preds = %27
  %37 = load i32, i32* @test_is_done, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* @test_is_done, align 4
  %39 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %40 = call i32 @bufferevent_free(%struct.bufferevent* %39)
  br label %68

41:                                               ; preds = %27
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @REGRESS_OPENSSL_CLIENT, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %41
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @renegotiate_at, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %52 = call i32 @bufferevent_openssl_get_ssl(%struct.bufferevent* %51)
  %53 = call i32 @SSL_renegotiate(i32 %52)
  br label %54

54:                                               ; preds = %50, %46, %41
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  %57 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %58 = call i32 @bufferevent_get_output(%struct.bufferevent* %57)
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @evbuffer_add_printf(i32 %58, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %59)
  %61 = call i32 @TT_BLATHER(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %62 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %63 = load i32, i32* @EV_WRITE, align 4
  %64 = call i32 @bufferevent_enable(%struct.bufferevent* %62, i32 %63)
  %65 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %66 = load i32, i32* @EV_READ, align 4
  %67 = call i32 @bufferevent_disable(%struct.bufferevent* %65, i32 %66)
  br label %68

68:                                               ; preds = %54, %36, %18
  ret void
}

declare dso_local %struct.evbuffer* @bufferevent_get_input(%struct.bufferevent*) #1

declare dso_local i8* @evbuffer_readln(%struct.evbuffer*, i32*, i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @TT_FAIL(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @TT_BLATHER(i8*) #1

declare dso_local i32 @bufferevent_free(%struct.bufferevent*) #1

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

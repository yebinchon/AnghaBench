; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress_bufferevent.c_bufferevent_output_filter.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress_bufferevent.c_bufferevent_output_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer = type { i32 }
%struct.bufferevent = type { i32 }

@test_ok = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"x\00", align 1
@BEV_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@BEV_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evbuffer*, %struct.evbuffer*, i32, i32, i8*)* @bufferevent_output_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bufferevent_output_filter(%struct.evbuffer* %0, %struct.evbuffer* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.evbuffer*, align 8
  %8 = alloca %struct.evbuffer*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.bufferevent**, align 8
  %15 = alloca i32, align 4
  store %struct.evbuffer* %0, %struct.evbuffer** %7, align 8
  store %struct.evbuffer* %1, %struct.evbuffer** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %16 = load i8*, i8** %11, align 8
  %17 = bitcast i8* %16 to %struct.bufferevent**
  store %struct.bufferevent** %17, %struct.bufferevent*** %14, align 8
  %18 = load i32, i32* @test_ok, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* @test_ok, align 4
  %20 = load i32, i32* @test_ok, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %49

22:                                               ; preds = %5
  %23 = load %struct.evbuffer*, %struct.evbuffer** %7, align 8
  %24 = load %struct.evbuffer*, %struct.evbuffer** %7, align 8
  %25 = call i32 @evbuffer_get_length(%struct.evbuffer* %24)
  %26 = call i8* @evbuffer_pullup(%struct.evbuffer* %23, i32 %25)
  store i8* %26, i8** %12, align 8
  store i32 0, i32* %13, align 4
  br label %27

27:                                               ; preds = %41, %22
  %28 = load i32, i32* %13, align 4
  %29 = load %struct.evbuffer*, %struct.evbuffer** %7, align 8
  %30 = call i32 @evbuffer_get_length(%struct.evbuffer* %29)
  %31 = icmp ult i32 %28, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %27
  %33 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %34 = call i32 (%struct.evbuffer*, ...) @evbuffer_add(%struct.evbuffer* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  %35 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %36 = load i8*, i8** %12, align 8
  %37 = load i32, i32* %13, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = call i32 (%struct.evbuffer*, ...) @evbuffer_add(%struct.evbuffer* %35, i8* %39, i32 1)
  br label %41

41:                                               ; preds = %32
  %42 = load i32, i32* %13, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %13, align 4
  br label %27

44:                                               ; preds = %27
  %45 = load %struct.evbuffer*, %struct.evbuffer** %7, align 8
  %46 = load %struct.evbuffer*, %struct.evbuffer** %7, align 8
  %47 = call i32 @evbuffer_get_length(%struct.evbuffer* %46)
  %48 = call i32 @evbuffer_drain(%struct.evbuffer* %45, i32 %47)
  br label %51

49:                                               ; preds = %5
  %50 = load i32, i32* @BEV_ERROR, align 4
  store i32 %50, i32* %6, align 4
  br label %72

51:                                               ; preds = %44
  %52 = load %struct.bufferevent**, %struct.bufferevent*** %14, align 8
  %53 = icmp ne %struct.bufferevent** %52, null
  br i1 %53, label %54, label %70

54:                                               ; preds = %51
  %55 = load i32, i32* @test_ok, align 4
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %70

57:                                               ; preds = %54
  %58 = load i32, i32* @test_ok, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* @test_ok, align 4
  store i32 %59, i32* %15, align 4
  %60 = load %struct.bufferevent**, %struct.bufferevent*** %14, align 8
  %61 = load %struct.bufferevent*, %struct.bufferevent** %60, align 8
  %62 = call i32 @bufferevent_write(%struct.bufferevent* %61, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %63 = load i32, i32* @test_ok, align 4
  %64 = load i32, i32* %15, align 4
  %65 = icmp eq i32 %63, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @assert(i32 %66)
  %68 = load i32, i32* @test_ok, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* @test_ok, align 4
  br label %70

70:                                               ; preds = %57, %54, %51
  %71 = load i32, i32* @BEV_OK, align 4
  store i32 %71, i32* %6, align 4
  br label %72

72:                                               ; preds = %70, %49
  %73 = load i32, i32* %6, align 4
  ret i32 %73
}

declare dso_local i8* @evbuffer_pullup(%struct.evbuffer*, i32) #1

declare dso_local i32 @evbuffer_get_length(%struct.evbuffer*) #1

declare dso_local i32 @evbuffer_add(%struct.evbuffer*, ...) #1

declare dso_local i32 @evbuffer_drain(%struct.evbuffer*, i32) #1

declare dso_local i32 @bufferevent_write(%struct.bufferevent*, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_buffer.c_test_evbuffer_find.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_buffer.c_test_evbuffer_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"1234567890\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"1234567890\0D\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"xy\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"ax\00", align 1
@EVBUFFER_INITIAL_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @test_evbuffer_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_evbuffer_find(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [256 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca %struct.evbuffer*, align 8
  store i8* %0, i8** %2, align 8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  %9 = call %struct.evbuffer* (...) @evbuffer_new()
  store %struct.evbuffer* %9, %struct.evbuffer** %8, align 8
  %10 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %11 = call i32 @tt_assert(%struct.evbuffer* %10)
  %12 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to i32*
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @strlen(i8* %15)
  %17 = call i32 @evbuffer_add(%struct.evbuffer* %12, i32* %14, i32 %16)
  %18 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %19 = call i32 @evbuffer_validate(%struct.evbuffer* %18)
  %20 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @strlen(i8* %21)
  %23 = call i32 @evbuffer_drain(%struct.evbuffer* %20, i32 %22)
  %24 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %25 = call i32 @evbuffer_validate(%struct.evbuffer* %24)
  %26 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = bitcast i8* %27 to i32*
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @strlen(i8* %29)
  %31 = call i32 @evbuffer_add(%struct.evbuffer* %26, i32* %28, i32 %30)
  %32 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %33 = call i32 @evbuffer_validate(%struct.evbuffer* %32)
  %34 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %35 = call i32* @evbuffer_find(%struct.evbuffer* %34, i32* bitcast ([3 x i8]* @.str.2 to i32*), i32 2)
  store i32* %35, i32** %3, align 8
  %36 = load i32*, i32** %3, align 8
  %37 = icmp eq i32* %36, null
  %38 = zext i1 %37 to i32
  %39 = call i32 @tt_want(i32 %38)
  %40 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = call i32 @strlen(i8* %41)
  %43 = call i32 @evbuffer_drain(%struct.evbuffer* %40, i32 %42)
  %44 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %45 = call i32 @evbuffer_validate(%struct.evbuffer* %44)
  store i32 0, i32* %7, align 4
  br label %46

46:                                               ; preds = %53, %1
  %47 = load i32, i32* %7, align 4
  %48 = icmp ult i32 %47, 256
  br i1 %48, label %49, label %56

49:                                               ; preds = %46
  %50 = load i32, i32* %7, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 %51
  store i8 97, i8* %52, align 1
  br label %53

53:                                               ; preds = %49
  %54 = load i32, i32* %7, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %7, align 4
  br label %46

56:                                               ; preds = %46
  %57 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 255
  store i8 120, i8* %57, align 1
  %58 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %59 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %60 = bitcast i8* %59 to i32*
  %61 = call i32 @evbuffer_add(%struct.evbuffer* %58, i32* %60, i32 256)
  %62 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %63 = call i32 @evbuffer_validate(%struct.evbuffer* %62)
  %64 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %65 = call i32* @evbuffer_find(%struct.evbuffer* %64, i32* bitcast ([3 x i8]* @.str.3 to i32*), i32 2)
  store i32* %65, i32** %3, align 8
  %66 = load i32*, i32** %3, align 8
  %67 = icmp eq i32* %66, null
  %68 = zext i1 %67 to i32
  %69 = call i32 @tt_want(i32 %68)
  %70 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %71 = call i32* @evbuffer_find(%struct.evbuffer* %70, i32* bitcast ([3 x i8]* @.str.4 to i32*), i32 2)
  store i32* %71, i32** %3, align 8
  %72 = load i32*, i32** %3, align 8
  %73 = icmp ne i32* %72, null
  %74 = zext i1 %73 to i32
  %75 = sext i32 %74 to i64
  %76 = inttoptr i64 %75 to %struct.evbuffer*
  %77 = call i32 @tt_assert(%struct.evbuffer* %76)
  %78 = load i32*, i32** %3, align 8
  %79 = bitcast i32* %78 to i8*
  %80 = call i64 @strncmp(i8* %79, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 2)
  %81 = icmp eq i64 %80, 0
  %82 = zext i1 %81 to i32
  %83 = call i32 @tt_want(i32 %82)
  br label %84

84:                                               ; preds = %56
  %85 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %86 = icmp ne %struct.evbuffer* %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %89 = call i32 @evbuffer_free(%struct.evbuffer* %88)
  br label %90

90:                                               ; preds = %87, %84
  ret void
}

declare dso_local %struct.evbuffer* @evbuffer_new(...) #1

declare dso_local i32 @tt_assert(%struct.evbuffer*) #1

declare dso_local i32 @evbuffer_add(%struct.evbuffer*, i32*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @evbuffer_validate(%struct.evbuffer*) #1

declare dso_local i32 @evbuffer_drain(%struct.evbuffer*, i32) #1

declare dso_local i32* @evbuffer_find(%struct.evbuffer*, i32*, i32) #1

declare dso_local i32 @tt_want(i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @evbuffer_free(%struct.evbuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

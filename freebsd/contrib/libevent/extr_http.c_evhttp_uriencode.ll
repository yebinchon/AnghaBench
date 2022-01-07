; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_http.c_evhttp_uriencode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_http.c_evhttp_uriencode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer = type { i32 }

@EV_SSIZE_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%%%02X\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @evhttp_uriencode(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.evbuffer*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = call %struct.evbuffer* (...) @evbuffer_new()
  store %struct.evbuffer* %13, %struct.evbuffer** %8, align 8
  %14 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %15 = icmp eq %struct.evbuffer* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %103

17:                                               ; preds = %3
  %18 = load i64, i64* %6, align 8
  %19 = icmp sge i64 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %17
  %21 = load i8*, i8** %5, align 8
  %22 = load i64, i64* %6, align 8
  %23 = getelementptr inbounds i8, i8* %21, i64 %22
  %24 = load i8*, i8** %5, align 8
  %25 = icmp ult i8* %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i8* null, i8** %4, align 8
  br label %103

27:                                               ; preds = %20
  %28 = load i8*, i8** %5, align 8
  %29 = load i64, i64* %6, align 8
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  store i8* %30, i8** %10, align 8
  br label %49

31:                                               ; preds = %17
  %32 = load i8*, i8** %5, align 8
  %33 = call i64 @strlen(i8* %32)
  store i64 %33, i64* %12, align 8
  %34 = load i64, i64* %12, align 8
  %35 = load i64, i64* @EV_SSIZE_MAX, align 8
  %36 = icmp uge i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i8* null, i8** %4, align 8
  br label %103

38:                                               ; preds = %31
  %39 = load i8*, i8** %5, align 8
  %40 = load i64, i64* %12, align 8
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  %42 = load i8*, i8** %5, align 8
  %43 = icmp ult i8* %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store i8* null, i8** %4, align 8
  br label %103

45:                                               ; preds = %38
  %46 = load i8*, i8** %5, align 8
  %47 = load i64, i64* %12, align 8
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  store i8* %48, i8** %10, align 8
  br label %49

49:                                               ; preds = %45, %27
  %50 = load i8*, i8** %5, align 8
  store i8* %50, i8** %9, align 8
  br label %51

51:                                               ; preds = %82, %49
  %52 = load i8*, i8** %9, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = icmp ult i8* %52, %53
  br i1 %54, label %55, label %85

55:                                               ; preds = %51
  %56 = load i8*, i8** %9, align 8
  %57 = load i8, i8* %56, align 1
  %58 = call i64 @CHAR_IS_UNRESERVED(i8 signext %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = call i32 @evbuffer_add(%struct.evbuffer* %61, i8* %62, i32 1)
  br label %81

64:                                               ; preds = %55
  %65 = load i8*, i8** %9, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 32
  br i1 %68, label %69, label %75

69:                                               ; preds = %64
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %74 = call i32 @evbuffer_add(%struct.evbuffer* %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  br label %80

75:                                               ; preds = %69, %64
  %76 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %77 = load i8*, i8** %9, align 8
  %78 = load i8, i8* %77, align 1
  %79 = call i32 @evbuffer_add_printf(%struct.evbuffer* %76, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %78)
  br label %80

80:                                               ; preds = %75, %72
  br label %81

81:                                               ; preds = %80, %60
  br label %82

82:                                               ; preds = %81
  %83 = load i8*, i8** %9, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %9, align 8
  br label %51

85:                                               ; preds = %51
  %86 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %87 = call i32 @evbuffer_add(%struct.evbuffer* %86, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %88 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %89 = call i32 @evbuffer_get_length(%struct.evbuffer* %88)
  %90 = call i8* @mm_malloc(i32 %89)
  store i8* %90, i8** %11, align 8
  %91 = load i8*, i8** %11, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %99

93:                                               ; preds = %85
  %94 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %95 = load i8*, i8** %11, align 8
  %96 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %97 = call i32 @evbuffer_get_length(%struct.evbuffer* %96)
  %98 = call i32 @evbuffer_remove(%struct.evbuffer* %94, i8* %95, i32 %97)
  br label %99

99:                                               ; preds = %93, %85
  %100 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %101 = call i32 @evbuffer_free(%struct.evbuffer* %100)
  %102 = load i8*, i8** %11, align 8
  store i8* %102, i8** %4, align 8
  br label %103

103:                                              ; preds = %99, %44, %37, %26, %16
  %104 = load i8*, i8** %4, align 8
  ret i8* %104
}

declare dso_local %struct.evbuffer* @evbuffer_new(...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @CHAR_IS_UNRESERVED(i8 signext) #1

declare dso_local i32 @evbuffer_add(%struct.evbuffer*, i8*, i32) #1

declare dso_local i32 @evbuffer_add_printf(%struct.evbuffer*, i8*, i8 zeroext) #1

declare dso_local i8* @mm_malloc(i32) #1

declare dso_local i32 @evbuffer_get_length(%struct.evbuffer*) #1

declare dso_local i32 @evbuffer_remove(%struct.evbuffer*, i8*, i32) #1

declare dso_local i32 @evbuffer_free(%struct.evbuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

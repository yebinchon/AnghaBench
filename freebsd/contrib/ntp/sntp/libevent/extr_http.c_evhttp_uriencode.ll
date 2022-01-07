; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_http.c_evhttp_uriencode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_http.c_evhttp_uriencode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer = type { i32 }

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
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = call %struct.evbuffer* (...) @evbuffer_new()
  store %struct.evbuffer* %12, %struct.evbuffer** %8, align 8
  %13 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %14 = icmp eq %struct.evbuffer* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %83

16:                                               ; preds = %3
  %17 = load i64, i64* %6, align 8
  %18 = icmp sge i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load i8*, i8** %5, align 8
  %21 = load i64, i64* %6, align 8
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  store i8* %22, i8** %10, align 8
  br label %29

23:                                               ; preds = %16
  %24 = load i8*, i8** %5, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @strlen(i8* %25)
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %24, i64 %27
  store i8* %28, i8** %10, align 8
  br label %29

29:                                               ; preds = %23, %19
  %30 = load i8*, i8** %5, align 8
  store i8* %30, i8** %9, align 8
  br label %31

31:                                               ; preds = %62, %29
  %32 = load i8*, i8** %9, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = icmp ult i8* %32, %33
  br i1 %34, label %35, label %65

35:                                               ; preds = %31
  %36 = load i8*, i8** %9, align 8
  %37 = load i8, i8* %36, align 1
  %38 = call i64 @CHAR_IS_UNRESERVED(i8 signext %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = call i32 @evbuffer_add(%struct.evbuffer* %41, i8* %42, i32 1)
  br label %61

44:                                               ; preds = %35
  %45 = load i8*, i8** %9, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 32
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %54 = call i32 @evbuffer_add(%struct.evbuffer* %53, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  br label %60

55:                                               ; preds = %49, %44
  %56 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = load i8, i8* %57, align 1
  %59 = call i32 @evbuffer_add_printf(%struct.evbuffer* %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %58)
  br label %60

60:                                               ; preds = %55, %52
  br label %61

61:                                               ; preds = %60, %40
  br label %62

62:                                               ; preds = %61
  %63 = load i8*, i8** %9, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %9, align 8
  br label %31

65:                                               ; preds = %31
  %66 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %67 = call i32 @evbuffer_add(%struct.evbuffer* %66, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %68 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %69 = call i32 @evbuffer_get_length(%struct.evbuffer* %68)
  %70 = call i8* @mm_malloc(i32 %69)
  store i8* %70, i8** %11, align 8
  %71 = load i8*, i8** %11, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %79

73:                                               ; preds = %65
  %74 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %75 = load i8*, i8** %11, align 8
  %76 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %77 = call i32 @evbuffer_get_length(%struct.evbuffer* %76)
  %78 = call i32 @evbuffer_remove(%struct.evbuffer* %74, i8* %75, i32 %77)
  br label %79

79:                                               ; preds = %73, %65
  %80 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %81 = call i32 @evbuffer_free(%struct.evbuffer* %80)
  %82 = load i8*, i8** %11, align 8
  store i8* %82, i8** %4, align 8
  br label %83

83:                                               ; preds = %79, %15
  %84 = load i8*, i8** %4, align 8
  ret i8* %84
}

declare dso_local %struct.evbuffer* @evbuffer_new(...) #1

declare dso_local i32 @strlen(i8*) #1

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

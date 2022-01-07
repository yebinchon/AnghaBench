; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_http.c_evhttp_request_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_http.c_evhttp_request_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp_request = type { i32, i32*, i32*, %struct.evhttp_request*, %struct.evhttp_request*, %struct.evhttp_request*, %struct.evhttp_request*, i32*, %struct.evhttp_request*, %struct.evhttp_request* }

@EVHTTP_REQ_DEFER_FREE = common dso_local global i32 0, align 4
@EVHTTP_REQ_NEEDS_FREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evhttp_request_free(%struct.evhttp_request* %0) #0 {
  %2 = alloca %struct.evhttp_request*, align 8
  store %struct.evhttp_request* %0, %struct.evhttp_request** %2, align 8
  %3 = load %struct.evhttp_request*, %struct.evhttp_request** %2, align 8
  %4 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @EVHTTP_REQ_DEFER_FREE, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load i32, i32* @EVHTTP_REQ_NEEDS_FREE, align 4
  %11 = load %struct.evhttp_request*, %struct.evhttp_request** %2, align 8
  %12 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = or i32 %13, %10
  store i32 %14, i32* %12, align 8
  br label %104

15:                                               ; preds = %1
  %16 = load %struct.evhttp_request*, %struct.evhttp_request** %2, align 8
  %17 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %16, i32 0, i32 9
  %18 = load %struct.evhttp_request*, %struct.evhttp_request** %17, align 8
  %19 = icmp ne %struct.evhttp_request* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load %struct.evhttp_request*, %struct.evhttp_request** %2, align 8
  %22 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %21, i32 0, i32 9
  %23 = load %struct.evhttp_request*, %struct.evhttp_request** %22, align 8
  %24 = call i32 @mm_free(%struct.evhttp_request* %23)
  br label %25

25:                                               ; preds = %20, %15
  %26 = load %struct.evhttp_request*, %struct.evhttp_request** %2, align 8
  %27 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %26, i32 0, i32 8
  %28 = load %struct.evhttp_request*, %struct.evhttp_request** %27, align 8
  %29 = icmp ne %struct.evhttp_request* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.evhttp_request*, %struct.evhttp_request** %2, align 8
  %32 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %31, i32 0, i32 8
  %33 = load %struct.evhttp_request*, %struct.evhttp_request** %32, align 8
  %34 = call i32 @mm_free(%struct.evhttp_request* %33)
  br label %35

35:                                               ; preds = %30, %25
  %36 = load %struct.evhttp_request*, %struct.evhttp_request** %2, align 8
  %37 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %36, i32 0, i32 7
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load %struct.evhttp_request*, %struct.evhttp_request** %2, align 8
  %42 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %41, i32 0, i32 7
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @evhttp_uri_free(i32* %43)
  br label %45

45:                                               ; preds = %40, %35
  %46 = load %struct.evhttp_request*, %struct.evhttp_request** %2, align 8
  %47 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %46, i32 0, i32 6
  %48 = load %struct.evhttp_request*, %struct.evhttp_request** %47, align 8
  %49 = icmp ne %struct.evhttp_request* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load %struct.evhttp_request*, %struct.evhttp_request** %2, align 8
  %52 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %51, i32 0, i32 6
  %53 = load %struct.evhttp_request*, %struct.evhttp_request** %52, align 8
  %54 = call i32 @mm_free(%struct.evhttp_request* %53)
  br label %55

55:                                               ; preds = %50, %45
  %56 = load %struct.evhttp_request*, %struct.evhttp_request** %2, align 8
  %57 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %56, i32 0, i32 5
  %58 = load %struct.evhttp_request*, %struct.evhttp_request** %57, align 8
  %59 = icmp ne %struct.evhttp_request* %58, null
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load %struct.evhttp_request*, %struct.evhttp_request** %2, align 8
  %62 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %61, i32 0, i32 5
  %63 = load %struct.evhttp_request*, %struct.evhttp_request** %62, align 8
  %64 = call i32 @mm_free(%struct.evhttp_request* %63)
  br label %65

65:                                               ; preds = %60, %55
  %66 = load %struct.evhttp_request*, %struct.evhttp_request** %2, align 8
  %67 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %66, i32 0, i32 4
  %68 = load %struct.evhttp_request*, %struct.evhttp_request** %67, align 8
  %69 = call i32 @evhttp_clear_headers(%struct.evhttp_request* %68)
  %70 = load %struct.evhttp_request*, %struct.evhttp_request** %2, align 8
  %71 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %70, i32 0, i32 4
  %72 = load %struct.evhttp_request*, %struct.evhttp_request** %71, align 8
  %73 = call i32 @mm_free(%struct.evhttp_request* %72)
  %74 = load %struct.evhttp_request*, %struct.evhttp_request** %2, align 8
  %75 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %74, i32 0, i32 3
  %76 = load %struct.evhttp_request*, %struct.evhttp_request** %75, align 8
  %77 = call i32 @evhttp_clear_headers(%struct.evhttp_request* %76)
  %78 = load %struct.evhttp_request*, %struct.evhttp_request** %2, align 8
  %79 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %78, i32 0, i32 3
  %80 = load %struct.evhttp_request*, %struct.evhttp_request** %79, align 8
  %81 = call i32 @mm_free(%struct.evhttp_request* %80)
  %82 = load %struct.evhttp_request*, %struct.evhttp_request** %2, align 8
  %83 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %91

86:                                               ; preds = %65
  %87 = load %struct.evhttp_request*, %struct.evhttp_request** %2, align 8
  %88 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @evbuffer_free(i32* %89)
  br label %91

91:                                               ; preds = %86, %65
  %92 = load %struct.evhttp_request*, %struct.evhttp_request** %2, align 8
  %93 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %96, label %101

96:                                               ; preds = %91
  %97 = load %struct.evhttp_request*, %struct.evhttp_request** %2, align 8
  %98 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = call i32 @evbuffer_free(i32* %99)
  br label %101

101:                                              ; preds = %96, %91
  %102 = load %struct.evhttp_request*, %struct.evhttp_request** %2, align 8
  %103 = call i32 @mm_free(%struct.evhttp_request* %102)
  br label %104

104:                                              ; preds = %101, %9
  ret void
}

declare dso_local i32 @mm_free(%struct.evhttp_request*) #1

declare dso_local i32 @evhttp_uri_free(i32*) #1

declare dso_local i32 @evhttp_clear_headers(%struct.evhttp_request*) #1

declare dso_local i32 @evbuffer_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

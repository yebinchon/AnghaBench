; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_netevent.c_comm_point_http_handle_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_netevent.c_comm_point_http_handle_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comm_point = type { i64, i64, i32, i32, i64, i64, i64, i32 }

@comm_http = common dso_local global i64 0, align 8
@comm_ssl_shake_none = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.comm_point*)* @comm_point_http_handle_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @comm_point_http_handle_read(i32 %0, %struct.comm_point* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.comm_point*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.comm_point* %1, %struct.comm_point** %5, align 8
  %8 = load %struct.comm_point*, %struct.comm_point** %5, align 8
  %9 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @comm_http, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @log_assert(i32 %13)
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, -1
  %17 = zext i1 %16 to i32
  %18 = call i32 @log_assert(i32 %17)
  %19 = load %struct.comm_point*, %struct.comm_point** %5, align 8
  %20 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %19, i32 0, i32 7
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %121

24:                                               ; preds = %2
  %25 = load %struct.comm_point*, %struct.comm_point** %5, align 8
  %26 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %25, i32 0, i32 6
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.comm_point*, %struct.comm_point** %5, align 8
  %31 = call i32 @ssl_http_read_more(%struct.comm_point* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %121

34:                                               ; preds = %29
  br label %42

35:                                               ; preds = %24
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.comm_point*, %struct.comm_point** %5, align 8
  %38 = call i32 @http_read_more(i32 %36, %struct.comm_point* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %121

41:                                               ; preds = %35
  br label %42

42:                                               ; preds = %41, %34
  %43 = load %struct.comm_point*, %struct.comm_point** %5, align 8
  %44 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @sldns_buffer_flip(i32 %45)
  br label %47

47:                                               ; preds = %115, %96, %42
  %48 = load %struct.comm_point*, %struct.comm_point** %5, align 8
  %49 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @sldns_buffer_remaining(i32 %50)
  %52 = icmp sgt i64 %51, 0
  br i1 %52, label %53, label %116

53:                                               ; preds = %47
  %54 = load %struct.comm_point*, %struct.comm_point** %5, align 8
  %55 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %54, i32 0, i32 5
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %53
  %59 = load %struct.comm_point*, %struct.comm_point** %5, align 8
  %60 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %97

63:                                               ; preds = %58, %53
  %64 = load %struct.comm_point*, %struct.comm_point** %5, align 8
  %65 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @http_header_done(i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %63
  %70 = load %struct.comm_point*, %struct.comm_point** %5, align 8
  %71 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @http_moveover_buffer(i32 %72)
  store i32 1, i32* %3, align 4
  br label %121

74:                                               ; preds = %63
  %75 = load %struct.comm_point*, %struct.comm_point** %5, align 8
  %76 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %75, i32 0, i32 4
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %74
  %80 = load %struct.comm_point*, %struct.comm_point** %5, align 8
  %81 = call i32 @http_process_initial_header(%struct.comm_point* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %79
  store i32 0, i32* %3, align 4
  br label %121

84:                                               ; preds = %79
  br label %96

85:                                               ; preds = %74
  %86 = load %struct.comm_point*, %struct.comm_point** %5, align 8
  %87 = call i32 @http_process_chunk_header(%struct.comm_point* %86)
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* %6, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  store i32 0, i32* %3, align 4
  br label %121

91:                                               ; preds = %85
  %92 = load i32, i32* %6, align 4
  %93 = icmp eq i32 %92, 2
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  store i32 1, i32* %3, align 4
  br label %121

95:                                               ; preds = %91
  br label %96

96:                                               ; preds = %95, %84
  br label %47

97:                                               ; preds = %58
  %98 = load %struct.comm_point*, %struct.comm_point** %5, align 8
  %99 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %97
  %103 = load %struct.comm_point*, %struct.comm_point** %5, align 8
  %104 = call i32 @http_nonchunk_segment(%struct.comm_point* %103)
  store i32 %104, i32* %3, align 4
  br label %121

105:                                              ; preds = %97
  %106 = load %struct.comm_point*, %struct.comm_point** %5, align 8
  %107 = call i32 @http_chunked_segment(%struct.comm_point* %106)
  store i32 %107, i32* %7, align 4
  %108 = load i32, i32* %7, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  store i32 0, i32* %3, align 4
  br label %121

111:                                              ; preds = %105
  %112 = load i32, i32* %7, align 4
  %113 = icmp eq i32 %112, 1
  br i1 %113, label %114, label %115

114:                                              ; preds = %111
  store i32 1, i32* %3, align 4
  br label %121

115:                                              ; preds = %111
  br label %47

116:                                              ; preds = %47
  %117 = load %struct.comm_point*, %struct.comm_point** %5, align 8
  %118 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @http_moveover_buffer(i32 %119)
  store i32 1, i32* %3, align 4
  br label %121

121:                                              ; preds = %116, %114, %110, %102, %94, %90, %83, %69, %40, %33, %23
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i32 @log_assert(i32) #1

declare dso_local i32 @ssl_http_read_more(%struct.comm_point*) #1

declare dso_local i32 @http_read_more(i32, %struct.comm_point*) #1

declare dso_local i32 @sldns_buffer_flip(i32) #1

declare dso_local i64 @sldns_buffer_remaining(i32) #1

declare dso_local i32 @http_header_done(i32) #1

declare dso_local i32 @http_moveover_buffer(i32) #1

declare dso_local i32 @http_process_initial_header(%struct.comm_point*) #1

declare dso_local i32 @http_process_chunk_header(%struct.comm_point*) #1

declare dso_local i32 @http_nonchunk_segment(%struct.comm_point*) #1

declare dso_local i32 @http_chunked_segment(%struct.comm_point*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

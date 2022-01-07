; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_netevent.c_comm_point_http_handle_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_netevent.c_comm_point_http_handle_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comm_point = type { i64, i64, i32, i64, i64, i32, i64, i64 }

@comm_http = common dso_local global i64 0, align 8
@comm_ssl_shake_none = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.comm_point*)* @comm_point_http_handle_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @comm_point_http_handle_write(i32 %0, %struct.comm_point* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.comm_point*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.comm_point* %1, %struct.comm_point** %5, align 8
  %7 = load %struct.comm_point*, %struct.comm_point** %5, align 8
  %8 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @comm_http, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @log_assert(i32 %12)
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, -1
  %16 = zext i1 %15 to i32
  %17 = call i32 @log_assert(i32 %16)
  %18 = load %struct.comm_point*, %struct.comm_point** %5, align 8
  %19 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %18, i32 0, i32 7
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %2
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.comm_point*, %struct.comm_point** %5, align 8
  %25 = call i32 @http_check_connect(i32 %23, %struct.comm_point* %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %86

29:                                               ; preds = %22
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 1, i32* %3, align 4
  br label %86

33:                                               ; preds = %29
  %34 = load %struct.comm_point*, %struct.comm_point** %5, align 8
  %35 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %34, i32 0, i32 7
  store i64 0, i64* %35, align 8
  br label %36

36:                                               ; preds = %33, %2
  %37 = load %struct.comm_point*, %struct.comm_point** %5, align 8
  %38 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i32 1, i32* %3, align 4
  br label %86

42:                                               ; preds = %36
  %43 = load %struct.comm_point*, %struct.comm_point** %5, align 8
  %44 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %43, i32 0, i32 6
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load %struct.comm_point*, %struct.comm_point** %5, align 8
  %49 = call i32 @ssl_http_write_more(%struct.comm_point* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %86

52:                                               ; preds = %47
  br label %60

53:                                               ; preds = %42
  %54 = load i32, i32* %4, align 4
  %55 = load %struct.comm_point*, %struct.comm_point** %5, align 8
  %56 = call i32 @http_write_more(i32 %54, %struct.comm_point* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %86

59:                                               ; preds = %53
  br label %60

60:                                               ; preds = %59, %52
  %61 = load %struct.comm_point*, %struct.comm_point** %5, align 8
  %62 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @sldns_buffer_remaining(i32 %63)
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %85

66:                                               ; preds = %60
  %67 = load %struct.comm_point*, %struct.comm_point** %5, align 8
  %68 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @sldns_buffer_clear(i32 %69)
  %71 = load %struct.comm_point*, %struct.comm_point** %5, align 8
  %72 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %71, i32 0, i32 4
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %66
  %76 = load %struct.comm_point*, %struct.comm_point** %5, align 8
  %77 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %76, i32 0, i32 2
  store i32 1, i32* %77, align 8
  br label %78

78:                                               ; preds = %75, %66
  %79 = load %struct.comm_point*, %struct.comm_point** %5, align 8
  %80 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %79, i32 0, i32 3
  store i64 0, i64* %80, align 8
  %81 = load %struct.comm_point*, %struct.comm_point** %5, align 8
  %82 = call i32 @comm_point_stop_listening(%struct.comm_point* %81)
  %83 = load %struct.comm_point*, %struct.comm_point** %5, align 8
  %84 = call i32 @comm_point_start_listening(%struct.comm_point* %83, i32 -1, i32 -1)
  br label %85

85:                                               ; preds = %78, %60
  store i32 1, i32* %3, align 4
  br label %86

86:                                               ; preds = %85, %58, %51, %41, %32, %28
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @log_assert(i32) #1

declare dso_local i32 @http_check_connect(i32, %struct.comm_point*) #1

declare dso_local i32 @ssl_http_write_more(%struct.comm_point*) #1

declare dso_local i32 @http_write_more(i32, %struct.comm_point*) #1

declare dso_local i64 @sldns_buffer_remaining(i32) #1

declare dso_local i32 @sldns_buffer_clear(i32) #1

declare dso_local i32 @comm_point_stop_listening(%struct.comm_point*) #1

declare dso_local i32 @comm_point_start_listening(%struct.comm_point*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_http.c_evhttp_maybe_add_date_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_http.c_evhttp_maybe_add_date_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evkeyvalq = type { i32 }
%struct.tm = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"Date\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"%a, %d %b %Y %H:%M:%S GMT\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evkeyvalq*)* @evhttp_maybe_add_date_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @evhttp_maybe_add_date_header(%struct.evkeyvalq* %0) #0 {
  %2 = alloca %struct.evkeyvalq*, align 8
  %3 = alloca [50 x i8], align 16
  %4 = alloca %struct.tm, align 4
  %5 = alloca %struct.tm*, align 8
  %6 = alloca i32, align 4
  store %struct.evkeyvalq* %0, %struct.evkeyvalq** %2, align 8
  %7 = load %struct.evkeyvalq*, %struct.evkeyvalq** %2, align 8
  %8 = call i32* @evhttp_find_header(%struct.evkeyvalq* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %22

10:                                               ; preds = %1
  %11 = call i32 @time(i32* null)
  store i32 %11, i32* %6, align 4
  %12 = call i32 @gmtime_r(i32* %6, %struct.tm* %4)
  store %struct.tm* %4, %struct.tm** %5, align 8
  %13 = getelementptr inbounds [50 x i8], [50 x i8]* %3, i64 0, i64 0
  %14 = load %struct.tm*, %struct.tm** %5, align 8
  %15 = call i64 @strftime(i8* %13, i32 50, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), %struct.tm* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %10
  %18 = load %struct.evkeyvalq*, %struct.evkeyvalq** %2, align 8
  %19 = getelementptr inbounds [50 x i8], [50 x i8]* %3, i64 0, i64 0
  %20 = call i32 @evhttp_add_header(%struct.evkeyvalq* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %19)
  br label %21

21:                                               ; preds = %17, %10
  br label %22

22:                                               ; preds = %21, %1
  ret void
}

declare dso_local i32* @evhttp_find_header(%struct.evkeyvalq*, i8*) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @gmtime_r(i32*, %struct.tm*) #1

declare dso_local i64 @strftime(i8*, i32, i8*, %struct.tm*) #1

declare dso_local i32 @evhttp_add_header(%struct.evkeyvalq*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

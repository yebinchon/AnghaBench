; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_http.c_evhttp_uri_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_http.c_evhttp_uri_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp_uri = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.evhttp_uri* @evhttp_uri_new() #0 {
  %1 = alloca %struct.evhttp_uri*, align 8
  %2 = call %struct.evhttp_uri* @mm_calloc(i32 4, i32 1)
  store %struct.evhttp_uri* %2, %struct.evhttp_uri** %1, align 8
  %3 = load %struct.evhttp_uri*, %struct.evhttp_uri** %1, align 8
  %4 = icmp ne %struct.evhttp_uri* %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load %struct.evhttp_uri*, %struct.evhttp_uri** %1, align 8
  %7 = getelementptr inbounds %struct.evhttp_uri, %struct.evhttp_uri* %6, i32 0, i32 0
  store i32 -1, i32* %7, align 4
  br label %8

8:                                                ; preds = %5, %0
  %9 = load %struct.evhttp_uri*, %struct.evhttp_uri** %1, align 8
  ret %struct.evhttp_uri* %9
}

declare dso_local %struct.evhttp_uri* @mm_calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

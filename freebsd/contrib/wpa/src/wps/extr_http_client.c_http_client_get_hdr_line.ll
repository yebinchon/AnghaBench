; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_http_client.c_http_client_get_hdr_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_http_client.c_http_client_get_hdr_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.http_client = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @http_client_get_hdr_line(%struct.http_client* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.http_client*, align 8
  %5 = alloca i8*, align 8
  store %struct.http_client* %0, %struct.http_client** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load %struct.http_client*, %struct.http_client** %4, align 8
  %7 = getelementptr inbounds %struct.http_client, %struct.http_client* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %17

11:                                               ; preds = %2
  %12 = load %struct.http_client*, %struct.http_client** %4, align 8
  %13 = getelementptr inbounds %struct.http_client, %struct.http_client* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call i8* @httpread_hdr_line_get(i32* %14, i8* %15)
  store i8* %16, i8** %3, align 8
  br label %17

17:                                               ; preds = %11, %10
  %18 = load i8*, i8** %3, align 8
  ret i8* %18
}

declare dso_local i8* @httpread_hdr_line_get(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

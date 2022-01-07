; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libfetch/extr_http.c_fetchStatHTTP.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libfetch/extr_http.c_fetchStatHTTP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.url = type { i32 }
%struct.url_stat = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fetchStatHTTP(%struct.url* %0, %struct.url_stat* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.url*, align 8
  %6 = alloca %struct.url_stat*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  store %struct.url* %0, %struct.url** %5, align 8
  store %struct.url_stat* %1, %struct.url_stat** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.url*, %struct.url** %5, align 8
  %10 = load %struct.url_stat*, %struct.url_stat** %6, align 8
  %11 = load %struct.url*, %struct.url** %5, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call i32 @http_get_proxy(%struct.url* %11, i8* %12)
  %14 = load i8*, i8** %7, align 8
  %15 = call i32* @http_request(%struct.url* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.url_stat* %10, i32 %13, i8* %14)
  store i32* %15, i32** %8, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %22

19:                                               ; preds = %3
  %20 = load i32*, i32** %8, align 8
  %21 = call i32 @fclose(i32* %20)
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %19, %18
  %23 = load i32, i32* %4, align 4
  ret i32 %23
}

declare dso_local i32* @http_request(%struct.url*, i8*, %struct.url_stat*, i32, i8*) #1

declare dso_local i32 @http_get_proxy(%struct.url*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

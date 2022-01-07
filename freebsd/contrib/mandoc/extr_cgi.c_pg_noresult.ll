; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_cgi.c_pg_noresult.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_cgi.c_pg_noresult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.req = type { i32 }

@FOCUS_QUERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"<p>\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"</p>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.req*, i8*)* @pg_noresult to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pg_noresult(%struct.req* %0, i8* %1) #0 {
  %3 = alloca %struct.req*, align 8
  %4 = alloca i8*, align 8
  store %struct.req* %0, %struct.req** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = call i32 @resp_begin_html(i32 200, i32* null, i32* null)
  %6 = load %struct.req*, %struct.req** %3, align 8
  %7 = load i32, i32* @FOCUS_QUERY, align 4
  %8 = call i32 @resp_searchform(%struct.req* %6, i32 %7)
  %9 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @puts(i8* %10)
  %12 = call i32 @puts(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %13 = call i32 (...) @resp_end_html()
  ret void
}

declare dso_local i32 @resp_begin_html(i32, i32*, i32*) #1

declare dso_local i32 @resp_searchform(%struct.req*, i32) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @resp_end_html(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

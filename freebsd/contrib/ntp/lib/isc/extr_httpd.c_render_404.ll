; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_httpd.c_render_404.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_httpd.c_render_404.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@render_404.msg = internal global [13 x i8] c"No such URL.\00", align 1
@.str = private unnamed_addr constant [12 x i8] c"No such URL\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"text/plain\00", align 1
@ISC_R_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i32*, i8**, i8**, i32*, i32**, i8**)* @render_404 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @render_404(i8* %0, i8* %1, i8* %2, i32* %3, i8** %4, i8** %5, i32* %6, i32** %7, i8** %8) #0 {
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32**, align 8
  %18 = alloca i8**, align 8
  store i8* %0, i8** %10, align 8
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store i32* %3, i32** %13, align 8
  store i8** %4, i8*** %14, align 8
  store i8** %5, i8*** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32** %7, i32*** %17, align 8
  store i8** %8, i8*** %18, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = call i32 @UNUSED(i8* %19)
  %21 = load i8*, i8** %11, align 8
  %22 = call i32 @UNUSED(i8* %21)
  %23 = load i8*, i8** %12, align 8
  %24 = call i32 @UNUSED(i8* %23)
  %25 = load i32*, i32** %13, align 8
  store i32 404, i32* %25, align 4
  %26 = load i8**, i8*** %14, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %26, align 8
  %27 = load i8**, i8*** %15, align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %27, align 8
  %28 = load i32*, i32** %16, align 8
  %29 = call i32 @strlen(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @render_404.msg, i64 0, i64 0))
  %30 = call i32 @isc_buffer_reinit(i32* %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @render_404.msg, i64 0, i64 0), i32 %29)
  %31 = load i32*, i32** %16, align 8
  %32 = call i32 @strlen(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @render_404.msg, i64 0, i64 0))
  %33 = call i32 @isc_buffer_add(i32* %31, i32 %32)
  %34 = load i32**, i32*** %17, align 8
  store i32* null, i32** %34, align 8
  %35 = load i8**, i8*** %18, align 8
  store i8* null, i8** %35, align 8
  %36 = load i32, i32* @ISC_R_SUCCESS, align 4
  ret i32 %36
}

declare dso_local i32 @UNUSED(i8*) #1

declare dso_local i32 @isc_buffer_reinit(i32*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @isc_buffer_add(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

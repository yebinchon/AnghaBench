; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_outside_network.c_setup_http_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_outside_network.c_setup_http_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"GET /%s HTTP/1.1\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Host: %s\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"User-Agent: unbound/%s\0D\0A\00", align 1
@PACKAGE_VERSION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*)* @setup_http_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_http_request(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = call i32 @sldns_buffer_clear(i32* %8)
  %10 = load i32*, i32** %5, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = call i32 (i32*, i8*, ...) @sldns_buffer_printf(i32* %10, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %11)
  %13 = load i32*, i32** %5, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 (i32*, i8*, ...) @sldns_buffer_printf(i32* %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %14)
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* @PACKAGE_VERSION, align 4
  %18 = call i32 (i32*, i8*, ...) @sldns_buffer_printf(i32* %16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %17)
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 (i32*, i8*, ...) @sldns_buffer_printf(i32* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %21 = load i32*, i32** %5, align 8
  %22 = call i64 @sldns_buffer_position(i32* %21)
  %23 = add nsw i64 %22, 10
  %24 = load i32*, i32** %5, align 8
  %25 = call i64 @sldns_buffer_capacity(i32* %24)
  %26 = icmp sgt i64 %23, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %31

28:                                               ; preds = %3
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @sldns_buffer_flip(i32* %29)
  store i32 1, i32* %4, align 4
  br label %31

31:                                               ; preds = %28, %27
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @sldns_buffer_clear(i32*) #1

declare dso_local i32 @sldns_buffer_printf(i32*, i8*, ...) #1

declare dso_local i64 @sldns_buffer_position(i32*) #1

declare dso_local i64 @sldns_buffer_capacity(i32*) #1

declare dso_local i32 @sldns_buffer_flip(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

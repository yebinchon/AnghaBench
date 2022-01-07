; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libfetch/extr_ftp.c_ftp_cached_connect.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libfetch/extr_ftp.c_ftp_cached_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.url = type { i32, i64 }

@cached_connection = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"NOOP\00", align 1
@FTP_OK = common dso_local global i32 0, align 4
@FTP_SYNTAX_ERROR = common dso_local global i32 0, align 4
@cached_host = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.url*, %struct.url*, i8*)* @ftp_cached_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ftp_cached_connect(%struct.url* %0, %struct.url* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.url*, align 8
  %6 = alloca %struct.url*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.url* %0, %struct.url** %5, align 8
  store %struct.url* %1, %struct.url** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.url*, %struct.url** %5, align 8
  %11 = getelementptr inbounds %struct.url, %struct.url* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %3
  %15 = load %struct.url*, %struct.url** %5, align 8
  %16 = getelementptr inbounds %struct.url, %struct.url* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @fetch_default_port(i32 %17)
  %19 = load %struct.url*, %struct.url** %5, align 8
  %20 = getelementptr inbounds %struct.url, %struct.url* %19, i32 0, i32 1
  store i64 %18, i64* %20, align 8
  br label %21

21:                                               ; preds = %14, %3
  %22 = load %struct.url*, %struct.url** %5, align 8
  %23 = call i64 @ftp_isconnected(%struct.url* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %21
  %26 = load i32*, i32** @cached_connection, align 8
  %27 = call i32 @ftp_cmd(i32* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @FTP_OK, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @FTP_SYNTAX_ERROR, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %31, %25
  %36 = load i32*, i32** @cached_connection, align 8
  %37 = call i32* @fetch_ref(i32* %36)
  store i32* %37, i32** %4, align 8
  br label %58

38:                                               ; preds = %31
  br label %39

39:                                               ; preds = %38, %21
  %40 = load %struct.url*, %struct.url** %5, align 8
  %41 = load %struct.url*, %struct.url** %6, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = call i32* @ftp_connect(%struct.url* %40, %struct.url* %41, i8* %42)
  store i32* %43, i32** %8, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  store i32* null, i32** %4, align 8
  br label %58

46:                                               ; preds = %39
  %47 = load i32*, i32** @cached_connection, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32*, i32** @cached_connection, align 8
  %51 = call i32 @ftp_disconnect(i32* %50)
  br label %52

52:                                               ; preds = %49, %46
  %53 = load i32*, i32** %8, align 8
  %54 = call i32* @fetch_ref(i32* %53)
  store i32* %54, i32** @cached_connection, align 8
  %55 = load %struct.url*, %struct.url** %5, align 8
  %56 = call i32 @memcpy(i32* @cached_host, %struct.url* %55, i32 16)
  %57 = load i32*, i32** %8, align 8
  store i32* %57, i32** %4, align 8
  br label %58

58:                                               ; preds = %52, %45, %35
  %59 = load i32*, i32** %4, align 8
  ret i32* %59
}

declare dso_local i64 @fetch_default_port(i32) #1

declare dso_local i64 @ftp_isconnected(%struct.url*) #1

declare dso_local i32 @ftp_cmd(i32*, i8*) #1

declare dso_local i32* @fetch_ref(i32*) #1

declare dso_local i32* @ftp_connect(%struct.url*, %struct.url*, i8*) #1

declare dso_local i32 @ftp_disconnect(i32*) #1

declare dso_local i32 @memcpy(i32*, %struct.url*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

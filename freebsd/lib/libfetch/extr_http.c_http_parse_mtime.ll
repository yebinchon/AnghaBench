; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libfetch/extr_http.c_http_parse_mtime.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libfetch/extr_http.c_http_parse_mtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i64, i64 }

@LC_TIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"%a, %d %b %Y %H:%M:%S GMT\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"%a, %d %b %Y %H:%M:%S UTC\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"last modified: [%04d-%02d-%02d %02d:%02d:%02d]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @http_parse_mtime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http_parse_mtime(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [64 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca %struct.tm, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %10 = load i32, i32* @LC_TIME, align 4
  %11 = call i32 @setlocale(i32 %10, i8* null)
  %12 = call i32 @strlcpy(i8* %9, i32 %11, i32 64)
  %13 = load i32, i32* @LC_TIME, align 4
  %14 = call i32 @setlocale(i32 %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %15 = load i8*, i8** %4, align 8
  %16 = call i8* @strptime(i8* %15, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), %struct.tm* %8)
  store i8* %16, i8** %7, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i8*, i8** %4, align 8
  %21 = call i8* @strptime(i8* %20, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), %struct.tm* %8)
  store i8* %21, i8** %7, align 8
  br label %22

22:                                               ; preds = %19, %2
  %23 = load i32, i32* @LC_TIME, align 4
  %24 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %25 = call i32 @setlocale(i32 %23, i8* %24)
  %26 = load i8*, i8** %7, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 -1, i32* %3, align 4
  br label %47

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 5
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, 1900
  %33 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 1
  %36 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @DEBUGF(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i64 %32, i64 %35, i32 %37, i32 %39, i32 %41, i32 %43)
  %45 = call i32 @timegm(%struct.tm* %8)
  %46 = load i32*, i32** %5, align 8
  store i32 %45, i32* %46, align 4
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %29, %28
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @strlcpy(i8*, i32, i32) #1

declare dso_local i32 @setlocale(i32, i8*) #1

declare dso_local i8* @strptime(i8*, i8*, %struct.tm*) #1

declare dso_local i32 @DEBUGF(i8*, i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @timegm(%struct.tm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

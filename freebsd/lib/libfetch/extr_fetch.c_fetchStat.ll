; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libfetch/extr_fetch.c_fetchStat.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libfetch/extr_fetch.c_fetchStat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.url = type { i32 }
%struct.url_stat = type { i32, i64, i64 }

@SCHEME_FILE = common dso_local global i32 0, align 4
@SCHEME_FTP = common dso_local global i32 0, align 4
@SCHEME_HTTP = common dso_local global i32 0, align 4
@SCHEME_HTTPS = common dso_local global i32 0, align 4
@URL_BAD_SCHEME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fetchStat(%struct.url* %0, %struct.url_stat* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.url*, align 8
  %6 = alloca %struct.url_stat*, align 8
  %7 = alloca i8*, align 8
  store %struct.url* %0, %struct.url** %5, align 8
  store %struct.url_stat* %1, %struct.url_stat** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load %struct.url_stat*, %struct.url_stat** %6, align 8
  %9 = icmp ne %struct.url_stat* %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %3
  %11 = load %struct.url_stat*, %struct.url_stat** %6, align 8
  %12 = getelementptr inbounds %struct.url_stat, %struct.url_stat* %11, i32 0, i32 0
  store i32 -1, i32* %12, align 8
  %13 = load %struct.url_stat*, %struct.url_stat** %6, align 8
  %14 = getelementptr inbounds %struct.url_stat, %struct.url_stat* %13, i32 0, i32 1
  store i64 0, i64* %14, align 8
  %15 = load %struct.url_stat*, %struct.url_stat** %6, align 8
  %16 = getelementptr inbounds %struct.url_stat, %struct.url_stat* %15, i32 0, i32 2
  store i64 0, i64* %16, align 8
  br label %17

17:                                               ; preds = %10, %3
  %18 = load %struct.url*, %struct.url** %5, align 8
  %19 = getelementptr inbounds %struct.url, %struct.url* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @SCHEME_FILE, align 4
  %22 = call i64 @strcmp(i32 %20, i32 %21)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %17
  %25 = load %struct.url*, %struct.url** %5, align 8
  %26 = load %struct.url_stat*, %struct.url_stat** %6, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @fetchStatFile(%struct.url* %25, %struct.url_stat* %26, i8* %27)
  store i32 %28, i32* %4, align 4
  br label %71

29:                                               ; preds = %17
  %30 = load %struct.url*, %struct.url** %5, align 8
  %31 = getelementptr inbounds %struct.url, %struct.url* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @SCHEME_FTP, align 4
  %34 = call i64 @strcmp(i32 %32, i32 %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %29
  %37 = load %struct.url*, %struct.url** %5, align 8
  %38 = load %struct.url_stat*, %struct.url_stat** %6, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = call i32 @fetchStatFTP(%struct.url* %37, %struct.url_stat* %38, i8* %39)
  store i32 %40, i32* %4, align 4
  br label %71

41:                                               ; preds = %29
  %42 = load %struct.url*, %struct.url** %5, align 8
  %43 = getelementptr inbounds %struct.url, %struct.url* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @SCHEME_HTTP, align 4
  %46 = call i64 @strcmp(i32 %44, i32 %45)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %41
  %49 = load %struct.url*, %struct.url** %5, align 8
  %50 = load %struct.url_stat*, %struct.url_stat** %6, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @fetchStatHTTP(%struct.url* %49, %struct.url_stat* %50, i8* %51)
  store i32 %52, i32* %4, align 4
  br label %71

53:                                               ; preds = %41
  %54 = load %struct.url*, %struct.url** %5, align 8
  %55 = getelementptr inbounds %struct.url, %struct.url* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @SCHEME_HTTPS, align 4
  %58 = call i64 @strcmp(i32 %56, i32 %57)
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %53
  %61 = load %struct.url*, %struct.url** %5, align 8
  %62 = load %struct.url_stat*, %struct.url_stat** %6, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = call i32 @fetchStatHTTP(%struct.url* %61, %struct.url_stat* %62, i8* %63)
  store i32 %64, i32* %4, align 4
  br label %71

65:                                               ; preds = %53
  br label %66

66:                                               ; preds = %65
  br label %67

67:                                               ; preds = %66
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* @URL_BAD_SCHEME, align 4
  %70 = call i32 @url_seterr(i32 %69)
  store i32 -1, i32* %4, align 4
  br label %71

71:                                               ; preds = %68, %60, %48, %36, %24
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @fetchStatFile(%struct.url*, %struct.url_stat*, i8*) #1

declare dso_local i32 @fetchStatFTP(%struct.url*, %struct.url_stat*, i8*) #1

declare dso_local i32 @fetchStatHTTP(%struct.url*, %struct.url_stat*, i8*) #1

declare dso_local i32 @url_seterr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

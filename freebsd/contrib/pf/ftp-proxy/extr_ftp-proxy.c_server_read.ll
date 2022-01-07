; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/pf/ftp-proxy/extr_ftp-proxy.c_server_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/pf/ftp-proxy/extr_ftp-proxy.c_server_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32 }
%struct.session = type { i32, i32, i32, i64 }

@timeout = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"#%d server: %s\00", align 1
@linebuf = common dso_local global i32 0, align 4
@linelen = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"#%d server reply too long or not clean\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @server_read(%struct.bufferevent* %0, i8* %1) #0 {
  %3 = alloca %struct.bufferevent*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.session*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.bufferevent* %0, %struct.bufferevent** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.session*
  store %struct.session* %10, %struct.session** %5, align 8
  %11 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %12 = load i32, i32* @timeout, align 4
  %13 = call i32 @bufferevent_settimeout(%struct.bufferevent* %11, i32 %12, i32 0)
  br label %14

14:                                               ; preds = %79, %2
  %15 = load %struct.session*, %struct.session** %5, align 8
  %16 = getelementptr inbounds %struct.session, %struct.session* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = sub i64 8, %18
  store i64 %19, i64* %6, align 8
  %20 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %21 = load %struct.session*, %struct.session** %5, align 8
  %22 = getelementptr inbounds %struct.session, %struct.session* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.session*, %struct.session** %5, align 8
  %25 = getelementptr inbounds %struct.session, %struct.session* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %23, %27
  %29 = load i64, i64* %6, align 8
  %30 = call i64 @bufferevent_read(%struct.bufferevent* %20, i64 %28, i64 %29)
  store i64 %30, i64* %7, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load %struct.session*, %struct.session** %5, align 8
  %33 = getelementptr inbounds %struct.session, %struct.session* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = add i64 %35, %31
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %33, align 8
  br label %38

38:                                               ; preds = %60, %14
  %39 = load %struct.session*, %struct.session** %5, align 8
  %40 = getelementptr inbounds %struct.session, %struct.session* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.session*, %struct.session** %5, align 8
  %43 = getelementptr inbounds %struct.session, %struct.session* %42, i32 0, i32 0
  %44 = bitcast i32* %43 to i64*
  %45 = call i32 @get_line(i64 %41, i64* %44)
  store i32 %45, i32* %8, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %67

47:                                               ; preds = %38
  %48 = load i32, i32* @LOG_DEBUG, align 4
  %49 = load %struct.session*, %struct.session** %5, align 8
  %50 = getelementptr inbounds %struct.session, %struct.session* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @linebuf, align 4
  %53 = call i32 (i32, i8*, i32, ...) @logmsg(i32 %48, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %52)
  %54 = load %struct.session*, %struct.session** %5, align 8
  %55 = call i32 @server_parse(%struct.session* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %47
  %58 = load %struct.session*, %struct.session** %5, align 8
  %59 = call i32 @end_session(%struct.session* %58)
  br label %83

60:                                               ; preds = %47
  %61 = load %struct.session*, %struct.session** %5, align 8
  %62 = getelementptr inbounds %struct.session, %struct.session* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @linebuf, align 4
  %65 = load i32, i32* @linelen, align 4
  %66 = call i32 @bufferevent_write(i32 %63, i32 %64, i32 %65)
  br label %38

67:                                               ; preds = %38
  %68 = load i32, i32* %8, align 4
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %70, label %78

70:                                               ; preds = %67
  %71 = load i32, i32* @LOG_ERR, align 4
  %72 = load %struct.session*, %struct.session** %5, align 8
  %73 = getelementptr inbounds %struct.session, %struct.session* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 (i32, i8*, i32, ...) @logmsg(i32 %71, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  %76 = load %struct.session*, %struct.session** %5, align 8
  %77 = call i32 @end_session(%struct.session* %76)
  br label %83

78:                                               ; preds = %67
  br label %79

79:                                               ; preds = %78
  %80 = load i64, i64* %7, align 8
  %81 = load i64, i64* %6, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %14, label %83

83:                                               ; preds = %57, %70, %79
  ret void
}

declare dso_local i32 @bufferevent_settimeout(%struct.bufferevent*, i32, i32) #1

declare dso_local i64 @bufferevent_read(%struct.bufferevent*, i64, i64) #1

declare dso_local i32 @get_line(i64, i64*) #1

declare dso_local i32 @logmsg(i32, i8*, i32, ...) #1

declare dso_local i32 @server_parse(%struct.session*) #1

declare dso_local i32 @end_session(%struct.session*) #1

declare dso_local i32 @bufferevent_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

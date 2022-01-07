; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/pf/ftp-proxy/extr_ftp-proxy.c_client_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/pf/ftp-proxy/extr_ftp-proxy.c_client_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32 }
%struct.session = type { i32, i32, i32, i64 }

@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"#%d client: %s\00", align 1
@linebuf = common dso_local global i32 0, align 4
@linelen = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"#%d client command too long or not clean\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @client_read(%struct.bufferevent* %0, i8* %1) #0 {
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
  br label %11

11:                                               ; preds = %76, %2
  %12 = load %struct.session*, %struct.session** %5, align 8
  %13 = getelementptr inbounds %struct.session, %struct.session* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = sub i64 8, %15
  store i64 %16, i64* %6, align 8
  %17 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %18 = load %struct.session*, %struct.session** %5, align 8
  %19 = getelementptr inbounds %struct.session, %struct.session* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.session*, %struct.session** %5, align 8
  %22 = getelementptr inbounds %struct.session, %struct.session* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %20, %24
  %26 = load i64, i64* %6, align 8
  %27 = call i64 @bufferevent_read(%struct.bufferevent* %17, i64 %25, i64 %26)
  store i64 %27, i64* %7, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load %struct.session*, %struct.session** %5, align 8
  %30 = getelementptr inbounds %struct.session, %struct.session* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = add i64 %32, %28
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %30, align 8
  br label %35

35:                                               ; preds = %57, %11
  %36 = load %struct.session*, %struct.session** %5, align 8
  %37 = getelementptr inbounds %struct.session, %struct.session* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.session*, %struct.session** %5, align 8
  %40 = getelementptr inbounds %struct.session, %struct.session* %39, i32 0, i32 0
  %41 = bitcast i32* %40 to i64*
  %42 = call i32 @get_line(i64 %38, i64* %41)
  store i32 %42, i32* %8, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %64

44:                                               ; preds = %35
  %45 = load i32, i32* @LOG_DEBUG, align 4
  %46 = load %struct.session*, %struct.session** %5, align 8
  %47 = getelementptr inbounds %struct.session, %struct.session* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @linebuf, align 4
  %50 = call i32 (i32, i8*, i32, ...) @logmsg(i32 %45, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %49)
  %51 = load %struct.session*, %struct.session** %5, align 8
  %52 = call i32 @client_parse(%struct.session* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %44
  %55 = load %struct.session*, %struct.session** %5, align 8
  %56 = call i32 @end_session(%struct.session* %55)
  br label %80

57:                                               ; preds = %44
  %58 = load %struct.session*, %struct.session** %5, align 8
  %59 = getelementptr inbounds %struct.session, %struct.session* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @linebuf, align 4
  %62 = load i32, i32* @linelen, align 4
  %63 = call i32 @bufferevent_write(i32 %60, i32 %61, i32 %62)
  br label %35

64:                                               ; preds = %35
  %65 = load i32, i32* %8, align 4
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %67, label %75

67:                                               ; preds = %64
  %68 = load i32, i32* @LOG_ERR, align 4
  %69 = load %struct.session*, %struct.session** %5, align 8
  %70 = getelementptr inbounds %struct.session, %struct.session* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i32, i8*, i32, ...) @logmsg(i32 %68, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  %73 = load %struct.session*, %struct.session** %5, align 8
  %74 = call i32 @end_session(%struct.session* %73)
  br label %80

75:                                               ; preds = %64
  br label %76

76:                                               ; preds = %75
  %77 = load i64, i64* %7, align 8
  %78 = load i64, i64* %6, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %11, label %80

80:                                               ; preds = %54, %67, %76
  ret void
}

declare dso_local i64 @bufferevent_read(%struct.bufferevent*, i64, i64) #1

declare dso_local i32 @get_line(i64, i64*) #1

declare dso_local i32 @logmsg(i32, i8*, i32, ...) #1

declare dso_local i32 @client_parse(%struct.session*) #1

declare dso_local i32 @end_session(%struct.session*) #1

declare dso_local i32 @bufferevent_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

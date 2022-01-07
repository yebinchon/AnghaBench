; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/pf/ftp-proxy/extr_ftp-proxy.c_client_parse_anon.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/pf/ftp-proxy/extr_ftp-proxy.c_client_parse_anon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.session = type { i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"USER ftp\0D\0A\00", align 1
@linebuf = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"USER anonymous\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"500 Only anonymous FTP allowed\0D\0A\00", align 1
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"#%d proxy: %s\00", align 1
@linelen = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @client_parse_anon(%struct.session* %0) #0 {
  %2 = alloca %struct.session*, align 8
  store %struct.session* %0, %struct.session** %2, align 8
  %3 = load i8*, i8** @linebuf, align 8
  %4 = call i64 @strcasecmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %29

6:                                                ; preds = %1
  %7 = load i8*, i8** @linebuf, align 8
  %8 = call i64 @strcasecmp(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %29

10:                                               ; preds = %6
  %11 = load i8*, i8** @linebuf, align 8
  %12 = call i32 @snprintf(i8* %11, i32 8, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %13 = load i32, i32* @LOG_DEBUG, align 4
  %14 = load %struct.session*, %struct.session** %2, align 8
  %15 = getelementptr inbounds %struct.session, %struct.session* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i8*, i8** @linebuf, align 8
  %18 = call i32 @logmsg(i32 %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %16, i8* %17)
  %19 = load i8*, i8** @linebuf, align 8
  %20 = call i64 @strlen(i8* %19)
  store i64 %20, i64* @linelen, align 8
  %21 = load %struct.session*, %struct.session** %2, align 8
  %22 = getelementptr inbounds %struct.session, %struct.session* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i8*, i8** @linebuf, align 8
  %25 = load i64, i64* @linelen, align 8
  %26 = call i32 @bufferevent_write(i32 %23, i8* %24, i64 %25)
  %27 = load i8*, i8** @linebuf, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  store i8 0, i8* %28, align 1
  store i64 0, i64* @linelen, align 8
  br label %29

29:                                               ; preds = %10, %6, %1
  ret i32 1
}

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*) #1

declare dso_local i32 @logmsg(i32, i8*, i32, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @bufferevent_write(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

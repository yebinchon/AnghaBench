; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/pf/ftp-proxy/extr_ftp-proxy.c_proxy_reply.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/pf/ftp-proxy/extr_ftp-proxy.c_proxy_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }

@linebuf = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [16 x i8] c"PORT %s,%u,%u\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"227 Entering Passive Mode (%s,%u,%u)\0D\0A\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"EPRT |1|%s|%u|\0D\0A\00", align 1
@AF_INET6 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"EPRT |2|%s|%u|\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"229 Entering Extended Passive Mode (|||%u|)\0D\0A\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"proxy_reply failed: %d\00", align 1
@linelen = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @proxy_reply(i32 %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.sockaddr* %1, %struct.sockaddr** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %58 [
    i32 128, label %10
    i32 129, label %19
    i32 131, label %28
    i32 130, label %54
  ]

10:                                               ; preds = %3
  %11 = load i8*, i8** @linebuf, align 8
  %12 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %13 = call i8* @sock_ntop(%struct.sockaddr* %12)
  %14 = load i32, i32* %6, align 4
  %15 = sdiv i32 %14, 256
  %16 = load i32, i32* %6, align 4
  %17 = srem i32 %16, 256
  %18 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %11, i32 8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %13, i32 %15, i32 %17)
  store i32 %18, i32* %8, align 4
  br label %58

19:                                               ; preds = %3
  %20 = load i8*, i8** @linebuf, align 8
  %21 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %22 = call i8* @sock_ntop(%struct.sockaddr* %21)
  %23 = load i32, i32* %6, align 4
  %24 = sdiv i32 %23, 256
  %25 = load i32, i32* %6, align 4
  %26 = srem i32 %25, 256
  %27 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %20, i32 8, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %22, i32 %24, i32 %26)
  store i32 %27, i32* %8, align 4
  br label %58

28:                                               ; preds = %3
  %29 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %30 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @AF_INET, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  %35 = load i8*, i8** @linebuf, align 8
  %36 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %37 = call i8* @sock_ntop(%struct.sockaddr* %36)
  %38 = load i32, i32* %6, align 4
  %39 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %35, i32 8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %37, i32 %38)
  store i32 %39, i32* %8, align 4
  br label %53

40:                                               ; preds = %28
  %41 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %42 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @AF_INET6, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = load i8*, i8** @linebuf, align 8
  %48 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %49 = call i8* @sock_ntop(%struct.sockaddr* %48)
  %50 = load i32, i32* %6, align 4
  %51 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %47, i32 8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* %49, i32 %50)
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %46, %40
  br label %53

53:                                               ; preds = %52, %34
  br label %58

54:                                               ; preds = %3
  %55 = load i8*, i8** @linebuf, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %55, i32 8, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %56)
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %3, %54, %53, %19, %10
  %59 = load i32, i32* %8, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = icmp uge i64 %63, 8
  br i1 %64, label %65, label %71

65:                                               ; preds = %61, %58
  %66 = load i32, i32* @LOG_ERR, align 4
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @logmsg(i32 %66, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %67)
  %69 = load i8*, i8** @linebuf, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 0
  store i8 0, i8* %70, align 1
  store i32 0, i32* @linelen, align 4
  br label %103

71:                                               ; preds = %61
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* @linelen, align 4
  %75 = load i32, i32* %4, align 4
  %76 = icmp eq i32 %75, 128
  br i1 %76, label %80, label %77

77:                                               ; preds = %71
  %78 = load i32, i32* %4, align 4
  %79 = icmp eq i32 %78, 129
  br i1 %79, label %80, label %103

80:                                               ; preds = %77, %71
  store i32 0, i32* %7, align 4
  br label %81

81:                                               ; preds = %99, %80
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @linelen, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %102

85:                                               ; preds = %81
  %86 = load i8*, i8** @linebuf, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 46
  br i1 %92, label %93, label %98

93:                                               ; preds = %85
  %94 = load i8*, i8** @linebuf, align 8
  %95 = load i32, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  store i8 44, i8* %97, align 1
  br label %98

98:                                               ; preds = %93, %85
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %7, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %7, align 4
  br label %81

102:                                              ; preds = %81
  br label %103

103:                                              ; preds = %65, %102, %77
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i8* @sock_ntop(%struct.sockaddr*) #1

declare dso_local i32 @logmsg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

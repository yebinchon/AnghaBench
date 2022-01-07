; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libxo/libxo/extr_xo_syslog.c_xo_send_syslog.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libxo/libxo/extr_xo_syslog.c_xo_send_syslog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iovec = type { i8*, i32 }

@__const.xo_send_syslog.newline = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@STDERR_FILENO = common dso_local global i32 0, align 4
@xo_opened = common dso_local global i32 0, align 4
@xo_logtag = common dso_local global i32 0, align 4
@xo_logstat = common dso_local global i32 0, align 4
@LOG_NDELAY = common dso_local global i32 0, align 4
@xo_logfile = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOBUFS = common dso_local global i64 0, align 8
@xo_status = common dso_local global i64 0, align 8
@CONNPRIV = common dso_local global i64 0, align 8
@O_WRONLY = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@LOG_CONS = common dso_local global i32 0, align 4
@_PATH_CONSOLE = common dso_local global i32 0, align 4
@__const.xo_send_syslog.crnl = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@O_CLOEXEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*)* @xo_send_syslog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xo_send_syslog(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [3 x %struct.iovec], align 16
  %10 = alloca %struct.iovec*, align 8
  %11 = alloca [2 x i8], align 1
  %12 = alloca i32, align 4
  %13 = alloca [2 x %struct.iovec], align 16
  %14 = alloca %struct.iovec*, align 8
  %15 = alloca [3 x i8], align 1
  %16 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  br i1 true, label %17, label %22

17:                                               ; preds = %3
  %18 = load i8*, i8** %4, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @xo_syslog_send(i8* %18, i8* %19, i8* %20)
  br label %159

22:                                               ; preds = %3
  %23 = load i8*, i8** %4, align 8
  %24 = call i8* @strlen(i8* %23)
  %25 = ptrtoint i8* %24 to i32
  store i32 %25, i32* %8, align 4
  %26 = load i8*, i8** %5, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %62

28:                                               ; preds = %22
  %29 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %9, i64 0, i64 0
  store %struct.iovec* %29, %struct.iovec** %10, align 8
  %30 = bitcast [2 x i8]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %30, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.xo_send_syslog.newline, i32 0, i32 0), i64 2, i1 false)
  %31 = load i8*, i8** %5, align 8
  %32 = load %struct.iovec*, %struct.iovec** %10, align 8
  %33 = getelementptr inbounds %struct.iovec, %struct.iovec* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = call i8* @strlen(i8* %34)
  %36 = ptrtoint i8* %35 to i32
  %37 = load %struct.iovec*, %struct.iovec** %10, align 8
  %38 = getelementptr inbounds %struct.iovec, %struct.iovec* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  %39 = load %struct.iovec*, %struct.iovec** %10, align 8
  %40 = getelementptr inbounds %struct.iovec, %struct.iovec* %39, i64 1
  store %struct.iovec* %40, %struct.iovec** %10, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = load %struct.iovec*, %struct.iovec** %10, align 8
  %43 = getelementptr inbounds %struct.iovec, %struct.iovec* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = call i8* @strlen(i8* %44)
  %46 = ptrtoint i8* %45 to i32
  %47 = load %struct.iovec*, %struct.iovec** %10, align 8
  %48 = getelementptr inbounds %struct.iovec, %struct.iovec* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  %49 = load %struct.iovec*, %struct.iovec** %10, align 8
  %50 = getelementptr inbounds %struct.iovec, %struct.iovec* %49, i64 1
  store %struct.iovec* %50, %struct.iovec** %10, align 8
  %51 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  %52 = load %struct.iovec*, %struct.iovec** %10, align 8
  %53 = getelementptr inbounds %struct.iovec, %struct.iovec* %52, i32 0, i32 0
  store i8* %51, i8** %53, align 8
  %54 = load %struct.iovec*, %struct.iovec** %10, align 8
  %55 = getelementptr inbounds %struct.iovec, %struct.iovec* %54, i32 0, i32 1
  store i32 1, i32* %55, align 8
  %56 = load %struct.iovec*, %struct.iovec** %10, align 8
  %57 = getelementptr inbounds %struct.iovec, %struct.iovec* %56, i64 1
  store %struct.iovec* %57, %struct.iovec** %10, align 8
  %58 = load i32, i32* @STDERR_FILENO, align 4
  %59 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %9, i64 0, i64 0
  %60 = call i32 @writev(i32 %58, %struct.iovec* %59, i32 3)
  %61 = call i32 @REAL_VOID(i32 %60)
  br label %62

62:                                               ; preds = %28, %22
  %63 = load i32, i32* @xo_opened, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* @xo_logtag, align 4
  %67 = load i32, i32* @xo_logstat, align 4
  %68 = load i32, i32* @LOG_NDELAY, align 4
  %69 = or i32 %67, %68
  %70 = call i32 @xo_open_log_unlocked(i32 %66, i32 %69, i32 0)
  br label %71

71:                                               ; preds = %65, %62
  %72 = call i32 (...) @xo_connect_log()
  %73 = load i32, i32* @xo_logfile, align 4
  %74 = load i8*, i8** %4, align 8
  %75 = load i32, i32* %8, align 4
  %76 = call i64 @send(i32 %73, i8* %74, i32 %75, i32 0)
  %77 = icmp slt i64 %76, 0
  br i1 %77, label %78, label %112

78:                                               ; preds = %71
  %79 = load i64, i64* @errno, align 8
  %80 = load i64, i64* @ENOBUFS, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %92

82:                                               ; preds = %78
  %83 = call i32 (...) @xo_disconnect_log()
  %84 = call i32 (...) @xo_connect_log()
  %85 = load i32, i32* @xo_logfile, align 4
  %86 = load i8*, i8** %4, align 8
  %87 = load i32, i32* %8, align 4
  %88 = call i64 @send(i32 %85, i8* %86, i32 %87, i32 0)
  %89 = icmp sge i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %82
  br label %159

91:                                               ; preds = %82
  br label %92

92:                                               ; preds = %91, %78
  br label %93

93:                                               ; preds = %110, %92
  %94 = load i64, i64* @errno, align 8
  %95 = load i64, i64* @ENOBUFS, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %111

97:                                               ; preds = %93
  %98 = load i64, i64* @xo_status, align 8
  %99 = load i64, i64* @CONNPRIV, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %97
  br label %111

102:                                              ; preds = %97
  %103 = call i32 @usleep(i32 1)
  %104 = load i32, i32* @xo_logfile, align 4
  %105 = load i8*, i8** %4, align 8
  %106 = load i32, i32* %8, align 4
  %107 = call i64 @send(i32 %104, i8* %105, i32 %106, i32 0)
  %108 = icmp sge i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %102
  br label %159

110:                                              ; preds = %102
  br label %93

111:                                              ; preds = %101, %93
  br label %113

112:                                              ; preds = %71
  br label %159

113:                                              ; preds = %111
  %114 = load i32, i32* @O_WRONLY, align 4
  %115 = load i32, i32* @O_NONBLOCK, align 4
  %116 = or i32 %114, %115
  store i32 %116, i32* %12, align 4
  %117 = load i32, i32* @xo_logstat, align 4
  %118 = load i32, i32* @LOG_CONS, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %159

121:                                              ; preds = %113
  %122 = load i32, i32* @_PATH_CONSOLE, align 4
  %123 = load i32, i32* %12, align 4
  %124 = call i32 @open(i32 %122, i32 %123, i32 0)
  store i32 %124, i32* %7, align 4
  %125 = icmp sge i32 %124, 0
  br i1 %125, label %126, label %159

126:                                              ; preds = %121
  %127 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %13, i64 0, i64 0
  store %struct.iovec* %127, %struct.iovec** %14, align 8
  %128 = bitcast [3 x i8]* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %128, i8* align 1 getelementptr inbounds ([3 x i8], [3 x i8]* @__const.xo_send_syslog.crnl, i32 0, i32 0), i64 3, i1 false)
  %129 = load i8*, i8** %4, align 8
  %130 = call i8* @strchr(i8* %129, i8 signext 62)
  %131 = getelementptr inbounds i8, i8* %130, i64 1
  store i8* %131, i8** %16, align 8
  %132 = load i8*, i8** %16, align 8
  %133 = load %struct.iovec*, %struct.iovec** %14, align 8
  %134 = getelementptr inbounds %struct.iovec, %struct.iovec* %133, i32 0, i32 0
  store i8* %132, i8** %134, align 8
  %135 = load i32, i32* %8, align 4
  %136 = sext i32 %135 to i64
  %137 = load i8*, i8** %16, align 8
  %138 = load i8*, i8** %4, align 8
  %139 = ptrtoint i8* %137 to i64
  %140 = ptrtoint i8* %138 to i64
  %141 = sub i64 %139, %140
  %142 = sub nsw i64 %136, %141
  %143 = trunc i64 %142 to i32
  %144 = load %struct.iovec*, %struct.iovec** %14, align 8
  %145 = getelementptr inbounds %struct.iovec, %struct.iovec* %144, i32 0, i32 1
  store i32 %143, i32* %145, align 8
  %146 = load %struct.iovec*, %struct.iovec** %14, align 8
  %147 = getelementptr inbounds %struct.iovec, %struct.iovec* %146, i32 1
  store %struct.iovec* %147, %struct.iovec** %14, align 8
  %148 = getelementptr inbounds [3 x i8], [3 x i8]* %15, i64 0, i64 0
  %149 = load %struct.iovec*, %struct.iovec** %14, align 8
  %150 = getelementptr inbounds %struct.iovec, %struct.iovec* %149, i32 0, i32 0
  store i8* %148, i8** %150, align 8
  %151 = load %struct.iovec*, %struct.iovec** %14, align 8
  %152 = getelementptr inbounds %struct.iovec, %struct.iovec* %151, i32 0, i32 1
  store i32 2, i32* %152, align 8
  %153 = load i32, i32* %7, align 4
  %154 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %13, i64 0, i64 0
  %155 = call i32 @writev(i32 %153, %struct.iovec* %154, i32 2)
  %156 = call i32 @REAL_VOID(i32 %155)
  %157 = load i32, i32* %7, align 4
  %158 = call i32 @close(i32 %157)
  br label %159

159:                                              ; preds = %17, %90, %109, %112, %126, %121, %113
  ret void
}

declare dso_local i32 @xo_syslog_send(i8*, i8*, i8*) #1

declare dso_local i8* @strlen(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @REAL_VOID(i32) #1

declare dso_local i32 @writev(i32, %struct.iovec*, i32) #1

declare dso_local i32 @xo_open_log_unlocked(i32, i32, i32) #1

declare dso_local i32 @xo_connect_log(...) #1

declare dso_local i64 @send(i32, i8*, i32, i32) #1

declare dso_local i32 @xo_disconnect_log(...) #1

declare dso_local i32 @usleep(i32) #1

declare dso_local i32 @open(i32, i32, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

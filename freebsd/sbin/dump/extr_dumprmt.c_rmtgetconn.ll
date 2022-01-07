; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dump/extr_dumprmt.c_rmtgetconn.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dump/extr_dumprmt.c_rmtgetconn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.servent = type { i64 }
%struct.passwd = type { i8* }

@rmtgetconn.sp = internal global %struct.servent* null, align 8
@rmtgetconn.pwd = internal global %struct.passwd* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"shell/tcp: unknown service\0A\00", align 1
@X_STARTUP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"who are you?\0A\00", align 1
@rmtpeer = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [4 x i8] c"RMT\00", align 1
@_PATH_RMT = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@errfd = common dso_local global i32 0, align 4
@rmtape = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [27 x i8] c"login to %s as %s failed.\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [31 x i8] c"Connection to %s established.\0A\00", align 1
@ntrec = common dso_local global i32 0, align 4
@TP_BSIZE = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_SNDBUF = common dso_local global i32 0, align 4
@SO_RCVBUF = common dso_local global i32 0, align 4
@IPTOS_THROUGHPUT = common dso_local global i32 0, align 4
@IPPROTO_IP = common dso_local global i32 0, align 4
@IP_TOS = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [35 x i8] c"IP_TOS:IPTOS_THROUGHPUT setsockopt\00", align 1
@IPPROTO_TCP = common dso_local global i32 0, align 4
@TCP_NODELAY = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [23 x i8] c"TCP_NODELAY setsockopt\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rmtgetconn() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load %struct.servent*, %struct.servent** @rmtgetconn.sp, align 8
  %8 = icmp eq %struct.servent* %7, null
  br i1 %8, label %9, label %27

9:                                                ; preds = %0
  %10 = call %struct.servent* @getservbyname(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store %struct.servent* %10, %struct.servent** @rmtgetconn.sp, align 8
  %11 = load %struct.servent*, %struct.servent** @rmtgetconn.sp, align 8
  %12 = icmp eq %struct.servent* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = call i32 (i8*, ...) @msg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %15 = load i32, i32* @X_STARTUP, align 4
  %16 = call i32 @exit(i32 %15) #3
  unreachable

17:                                               ; preds = %9
  %18 = call i32 (...) @getuid()
  %19 = call %struct.passwd* @getpwuid(i32 %18)
  store %struct.passwd* %19, %struct.passwd** @rmtgetconn.pwd, align 8
  %20 = load %struct.passwd*, %struct.passwd** @rmtgetconn.pwd, align 8
  %21 = icmp eq %struct.passwd* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = call i32 (i8*, ...) @msg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %24 = load i32, i32* @X_STARTUP, align 4
  %25 = call i32 @exit(i32 %24) #3
  unreachable

26:                                               ; preds = %17
  br label %27

27:                                               ; preds = %26, %0
  %28 = load i8*, i8** @rmtpeer, align 8
  %29 = call i8* @strchr(i8* %28, i8 signext 64)
  store i8* %29, i8** %1, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %43

31:                                               ; preds = %27
  %32 = load i8*, i8** @rmtpeer, align 8
  store i8* %32, i8** %3, align 8
  %33 = load i8*, i8** %1, align 8
  store i8 0, i8* %33, align 1
  %34 = load i8*, i8** %3, align 8
  %35 = call i32 @okname(i8* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* @X_STARTUP, align 4
  %39 = call i32 @exit(i32 %38) #3
  unreachable

40:                                               ; preds = %31
  %41 = load i8*, i8** %1, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %1, align 8
  store i8* %42, i8** @rmtpeer, align 8
  br label %47

43:                                               ; preds = %27
  %44 = load %struct.passwd*, %struct.passwd** @rmtgetconn.pwd, align 8
  %45 = getelementptr inbounds %struct.passwd, %struct.passwd* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** %3, align 8
  br label %47

47:                                               ; preds = %43, %40
  %48 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  store i8* %48, i8** %2, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load i8*, i8** @_PATH_RMT, align 8
  store i8* %51, i8** %2, align 8
  br label %52

52:                                               ; preds = %50, %47
  %53 = call i32 (i8*, ...) @msg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0))
  %54 = load %struct.servent*, %struct.servent** @rmtgetconn.sp, align 8
  %55 = getelementptr inbounds %struct.servent, %struct.servent* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  %58 = load %struct.passwd*, %struct.passwd** @rmtgetconn.pwd, align 8
  %59 = getelementptr inbounds %struct.passwd, %struct.passwd* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = load i8*, i8** %3, align 8
  %62 = load i8*, i8** %2, align 8
  %63 = call i64 @rcmd(i8** @rmtpeer, i32 %57, i8* %60, i8* %61, i8* %62, i32* @errfd)
  store i64 %63, i64* @rmtape, align 8
  %64 = load i64, i64* @rmtape, align 8
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %52
  %67 = load i8*, i8** @rmtpeer, align 8
  %68 = load i8*, i8** %3, align 8
  %69 = call i32 (i8*, ...) @msg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i8* %67, i8* %68)
  br label %120

70:                                               ; preds = %52
  %71 = load i32, i32* @stderr, align 4
  %72 = load i8*, i8** @rmtpeer, align 8
  %73 = call i32 @fprintf(i32 %71, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i8* %72)
  %74 = load i32, i32* @ntrec, align 4
  %75 = load i32, i32* @TP_BSIZE, align 4
  %76 = mul nsw i32 %74, %75
  store i32 %76, i32* %4, align 4
  %77 = load i32, i32* %4, align 4
  %78 = icmp sgt i32 %77, 61440
  br i1 %78, label %79, label %80

79:                                               ; preds = %70
  store i32 61440, i32* %4, align 4
  br label %80

80:                                               ; preds = %79, %70
  %81 = load i32, i32* %4, align 4
  %82 = add nsw i32 %81, 2048
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %95, %80
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* @TP_BSIZE, align 4
  %86 = icmp sgt i32 %84, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %83
  %88 = load i64, i64* @rmtape, align 8
  %89 = load i32, i32* @SOL_SOCKET, align 4
  %90 = load i32, i32* @SO_SNDBUF, align 4
  %91 = call i64 @setsockopt(i64 %88, i32 %89, i32 %90, i32* %4, i32 4)
  %92 = icmp slt i64 %91, 0
  br label %93

93:                                               ; preds = %87, %83
  %94 = phi i1 [ false, %83 ], [ %92, %87 ]
  br i1 %94, label %95, label %99

95:                                               ; preds = %93
  %96 = load i32, i32* @TP_BSIZE, align 4
  %97 = load i32, i32* %4, align 4
  %98 = sub nsw i32 %97, %96
  store i32 %98, i32* %4, align 4
  br label %83

99:                                               ; preds = %93
  %100 = load i64, i64* @rmtape, align 8
  %101 = load i32, i32* @SOL_SOCKET, align 4
  %102 = load i32, i32* @SO_RCVBUF, align 4
  %103 = call i64 @setsockopt(i64 %100, i32 %101, i32 %102, i32* %4, i32 4)
  %104 = load i32, i32* @IPTOS_THROUGHPUT, align 4
  store i32 %104, i32* %5, align 4
  %105 = load i64, i64* @rmtape, align 8
  %106 = load i32, i32* @IPPROTO_IP, align 4
  %107 = load i32, i32* @IP_TOS, align 4
  %108 = call i64 @setsockopt(i64 %105, i32 %106, i32 %107, i32* %5, i32 4)
  %109 = icmp slt i64 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %99
  %111 = call i32 @perror(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0))
  br label %112

112:                                              ; preds = %110, %99
  store i32 1, i32* %6, align 4
  %113 = load i64, i64* @rmtape, align 8
  %114 = load i32, i32* @IPPROTO_TCP, align 4
  %115 = load i32, i32* @TCP_NODELAY, align 4
  %116 = call i64 @setsockopt(i64 %113, i32 %114, i32 %115, i32* %6, i32 4)
  %117 = icmp slt i64 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %112
  %119 = call i32 @perror(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  br label %120

120:                                              ; preds = %66, %118, %112
  ret void
}

declare dso_local %struct.servent* @getservbyname(i8*, i8*) #1

declare dso_local i32 @msg(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local %struct.passwd* @getpwuid(i32) #1

declare dso_local i32 @getuid(...) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @okname(i8*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i64 @rcmd(i8**, i32, i8*, i8*, i8*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i64 @setsockopt(i64, i32, i32, i32*, i32) #1

declare dso_local i32 @perror(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

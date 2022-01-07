; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_proto_tls.c_tls_exec_client.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_proto_tls.c_tls_exec_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proto_conn = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"[TLS sandbox] (client) \00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"tcp:port\00", align 1
@EX_TEMPFAIL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Unable to allocate memory.\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"tcp://\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"SSL_CTX_new() failed.\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"proto_tls client: %s\00", align 1
@EX_CONFIG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"Unable to sandbox TLS client.\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"Privileges successfully dropped.\00", align 1
@SSL_OP_NO_SSLv2 = common dso_local global i32 0, align 4
@SSL_OP_NO_SSLv3 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [18 x i8] c"SSL_new() failed.\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"SSL_set_fd() failed.\00", align 1
@errno = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [14 x i8] c"send() failed\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"Connection terminated.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8*, i8*, i8*, i8*, i32, i32)* @tls_exec_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tls_exec_client(i8* %0, i32 %1, i8* %2, i8* %3, i8* %4, i8* %5, i32 %6, i32 %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.proto_conn*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %26 = load i32, i32* %16, align 4
  %27 = call i32 @pjdlog_debug_set(i32 %26)
  %28 = call i32 @pjdlog_prefix_set(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %29 = load i8*, i8** %14, align 8
  %30 = call i32 @proto_set(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %29)
  %31 = load i32, i32* %10, align 4
  store i32 %31, i32* %23, align 4
  %32 = load i8*, i8** %11, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %8
  store i8* null, i8** %18, align 8
  br label %46

35:                                               ; preds = %8
  %36 = load i8*, i8** %11, align 8
  %37 = call i8* @strdup(i8* %36)
  store i8* %37, i8** %18, align 8
  %38 = load i8*, i8** %18, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* @EX_TEMPFAIL, align 4
  %42 = call i32 @pjdlog_exitx(i32 %41, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %43

43:                                               ; preds = %40, %35
  %44 = load i8*, i8** %18, align 8
  %45 = call i32 @bcopy(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %44, i32 6)
  br label %46

46:                                               ; preds = %43, %34
  %47 = load i8*, i8** %12, align 8
  %48 = call i8* @strdup(i8* %47)
  store i8* %48, i8** %19, align 8
  %49 = load i8*, i8** %19, align 8
  %50 = icmp eq i8* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i32, i32* @EX_TEMPFAIL, align 4
  %53 = call i32 @pjdlog_exitx(i32 %52, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %54

54:                                               ; preds = %51, %46
  %55 = load i8*, i8** %19, align 8
  %56 = call i32 @bcopy(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %55, i32 6)
  %57 = load i8*, i8** %18, align 8
  %58 = load i8*, i8** %19, align 8
  %59 = load i32, i32* %15, align 4
  %60 = call i32 @proto_connect(i8* %57, i8* %58, i32 %59, %struct.proto_conn** %17)
  %61 = icmp eq i32 %60, -1
  br i1 %61, label %62, label %65

62:                                               ; preds = %54
  %63 = load i32, i32* @EX_TEMPFAIL, align 4
  %64 = call i32 @exit(i32 %63) #3
  unreachable

65:                                               ; preds = %54
  %66 = call i32 (...) @SSL_load_error_strings()
  %67 = call i32 (...) @SSL_library_init()
  %68 = call i32 (...) @TLS_client_method()
  %69 = call i32* @SSL_CTX_new(i32 %68)
  store i32* %69, i32** %20, align 8
  %70 = load i32*, i32** %20, align 8
  %71 = icmp eq i32* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %65
  %73 = load i32, i32* @EX_TEMPFAIL, align 4
  %74 = call i32 @pjdlog_exitx(i32 %73, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %75

75:                                               ; preds = %72, %65
  %76 = load i8*, i8** %9, align 8
  %77 = load i8*, i8** %12, align 8
  %78 = call i64 @sandbox(i8* %76, i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load i32, i32* @EX_CONFIG, align 4
  %82 = call i32 @pjdlog_exitx(i32 %81, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  br label %83

83:                                               ; preds = %80, %75
  %84 = call i32 @pjdlog_debug(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  %85 = load i32*, i32** %20, align 8
  %86 = load i32, i32* @SSL_OP_NO_SSLv2, align 4
  %87 = load i32, i32* @SSL_OP_NO_SSLv3, align 4
  %88 = or i32 %86, %87
  %89 = call i32 @SSL_CTX_set_options(i32* %85, i32 %88)
  %90 = load i32*, i32** %20, align 8
  %91 = call i32* @SSL_new(i32* %90)
  store i32* %91, i32** %21, align 8
  %92 = load i32*, i32** %21, align 8
  %93 = icmp eq i32* %92, null
  br i1 %93, label %94, label %97

94:                                               ; preds = %83
  %95 = load i32, i32* @EX_TEMPFAIL, align 4
  %96 = call i32 @pjdlog_exitx(i32 %95, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  br label %97

97:                                               ; preds = %94, %83
  %98 = load %struct.proto_conn*, %struct.proto_conn** %17, align 8
  %99 = call i32 @proto_descriptor(%struct.proto_conn* %98)
  store i32 %99, i32* %24, align 4
  %100 = load i32, i32* %24, align 4
  %101 = call i32 @block(i32 %100)
  %102 = load i32*, i32** %21, align 8
  %103 = load i32, i32* %24, align 4
  %104 = call i32 @SSL_set_fd(i32* %102, i32 %103)
  %105 = icmp ne i32 %104, 1
  br i1 %105, label %106, label %109

106:                                              ; preds = %97
  %107 = load i32, i32* @EX_TEMPFAIL, align 4
  %108 = call i32 @pjdlog_exitx(i32 %107, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  br label %109

109:                                              ; preds = %106, %97
  %110 = load i32*, i32** %21, align 8
  %111 = call i64 @SSL_connect(i32* %110)
  store i64 %111, i64* %22, align 8
  %112 = load i32*, i32** %21, align 8
  %113 = load i64, i64* %22, align 8
  %114 = trunc i64 %113 to i32
  %115 = call i32 @ssl_check_error(i32* %112, i32 %114)
  %116 = load i32, i32* %23, align 4
  %117 = call i32 @nonblock(i32 %116)
  %118 = load i32, i32* %24, align 4
  %119 = call i32 @nonblock(i32 %118)
  %120 = load i32*, i32** %21, align 8
  %121 = load i8*, i8** %13, align 8
  %122 = call i32 @tls_certificate_verify(i32* %120, i8* %121)
  store i32 1, i32* %25, align 4
  br label %123

123:                                              ; preds = %139, %134, %109
  %124 = load i32, i32* %23, align 4
  %125 = call i32 @send(i32 %124, i32* %25, i32 4, i32 0)
  switch i32 %125, label %149 [
    i32 -1, label %126
    i32 0, label %145
    i32 1, label %148
  ]

126:                                              ; preds = %123
  %127 = load i32, i32* @errno, align 4
  %128 = load i32, i32* @EINTR, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %134, label %130

130:                                              ; preds = %126
  %131 = load i32, i32* @errno, align 4
  %132 = load i32, i32* @ENOBUFS, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %130, %126
  br label %123

135:                                              ; preds = %130
  %136 = load i32, i32* @errno, align 4
  %137 = load i32, i32* @EAGAIN, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %135
  %140 = load i32, i32* %23, align 4
  %141 = call i32 @wait_for_fd(i32 %140, i32 -1)
  br label %123

142:                                              ; preds = %135
  %143 = load i32, i32* @EX_TEMPFAIL, align 4
  %144 = call i32 @pjdlog_exit(i32 %143, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  br label %145

145:                                              ; preds = %123, %142
  %146 = call i32 @pjdlog_debug(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0))
  %147 = call i32 @exit(i32 0) #3
  unreachable

148:                                              ; preds = %123
  br label %149

149:                                              ; preds = %123, %148
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %23, align 4
  %152 = load i32*, i32** %21, align 8
  %153 = call i32 @tls_loop(i32 %151, i32* %152)
  ret void
}

declare dso_local i32 @pjdlog_debug_set(i32) #1

declare dso_local i32 @pjdlog_prefix_set(i8*) #1

declare dso_local i32 @proto_set(i8*, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @pjdlog_exitx(i32, i8*) #1

declare dso_local i32 @bcopy(i8*, i8*, i32) #1

declare dso_local i32 @proto_connect(i8*, i8*, i32, %struct.proto_conn**) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @SSL_load_error_strings(...) #1

declare dso_local i32 @SSL_library_init(...) #1

declare dso_local i32* @SSL_CTX_new(i32) #1

declare dso_local i32 @TLS_client_method(...) #1

declare dso_local i64 @sandbox(i8*, i32, i8*, i8*) #1

declare dso_local i32 @pjdlog_debug(i32, i8*) #1

declare dso_local i32 @SSL_CTX_set_options(i32*, i32) #1

declare dso_local i32* @SSL_new(i32*) #1

declare dso_local i32 @proto_descriptor(%struct.proto_conn*) #1

declare dso_local i32 @block(i32) #1

declare dso_local i32 @SSL_set_fd(i32*, i32) #1

declare dso_local i64 @SSL_connect(i32*) #1

declare dso_local i32 @ssl_check_error(i32*, i32) #1

declare dso_local i32 @nonblock(i32) #1

declare dso_local i32 @tls_certificate_verify(i32*, i8*) #1

declare dso_local i32 @send(i32, i32*, i32, i32) #1

declare dso_local i32 @wait_for_fd(i32, i32) #1

declare dso_local i32 @pjdlog_exit(i32, i8*) #1

declare dso_local i32 @tls_loop(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_proto_tls.c_tls_exec_server.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_proto_tls.c_tls_exec_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"[TLS sandbox] (server) \00", align 1
@EX_TEMPFAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"SSL_CTX_new() failed.\00", align 1
@SSL_OP_NO_SSLv2 = common dso_local global i32 0, align 4
@SSL_OP_NO_SSLv3 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"SSL_new() failed.\00", align 1
@SSL_FILETYPE_PEM = common dso_local global i32 0, align 4
@EX_CONFIG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"SSL_use_RSAPrivateKey_file(%s) failed.\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"SSL_use_certificate_file(%s) failed.\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"proto_tls server\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Unable to sandbox TLS server.\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"Privileges successfully dropped.\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"SSL_set_fd() failed.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8*, i8*, i32)* @tls_exec_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tls_exec_server(i8* %0, i32 %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = call i32 @pjdlog_debug_set(i32 %16)
  %18 = call i32 @pjdlog_prefix_set(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %7, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %14, align 4
  %22 = call i32 (...) @SSL_load_error_strings()
  %23 = call i32 (...) @SSL_library_init()
  %24 = call i32 (...) @TLS_server_method()
  %25 = call i32* @SSL_CTX_new(i32 %24)
  store i32* %25, i32** %11, align 8
  %26 = load i32*, i32** %11, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %5
  %29 = load i32, i32* @EX_TEMPFAIL, align 4
  %30 = call i32 (i32, i8*, ...) @pjdlog_exitx(i32 %29, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %28, %5
  %32 = load i32*, i32** %11, align 8
  %33 = load i32, i32* @SSL_OP_NO_SSLv2, align 4
  %34 = load i32, i32* @SSL_OP_NO_SSLv3, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @SSL_CTX_set_options(i32* %32, i32 %35)
  %37 = load i32*, i32** %11, align 8
  %38 = call i32* @SSL_new(i32* %37)
  store i32* %38, i32** %12, align 8
  %39 = load i32*, i32** %12, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %31
  %42 = load i32, i32* @EX_TEMPFAIL, align 4
  %43 = call i32 (i32, i8*, ...) @pjdlog_exitx(i32 %42, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %31
  %45 = load i32*, i32** %12, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = load i32, i32* @SSL_FILETYPE_PEM, align 4
  %48 = call i32 @SSL_use_RSAPrivateKey_file(i32* %45, i8* %46, i32 %47)
  %49 = icmp ne i32 %48, 1
  br i1 %49, label %50, label %55

50:                                               ; preds = %44
  %51 = call i32 (...) @ssl_log_errors()
  %52 = load i32, i32* @EX_CONFIG, align 4
  %53 = load i8*, i8** %8, align 8
  %54 = call i32 (i32, i8*, ...) @pjdlog_exitx(i32 %52, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8* %53)
  br label %55

55:                                               ; preds = %50, %44
  %56 = load i32*, i32** %12, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = load i32, i32* @SSL_FILETYPE_PEM, align 4
  %59 = call i32 @SSL_use_certificate_file(i32* %56, i8* %57, i32 %58)
  %60 = icmp ne i32 %59, 1
  br i1 %60, label %61, label %66

61:                                               ; preds = %55
  %62 = call i32 (...) @ssl_log_errors()
  %63 = load i32, i32* @EX_CONFIG, align 4
  %64 = load i8*, i8** %9, align 8
  %65 = call i32 (i32, i8*, ...) @pjdlog_exitx(i32 %63, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i8* %64)
  br label %66

66:                                               ; preds = %61, %55
  %67 = load i8*, i8** %6, align 8
  %68 = call i64 @sandbox(i8* %67, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load i32, i32* @EX_CONFIG, align 4
  %72 = call i32 (i32, i8*, ...) @pjdlog_exitx(i32 %71, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  br label %73

73:                                               ; preds = %70, %66
  %74 = call i32 @pjdlog_debug(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  %75 = load i32, i32* %13, align 4
  %76 = call i32 @nonblock(i32 %75)
  %77 = load i32, i32* %14, align 4
  %78 = call i32 @nonblock(i32 %77)
  %79 = load i32*, i32** %12, align 8
  %80 = load i32, i32* %14, align 4
  %81 = call i32 @SSL_set_fd(i32* %79, i32 %80)
  %82 = icmp ne i32 %81, 1
  br i1 %82, label %83, label %86

83:                                               ; preds = %73
  %84 = load i32, i32* @EX_TEMPFAIL, align 4
  %85 = call i32 (i32, i8*, ...) @pjdlog_exitx(i32 %84, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  br label %86

86:                                               ; preds = %83, %73
  %87 = load i32*, i32** %12, align 8
  %88 = call i32 @SSL_accept(i32* %87)
  store i32 %88, i32* %15, align 4
  %89 = load i32*, i32** %12, align 8
  %90 = load i32, i32* %15, align 4
  %91 = call i32 @ssl_check_error(i32* %89, i32 %90)
  %92 = load i32, i32* %13, align 4
  %93 = load i32*, i32** %12, align 8
  %94 = call i32 @tls_loop(i32 %92, i32* %93)
  ret void
}

declare dso_local i32 @pjdlog_debug_set(i32) #1

declare dso_local i32 @pjdlog_prefix_set(i8*) #1

declare dso_local i32 @SSL_load_error_strings(...) #1

declare dso_local i32 @SSL_library_init(...) #1

declare dso_local i32* @SSL_CTX_new(i32) #1

declare dso_local i32 @TLS_server_method(...) #1

declare dso_local i32 @pjdlog_exitx(i32, i8*, ...) #1

declare dso_local i32 @SSL_CTX_set_options(i32*, i32) #1

declare dso_local i32* @SSL_new(i32*) #1

declare dso_local i32 @SSL_use_RSAPrivateKey_file(i32*, i8*, i32) #1

declare dso_local i32 @ssl_log_errors(...) #1

declare dso_local i32 @SSL_use_certificate_file(i32*, i8*, i32) #1

declare dso_local i64 @sandbox(i8*, i32, i8*) #1

declare dso_local i32 @pjdlog_debug(i32, i8*) #1

declare dso_local i32 @nonblock(i32) #1

declare dso_local i32 @SSL_set_fd(i32*, i32) #1

declare dso_local i32 @SSL_accept(i32*) #1

declare dso_local i32 @ssl_check_error(i32*, i32) #1

declare dso_local i32 @tls_loop(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

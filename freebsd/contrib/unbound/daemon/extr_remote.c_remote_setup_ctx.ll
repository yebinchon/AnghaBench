; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_remote_setup_ctx.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_remote_setup_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.daemon_remote = type { i32 }
%struct.config_file = type { i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"could not SSL_CTX_new\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"out of memory in remote control fname\00", align 1
@VERB_ALGO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"setup SSL certificates\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Error for server-cert-file: %s\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"Error in SSL_CTX use_certificate_chain_file\00", align 1
@SSL_FILETYPE_PEM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"Error for server-key-file: %s\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"Error in SSL_CTX use_PrivateKey_file\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"Error in SSL_CTX check_private_key\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"Error setting up SSL_CTX verify locations\00", align 1
@SSL_VERIFY_PEER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.daemon_remote*, %struct.config_file*)* @remote_setup_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remote_setup_ctx(%struct.daemon_remote* %0, %struct.config_file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.daemon_remote*, align 8
  %5 = alloca %struct.config_file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.daemon_remote* %0, %struct.daemon_remote** %4, align 8
  store %struct.config_file* %1, %struct.config_file** %5, align 8
  %8 = call i32 (...) @SSLv23_server_method()
  %9 = call i32 @SSL_CTX_new(i32 %8)
  %10 = load %struct.daemon_remote*, %struct.daemon_remote** %4, align 8
  %11 = getelementptr inbounds %struct.daemon_remote, %struct.daemon_remote* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load %struct.daemon_remote*, %struct.daemon_remote** %4, align 8
  %13 = getelementptr inbounds %struct.daemon_remote, %struct.daemon_remote* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = call i32 @log_crypto_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %112

18:                                               ; preds = %2
  %19 = load %struct.daemon_remote*, %struct.daemon_remote** %4, align 8
  %20 = getelementptr inbounds %struct.daemon_remote, %struct.daemon_remote* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @listen_sslctx_setup(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %112

25:                                               ; preds = %18
  %26 = load %struct.config_file*, %struct.config_file** %5, align 8
  %27 = getelementptr inbounds %struct.config_file, %struct.config_file* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.config_file*, %struct.config_file** %5, align 8
  %30 = call i8* @fname_after_chroot(i32 %28, %struct.config_file* %29, i32 1)
  store i8* %30, i8** %6, align 8
  %31 = load %struct.config_file*, %struct.config_file** %5, align 8
  %32 = getelementptr inbounds %struct.config_file, %struct.config_file* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.config_file*, %struct.config_file** %5, align 8
  %35 = call i8* @fname_after_chroot(i32 %33, %struct.config_file* %34, i32 1)
  store i8* %35, i8** %7, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %25
  %39 = load i8*, i8** %7, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %38, %25
  %42 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %91

43:                                               ; preds = %38
  %44 = load i32, i32* @VERB_ALGO, align 4
  %45 = call i32 @verbose(i32 %44, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %46 = load %struct.daemon_remote*, %struct.daemon_remote** %4, align 8
  %47 = getelementptr inbounds %struct.daemon_remote, %struct.daemon_remote* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i8*, i8** %6, align 8
  %50 = call i32 @SSL_CTX_use_certificate_chain_file(i32 %48, i8* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %43
  %53 = load i8*, i8** %6, align 8
  %54 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %53)
  %55 = call i32 @log_crypto_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  br label %91

56:                                               ; preds = %43
  %57 = load %struct.daemon_remote*, %struct.daemon_remote** %4, align 8
  %58 = getelementptr inbounds %struct.daemon_remote, %struct.daemon_remote* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i8*, i8** %7, align 8
  %61 = load i32, i32* @SSL_FILETYPE_PEM, align 4
  %62 = call i32 @SSL_CTX_use_PrivateKey_file(i32 %59, i8* %60, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %56
  %65 = load i8*, i8** %7, align 8
  %66 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i8* %65)
  %67 = call i32 @log_crypto_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  br label %91

68:                                               ; preds = %56
  %69 = load %struct.daemon_remote*, %struct.daemon_remote** %4, align 8
  %70 = getelementptr inbounds %struct.daemon_remote, %struct.daemon_remote* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @SSL_CTX_check_private_key(i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %68
  %75 = load i8*, i8** %7, align 8
  %76 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i8* %75)
  %77 = call i32 @log_crypto_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  br label %91

78:                                               ; preds = %68
  %79 = load %struct.daemon_remote*, %struct.daemon_remote** %4, align 8
  %80 = getelementptr inbounds %struct.daemon_remote, %struct.daemon_remote* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @listen_sslctx_setup_2(i32 %81)
  %83 = load %struct.daemon_remote*, %struct.daemon_remote** %4, align 8
  %84 = getelementptr inbounds %struct.daemon_remote, %struct.daemon_remote* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i8*, i8** %6, align 8
  %87 = call i32 @SSL_CTX_load_verify_locations(i32 %85, i8* %86, i32* null)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %96, label %89

89:                                               ; preds = %78
  %90 = call i32 @log_crypto_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0))
  br label %91

91:                                               ; preds = %89, %74, %64, %52, %41
  %92 = load i8*, i8** %6, align 8
  %93 = call i32 @free(i8* %92)
  %94 = load i8*, i8** %7, align 8
  %95 = call i32 @free(i8* %94)
  store i32 0, i32* %3, align 4
  br label %112

96:                                               ; preds = %78
  %97 = load %struct.daemon_remote*, %struct.daemon_remote** %4, align 8
  %98 = getelementptr inbounds %struct.daemon_remote, %struct.daemon_remote* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i8*, i8** %6, align 8
  %101 = call i32 @SSL_load_client_CA_file(i8* %100)
  %102 = call i32 @SSL_CTX_set_client_CA_list(i32 %99, i32 %101)
  %103 = load %struct.daemon_remote*, %struct.daemon_remote** %4, align 8
  %104 = getelementptr inbounds %struct.daemon_remote, %struct.daemon_remote* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @SSL_VERIFY_PEER, align 4
  %107 = call i32 @SSL_CTX_set_verify(i32 %105, i32 %106, i32* null)
  %108 = load i8*, i8** %6, align 8
  %109 = call i32 @free(i8* %108)
  %110 = load i8*, i8** %7, align 8
  %111 = call i32 @free(i8* %110)
  store i32 1, i32* %3, align 4
  br label %112

112:                                              ; preds = %96, %91, %24, %16
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i32 @SSL_CTX_new(i32) #1

declare dso_local i32 @SSLv23_server_method(...) #1

declare dso_local i32 @log_crypto_err(i8*) #1

declare dso_local i32 @listen_sslctx_setup(i32) #1

declare dso_local i8* @fname_after_chroot(i32, %struct.config_file*, i32) #1

declare dso_local i32 @log_err(i8*, ...) #1

declare dso_local i32 @verbose(i32, i8*) #1

declare dso_local i32 @SSL_CTX_use_certificate_chain_file(i32, i8*) #1

declare dso_local i32 @SSL_CTX_use_PrivateKey_file(i32, i8*, i32) #1

declare dso_local i32 @SSL_CTX_check_private_key(i32) #1

declare dso_local i32 @listen_sslctx_setup_2(i32) #1

declare dso_local i32 @SSL_CTX_load_verify_locations(i32, i8*, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @SSL_CTX_set_client_CA_list(i32, i32) #1

declare dso_local i32 @SSL_load_client_CA_file(i8*) #1

declare dso_local i32 @SSL_CTX_set_verify(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

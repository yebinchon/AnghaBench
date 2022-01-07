; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-control.c_setup_ctx.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-control.c_setup_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_file = type { i32, i32, i32, i64 }

@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"could not allocate SSL_CTX pointer\00", align 1
@SSL_OP_NO_SSLv2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"could not set SSL_OP_NO_SSLv2\00", align 1
@SSL_OP_NO_SSLv3 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"could not set SSL_OP_NO_SSLv3\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Error setting up SSL_CTX client cert\00", align 1
@SSL_FILETYPE_PEM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"Error setting up SSL_CTX client key\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"Error setting up SSL_CTX verify, server cert\00", align 1
@SSL_VERIFY_PEER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.config_file*)* @setup_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @setup_ctx(%struct.config_file* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.config_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  store %struct.config_file* %0, %struct.config_file** %3, align 8
  store i8* null, i8** %4, align 8
  store i8* null, i8** %5, align 8
  store i8* null, i8** %6, align 8
  %8 = load %struct.config_file*, %struct.config_file** %3, align 8
  %9 = call i64 @options_remote_is_address(%struct.config_file* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.config_file*, %struct.config_file** %3, align 8
  %13 = getelementptr inbounds %struct.config_file, %struct.config_file* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11, %1
  store i32* null, i32** %2, align 8
  br label %112

17:                                               ; preds = %11
  %18 = load %struct.config_file*, %struct.config_file** %3, align 8
  %19 = getelementptr inbounds %struct.config_file, %struct.config_file* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.config_file*, %struct.config_file** %3, align 8
  %22 = call i8* @fname_after_chroot(i32 %20, %struct.config_file* %21, i32 1)
  store i8* %22, i8** %4, align 8
  %23 = load %struct.config_file*, %struct.config_file** %3, align 8
  %24 = getelementptr inbounds %struct.config_file, %struct.config_file* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.config_file*, %struct.config_file** %3, align 8
  %27 = call i8* @fname_after_chroot(i32 %25, %struct.config_file* %26, i32 1)
  store i8* %27, i8** %5, align 8
  %28 = load %struct.config_file*, %struct.config_file** %3, align 8
  %29 = getelementptr inbounds %struct.config_file, %struct.config_file* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.config_file*, %struct.config_file** %3, align 8
  %32 = call i8* @fname_after_chroot(i32 %30, %struct.config_file* %31, i32 1)
  store i8* %32, i8** %6, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %17
  %36 = load i8*, i8** %5, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i8*, i8** %6, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %38, %35, %17
  %42 = call i32 @fatal_exit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %38
  %44 = call i32 (...) @SSLv23_client_method()
  %45 = call i32* @SSL_CTX_new(i32 %44)
  store i32* %45, i32** %7, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %43
  %49 = call i32 @ssl_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %43
  %51 = load i32*, i32** %7, align 8
  %52 = load i32, i32* @SSL_OP_NO_SSLv2, align 4
  %53 = call i32 @SSL_CTX_set_options(i32* %51, i32 %52)
  %54 = load i32, i32* @SSL_OP_NO_SSLv2, align 4
  %55 = and i32 %53, %54
  %56 = load i32, i32* @SSL_OP_NO_SSLv2, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %50
  %59 = call i32 @ssl_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %50
  %61 = load i32*, i32** %7, align 8
  %62 = load i32, i32* @SSL_OP_NO_SSLv3, align 4
  %63 = call i32 @SSL_CTX_set_options(i32* %61, i32 %62)
  %64 = load i32, i32* @SSL_OP_NO_SSLv3, align 4
  %65 = and i32 %63, %64
  %66 = load i32, i32* @SSL_OP_NO_SSLv3, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %60
  %69 = call i32 @ssl_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68, %60
  %71 = load i32*, i32** %7, align 8
  %72 = load i8*, i8** %6, align 8
  %73 = call i32 @SSL_CTX_use_certificate_chain_file(i32* %71, i8* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %70
  %76 = load i8*, i8** %6, align 8
  %77 = call i32 @ssl_path_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i8* %76)
  br label %78

78:                                               ; preds = %75, %70
  %79 = load i32*, i32** %7, align 8
  %80 = load i8*, i8** %5, align 8
  %81 = load i32, i32* @SSL_FILETYPE_PEM, align 4
  %82 = call i32 @SSL_CTX_use_PrivateKey_file(i32* %79, i8* %80, i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %78
  %85 = load i8*, i8** %5, align 8
  %86 = call i32 @ssl_path_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i8* %85)
  br label %87

87:                                               ; preds = %84, %78
  %88 = load i32*, i32** %7, align 8
  %89 = call i32 @SSL_CTX_check_private_key(i32* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %87
  %92 = call i32 @ssl_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  br label %93

93:                                               ; preds = %91, %87
  %94 = load i32*, i32** %7, align 8
  %95 = load i8*, i8** %4, align 8
  %96 = call i32 @SSL_CTX_load_verify_locations(i32* %94, i8* %95, i32* null)
  %97 = icmp ne i32 %96, 1
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = load i8*, i8** %4, align 8
  %100 = call i32 @ssl_path_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i8* %99)
  br label %101

101:                                              ; preds = %98, %93
  %102 = load i32*, i32** %7, align 8
  %103 = load i32, i32* @SSL_VERIFY_PEER, align 4
  %104 = call i32 @SSL_CTX_set_verify(i32* %102, i32 %103, i32* null)
  %105 = load i8*, i8** %4, align 8
  %106 = call i32 @free(i8* %105)
  %107 = load i8*, i8** %5, align 8
  %108 = call i32 @free(i8* %107)
  %109 = load i8*, i8** %6, align 8
  %110 = call i32 @free(i8* %109)
  %111 = load i32*, i32** %7, align 8
  store i32* %111, i32** %2, align 8
  br label %112

112:                                              ; preds = %101, %16
  %113 = load i32*, i32** %2, align 8
  ret i32* %113
}

declare dso_local i64 @options_remote_is_address(%struct.config_file*) #1

declare dso_local i8* @fname_after_chroot(i32, %struct.config_file*, i32) #1

declare dso_local i32 @fatal_exit(i8*) #1

declare dso_local i32* @SSL_CTX_new(i32) #1

declare dso_local i32 @SSLv23_client_method(...) #1

declare dso_local i32 @ssl_err(i8*) #1

declare dso_local i32 @SSL_CTX_set_options(i32*, i32) #1

declare dso_local i32 @SSL_CTX_use_certificate_chain_file(i32*, i8*) #1

declare dso_local i32 @ssl_path_err(i8*, i8*) #1

declare dso_local i32 @SSL_CTX_use_PrivateKey_file(i32*, i8*, i32) #1

declare dso_local i32 @SSL_CTX_check_private_key(i32*) #1

declare dso_local i32 @SSL_CTX_load_verify_locations(i32*, i8*, i32*) #1

declare dso_local i32 @SSL_CTX_set_verify(i32*, i32, i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

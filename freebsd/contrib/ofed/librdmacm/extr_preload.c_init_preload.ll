; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_preload.c_init_preload.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_preload.c_init_preload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_3__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@init_preload.init = internal global i32 0, align 4
@mut = common dso_local global i32 0, align 4
@RTLD_NEXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@real = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"bind\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"listen\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"accept\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"recv\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"recvfrom\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"recvmsg\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"readv\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"send\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"sendto\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"sendmsg\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"writev\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"poll\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"shutdown\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"getpeername\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"getsockname\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"setsockopt\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"getsockopt\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"fcntl\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"dup2\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"sendfile\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"__fxstat\00", align 1
@RTLD_DEFAULT = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [8 x i8] c"rsocket\00", align 1
@rs = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@.str.27 = private unnamed_addr constant [6 x i8] c"rbind\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"rlisten\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"raccept\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"rconnect\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"rrecv\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"rrecvfrom\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"rrecvmsg\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"rread\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"rreadv\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"rsend\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"rsendto\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"rsendmsg\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"rwrite\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"rwritev\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"rpoll\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"rshutdown\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"rclose\00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c"rgetpeername\00", align 1
@.str.45 = private unnamed_addr constant [13 x i8] c"rgetsockname\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"rsetsockopt\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"rgetsockopt\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"rfcntl\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_preload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_preload() #0 {
  %1 = load i32, i32* @init_preload.init, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  br label %112

4:                                                ; preds = %0
  %5 = call i32 @pthread_mutex_lock(i32* @mut)
  %6 = load i32, i32* @init_preload.init, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  br label %110

9:                                                ; preds = %4
  %10 = load i32, i32* @RTLD_NEXT, align 4
  %11 = call i8* @dlsym(i32 %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %11, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @real, i32 0, i32 25), align 8
  %12 = load i32, i32* @RTLD_NEXT, align 4
  %13 = call i8* @dlsym(i32 %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i8* %13, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @real, i32 0, i32 24), align 8
  %14 = load i32, i32* @RTLD_NEXT, align 4
  %15 = call i8* @dlsym(i32 %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i8* %15, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @real, i32 0, i32 23), align 8
  %16 = load i32, i32* @RTLD_NEXT, align 4
  %17 = call i8* @dlsym(i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i8* %17, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @real, i32 0, i32 22), align 8
  %18 = load i32, i32* @RTLD_NEXT, align 4
  %19 = call i8* @dlsym(i32 %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store i8* %19, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @real, i32 0, i32 21), align 8
  %20 = load i32, i32* @RTLD_NEXT, align 4
  %21 = call i8* @dlsym(i32 %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  store i8* %21, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @real, i32 0, i32 20), align 8
  %22 = load i32, i32* @RTLD_NEXT, align 4
  %23 = call i8* @dlsym(i32 %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  store i8* %23, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @real, i32 0, i32 19), align 8
  %24 = load i32, i32* @RTLD_NEXT, align 4
  %25 = call i8* @dlsym(i32 %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  store i8* %25, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @real, i32 0, i32 18), align 8
  %26 = load i32, i32* @RTLD_NEXT, align 4
  %27 = call i8* @dlsym(i32 %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  store i8* %27, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @real, i32 0, i32 17), align 8
  %28 = load i32, i32* @RTLD_NEXT, align 4
  %29 = call i8* @dlsym(i32 %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  store i8* %29, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @real, i32 0, i32 16), align 8
  %30 = load i32, i32* @RTLD_NEXT, align 4
  %31 = call i8* @dlsym(i32 %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  store i8* %31, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @real, i32 0, i32 15), align 8
  %32 = load i32, i32* @RTLD_NEXT, align 4
  %33 = call i8* @dlsym(i32 %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  store i8* %33, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @real, i32 0, i32 14), align 8
  %34 = load i32, i32* @RTLD_NEXT, align 4
  %35 = call i8* @dlsym(i32 %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  store i8* %35, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @real, i32 0, i32 13), align 8
  %36 = load i32, i32* @RTLD_NEXT, align 4
  %37 = call i8* @dlsym(i32 %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0))
  store i8* %37, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @real, i32 0, i32 12), align 8
  %38 = load i32, i32* @RTLD_NEXT, align 4
  %39 = call i8* @dlsym(i32 %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0))
  store i8* %39, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @real, i32 0, i32 11), align 8
  %40 = load i32, i32* @RTLD_NEXT, align 4
  %41 = call i8* @dlsym(i32 %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0))
  store i8* %41, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @real, i32 0, i32 10), align 8
  %42 = load i32, i32* @RTLD_NEXT, align 4
  %43 = call i8* @dlsym(i32 %42, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0))
  store i8* %43, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @real, i32 0, i32 9), align 8
  %44 = load i32, i32* @RTLD_NEXT, align 4
  %45 = call i8* @dlsym(i32 %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0))
  store i8* %45, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @real, i32 0, i32 8), align 8
  %46 = load i32, i32* @RTLD_NEXT, align 4
  %47 = call i8* @dlsym(i32 %46, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0))
  store i8* %47, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @real, i32 0, i32 7), align 8
  %48 = load i32, i32* @RTLD_NEXT, align 4
  %49 = call i8* @dlsym(i32 %48, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0))
  store i8* %49, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @real, i32 0, i32 6), align 8
  %50 = load i32, i32* @RTLD_NEXT, align 4
  %51 = call i8* @dlsym(i32 %50, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0))
  store i8* %51, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @real, i32 0, i32 5), align 8
  %52 = load i32, i32* @RTLD_NEXT, align 4
  %53 = call i8* @dlsym(i32 %52, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0))
  store i8* %53, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @real, i32 0, i32 4), align 8
  %54 = load i32, i32* @RTLD_NEXT, align 4
  %55 = call i8* @dlsym(i32 %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0))
  store i8* %55, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @real, i32 0, i32 3), align 8
  %56 = load i32, i32* @RTLD_NEXT, align 4
  %57 = call i8* @dlsym(i32 %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0))
  store i8* %57, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @real, i32 0, i32 2), align 8
  %58 = load i32, i32* @RTLD_NEXT, align 4
  %59 = call i8* @dlsym(i32 %58, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0))
  store i8* %59, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @real, i32 0, i32 1), align 8
  %60 = load i32, i32* @RTLD_NEXT, align 4
  %61 = call i8* @dlsym(i32 %60, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0))
  store i8* %61, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @real, i32 0, i32 0), align 8
  %62 = load i32, i32* @RTLD_DEFAULT, align 4
  %63 = call i8* @dlsym(i32 %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0))
  store i8* %63, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @rs, i32 0, i32 22), align 8
  %64 = load i32, i32* @RTLD_DEFAULT, align 4
  %65 = call i8* @dlsym(i32 %64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0))
  store i8* %65, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @rs, i32 0, i32 21), align 8
  %66 = load i32, i32* @RTLD_DEFAULT, align 4
  %67 = call i8* @dlsym(i32 %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i64 0, i64 0))
  store i8* %67, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @rs, i32 0, i32 20), align 8
  %68 = load i32, i32* @RTLD_DEFAULT, align 4
  %69 = call i8* @dlsym(i32 %68, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i64 0, i64 0))
  store i8* %69, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @rs, i32 0, i32 19), align 8
  %70 = load i32, i32* @RTLD_DEFAULT, align 4
  %71 = call i8* @dlsym(i32 %70, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i64 0, i64 0))
  store i8* %71, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @rs, i32 0, i32 18), align 8
  %72 = load i32, i32* @RTLD_DEFAULT, align 4
  %73 = call i8* @dlsym(i32 %72, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i64 0, i64 0))
  store i8* %73, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @rs, i32 0, i32 17), align 8
  %74 = load i32, i32* @RTLD_DEFAULT, align 4
  %75 = call i8* @dlsym(i32 %74, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i64 0, i64 0))
  store i8* %75, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @rs, i32 0, i32 16), align 8
  %76 = load i32, i32* @RTLD_DEFAULT, align 4
  %77 = call i8* @dlsym(i32 %76, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i64 0, i64 0))
  store i8* %77, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @rs, i32 0, i32 15), align 8
  %78 = load i32, i32* @RTLD_DEFAULT, align 4
  %79 = call i8* @dlsym(i32 %78, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i64 0, i64 0))
  store i8* %79, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @rs, i32 0, i32 14), align 8
  %80 = load i32, i32* @RTLD_DEFAULT, align 4
  %81 = call i8* @dlsym(i32 %80, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i64 0, i64 0))
  store i8* %81, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @rs, i32 0, i32 13), align 8
  %82 = load i32, i32* @RTLD_DEFAULT, align 4
  %83 = call i8* @dlsym(i32 %82, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i64 0, i64 0))
  store i8* %83, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @rs, i32 0, i32 12), align 8
  %84 = load i32, i32* @RTLD_DEFAULT, align 4
  %85 = call i8* @dlsym(i32 %84, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i64 0, i64 0))
  store i8* %85, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @rs, i32 0, i32 11), align 8
  %86 = load i32, i32* @RTLD_DEFAULT, align 4
  %87 = call i8* @dlsym(i32 %86, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i64 0, i64 0))
  store i8* %87, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @rs, i32 0, i32 10), align 8
  %88 = load i32, i32* @RTLD_DEFAULT, align 4
  %89 = call i8* @dlsym(i32 %88, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i64 0, i64 0))
  store i8* %89, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @rs, i32 0, i32 9), align 8
  %90 = load i32, i32* @RTLD_DEFAULT, align 4
  %91 = call i8* @dlsym(i32 %90, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i64 0, i64 0))
  store i8* %91, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @rs, i32 0, i32 8), align 8
  %92 = load i32, i32* @RTLD_DEFAULT, align 4
  %93 = call i8* @dlsym(i32 %92, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i64 0, i64 0))
  store i8* %93, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @rs, i32 0, i32 7), align 8
  %94 = load i32, i32* @RTLD_DEFAULT, align 4
  %95 = call i8* @dlsym(i32 %94, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i64 0, i64 0))
  store i8* %95, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @rs, i32 0, i32 6), align 8
  %96 = load i32, i32* @RTLD_DEFAULT, align 4
  %97 = call i8* @dlsym(i32 %96, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i64 0, i64 0))
  store i8* %97, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @rs, i32 0, i32 5), align 8
  %98 = load i32, i32* @RTLD_DEFAULT, align 4
  %99 = call i8* @dlsym(i32 %98, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.44, i64 0, i64 0))
  store i8* %99, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @rs, i32 0, i32 4), align 8
  %100 = load i32, i32* @RTLD_DEFAULT, align 4
  %101 = call i8* @dlsym(i32 %100, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.45, i64 0, i64 0))
  store i8* %101, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @rs, i32 0, i32 3), align 8
  %102 = load i32, i32* @RTLD_DEFAULT, align 4
  %103 = call i8* @dlsym(i32 %102, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i64 0, i64 0))
  store i8* %103, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @rs, i32 0, i32 2), align 8
  %104 = load i32, i32* @RTLD_DEFAULT, align 4
  %105 = call i8* @dlsym(i32 %104, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i64 0, i64 0))
  store i8* %105, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @rs, i32 0, i32 1), align 8
  %106 = load i32, i32* @RTLD_DEFAULT, align 4
  %107 = call i8* @dlsym(i32 %106, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i64 0, i64 0))
  store i8* %107, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @rs, i32 0, i32 0), align 8
  %108 = call i32 (...) @getenv_options()
  %109 = call i32 (...) @scan_config()
  store i32 1, i32* @init_preload.init, align 4
  br label %110

110:                                              ; preds = %9, %8
  %111 = call i32 @pthread_mutex_unlock(i32* @mut)
  br label %112

112:                                              ; preds = %110, %3
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i8* @dlsym(i32, i8*) #1

declare dso_local i32 @getenv_options(...) #1

declare dso_local i32 @scan_config(...) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

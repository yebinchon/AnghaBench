; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_preload.c_fork_passive.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_preload.c_fork_passive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (i32, %struct.sockaddr*, i32*)*, i32 (i32, i64*, i32)*, i32 (i32)*, i32 (i32, i32)* }
%struct.sockaddr = type { i32 }
%struct.sockaddr_in6 = type { i32, i32, i64, i64 }

@real = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@.str = private unnamed_addr constant [14 x i8] c"/rsocket_fork\00", align 1
@O_CREAT = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@S_IRWXU = common dso_local global i32 0, align 4
@S_IRWXG = common dso_local global i32 0, align 4
@SEM_FAILED = common dso_local global i32* null, align 8
@SOCK_STREAM = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_REUSEADDR = common dso_local global i32 0, align 4
@rs = common dso_local global i32 0, align 4
@SHUT_RDWR = common dso_local global i32 0, align 4
@fd_rsocket = common dso_local global i32 0, align 4
@fd_ready = common dso_local global i32 0, align 4
@fd_normal = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @fork_passive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fork_passive(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sockaddr_in6, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @fd_getd(i32 %12)
  store i32 %13, i32* %6, align 4
  store i32 24, i32* %10, align 4
  %14 = load i32 (i32, %struct.sockaddr*, i32*)*, i32 (i32, %struct.sockaddr*, i32*)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @real, i32 0, i32 0), align 8
  %15 = load i32, i32* %6, align 4
  %16 = bitcast %struct.sockaddr_in6* %3 to %struct.sockaddr*
  %17 = call i32 %14(i32 %15, %struct.sockaddr* %16, i32* %10)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %106

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %3, i32 0, i32 3
  store i64 0, i64* %22, align 8
  %23 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %3, i32 0, i32 2
  store i64 0, i64* %23, align 8
  %24 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %3, i32 0, i32 1
  %25 = call i32 @memset(i32* %24, i32 0, i32 4)
  %26 = load i32, i32* @O_CREAT, align 4
  %27 = load i32, i32* @O_RDWR, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @S_IRWXU, align 4
  %30 = load i32, i32* @S_IRWXG, align 4
  %31 = or i32 %29, %30
  %32 = call i32* @sem_open(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %31, i32 1)
  store i32* %32, i32** %4, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = load i32*, i32** @SEM_FAILED, align 8
  %35 = icmp eq i32* %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %21
  store i32 -1, i32* %8, align 4
  br label %106

37:                                               ; preds = %21
  %38 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %3, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @SOCK_STREAM, align 4
  %41 = call i32 @rsocket(i32 %39, i32 %40, i32 0)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %8, align 4
  br label %103

46:                                               ; preds = %37
  store i32 1, i32* %9, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @SOL_SOCKET, align 4
  %49 = load i32, i32* @SO_REUSEADDR, align 4
  %50 = call i32 @rsetsockopt(i32 %47, i32 %48, i32 %49, i32* %9, i32 4)
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @sem_wait(i32* %51)
  %53 = load i32, i32* %5, align 4
  %54 = bitcast %struct.sockaddr_in6* %3 to %struct.sockaddr*
  %55 = call i32 @rbind(i32 %53, %struct.sockaddr* %54, i32 24)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %46
  br label %98

59:                                               ; preds = %46
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @rlisten(i32 %60, i32 1)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %98

65:                                               ; preds = %59
  store i64 0, i64* %11, align 8
  %66 = load i32 (i32, i64*, i32)*, i32 (i32, i64*, i32)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @real, i32 0, i32 1), align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i32 %66(i32 %67, i64* %11, i32 8)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = icmp ne i64 %70, 8
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  br label %98

73:                                               ; preds = %65
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @raccept(i32 %74, i32* null, i32* null)
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = load i32, i32* %7, align 4
  store i32 %79, i32* %8, align 4
  br label %98

80:                                               ; preds = %73
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @set_rsocket_options(i32 %81)
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @copysockopts(i32 %83, i32 %84, i32* @rs, %struct.TYPE_3__* @real)
  %86 = load i32 (i32, i32)*, i32 (i32, i32)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @real, i32 0, i32 3), align 8
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* @SHUT_RDWR, align 4
  %89 = call i32 %86(i32 %87, i32 %88)
  %90 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @real, i32 0, i32 2), align 8
  %91 = load i32, i32* %6, align 4
  %92 = call i32 %90(i32 %91)
  %93 = load i32, i32* %2, align 4
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* @fd_rsocket, align 4
  %96 = load i32, i32* @fd_ready, align 4
  %97 = call i32 @fd_store(i32 %93, i32 %94, i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %80, %78, %72, %64, %58
  %99 = load i32, i32* %5, align 4
  %100 = call i32 @rclose(i32 %99)
  %101 = load i32*, i32** %4, align 8
  %102 = call i32 @sem_post(i32* %101)
  br label %103

103:                                              ; preds = %98, %44
  %104 = load i32*, i32** %4, align 8
  %105 = call i32 @sem_close(i32* %104)
  br label %106

106:                                              ; preds = %103, %36, %20
  %107 = load i32, i32* %8, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %106
  %110 = load i32, i32* %2, align 4
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* @fd_normal, align 4
  %113 = load i32, i32* @fd_ready, align 4
  %114 = call i32 @fd_store(i32 %110, i32 %111, i32 %112, i32 %113)
  br label %115

115:                                              ; preds = %109, %106
  ret void
}

declare dso_local i32 @fd_getd(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32* @sem_open(i8*, i32, i32, i32) #1

declare dso_local i32 @rsocket(i32, i32, i32) #1

declare dso_local i32 @rsetsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @sem_wait(i32*) #1

declare dso_local i32 @rbind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @rlisten(i32, i32) #1

declare dso_local i32 @raccept(i32, i32*, i32*) #1

declare dso_local i32 @set_rsocket_options(i32) #1

declare dso_local i32 @copysockopts(i32, i32, i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @fd_store(i32, i32, i32, i32) #1

declare dso_local i32 @rclose(i32) #1

declare dso_local i32 @sem_post(i32*) #1

declare dso_local i32 @sem_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

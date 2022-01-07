; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_rconnect.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_rconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.rsocket = type { i64, i64, i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@idm = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i64 0, align 8
@rs_init = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rconnect(i32 %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rsocket*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.rsocket* @idm_lookup(i32* @idm, i32 %10)
  store %struct.rsocket* %11, %struct.rsocket** %8, align 8
  %12 = load %struct.rsocket*, %struct.rsocket** %8, align 8
  %13 = icmp ne %struct.rsocket* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @EBADF, align 4
  %16 = call i32 @ERR(i32 %15)
  store i32 %16, i32* %4, align 4
  br label %74

17:                                               ; preds = %3
  %18 = load %struct.rsocket*, %struct.rsocket** %8, align 8
  %19 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SOCK_STREAM, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %17
  %24 = load %struct.rsocket*, %struct.rsocket** %8, align 8
  %25 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %24, i32 0, i32 5
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @memcpy(i32* %29, %struct.sockaddr* %30, i32 %31)
  %33 = load %struct.rsocket*, %struct.rsocket** %8, align 8
  %34 = call i32 @rs_do_connect(%struct.rsocket* %33)
  store i32 %34, i32* %9, align 4
  br label %72

35:                                               ; preds = %17
  %36 = load %struct.rsocket*, %struct.rsocket** %8, align 8
  %37 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @rs_init, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %35
  %42 = load %struct.rsocket*, %struct.rsocket** %8, align 8
  %43 = call i32 @ds_init_ep(%struct.rsocket* %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %4, align 4
  br label %74

48:                                               ; preds = %41
  br label %49

49:                                               ; preds = %48, %35
  %50 = load %struct.rsocket*, %struct.rsocket** %8, align 8
  %51 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %50, i32 0, i32 2
  %52 = call i32 @fastlock_acquire(i32* %51)
  %53 = load %struct.rsocket*, %struct.rsocket** %8, align 8
  %54 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @connect(i32 %55, %struct.sockaddr* %56, i32 %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %49
  %62 = load %struct.rsocket*, %struct.rsocket** %8, align 8
  %63 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.rsocket*, %struct.rsocket** %8, align 8
  %66 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %65, i32 0, i32 3
  %67 = call i32 @ds_get_dest(%struct.rsocket* %62, %struct.sockaddr* %63, i32 %64, i32* %66)
  store i32 %67, i32* %9, align 4
  br label %68

68:                                               ; preds = %61, %49
  %69 = load %struct.rsocket*, %struct.rsocket** %8, align 8
  %70 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %69, i32 0, i32 2
  %71 = call i32 @fastlock_release(i32* %70)
  br label %72

72:                                               ; preds = %68, %23
  %73 = load i32, i32* %9, align 4
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %72, %46, %14
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local %struct.rsocket* @idm_lookup(i32*, i32) #1

declare dso_local i32 @ERR(i32) #1

declare dso_local i32 @memcpy(i32*, %struct.sockaddr*, i32) #1

declare dso_local i32 @rs_do_connect(%struct.rsocket*) #1

declare dso_local i32 @ds_init_ep(%struct.rsocket*) #1

declare dso_local i32 @fastlock_acquire(i32*) #1

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @ds_get_dest(%struct.rsocket*, %struct.sockaddr*, i32, i32*) #1

declare dso_local i32 @fastlock_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

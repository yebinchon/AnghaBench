; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_preload.c_transpose_socket.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_preload.c_transpose_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket_calls = type { i32 (i32, i32*, i32*)*, i32 (i32, i32, i32)*, i32 (i32)* }

@fd_rsocket = common dso_local global i32 0, align 4
@rs = common dso_local global %struct.socket_calls zeroinitializer, align 8
@real = common dso_local global %struct.socket_calls zeroinitializer, align 8
@PF_INET6 = common dso_local global i32 0, align 4
@PF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@fd_ready = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @transpose_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @transpose_socket(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.socket_calls*, align 8
  %12 = alloca %struct.socket_calls*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @fd_getd(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @fd_rsocket, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store %struct.socket_calls* @rs, %struct.socket_calls** %12, align 8
  store %struct.socket_calls* @real, %struct.socket_calls** %11, align 8
  br label %20

19:                                               ; preds = %2
  store %struct.socket_calls* @real, %struct.socket_calls** %12, align 8
  store %struct.socket_calls* @rs, %struct.socket_calls** %11, align 8
  br label %20

20:                                               ; preds = %19, %18
  %21 = load %struct.socket_calls*, %struct.socket_calls** %11, align 8
  %22 = getelementptr inbounds %struct.socket_calls, %struct.socket_calls* %21, i32 0, i32 0
  %23 = load i32 (i32, i32*, i32*)*, i32 (i32, i32*, i32*)** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 %23(i32 %24, i32* null, i32* %6)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %3, align 4
  br label %73

30:                                               ; preds = %20
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = icmp eq i64 %32, 4
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* @PF_INET6, align 4
  br label %38

36:                                               ; preds = %30
  %37 = load i32, i32* @PF_INET, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  store i32 %39, i32* %9, align 4
  %40 = load %struct.socket_calls*, %struct.socket_calls** %12, align 8
  %41 = getelementptr inbounds %struct.socket_calls, %struct.socket_calls* %40, i32 0, i32 1
  %42 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @SOCK_STREAM, align 4
  %45 = call i32 %42(i32 %43, i32 %44, i32 0)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %38
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %3, align 4
  br label %73

50:                                               ; preds = %38
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.socket_calls*, %struct.socket_calls** %12, align 8
  %54 = load %struct.socket_calls*, %struct.socket_calls** %11, align 8
  %55 = call i32 @copysockopts(i32 %51, i32 %52, %struct.socket_calls* %53, %struct.socket_calls* %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  br label %66

59:                                               ; preds = %50
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @fd_ready, align 4
  %64 = call i32 @fd_store(i32 %60, i32 %61, i32 %62, i32 %63)
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %3, align 4
  br label %73

66:                                               ; preds = %58
  %67 = load %struct.socket_calls*, %struct.socket_calls** %12, align 8
  %68 = getelementptr inbounds %struct.socket_calls, %struct.socket_calls* %67, i32 0, i32 2
  %69 = load i32 (i32)*, i32 (i32)** %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = call i32 %69(i32 %70)
  %72 = load i32, i32* %10, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %66, %59, %48, %28
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @fd_getd(i32) #1

declare dso_local i32 @copysockopts(i32, i32, %struct.socket_calls*, %struct.socket_calls*) #1

declare dso_local i32 @fd_store(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

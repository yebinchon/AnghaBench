; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rstream.c_set_keepalive.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rstream.c_set_keepalive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_KEEPALIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"rsetsockopt SO_KEEPALIVE\00", align 1
@keepalive = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@TCP_KEEPIDLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"rsetsockopt TCP_KEEPIDLE\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Keepalive: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"ON\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"OFF\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"  time: %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @set_keepalive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_keepalive(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 4, i32* %4, align 4
  store i32 1, i32* %3, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @SOL_SOCKET, align 4
  %7 = load i32, i32* @SO_KEEPALIVE, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i64 @rs_setsockopt(i32 %5, i32 %6, i32 %7, i32* %3, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 @perror(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %44

13:                                               ; preds = %1
  %14 = load i32, i32* @keepalive, align 4
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @IPPROTO_TCP, align 4
  %17 = load i32, i32* @TCP_KEEPIDLE, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i64 @rs_setsockopt(i32 %15, i32 %16, i32 %17, i32* %3, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %13
  %22 = call i32 @perror(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %13
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* @SOL_SOCKET, align 4
  %26 = load i32, i32* @SO_KEEPALIVE, align 4
  %27 = call i32 @rs_getsockopt(i32 %24, i32 %25, i32 %26, i32* %3, i32* %4)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* %3, align 4
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %33)
  br label %35

35:                                               ; preds = %29, %23
  %36 = load i32, i32* %2, align 4
  %37 = load i32, i32* @IPPROTO_TCP, align 4
  %38 = load i32, i32* @TCP_KEEPIDLE, align 4
  %39 = call i32 @rs_getsockopt(i32 %36, i32 %37, i32 %38, i32* %3, i32* %4)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %35
  %42 = load i32, i32* %3, align 4
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %11, %41, %35
  ret void
}

declare dso_local i64 @rs_setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @rs_getsockopt(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_preload.c_sendto.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_preload.c_sendto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i8*, i64, i32, %struct.sockaddr*, i32)* }
%struct.sockaddr = type { i32 }

@fd_rsocket = common dso_local global i64 0, align 8
@real = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sendto(i32 %0, i8* %1, i64 %2, i32 %3, %struct.sockaddr* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sockaddr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.sockaddr* %4, %struct.sockaddr** %11, align 8
  store i32 %5, i32* %12, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i64 @fd_fork_get(i32 %14, i32* %13)
  %16 = load i64, i64* @fd_rsocket, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %6
  %19 = load i32, i32* %13, align 4
  %20 = load i8*, i8** %8, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load i32, i32* %10, align 4
  %23 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %24 = load i32, i32* %12, align 4
  %25 = call i32 @rsendto(i32 %19, i8* %20, i64 %21, i32 %22, %struct.sockaddr* %23, i32 %24)
  br label %35

26:                                               ; preds = %6
  %27 = load i32 (i32, i8*, i64, i32, %struct.sockaddr*, i32)*, i32 (i32, i8*, i64, i32, %struct.sockaddr*, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @real, i32 0, i32 0), align 8
  %28 = load i32, i32* %13, align 4
  %29 = load i8*, i8** %8, align 8
  %30 = load i64, i64* %9, align 8
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %33 = load i32, i32* %12, align 4
  %34 = call i32 %27(i32 %28, i8* %29, i64 %30, i32 %31, %struct.sockaddr* %32, i32 %33)
  br label %35

35:                                               ; preds = %26, %18
  %36 = phi i32 [ %25, %18 ], [ %34, %26 ]
  ret i32 %36
}

declare dso_local i64 @fd_fork_get(i32, i32*) #1

declare dso_local i32 @rsendto(i32, i8*, i64, i32, %struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

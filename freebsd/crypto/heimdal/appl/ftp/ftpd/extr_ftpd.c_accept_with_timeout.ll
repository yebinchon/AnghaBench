; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftpd/extr_ftpd.c_accept_with_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftpd/extr_ftpd.c_accept_with_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.timeval = type { i32 }

@ETIMEDOUT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.sockaddr*, i32*, %struct.timeval*)* @accept_with_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @accept_with_timeout(i32 %0, %struct.sockaddr* %1, i32* %2, %struct.timeval* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.timeval*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.sockaddr* %1, %struct.sockaddr** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.timeval* %3, %struct.timeval** %9, align 8
  %12 = call i32 @FD_ZERO(i32* %11)
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @FD_SET(i32 %13, i32* %11)
  %15 = load i32, i32* %6, align 4
  %16 = add nsw i32 %15, 1
  %17 = load %struct.timeval*, %struct.timeval** %9, align 8
  %18 = call i32 @select(i32 %16, i32* %11, i32* null, i32* null, %struct.timeval* %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* %10, align 4
  store i32 %22, i32* %5, align 4
  br label %33

23:                                               ; preds = %4
  %24 = load i32, i32* %10, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %27, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  br label %33

28:                                               ; preds = %23
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = call i32 @accept(i32 %29, %struct.sockaddr* %30, i32* %31)
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %28, %26, %21
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @accept(i32, %struct.sockaddr*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

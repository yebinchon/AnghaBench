; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_addrinfo.c_ucma_copy_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_addrinfo.c_ucma_copy_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockaddr**, i32*, %struct.sockaddr*, i32)* @ucma_copy_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucma_copy_addr(%struct.sockaddr** %0, i32* %1, %struct.sockaddr* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca i32, align 4
  store %struct.sockaddr** %0, %struct.sockaddr*** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.sockaddr* @malloc(i32 %10)
  %12 = load %struct.sockaddr**, %struct.sockaddr*** %6, align 8
  store %struct.sockaddr* %11, %struct.sockaddr** %12, align 8
  %13 = load %struct.sockaddr**, %struct.sockaddr*** %6, align 8
  %14 = load %struct.sockaddr*, %struct.sockaddr** %13, align 8
  %15 = icmp ne %struct.sockaddr* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = call i32 @ERR(i32 %17)
  store i32 %18, i32* %5, align 4
  br label %27

19:                                               ; preds = %4
  %20 = load %struct.sockaddr**, %struct.sockaddr*** %6, align 8
  %21 = load %struct.sockaddr*, %struct.sockaddr** %20, align 8
  %22 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @memcpy(%struct.sockaddr* %21, %struct.sockaddr* %22, i32 %23)
  %25 = load i32, i32* %9, align 4
  %26 = load i32*, i32** %7, align 8
  store i32 %25, i32* %26, align 4
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %19, %16
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

declare dso_local %struct.sockaddr* @malloc(i32) #1

declare dso_local i32 @ERR(i32) #1

declare dso_local i32 @memcpy(%struct.sockaddr*, %struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

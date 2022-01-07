; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_sockutils.c_sock_getmyinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_sockutils.c_sock_getmyinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i32 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"getsockname(): \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sock_getmyinfo(i32 %0, i8* %1, i32 %2, i8* %3, i32 %4, i32 %5, i8* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.sockaddr_storage, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i8* %3, i8** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i8* %6, i8** %16, align 8
  store i32 %7, i32* %17, align 4
  store i32 4, i32* %19, align 4
  %20 = load i32, i32* %10, align 4
  %21 = bitcast %struct.sockaddr_storage* %18 to %struct.sockaddr*
  %22 = call i32 @getsockname(i32 %20, %struct.sockaddr* %21, i32* %19)
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %28

24:                                               ; preds = %8
  %25 = load i8*, i8** %16, align 8
  %26 = load i32, i32* %17, align 4
  %27 = call i32 @sock_geterror(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %25, i32 %26)
  store i32 0, i32* %9, align 4
  br label %37

28:                                               ; preds = %8
  %29 = load i8*, i8** %11, align 8
  %30 = load i32, i32* %12, align 4
  %31 = load i8*, i8** %13, align 8
  %32 = load i32, i32* %14, align 4
  %33 = load i32, i32* %15, align 4
  %34 = load i8*, i8** %16, align 8
  %35 = load i32, i32* %17, align 4
  %36 = call i32 @sock_getascii_addrport(%struct.sockaddr_storage* %18, i8* %29, i32 %30, i8* %31, i32 %32, i32 %33, i8* %34, i32 %35)
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %28, %24
  %38 = load i32, i32* %9, align 4
  ret i32 %38
}

declare dso_local i32 @getsockname(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @sock_geterror(i8*, i8*, i32) #1

declare dso_local i32 @sock_getascii_addrport(%struct.sockaddr_storage*, i8*, i32, i8*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

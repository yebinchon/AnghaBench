; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_rpc_generic.c___rpc_sockisbound.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_rpc_generic.c___rpc_sockisbound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr_un = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__rpc_sockisbound(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_storage, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 4, i32* %5, align 4
  %6 = load i32, i32* %3, align 4
  %7 = bitcast %struct.sockaddr_storage* %4 to i8*
  %8 = bitcast i8* %7 to %struct.sockaddr*
  %9 = call i64 @_getsockname(i32 %6, %struct.sockaddr* %8, i32* %5)
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %34

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %4, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %32 [
    i32 130, label %15
    i32 128, label %22
  ]

15:                                               ; preds = %12
  %16 = bitcast %struct.sockaddr_storage* %4 to i8*
  %17 = bitcast i8* %16 to %struct.sockaddr_in*
  %18 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %2, align 4
  br label %34

22:                                               ; preds = %12
  %23 = bitcast %struct.sockaddr_storage* %4 to i8*
  %24 = bitcast i8* %23 to %struct.sockaddr_un*
  %25 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %2, align 4
  br label %34

32:                                               ; preds = %12
  br label %33

33:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %33, %22, %15, %11
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i64 @_getsockname(i32, %struct.sockaddr*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

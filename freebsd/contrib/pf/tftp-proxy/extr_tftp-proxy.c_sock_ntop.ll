; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/pf/tftp-proxy/extr_tftp-proxy.c_sock_ntop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/pf/tftp-proxy/extr_tftp-proxy.c_sock_ntop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i64 }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr_in6 = type { i32 }

@sock_ntop.n = internal global i32 0, align 4
@NTOP_BUFS = common dso_local global i32 0, align 4
@ntop_buf = common dso_local global i8** null, align 8
@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @sock_ntop(%struct.sockaddr* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sockaddr*, align 8
  %4 = alloca %struct.sockaddr_in*, align 8
  %5 = alloca %struct.sockaddr_in6*, align 8
  store %struct.sockaddr* %0, %struct.sockaddr** %3, align 8
  %6 = load i32, i32* @sock_ntop.n, align 4
  %7 = add nsw i32 %6, 1
  %8 = load i32, i32* @NTOP_BUFS, align 4
  %9 = srem i32 %7, %8
  store i32 %9, i32* @sock_ntop.n, align 4
  %10 = load i8**, i8*** @ntop_buf, align 8
  %11 = load i32, i32* @sock_ntop.n, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8*, i8** %10, i64 %12
  %14 = load i8*, i8** %13, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  store i8 0, i8* %15, align 1
  %16 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8
  %17 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @AF_INET, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %1
  %22 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8
  %23 = bitcast %struct.sockaddr* %22 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %23, %struct.sockaddr_in** %4, align 8
  %24 = load i64, i64* @AF_INET, align 8
  %25 = load %struct.sockaddr_in*, %struct.sockaddr_in** %4, align 8
  %26 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %25, i32 0, i32 0
  %27 = load i8**, i8*** @ntop_buf, align 8
  %28 = load i32, i32* @sock_ntop.n, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8*, i8** %27, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = call i8* @inet_ntop(i64 %24, i32* %26, i8* %31, i32 8)
  store i8* %32, i8** %2, align 8
  br label %52

33:                                               ; preds = %1
  %34 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8
  %35 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @AF_INET6, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %51

39:                                               ; preds = %33
  %40 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8
  %41 = bitcast %struct.sockaddr* %40 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %41, %struct.sockaddr_in6** %5, align 8
  %42 = load i64, i64* @AF_INET6, align 8
  %43 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %5, align 8
  %44 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %43, i32 0, i32 0
  %45 = load i8**, i8*** @ntop_buf, align 8
  %46 = load i32, i32* @sock_ntop.n, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8*, i8** %45, i64 %47
  %49 = load i8*, i8** %48, align 8
  %50 = call i8* @inet_ntop(i64 %42, i32* %44, i8* %49, i32 8)
  store i8* %50, i8** %2, align 8
  br label %52

51:                                               ; preds = %33
  store i8* null, i8** %2, align 8
  br label %52

52:                                               ; preds = %51, %39, %21
  %53 = load i8*, i8** %2, align 8
  ret i8* %53
}

declare dso_local i8* @inet_ntop(i64, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

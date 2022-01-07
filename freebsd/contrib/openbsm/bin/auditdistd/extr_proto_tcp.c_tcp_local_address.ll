; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_proto_tcp.c_tcp_local_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_proto_tcp.c_tcp_local_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_ctx = type { i64, i32 }
%struct.sockaddr_storage = type { i32 }
%struct.sockaddr = type { i32 }

@TCP_CTX_MAGIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"N/A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"tcp://\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i64)* @tcp_local_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_local_address(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.tcp_ctx*, align 8
  %8 = alloca %struct.sockaddr_storage, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.tcp_ctx*
  store %struct.tcp_ctx* %11, %struct.tcp_ctx** %7, align 8
  %12 = load %struct.tcp_ctx*, %struct.tcp_ctx** %7, align 8
  %13 = icmp ne %struct.tcp_ctx* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @PJDLOG_ASSERT(i32 %14)
  %16 = load %struct.tcp_ctx*, %struct.tcp_ctx** %7, align 8
  %17 = getelementptr inbounds %struct.tcp_ctx, %struct.tcp_ctx* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @TCP_CTX_MAGIC, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @PJDLOG_ASSERT(i32 %21)
  store i32 4, i32* %9, align 4
  %23 = load %struct.tcp_ctx*, %struct.tcp_ctx** %7, align 8
  %24 = getelementptr inbounds %struct.tcp_ctx, %struct.tcp_ctx* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = bitcast %struct.sockaddr_storage* %8 to %struct.sockaddr*
  %27 = call i64 @getsockname(i32 %25, %struct.sockaddr* %26, i32* %9)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %3
  %30 = load i8*, i8** %5, align 8
  %31 = load i64, i64* %6, align 8
  %32 = call i64 @strlcpy(i8* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %31)
  %33 = load i64, i64* %6, align 8
  %34 = icmp ult i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @PJDLOG_VERIFY(i32 %35)
  br label %49

37:                                               ; preds = %3
  %38 = load i8*, i8** %5, align 8
  %39 = load i64, i64* %6, align 8
  %40 = call i64 @strlcpy(i8* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 %39)
  %41 = load i64, i64* %6, align 8
  %42 = icmp ugt i64 %41, 6
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load i8*, i8** %5, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 6
  %46 = load i64, i64* %6, align 8
  %47 = sub i64 %46, 6
  %48 = call i32 @sockaddr_to_string(%struct.sockaddr_storage* %8, i8* %45, i64 %47)
  br label %49

49:                                               ; preds = %29, %43, %37
  ret void
}

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local i64 @getsockname(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @PJDLOG_VERIFY(i32) #1

declare dso_local i64 @strlcpy(i8*, i8*, i64) #1

declare dso_local i32 @sockaddr_to_string(%struct.sockaddr_storage*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

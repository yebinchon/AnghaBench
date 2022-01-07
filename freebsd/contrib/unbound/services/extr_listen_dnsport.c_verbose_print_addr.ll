; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_listen_dnsport.c_verbose_print_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_listen_dnsport.c_verbose_print_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i64, i64, i64 }
%struct.sockaddr_in = type { i32, i32 }

@verbosity = common dso_local global i64 0, align 8
@VERB_ALGO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"creating %s%s socket %s %d\00", align 1
@SOCK_DGRAM = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@SOCK_STREAM = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"otherproto\00", align 1
@AF_INET = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@AF_INET6 = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [2 x i8] c"6\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"_otherfam\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.addrinfo*)* @verbose_print_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @verbose_print_addr(%struct.addrinfo* %0) #0 {
  %2 = alloca %struct.addrinfo*, align 8
  %3 = alloca [100 x i8], align 16
  %4 = alloca i8*, align 8
  store %struct.addrinfo* %0, %struct.addrinfo** %2, align 8
  %5 = load i64, i64* @verbosity, align 8
  %6 = load i64, i64* @VERB_ALGO, align 8
  %7 = icmp sge i64 %5, %6
  br i1 %7, label %8, label %69

8:                                                ; preds = %1
  %9 = load %struct.addrinfo*, %struct.addrinfo** %2, align 8
  %10 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.sockaddr_in*
  %13 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %12, i32 0, i32 1
  %14 = bitcast i32* %13 to i8*
  store i8* %14, i8** %4, align 8
  %15 = load %struct.addrinfo*, %struct.addrinfo** %2, align 8
  %16 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %20 = call i64 @inet_ntop(i64 %17, i8* %18, i8* %19, i32 100)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %8
  %23 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %24 = call i32 @strlcpy(i8* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 100)
  br label %25

25:                                               ; preds = %22, %8
  %26 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 99
  store i8 0, i8* %26, align 1
  %27 = load i64, i64* @VERB_ALGO, align 8
  %28 = load %struct.addrinfo*, %struct.addrinfo** %2, align 8
  %29 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @SOCK_DGRAM, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %42

34:                                               ; preds = %25
  %35 = load %struct.addrinfo*, %struct.addrinfo** %2, align 8
  %36 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @SOCK_STREAM, align 8
  %39 = icmp eq i64 %37, %38
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0)
  br label %42

42:                                               ; preds = %34, %33
  %43 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), %33 ], [ %41, %34 ]
  %44 = load %struct.addrinfo*, %struct.addrinfo** %2, align 8
  %45 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @AF_INET, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  br label %58

50:                                               ; preds = %42
  %51 = load %struct.addrinfo*, %struct.addrinfo** %2, align 8
  %52 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @AF_INET6, align 8
  %55 = icmp eq i64 %53, %54
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)
  br label %58

58:                                               ; preds = %50, %49
  %59 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), %49 ], [ %57, %50 ]
  %60 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %61 = load %struct.addrinfo*, %struct.addrinfo** %2, align 8
  %62 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to %struct.sockaddr_in*
  %65 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @ntohs(i32 %66)
  %68 = call i32 @verbose(i64 %27, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %43, i8* %59, i8* %60, i32 %67)
  br label %69

69:                                               ; preds = %58, %1
  ret void
}

declare dso_local i64 @inet_ntop(i64, i8*, i8*, i32) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @verbose(i64, i8*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

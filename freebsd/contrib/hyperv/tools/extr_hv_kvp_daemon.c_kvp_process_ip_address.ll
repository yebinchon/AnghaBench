; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/hyperv/tools/extr_hv_kvp_daemon.c_kvp_process_ip_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/hyperv/tools/extr_hv_kvp_daemon.c_kvp_process_ip_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32 }
%struct.sockaddr_in6 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@INET_ADDRSTRLEN = common dso_local global i32 0, align 4
@INET6_ADDRSTRLEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"inet_ntop failed\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c";\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i32, i32*)* @kvp_process_ip_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvp_process_ip_address(i8* %0, i32 %1, i8* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.sockaddr_in*, align 8
  %13 = alloca %struct.sockaddr_in6*, align 8
  %14 = alloca i32, align 4
  %15 = alloca [50 x i8], align 16
  %16 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @AF_INET, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %5
  %21 = load i8*, i8** %7, align 8
  %22 = bitcast i8* %21 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %22, %struct.sockaddr_in** %12, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.sockaddr_in*, %struct.sockaddr_in** %12, align 8
  %25 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %24, i32 0, i32 0
  %26 = getelementptr inbounds [50 x i8], [50 x i8]* %15, i64 0, i64 0
  %27 = call i8* @inet_ntop(i32 %23, i32* %25, i8* %26, i32 50)
  store i8* %27, i8** %16, align 8
  %28 = load i32, i32* @INET_ADDRSTRLEN, align 4
  store i32 %28, i32* %14, align 4
  br label %39

29:                                               ; preds = %5
  %30 = load i8*, i8** %7, align 8
  %31 = bitcast i8* %30 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %31, %struct.sockaddr_in6** %13, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %13, align 8
  %34 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = getelementptr inbounds [50 x i8], [50 x i8]* %15, i64 0, i64 0
  %37 = call i8* @inet_ntop(i32 %32, i32* %35, i8* %36, i32 50)
  store i8* %37, i8** %16, align 8
  %38 = load i32, i32* @INET6_ADDRSTRLEN, align 4
  store i32 %38, i32* %14, align 4
  br label %39

39:                                               ; preds = %29, %20
  %40 = load i32, i32* %10, align 4
  %41 = load i32*, i32** %11, align 8
  %42 = load i32, i32* %41, align 4
  %43 = sub nsw i32 %40, %42
  %44 = load i32, i32* %14, align 4
  %45 = add nsw i32 %44, 1
  %46 = icmp slt i32 %43, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i32, i32* @EINVAL, align 4
  store i32 %48, i32* %6, align 4
  br label %83

49:                                               ; preds = %39
  %50 = load i8*, i8** %16, align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  %53 = load i8*, i8** %9, align 8
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @strlcpy(i8* %53, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* @errno, align 4
  store i32 %56, i32* %6, align 4
  br label %83

57:                                               ; preds = %49
  %58 = load i32*, i32** %11, align 8
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = load i8*, i8** %9, align 8
  %63 = getelementptr inbounds [50 x i8], [50 x i8]* %15, i64 0, i64 0
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @strlcpy(i8* %62, i8* %63, i32 %64)
  br label %71

66:                                               ; preds = %57
  %67 = load i8*, i8** %9, align 8
  %68 = getelementptr inbounds [50 x i8], [50 x i8]* %15, i64 0, i64 0
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @strlcat(i8* %67, i8* %68, i32 %69)
  br label %71

71:                                               ; preds = %66, %61
  %72 = load i8*, i8** %9, align 8
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @strlcat(i8* %72, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  %75 = load i8*, i8** %16, align 8
  %76 = call i64 @strlen(i8* %75)
  %77 = add nsw i64 %76, 1
  %78 = load i32*, i32** %11, align 8
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %80, %77
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %78, align 4
  store i32 0, i32* %6, align 4
  br label %83

83:                                               ; preds = %71, %52, %47
  %84 = load i32, i32* %6, align 4
  ret i32 %84
}

declare dso_local i8* @inet_ntop(i32, i32*, i8*, i32) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @strlcat(i8*, i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

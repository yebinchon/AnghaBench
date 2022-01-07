; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/tests/nss/extr_gethostby_test.c_check_addrinfo_for_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/tests/nss/extr_gethostby_test.c_check_addrinfo_for_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i32, i64, %struct.addrinfo* }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr_in6 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.addrinfo*, i8*, i32, i32)* @check_addrinfo_for_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_addrinfo_for_addr(%struct.addrinfo* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.addrinfo*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.addrinfo*, align 8
  store %struct.addrinfo* %0, %struct.addrinfo** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  store %struct.addrinfo* %11, %struct.addrinfo** %10, align 8
  br label %12

12:                                               ; preds = %60, %4
  %13 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %14 = icmp ne %struct.addrinfo* %13, null
  br i1 %14, label %15, label %64

15:                                               ; preds = %12
  %16 = load i32, i32* %9, align 4
  %17 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %18 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %16, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %60

22:                                               ; preds = %15
  %23 = load i32, i32* %9, align 4
  switch i32 %23, label %58 [
    i32 129, label %24
    i32 128, label %41
  ]

24:                                               ; preds = %22
  %25 = load i8*, i8** %7, align 8
  %26 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %27 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.sockaddr_in*
  %30 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %29, i32 0, i32 0
  %31 = bitcast i32* %30 to i8*
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %34 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @MIN(i32 %32, i32 %35)
  %37 = call i32 @memcmp(i8* %25, i8* %31, i32 %36)
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %24
  store i32 0, i32* %5, align 4
  br label %65

40:                                               ; preds = %24
  br label %59

41:                                               ; preds = %22
  %42 = load i8*, i8** %7, align 8
  %43 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %44 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to %struct.sockaddr_in6*
  %47 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %46, i32 0, i32 0
  %48 = bitcast i32* %47 to i8*
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %51 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @MIN(i32 %49, i32 %52)
  %54 = call i32 @memcmp(i8* %42, i8* %48, i32 %53)
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %41
  store i32 0, i32* %5, align 4
  br label %65

57:                                               ; preds = %41
  br label %59

58:                                               ; preds = %22
  br label %59

59:                                               ; preds = %58, %57, %40
  br label %60

60:                                               ; preds = %59, %21
  %61 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %62 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %61, i32 0, i32 3
  %63 = load %struct.addrinfo*, %struct.addrinfo** %62, align 8
  store %struct.addrinfo* %63, %struct.addrinfo** %10, align 8
  br label %12

64:                                               ; preds = %12
  store i32 -1, i32* %5, align 4
  br label %65

65:                                               ; preds = %64, %56, %39
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

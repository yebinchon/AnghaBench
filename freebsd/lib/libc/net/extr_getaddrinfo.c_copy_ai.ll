; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_getaddrinfo.c_copy_ai.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_getaddrinfo.c_copy_ai.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i32*, i32*, %struct.addrinfo* }
%struct.sockaddr = type { i32, i32*, i32*, %struct.sockaddr* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.addrinfo* (%struct.addrinfo*)* @copy_ai to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.addrinfo* @copy_ai(%struct.addrinfo* %0) #0 {
  %2 = alloca %struct.addrinfo*, align 8
  %3 = alloca %struct.addrinfo*, align 8
  %4 = alloca %struct.addrinfo*, align 8
  %5 = alloca i64, align 8
  store %struct.addrinfo* %0, %struct.addrinfo** %3, align 8
  %6 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  %7 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = sext i32 %8 to i64
  %10 = add i64 32, %9
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = call %struct.sockaddr* @calloc(i32 1, i64 %11)
  %13 = bitcast %struct.sockaddr* %12 to %struct.addrinfo*
  store %struct.addrinfo* %13, %struct.addrinfo** %4, align 8
  %14 = icmp eq %struct.addrinfo* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store %struct.addrinfo* null, %struct.addrinfo** %2, align 8
  br label %77

16:                                               ; preds = %1
  %17 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %18 = bitcast %struct.addrinfo* %17 to %struct.sockaddr*
  %19 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  %20 = bitcast %struct.addrinfo* %19 to %struct.sockaddr*
  %21 = call i32 @memcpy(%struct.sockaddr* %18, %struct.sockaddr* %20, i32 32)
  %22 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %23 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %22, i64 1
  %24 = bitcast %struct.addrinfo* %23 to i8*
  %25 = bitcast i8* %24 to %struct.sockaddr*
  %26 = bitcast %struct.sockaddr* %25 to %struct.addrinfo*
  %27 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %28 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %27, i32 0, i32 3
  store %struct.addrinfo* %26, %struct.addrinfo** %28, align 8
  %29 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %30 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %29, i32 0, i32 3
  %31 = load %struct.addrinfo*, %struct.addrinfo** %30, align 8
  %32 = bitcast %struct.addrinfo* %31 to %struct.sockaddr*
  %33 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  %34 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %33, i32 0, i32 3
  %35 = load %struct.addrinfo*, %struct.addrinfo** %34, align 8
  %36 = bitcast %struct.addrinfo* %35 to %struct.sockaddr*
  %37 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  %38 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @memcpy(%struct.sockaddr* %32, %struct.sockaddr* %36, i32 %39)
  %41 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  %42 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %70

45:                                               ; preds = %16
  %46 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  %47 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @strlen(i32* %48)
  %50 = add nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  store i64 %51, i64* %5, align 8
  %52 = load i64, i64* %5, align 8
  %53 = call i32* @malloc(i64 %52)
  %54 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %55 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %54, i32 0, i32 2
  store i32* %53, i32** %55, align 8
  %56 = icmp eq i32* %53, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %45
  %58 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %59 = bitcast %struct.addrinfo* %58 to %struct.sockaddr*
  %60 = call i32 @free(%struct.sockaddr* %59)
  store %struct.addrinfo* null, %struct.addrinfo** %2, align 8
  br label %77

61:                                               ; preds = %45
  %62 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %63 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  %66 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = load i64, i64* %5, align 8
  %69 = call i32 @strlcpy(i32* %64, i32* %67, i64 %68)
  br label %73

70:                                               ; preds = %16
  %71 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %72 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %71, i32 0, i32 2
  store i32* null, i32** %72, align 8
  br label %73

73:                                               ; preds = %70, %61
  %74 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %75 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %74, i32 0, i32 1
  store i32* null, i32** %75, align 8
  %76 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  store %struct.addrinfo* %76, %struct.addrinfo** %2, align 8
  br label %77

77:                                               ; preds = %73, %57, %15
  %78 = load %struct.addrinfo*, %struct.addrinfo** %2, align 8
  ret %struct.addrinfo* %78
}

declare dso_local %struct.sockaddr* @calloc(i32, i64) #1

declare dso_local i32 @memcpy(%struct.sockaddr*, %struct.sockaddr*, i32) #1

declare dso_local i32 @strlen(i32*) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @free(%struct.sockaddr*) #1

declare dso_local i32 @strlcpy(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

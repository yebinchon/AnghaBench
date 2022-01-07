; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_net_help.c_sockaddr_cmp_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_net_help.c_sockaddr_cmp_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i32 }
%struct.sockaddr_in = type { i64, %struct.sockaddr_storage }
%struct.sockaddr_in6 = type { i64, %struct.sockaddr_storage }

@AF_INET = common dso_local global i64 0, align 8
@INET_SIZE = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@INET6_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sockaddr_cmp_addr(%struct.sockaddr_storage* %0, i64 %1, %struct.sockaddr_storage* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr_storage*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sockaddr_storage*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sockaddr_in*, align 8
  %11 = alloca %struct.sockaddr_in*, align 8
  %12 = alloca %struct.sockaddr_in6*, align 8
  %13 = alloca %struct.sockaddr_in6*, align 8
  store %struct.sockaddr_storage* %0, %struct.sockaddr_storage** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.sockaddr_storage* %2, %struct.sockaddr_storage** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %6, align 8
  %15 = bitcast %struct.sockaddr_storage* %14 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %15, %struct.sockaddr_in** %10, align 8
  %16 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %8, align 8
  %17 = bitcast %struct.sockaddr_storage* %16 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %17, %struct.sockaddr_in** %11, align 8
  %18 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %6, align 8
  %19 = bitcast %struct.sockaddr_storage* %18 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %19, %struct.sockaddr_in6** %12, align 8
  %20 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %8, align 8
  %21 = bitcast %struct.sockaddr_storage* %20 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %21, %struct.sockaddr_in6** %13, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* %9, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %94

26:                                               ; preds = %4
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* %9, align 8
  %29 = icmp sgt i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 1, i32* %5, align 4
  br label %94

31:                                               ; preds = %26
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* %9, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @log_assert(i32 %35)
  %37 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %38 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.sockaddr_in*, %struct.sockaddr_in** %11, align 8
  %41 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp slt i64 %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %31
  store i32 -1, i32* %5, align 4
  br label %94

45:                                               ; preds = %31
  %46 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %47 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.sockaddr_in*, %struct.sockaddr_in** %11, align 8
  %50 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp sgt i64 %48, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  store i32 1, i32* %5, align 4
  br label %94

54:                                               ; preds = %45
  %55 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %56 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.sockaddr_in*, %struct.sockaddr_in** %11, align 8
  %59 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %57, %60
  %62 = zext i1 %61 to i32
  %63 = call i32 @log_assert(i32 %62)
  %64 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %65 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @AF_INET, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %54
  %70 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %71 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %70, i32 0, i32 1
  %72 = load %struct.sockaddr_in*, %struct.sockaddr_in** %11, align 8
  %73 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %72, i32 0, i32 1
  %74 = load i64, i64* @INET_SIZE, align 8
  %75 = call i32 @memcmp(%struct.sockaddr_storage* %71, %struct.sockaddr_storage* %73, i64 %74)
  store i32 %75, i32* %5, align 4
  br label %94

76:                                               ; preds = %54
  %77 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %12, align 8
  %78 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @AF_INET6, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %89

82:                                               ; preds = %76
  %83 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %12, align 8
  %84 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %83, i32 0, i32 1
  %85 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %13, align 8
  %86 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %85, i32 0, i32 1
  %87 = load i64, i64* @INET6_SIZE, align 8
  %88 = call i32 @memcmp(%struct.sockaddr_storage* %84, %struct.sockaddr_storage* %86, i64 %87)
  store i32 %88, i32* %5, align 4
  br label %94

89:                                               ; preds = %76
  %90 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %6, align 8
  %91 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %8, align 8
  %92 = load i64, i64* %7, align 8
  %93 = call i32 @memcmp(%struct.sockaddr_storage* %90, %struct.sockaddr_storage* %91, i64 %92)
  store i32 %93, i32* %5, align 4
  br label %94

94:                                               ; preds = %89, %82, %69, %53, %44, %30, %25
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local i32 @log_assert(i32) #1

declare dso_local i32 @memcmp(%struct.sockaddr_storage*, %struct.sockaddr_storage*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

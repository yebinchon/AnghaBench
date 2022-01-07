; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evutil.c_evutil_sockaddr_cmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evutil.c_evutil_sockaddr_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evutil_sockaddr_cmp(%struct.sockaddr* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr_in*, align 8
  %10 = alloca %struct.sockaddr_in*, align 8
  store %struct.sockaddr* %0, %struct.sockaddr** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %12 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %15 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sub nsw i32 %13, %16
  store i32 %17, i32* %8, align 4
  %18 = icmp ne i32 0, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %4, align 4
  br label %72

21:                                               ; preds = %3
  %22 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %23 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = load i64, i64* @AF_INET, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %71

28:                                               ; preds = %21
  %29 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %30 = bitcast %struct.sockaddr* %29 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %30, %struct.sockaddr_in** %9, align 8
  %31 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %32 = bitcast %struct.sockaddr* %31 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %32, %struct.sockaddr_in** %10, align 8
  %33 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %34 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %38 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp slt i64 %36, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %28
  store i32 -1, i32* %4, align 4
  br label %72

43:                                               ; preds = %28
  %44 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %45 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %49 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp sgt i64 %47, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  store i32 1, i32* %4, align 4
  br label %72

54:                                               ; preds = %43
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %54
  %58 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %59 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i32
  %62 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %63 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = trunc i64 %64 to i32
  %66 = sub nsw i32 %61, %65
  store i32 %66, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %57
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %4, align 4
  br label %72

70:                                               ; preds = %57, %54
  store i32 0, i32* %4, align 4
  br label %72

71:                                               ; preds = %21
  store i32 1, i32* %4, align 4
  br label %72

72:                                               ; preds = %71, %70, %68, %53, %42, %19
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

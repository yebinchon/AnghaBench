; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/pf/tftp-proxy/extr_filter.c_server_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/pf/tftp-proxy/extr_filter.c_server_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i64 }

@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @server_lookup(%struct.sockaddr* %0, %struct.sockaddr* %1, %struct.sockaddr* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca i32, align 4
  store %struct.sockaddr* %0, %struct.sockaddr** %6, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %7, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %11 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @AF_INET, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %24

15:                                               ; preds = %4
  %16 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %17 = call i32 @satosin(%struct.sockaddr* %16)
  %18 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %19 = call i32 @satosin(%struct.sockaddr* %18)
  %20 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %21 = call i32 @satosin(%struct.sockaddr* %20)
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @server_lookup4(i32 %17, i32 %19, i32 %21, i32 %22)
  store i32 %23, i32* %5, align 4
  br label %41

24:                                               ; preds = %4
  %25 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %26 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @AF_INET6, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %24
  %31 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %32 = call i32 @satosin6(%struct.sockaddr* %31)
  %33 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %34 = call i32 @satosin6(%struct.sockaddr* %33)
  %35 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %36 = call i32 @satosin6(%struct.sockaddr* %35)
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @server_lookup6(i32 %32, i32 %34, i32 %36, i32 %37)
  store i32 %38, i32* %5, align 4
  br label %41

39:                                               ; preds = %24
  %40 = load i32, i32* @EPROTONOSUPPORT, align 4
  store i32 %40, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  br label %41

41:                                               ; preds = %39, %30, %15
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i32 @server_lookup4(i32, i32, i32, i32) #1

declare dso_local i32 @satosin(%struct.sockaddr*) #1

declare dso_local i32 @server_lookup6(i32, i32, i32, i32) #1

declare dso_local i32 @satosin6(%struct.sockaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

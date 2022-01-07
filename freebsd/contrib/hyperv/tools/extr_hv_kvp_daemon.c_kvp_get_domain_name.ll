; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/hyperv/tools/extr_hv_kvp_daemon.c_kvp_get_domain_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/hyperv/tools/extr_hv_kvp_daemon.c_kvp_get_domain_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i8*, i32, i32, i32 }

@AF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@AI_CANONNAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"getaddrinfo failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @kvp_get_domain_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvp_get_domain_name(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.addrinfo, align 8
  %7 = alloca %struct.addrinfo*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @gethostname(i8* %9, i32 %10)
  %12 = call i32 @memset(%struct.addrinfo* %6, i32 0, i32 24)
  %13 = load i32, i32* @AF_INET, align 4
  %14 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i32 0, i32 3
  store i32 %13, i32* %14, align 8
  %15 = load i32, i32* @SOCK_STREAM, align 4
  %16 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i32 0, i32 2
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* @AI_CANONNAME, align 4
  %18 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i32 0, i32 1
  store i32 %17, i32* %18, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @getaddrinfo(i8* %19, i32* null, %struct.addrinfo* %6, %struct.addrinfo** %7)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load i8*, i8** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @strlcpy(i8* %24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %3, align 4
  br label %38

28:                                               ; preds = %2
  %29 = load i8*, i8** %4, align 8
  %30 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %31 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @strlcpy(i8* %29, i8* %32, i32 %33)
  %35 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %36 = call i32 @freeaddrinfo(%struct.addrinfo* %35)
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %28, %23
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @gethostname(i8*, i32) #1

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

declare dso_local i32 @getaddrinfo(i8*, i32*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_ntp_rfc2553.c_freeaddrinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_ntp_rfc2553.c_freeaddrinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { %struct.addrinfo*, %struct.addrinfo* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @freeaddrinfo(%struct.addrinfo* %0) #0 {
  %2 = alloca %struct.addrinfo*, align 8
  store %struct.addrinfo* %0, %struct.addrinfo** %2, align 8
  %3 = load %struct.addrinfo*, %struct.addrinfo** %2, align 8
  %4 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %3, i32 0, i32 1
  %5 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %6 = icmp ne %struct.addrinfo* %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load %struct.addrinfo*, %struct.addrinfo** %2, align 8
  %9 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %8, i32 0, i32 1
  %10 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %11 = call i32 @free(%struct.addrinfo* %10)
  %12 = load %struct.addrinfo*, %struct.addrinfo** %2, align 8
  %13 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %12, i32 0, i32 1
  store %struct.addrinfo* null, %struct.addrinfo** %13, align 8
  br label %14

14:                                               ; preds = %7, %1
  %15 = load %struct.addrinfo*, %struct.addrinfo** %2, align 8
  %16 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %15, i32 0, i32 0
  %17 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %18 = icmp ne %struct.addrinfo* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = load %struct.addrinfo*, %struct.addrinfo** %2, align 8
  %21 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %20, i32 0, i32 0
  %22 = load %struct.addrinfo*, %struct.addrinfo** %21, align 8
  %23 = call i32 @free(%struct.addrinfo* %22)
  %24 = load %struct.addrinfo*, %struct.addrinfo** %2, align 8
  %25 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %24, i32 0, i32 0
  store %struct.addrinfo* null, %struct.addrinfo** %25, align 8
  br label %26

26:                                               ; preds = %19, %14
  %27 = load %struct.addrinfo*, %struct.addrinfo** %2, align 8
  %28 = call i32 @free(%struct.addrinfo* %27)
  store %struct.addrinfo* null, %struct.addrinfo** %2, align 8
  ret void
}

declare dso_local i32 @free(%struct.addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_getaddrinfo.c__getht.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_getaddrinfo.c__getht.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { %struct.addrinfo* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.addrinfo* (i32**, i8*, %struct.addrinfo*, %struct.addrinfo*)* @_getht to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.addrinfo* @_getht(i32** %0, i8* %1, %struct.addrinfo* %2, %struct.addrinfo* %3) #0 {
  %5 = alloca i32**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.addrinfo*, align 8
  %8 = alloca %struct.addrinfo*, align 8
  %9 = alloca %struct.addrinfo*, align 8
  store i32** %0, i32*** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.addrinfo* %2, %struct.addrinfo** %7, align 8
  store %struct.addrinfo* %3, %struct.addrinfo** %8, align 8
  br label %10

10:                                               ; preds = %34, %4
  %11 = load i32**, i32*** %5, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %14 = call %struct.addrinfo* @_gethtent(i32** %11, i8* %12, %struct.addrinfo* %13)
  store %struct.addrinfo* %14, %struct.addrinfo** %9, align 8
  %15 = icmp ne %struct.addrinfo* %14, null
  br i1 %15, label %16, label %35

16:                                               ; preds = %10
  %17 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %18 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %19 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %18, i32 0, i32 0
  store %struct.addrinfo* %17, %struct.addrinfo** %19, align 8
  br label %20

20:                                               ; preds = %30, %16
  %21 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %22 = icmp ne %struct.addrinfo* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %25 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %24, i32 0, i32 0
  %26 = load %struct.addrinfo*, %struct.addrinfo** %25, align 8
  %27 = icmp ne %struct.addrinfo* %26, null
  br label %28

28:                                               ; preds = %23, %20
  %29 = phi i1 [ false, %20 ], [ %27, %23 ]
  br i1 %29, label %30, label %34

30:                                               ; preds = %28
  %31 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %32 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %31, i32 0, i32 0
  %33 = load %struct.addrinfo*, %struct.addrinfo** %32, align 8
  store %struct.addrinfo* %33, %struct.addrinfo** %8, align 8
  br label %20

34:                                               ; preds = %28
  br label %10

35:                                               ; preds = %10
  %36 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  ret %struct.addrinfo* %36
}

declare dso_local %struct.addrinfo* @_gethtent(i32**, i8*, %struct.addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

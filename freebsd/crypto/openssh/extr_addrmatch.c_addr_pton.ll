; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_addrmatch.c_addr_pton.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_addrmatch.c_addr_pton.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xaddr = type { i32 }
%struct.addrinfo = type { i32, i32*, i32 }

@AI_NUMERICHOST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.xaddr*)* @addr_pton to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addr_pton(i8* %0, %struct.xaddr* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.xaddr*, align 8
  %5 = alloca %struct.addrinfo, align 8
  %6 = alloca %struct.addrinfo*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.xaddr* %1, %struct.xaddr** %4, align 8
  store %struct.addrinfo* null, %struct.addrinfo** %6, align 8
  store i32 -1, i32* %7, align 4
  %8 = call i32 @memset(%struct.addrinfo* %5, i8 signext 0, i32 24)
  %9 = load i32, i32* @AI_NUMERICHOST, align 4
  %10 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %5, i32 0, i32 2
  store i32 %9, i32* %10, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i8*, i8** %3, align 8
  %15 = call i64 @getaddrinfo(i8* %14, i32* null, %struct.addrinfo* %5, %struct.addrinfo** %6)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13, %2
  br label %42

18:                                               ; preds = %13
  %19 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %20 = icmp eq %struct.addrinfo* %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %18
  %22 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %23 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %21, %18
  br label %42

27:                                               ; preds = %21
  %28 = load %struct.xaddr*, %struct.xaddr** %4, align 8
  %29 = icmp ne %struct.xaddr* %28, null
  br i1 %29, label %30, label %41

30:                                               ; preds = %27
  %31 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %32 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %35 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.xaddr*, %struct.xaddr** %4, align 8
  %38 = call i32 @addr_sa_to_xaddr(i32* %33, i32 %36, %struct.xaddr* %37)
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  br label %42

41:                                               ; preds = %30, %27
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %41, %40, %26, %17
  %43 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %44 = icmp ne %struct.addrinfo* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %47 = call i32 @freeaddrinfo(%struct.addrinfo* %46)
  br label %48

48:                                               ; preds = %45, %42
  %49 = load i32, i32* %7, align 4
  ret i32 %49
}

declare dso_local i32 @memset(%struct.addrinfo*, i8 signext, i32) #1

declare dso_local i64 @getaddrinfo(i8*, i32*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @addr_sa_to_xaddr(i32*, i32, %struct.xaddr*) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

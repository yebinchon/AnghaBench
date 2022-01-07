; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_getaddrinfo.c_get_number.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_getaddrinfo.c_get_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32 }
%struct.in_addr = type { i32 }

@PF_UNSPEC = common dso_local global i32 0, align 4
@PF_INET = common dso_local global i32 0, align 4
@const_v4 = common dso_local global i32 0, align 4
@EAI_NONAME = common dso_local global i32 0, align 4
@PF_INET6 = common dso_local global i32 0, align 4
@const_v6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.addrinfo*, i32, i32, i32, %struct.addrinfo**)* @get_number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_number(i8* %0, %struct.addrinfo* %1, i32 %2, i32 %3, i32 %4, %struct.addrinfo** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.addrinfo*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.addrinfo**, align 8
  %14 = alloca %struct.addrinfo*, align 8
  %15 = alloca %struct.addrinfo**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.in_addr, align 4
  store i8* %0, i8** %8, align 8
  store %struct.addrinfo* %1, %struct.addrinfo** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.addrinfo** %5, %struct.addrinfo*** %13, align 8
  store %struct.addrinfo* null, %struct.addrinfo** %14, align 8
  store %struct.addrinfo** %14, %struct.addrinfo*** %15, align 8
  %19 = load i32, i32* @PF_UNSPEC, align 4
  store i32 %19, i32* %16, align 4
  %20 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %21 = icmp ne %struct.addrinfo* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %6
  %23 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %24 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %16, align 4
  br label %26

26:                                               ; preds = %22, %6
  %27 = load i32, i32* %16, align 4
  %28 = load i32, i32* @PF_INET, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %16, align 4
  %32 = load i32, i32* @PF_UNSPEC, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %49

34:                                               ; preds = %30, %26
  %35 = load i32, i32* @PF_INET, align 4
  %36 = load i8*, i8** %8, align 8
  %37 = call i32 @inet_pton(i32 %35, i8* %36, %struct.in_addr* %18)
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %48

39:                                               ; preds = %34
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* @const_v4, align 4
  %44 = call i32 @add_one(i32 %40, i32 %41, i32 %42, %struct.addrinfo*** %15, i32 %43, %struct.in_addr* %18, i32* null)
  store i32 %44, i32* %17, align 4
  %45 = load %struct.addrinfo*, %struct.addrinfo** %14, align 8
  %46 = load %struct.addrinfo**, %struct.addrinfo*** %13, align 8
  store %struct.addrinfo* %45, %struct.addrinfo** %46, align 8
  %47 = load i32, i32* %17, align 4
  store i32 %47, i32* %7, align 4
  br label %51

48:                                               ; preds = %34
  br label %49

49:                                               ; preds = %48, %30
  %50 = load i32, i32* @EAI_NONAME, align 4
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %49, %39
  %52 = load i32, i32* %7, align 4
  ret i32 %52
}

declare dso_local i32 @inet_pton(i32, i8*, %struct.in_addr*) #1

declare dso_local i32 @add_one(i32, i32, i32, %struct.addrinfo***, i32, %struct.in_addr*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

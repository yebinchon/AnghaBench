; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_address_to_krb5addr.c__gsskrb5i_address_to_krb5addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_address_to_krb5addr.c__gsskrb5i_address_to_krb5addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.sockaddr = type { i32 }

@GSS_S_FAILURE = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_gsskrb5i_address_to_krb5addr(i32 %0, i32 %1, %struct.TYPE_3__* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.sockaddr, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 4, i32* %14, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %17 = icmp eq %struct.TYPE_3__* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %19, i64* %6, align 8
  br label %43

20:                                               ; preds = %5
  %21 = load i32, i32* %8, align 4
  switch i32 %21, label %24 [
    i32 129, label %22
  ]

22:                                               ; preds = %20
  %23 = load i32, i32* @AF_INET, align 4
  store i32 %23, i32* %12, align 4
  br label %26

24:                                               ; preds = %20
  %25 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %25, i64* %6, align 8
  br label %43

26:                                               ; preds = %22
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %12, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %10, align 4
  %33 = call i64 @krb5_h_addr2sockaddr(i32 %27, i32 %28, i32 %31, %struct.sockaddr* %13, i32* %14, i32 %32)
  store i64 %33, i64* %15, align 8
  %34 = load i64, i64* %15, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %26
  %37 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %37, i64* %6, align 8
  br label %43

38:                                               ; preds = %26
  %39 = load i32, i32* %7, align 4
  %40 = load i32*, i32** %11, align 8
  %41 = call i64 @krb5_sockaddr2address(i32 %39, %struct.sockaddr* %13, i32* %40)
  store i64 %41, i64* %15, align 8
  %42 = load i64, i64* %15, align 8
  store i64 %42, i64* %6, align 8
  br label %43

43:                                               ; preds = %38, %36, %24, %18
  %44 = load i64, i64* %6, align 8
  ret i64 %44
}

declare dso_local i64 @krb5_h_addr2sockaddr(i32, i32, i32, %struct.sockaddr*, i32*, i32) #1

declare dso_local i64 @krb5_sockaddr2address(i32, %struct.sockaddr*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

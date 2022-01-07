; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_kerberos5.c__kdc_check_addresses.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_kerberos5.c__kdc_check_addresses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_9__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.sockaddr = type { i32 }

@TRUE = common dso_local global i64 0, align 8
@KRB5_ADDRESS_NETBIOS = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_kdc_check_addresses(i32 %0, %struct.TYPE_8__* %1, %struct.TYPE_9__* %2, %struct.sockaddr* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.sockaddr*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %8, align 8
  store %struct.sockaddr* %3, %struct.sockaddr** %9, align 8
  %15 = load i64, i64* @TRUE, align 8
  store i64 %15, i64* %13, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i64, i64* @TRUE, align 8
  store i64 %21, i64* %5, align 8
  br label %74

22:                                               ; preds = %4
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %24 = icmp eq %struct.TYPE_9__* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %5, align 8
  br label %74

29:                                               ; preds = %22
  store i64 0, i64* %14, align 8
  br label %30

30:                                               ; preds = %49, %29
  %31 = load i64, i64* %14, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ult i64 %31, %34
  br i1 %35, label %36, label %52

36:                                               ; preds = %30
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = load i64, i64* %14, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @KRB5_ADDRESS_NETBIOS, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %36
  %47 = load i64, i64* @FALSE, align 8
  store i64 %47, i64* %13, align 8
  br label %48

48:                                               ; preds = %46, %36
  br label %49

49:                                               ; preds = %48
  %50 = load i64, i64* %14, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %14, align 8
  br label %30

52:                                               ; preds = %30
  %53 = load i64, i64* %13, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %5, align 8
  br label %74

59:                                               ; preds = %52
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %62 = call i64 @krb5_sockaddr2address(i32 %60, %struct.sockaddr* %61, i32* %11)
  store i64 %62, i64* %10, align 8
  %63 = load i64, i64* %10, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load i64, i64* @FALSE, align 8
  store i64 %66, i64* %5, align 8
  br label %74

67:                                               ; preds = %59
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %70 = call i64 @krb5_address_search(i32 %68, i32* %11, %struct.TYPE_9__* %69)
  store i64 %70, i64* %12, align 8
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @krb5_free_address(i32 %71, i32* %11)
  %73 = load i64, i64* %12, align 8
  store i64 %73, i64* %5, align 8
  br label %74

74:                                               ; preds = %67, %65, %55, %25, %20
  %75 = load i64, i64* %5, align 8
  ret i64 %75
}

declare dso_local i64 @krb5_sockaddr2address(i32, %struct.sockaddr*, i32*) #1

declare dso_local i64 @krb5_address_search(i32, i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @krb5_free_address(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

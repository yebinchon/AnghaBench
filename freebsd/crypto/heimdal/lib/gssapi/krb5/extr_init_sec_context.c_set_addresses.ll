; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_init_sec_context.c_set_addresses.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_init_sec_context.c_set_addresses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32* }
%struct.TYPE_9__ = type { i8*, i8* }

@GSS_C_NO_CHANNEL_BINDINGS = common dso_local global %struct.TYPE_10__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, %struct.TYPE_9__*, %struct.TYPE_10__*)* @set_addresses to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_addresses(i32 %0, %struct.TYPE_9__* %1, %struct.TYPE_10__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %7, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** @GSS_C_NO_CHANNEL_BINDINGS, align 8
  %13 = icmp eq %struct.TYPE_10__* %11, %12
  br i1 %13, label %21, label %14

14:                                               ; preds = %3
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = icmp ne i64 %19, 16
  br i1 %20, label %21, label %22

21:                                               ; preds = %14, %3
  store i64 0, i64* %4, align 8
  br label %82

22:                                               ; preds = %14
  %23 = call i32 @memset(i32* %8, i32 0, i32 4)
  %24 = call i32 @memset(i32* %9, i32 0, i32 4)
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = bitcast i32* %28 to i8**
  %30 = load i8*, i8** %29, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = bitcast i32* %36 to i8**
  %38 = getelementptr inbounds i8*, i8** %37, i64 1
  %39 = load i8*, i8** %38, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  store i8* %39, i8** %41, align 8
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 3
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = call i64 @_gsskrb5i_address_to_krb5addr(i32 %42, i32 %45, i32* %47, i8* %50, i32* %9)
  store i64 %51, i64* %10, align 8
  %52 = load i64, i64* %10, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %22
  %55 = load i64, i64* %10, align 8
  store i64 %55, i64* %4, align 8
  br label %82

56:                                               ; preds = %22
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i64 @_gsskrb5i_address_to_krb5addr(i32 %57, i32 %60, i32* %62, i8* %65, i32* %8)
  store i64 %66, i64* %10, align 8
  %67 = load i64, i64* %10, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %56
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @krb5_free_address(i32 %70, i32* %9)
  %72 = load i64, i64* %10, align 8
  store i64 %72, i64* %4, align 8
  br label %82

73:                                               ; preds = %56
  %74 = load i32, i32* %5, align 4
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %76 = call i64 @krb5_auth_con_setaddrs(i32 %74, %struct.TYPE_9__* %75, i32* %8, i32* %9)
  store i64 %76, i64* %10, align 8
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @krb5_free_address(i32 %77, i32* %8)
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @krb5_free_address(i32 %79, i32* %9)
  %81 = load i64, i64* %10, align 8
  store i64 %81, i64* %4, align 8
  br label %82

82:                                               ; preds = %73, %69, %54, %21
  %83 = load i64, i64* %4, align 8
  ret i64 %83
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @_gsskrb5i_address_to_krb5addr(i32, i32, i32*, i8*, i32*) #1

declare dso_local i32 @krb5_free_address(i32, i32*) #1

declare dso_local i64 @krb5_auth_con_setaddrs(i32, %struct.TYPE_9__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

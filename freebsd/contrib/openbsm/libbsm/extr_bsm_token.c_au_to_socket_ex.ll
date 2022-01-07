; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_token.c_au_to_socket_ex.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_token.c_au_to_socket_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr_in6 = type { i32, i32 }

@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@AUT_SOCKET_EX = common dso_local global i32 0, align 4
@AU_IPv4 = common dso_local global i32 0, align 4
@AU_IPv6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @au_to_socket_ex(i64 %0, i64 %1, %struct.sockaddr* %2, %struct.sockaddr* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca %struct.sockaddr*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.sockaddr_in*, align 8
  %13 = alloca %struct.sockaddr_in6*, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %8, align 8
  store %struct.sockaddr* %3, %struct.sockaddr** %9, align 8
  store i32* null, i32** %11, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @AF_INET, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %4
  %18 = load i32*, i32** %10, align 8
  %19 = load i32*, i32** %11, align 8
  %20 = call i32 @GET_TOKEN_AREA(i32* %18, i32* %19, i32 32)
  br label %32

21:                                               ; preds = %4
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* @AF_INET6, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i32*, i32** %10, align 8
  %27 = load i32*, i32** %11, align 8
  %28 = call i32 @GET_TOKEN_AREA(i32* %26, i32* %27, i32 56)
  br label %31

29:                                               ; preds = %21
  %30 = load i32, i32* @EINVAL, align 4
  store i32 %30, i32* @errno, align 4
  store i32* null, i32** %5, align 8
  br label %103

31:                                               ; preds = %25
  br label %32

32:                                               ; preds = %31, %17
  %33 = load i32*, i32** %10, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32* null, i32** %5, align 8
  br label %103

36:                                               ; preds = %32
  %37 = load i32*, i32** %11, align 8
  %38 = load i32, i32* @AUT_SOCKET_EX, align 4
  %39 = call i32 @ADD_U_CHAR(i32* %37, i32 %38)
  %40 = load i32*, i32** %11, align 8
  %41 = load i64, i64* %6, align 8
  %42 = call i32 @au_domain_to_bsm(i64 %41)
  %43 = call i32 @ADD_U_INT16(i32* %40, i32 %42)
  %44 = load i32*, i32** %11, align 8
  %45 = load i64, i64* %7, align 8
  %46 = call i32 @au_socket_type_to_bsm(i64 %45)
  %47 = call i32 @ADD_U_INT16(i32* %44, i32 %46)
  %48 = load i64, i64* %6, align 8
  %49 = load i64, i64* @AF_INET, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %77

51:                                               ; preds = %36
  %52 = load i32*, i32** %11, align 8
  %53 = load i32, i32* @AU_IPv4, align 4
  %54 = call i32 @ADD_U_INT16(i32* %52, i32 %53)
  %55 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %56 = bitcast %struct.sockaddr* %55 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %56, %struct.sockaddr_in** %12, align 8
  %57 = load i32*, i32** %11, align 8
  %58 = load %struct.sockaddr_in*, %struct.sockaddr_in** %12, align 8
  %59 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %58, i32 0, i32 1
  %60 = call i32 @ADD_MEM(i32* %57, i32* %59, i32 4)
  %61 = load i32*, i32** %11, align 8
  %62 = load %struct.sockaddr_in*, %struct.sockaddr_in** %12, align 8
  %63 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = call i32 @ADD_MEM(i32* %61, i32* %64, i32 4)
  %66 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %67 = bitcast %struct.sockaddr* %66 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %67, %struct.sockaddr_in** %12, align 8
  %68 = load i32*, i32** %11, align 8
  %69 = load %struct.sockaddr_in*, %struct.sockaddr_in** %12, align 8
  %70 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %69, i32 0, i32 1
  %71 = call i32 @ADD_MEM(i32* %68, i32* %70, i32 4)
  %72 = load i32*, i32** %11, align 8
  %73 = load %struct.sockaddr_in*, %struct.sockaddr_in** %12, align 8
  %74 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = call i32 @ADD_MEM(i32* %72, i32* %75, i32 4)
  br label %101

77:                                               ; preds = %36
  %78 = load i32*, i32** %11, align 8
  %79 = load i32, i32* @AU_IPv6, align 4
  %80 = call i32 @ADD_U_INT16(i32* %78, i32 %79)
  %81 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %82 = bitcast %struct.sockaddr* %81 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %82, %struct.sockaddr_in6** %13, align 8
  %83 = load i32*, i32** %11, align 8
  %84 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %13, align 8
  %85 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %84, i32 0, i32 1
  %86 = call i32 @ADD_MEM(i32* %83, i32* %85, i32 4)
  %87 = load i32*, i32** %11, align 8
  %88 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %13, align 8
  %89 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %88, i32 0, i32 0
  %90 = call i32 @ADD_MEM(i32* %87, i32* %89, i32 16)
  %91 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %92 = bitcast %struct.sockaddr* %91 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %92, %struct.sockaddr_in6** %13, align 8
  %93 = load i32*, i32** %11, align 8
  %94 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %13, align 8
  %95 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %94, i32 0, i32 1
  %96 = call i32 @ADD_MEM(i32* %93, i32* %95, i32 4)
  %97 = load i32*, i32** %11, align 8
  %98 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %13, align 8
  %99 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %98, i32 0, i32 0
  %100 = call i32 @ADD_MEM(i32* %97, i32* %99, i32 16)
  br label %101

101:                                              ; preds = %77, %51
  %102 = load i32*, i32** %10, align 8
  store i32* %102, i32** %5, align 8
  br label %103

103:                                              ; preds = %101, %35, %29
  %104 = load i32*, i32** %5, align 8
  ret i32* %104
}

declare dso_local i32 @GET_TOKEN_AREA(i32*, i32*, i32) #1

declare dso_local i32 @ADD_U_CHAR(i32*, i32) #1

declare dso_local i32 @ADD_U_INT16(i32*, i32) #1

declare dso_local i32 @au_domain_to_bsm(i64) #1

declare dso_local i32 @au_socket_type_to_bsm(i64) #1

declare dso_local i32 @ADD_MEM(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_bootparam.c_xdr_inaddr_decode.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_bootparam.c_xdr_inaddr_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr = type { i32 }
%struct.xdr_inaddr = type { i64, i32* }
%union.anon = type { [4 x i32] }

@.str = private unnamed_addr constant [36 x i8] c"xdr_inaddr_decode: bad addrtype=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xdr_inaddr_decode(i8** %0, %struct.in_addr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.in_addr*, align 8
  %6 = alloca %struct.xdr_inaddr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %union.anon, align 4
  store i8** %0, i8*** %4, align 8
  store %struct.in_addr* %1, %struct.in_addr** %5, align 8
  %10 = load i8**, i8*** %4, align 8
  %11 = load i8*, i8** %10, align 8
  %12 = bitcast i8* %11 to %struct.xdr_inaddr*
  store %struct.xdr_inaddr* %12, %struct.xdr_inaddr** %6, align 8
  %13 = load i8**, i8*** %4, align 8
  %14 = load i8*, i8** %13, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 16
  store i8* %15, i8** %13, align 8
  %16 = load %struct.xdr_inaddr*, %struct.xdr_inaddr** %6, align 8
  %17 = getelementptr inbounds %struct.xdr_inaddr, %struct.xdr_inaddr* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i64 @htonl(i32 1)
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load %struct.xdr_inaddr*, %struct.xdr_inaddr** %6, align 8
  %23 = getelementptr inbounds %struct.xdr_inaddr, %struct.xdr_inaddr* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i8* @ntohl(i64 %24)
  %26 = call i32 @RPC_PRINTF(i8* %25)
  store i32 -1, i32* %3, align 4
  br label %69

27:                                               ; preds = %2
  %28 = bitcast %union.anon* %9 to [4 x i32]*
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i64 0, i64 0
  store i32* %29, i32** %7, align 8
  %30 = load %struct.xdr_inaddr*, %struct.xdr_inaddr** %6, align 8
  %31 = getelementptr inbounds %struct.xdr_inaddr, %struct.xdr_inaddr* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %8, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = getelementptr inbounds i32, i32* %33, i32 1
  store i32* %34, i32** %8, align 8
  %35 = load i32, i32* %33, align 4
  %36 = sext i32 %35 to i64
  %37 = call i8* @ntohl(i64 %36)
  %38 = ptrtoint i8* %37 to i32
  %39 = load i32*, i32** %7, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** %7, align 8
  store i32 %38, i32* %39, align 4
  %41 = load i32*, i32** %8, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %42, i32** %8, align 8
  %43 = load i32, i32* %41, align 4
  %44 = sext i32 %43 to i64
  %45 = call i8* @ntohl(i64 %44)
  %46 = ptrtoint i8* %45 to i32
  %47 = load i32*, i32** %7, align 8
  %48 = getelementptr inbounds i32, i32* %47, i32 1
  store i32* %48, i32** %7, align 8
  store i32 %46, i32* %47, align 4
  %49 = load i32*, i32** %8, align 8
  %50 = getelementptr inbounds i32, i32* %49, i32 1
  store i32* %50, i32** %8, align 8
  %51 = load i32, i32* %49, align 4
  %52 = sext i32 %51 to i64
  %53 = call i8* @ntohl(i64 %52)
  %54 = ptrtoint i8* %53 to i32
  %55 = load i32*, i32** %7, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** %7, align 8
  store i32 %54, i32* %55, align 4
  %57 = load i32*, i32** %8, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %8, align 8
  %59 = load i32, i32* %57, align 4
  %60 = sext i32 %59 to i64
  %61 = call i8* @ntohl(i64 %60)
  %62 = ptrtoint i8* %61 to i32
  %63 = load i32*, i32** %7, align 8
  %64 = getelementptr inbounds i32, i32* %63, i32 1
  store i32* %64, i32** %7, align 8
  store i32 %62, i32* %63, align 4
  %65 = bitcast %union.anon* %9 to i32*
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.in_addr*, %struct.in_addr** %5, align 8
  %68 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %27, %21
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i64 @htonl(i32) #1

declare dso_local i32 @RPC_PRINTF(i8*) #1

declare dso_local i8* @ntohl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

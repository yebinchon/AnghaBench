; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_bootparam.c_xdr_inaddr_encode.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_bootparam.c_xdr_inaddr_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr = type { i32 }
%struct.xdr_inaddr = type { i32*, i8* }
%union.anon = type { [4 x i32] }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xdr_inaddr_encode(i8** %0, i32 %1) #0 {
  %3 = alloca %struct.in_addr, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.xdr_inaddr*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %union.anon, align 4
  %9 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %3, i32 0, i32 0
  store i32 %1, i32* %9, align 4
  store i8** %0, i8*** %4, align 8
  %10 = load i8**, i8*** %4, align 8
  %11 = load i8*, i8** %10, align 8
  %12 = bitcast i8* %11 to %struct.xdr_inaddr*
  store %struct.xdr_inaddr* %12, %struct.xdr_inaddr** %5, align 8
  %13 = load i8**, i8*** %4, align 8
  %14 = load i8*, i8** %13, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 16
  store i8* %15, i8** %13, align 8
  %16 = call i8* @htonl(i32 1)
  %17 = load %struct.xdr_inaddr*, %struct.xdr_inaddr** %5, align 8
  %18 = getelementptr inbounds %struct.xdr_inaddr, %struct.xdr_inaddr* %17, i32 0, i32 1
  store i8* %16, i8** %18, align 8
  %19 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %3, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = bitcast %union.anon* %8 to i32*
  store i32 %20, i32* %21, align 4
  %22 = bitcast %union.anon* %8 to [4 x i32]*
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i64 0, i64 0
  store i32* %23, i32** %6, align 8
  %24 = load %struct.xdr_inaddr*, %struct.xdr_inaddr** %5, align 8
  %25 = getelementptr inbounds %struct.xdr_inaddr, %struct.xdr_inaddr* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %7, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = getelementptr inbounds i32, i32* %27, i32 1
  store i32* %28, i32** %6, align 8
  %29 = load i32, i32* %27, align 4
  %30 = call i8* @htonl(i32 %29)
  %31 = ptrtoint i8* %30 to i32
  %32 = load i32*, i32** %7, align 8
  %33 = getelementptr inbounds i32, i32* %32, i32 1
  store i32* %33, i32** %7, align 8
  store i32 %31, i32* %32, align 4
  %34 = load i32*, i32** %6, align 8
  %35 = getelementptr inbounds i32, i32* %34, i32 1
  store i32* %35, i32** %6, align 8
  %36 = load i32, i32* %34, align 4
  %37 = call i8* @htonl(i32 %36)
  %38 = ptrtoint i8* %37 to i32
  %39 = load i32*, i32** %7, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** %7, align 8
  store i32 %38, i32* %39, align 4
  %41 = load i32*, i32** %6, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %42, i32** %6, align 8
  %43 = load i32, i32* %41, align 4
  %44 = call i8* @htonl(i32 %43)
  %45 = ptrtoint i8* %44 to i32
  %46 = load i32*, i32** %7, align 8
  %47 = getelementptr inbounds i32, i32* %46, i32 1
  store i32* %47, i32** %7, align 8
  store i32 %45, i32* %46, align 4
  %48 = load i32*, i32** %6, align 8
  %49 = getelementptr inbounds i32, i32* %48, i32 1
  store i32* %49, i32** %6, align 8
  %50 = load i32, i32* %48, align 4
  %51 = call i8* @htonl(i32 %50)
  %52 = ptrtoint i8* %51 to i32
  %53 = load i32*, i32** %7, align 8
  %54 = getelementptr inbounds i32, i32* %53, i32 1
  store i32* %54, i32** %7, align 8
  store i32 %52, i32* %53, align 4
  ret i32 0
}

declare dso_local i8* @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

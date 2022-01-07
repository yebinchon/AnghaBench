; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_process.c_kdc_as_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_process.c_kdc_as_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.sockaddr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32*, %struct.TYPE_6__*, %struct.TYPE_6__*, i8*, %struct.sockaddr*, i32, i32*)* @kdc_as_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @kdc_as_req(i32 %0, i32* %1, %struct.TYPE_6__* %2, %struct.TYPE_6__* %3, i8* %4, %struct.sockaddr* %5, i32 %6, i32* %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.sockaddr*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  store i32 %0, i32* %10, align 4
  store i32* %1, i32** %11, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %12, align 8
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %13, align 8
  store i8* %4, i8** %14, align 8
  store %struct.sockaddr* %5, %struct.sockaddr** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32* %7, i32** %17, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @decode_AS_REQ(i32 %23, i32 %26, i32* %19, i64* %20)
  store i64 %27, i64* %18, align 8
  %28 = load i64, i64* %18, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %8
  %31 = load i64, i64* %18, align 8
  store i64 %31, i64* %9, align 8
  br label %44

32:                                               ; preds = %8
  %33 = load i32*, i32** %17, align 8
  store i32 1, i32* %33, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i32*, i32** %11, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %38 = load i8*, i8** %14, align 8
  %39 = load %struct.sockaddr*, %struct.sockaddr** %15, align 8
  %40 = load i32, i32* %16, align 4
  %41 = call i64 @_kdc_as_rep(i32 %34, i32* %35, i32* %19, %struct.TYPE_6__* %36, %struct.TYPE_6__* %37, i8* %38, %struct.sockaddr* %39, i32 %40)
  store i64 %41, i64* %18, align 8
  %42 = call i32 @free_AS_REQ(i32* %19)
  %43 = load i64, i64* %18, align 8
  store i64 %43, i64* %9, align 8
  br label %44

44:                                               ; preds = %32, %30
  %45 = load i64, i64* %9, align 8
  ret i64 %45
}

declare dso_local i64 @decode_AS_REQ(i32, i32, i32*, i64*) #1

declare dso_local i64 @_kdc_as_rep(i32, i32*, i32*, %struct.TYPE_6__*, %struct.TYPE_6__*, i8*, %struct.sockaddr*, i32) #1

declare dso_local i32 @free_AS_REQ(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

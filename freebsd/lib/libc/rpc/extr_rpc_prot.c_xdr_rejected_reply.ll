; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_rpc_prot.c_xdr_rejected_reply.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_rpc_prot.c_xdr_rejected_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rejected_reply = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xdr_rejected_reply(i32* %0, %struct.rejected_reply* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.rejected_reply*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.rejected_reply* %1, %struct.rejected_reply** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = icmp ne i32* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load %struct.rejected_reply*, %struct.rejected_reply** %5, align 8
  %13 = icmp ne %struct.rejected_reply* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.rejected_reply*, %struct.rejected_reply** %5, align 8
  %17 = getelementptr inbounds %struct.rejected_reply, %struct.rejected_reply* %16, i32 0, i32 0
  store i32* %17, i32** %6, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @xdr_enum(i32* %18, i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @FALSE, align 4
  store i32 %23, i32* %3, align 4
  br label %52

24:                                               ; preds = %2
  %25 = load %struct.rejected_reply*, %struct.rejected_reply** %5, align 8
  %26 = getelementptr inbounds %struct.rejected_reply, %struct.rejected_reply* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %49 [
    i32 128, label %28
    i32 129, label %43
  ]

28:                                               ; preds = %24
  %29 = load i32*, i32** %4, align 8
  %30 = load %struct.rejected_reply*, %struct.rejected_reply** %5, align 8
  %31 = getelementptr inbounds %struct.rejected_reply, %struct.rejected_reply* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = call i32 @xdr_rpcvers(i32* %29, i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %28
  %36 = load i32, i32* @FALSE, align 4
  store i32 %36, i32* %3, align 4
  br label %52

37:                                               ; preds = %28
  %38 = load i32*, i32** %4, align 8
  %39 = load %struct.rejected_reply*, %struct.rejected_reply** %5, align 8
  %40 = getelementptr inbounds %struct.rejected_reply, %struct.rejected_reply* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = call i32 @xdr_rpcvers(i32* %38, i32* %41)
  store i32 %42, i32* %3, align 4
  br label %52

43:                                               ; preds = %24
  %44 = load %struct.rejected_reply*, %struct.rejected_reply** %5, align 8
  %45 = getelementptr inbounds %struct.rejected_reply, %struct.rejected_reply* %44, i32 0, i32 1
  store i32* %45, i32** %7, align 8
  %46 = load i32*, i32** %4, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = call i32 @xdr_enum(i32* %46, i32* %47)
  store i32 %48, i32* %3, align 4
  br label %52

49:                                               ; preds = %24
  %50 = call i32 @assert(i32 0)
  %51 = load i32, i32* @FALSE, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %49, %43, %37, %35, %22
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @xdr_enum(i32*, i32*) #1

declare dso_local i32 @xdr_rpcvers(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

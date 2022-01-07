; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_rpc_prot.c_accepted.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_rpc_prot.c_accepted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_err = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8*, i8* }

@RPC_PROGUNAVAIL = common dso_local global i32 0, align 4
@RPC_PROGVERSMISMATCH = common dso_local global i32 0, align 4
@RPC_PROCUNAVAIL = common dso_local global i32 0, align 4
@RPC_CANTDECODEARGS = common dso_local global i32 0, align 4
@RPC_SYSTEMERROR = common dso_local global i32 0, align 4
@RPC_SUCCESS = common dso_local global i32 0, align 4
@RPC_FAILED = common dso_local global i32 0, align 4
@MSG_ACCEPTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.rpc_err*)* @accepted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @accepted(i32 %0, %struct.rpc_err* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rpc_err*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.rpc_err* %1, %struct.rpc_err** %4, align 8
  %5 = load %struct.rpc_err*, %struct.rpc_err** %4, align 8
  %6 = icmp ne %struct.rpc_err* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @assert(i32 %7)
  %9 = load i32, i32* %3, align 4
  switch i32 %9, label %34 [
    i32 130, label %10
    i32 131, label %14
    i32 132, label %18
    i32 133, label %22
    i32 128, label %26
    i32 129, label %30
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* @RPC_PROGUNAVAIL, align 4
  %12 = load %struct.rpc_err*, %struct.rpc_err** %4, align 8
  %13 = getelementptr inbounds %struct.rpc_err, %struct.rpc_err* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 8
  br label %49

14:                                               ; preds = %2
  %15 = load i32, i32* @RPC_PROGVERSMISMATCH, align 4
  %16 = load %struct.rpc_err*, %struct.rpc_err** %4, align 8
  %17 = getelementptr inbounds %struct.rpc_err, %struct.rpc_err* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 8
  br label %49

18:                                               ; preds = %2
  %19 = load i32, i32* @RPC_PROCUNAVAIL, align 4
  %20 = load %struct.rpc_err*, %struct.rpc_err** %4, align 8
  %21 = getelementptr inbounds %struct.rpc_err, %struct.rpc_err* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 8
  br label %49

22:                                               ; preds = %2
  %23 = load i32, i32* @RPC_CANTDECODEARGS, align 4
  %24 = load %struct.rpc_err*, %struct.rpc_err** %4, align 8
  %25 = getelementptr inbounds %struct.rpc_err, %struct.rpc_err* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  br label %49

26:                                               ; preds = %2
  %27 = load i32, i32* @RPC_SYSTEMERROR, align 4
  %28 = load %struct.rpc_err*, %struct.rpc_err** %4, align 8
  %29 = getelementptr inbounds %struct.rpc_err, %struct.rpc_err* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  br label %49

30:                                               ; preds = %2
  %31 = load i32, i32* @RPC_SUCCESS, align 4
  %32 = load %struct.rpc_err*, %struct.rpc_err** %4, align 8
  %33 = getelementptr inbounds %struct.rpc_err, %struct.rpc_err* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 8
  br label %49

34:                                               ; preds = %2
  %35 = load i32, i32* @RPC_FAILED, align 4
  %36 = load %struct.rpc_err*, %struct.rpc_err** %4, align 8
  %37 = getelementptr inbounds %struct.rpc_err, %struct.rpc_err* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  %38 = load i64, i64* @MSG_ACCEPTED, align 8
  %39 = inttoptr i64 %38 to i8*
  %40 = load %struct.rpc_err*, %struct.rpc_err** %4, align 8
  %41 = getelementptr inbounds %struct.rpc_err, %struct.rpc_err* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  store i8* %39, i8** %42, align 8
  %43 = load i32, i32* %3, align 4
  %44 = zext i32 %43 to i64
  %45 = inttoptr i64 %44 to i8*
  %46 = load %struct.rpc_err*, %struct.rpc_err** %4, align 8
  %47 = getelementptr inbounds %struct.rpc_err, %struct.rpc_err* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i8* %45, i8** %48, align 8
  br label %49

49:                                               ; preds = %34, %30, %26, %22, %18, %14, %10
  ret void
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

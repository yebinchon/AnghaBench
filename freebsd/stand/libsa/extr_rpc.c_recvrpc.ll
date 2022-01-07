; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_rpc.c_recvrpc.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_rpc.c_recvrpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iodesc = type { i32 }
%struct.rpc_reply = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@errno = common dso_local global i32 0, align 4
@rpc_xid = common dso_local global i32 0, align 4
@RPC_REPLY = common dso_local global i32 0, align 4
@RPC_MSGACCEPTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"recvrpc: reject, astat=%d, errno=%d\0A\00", align 1
@debug = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iodesc*, i8**, i8**, i32, i8*)* @recvrpc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recvrpc(%struct.iodesc* %0, i8** %1, i8** %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iodesc*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.rpc_reply*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.iodesc* %0, %struct.iodesc** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32 0, i32* @errno, align 4
  store i8* null, i8** %12, align 8
  %16 = load %struct.iodesc*, %struct.iodesc** %7, align 8
  %17 = bitcast %struct.rpc_reply** %13 to i8**
  %18 = load i32, i32* %10, align 4
  %19 = call i32 @readudp(%struct.iodesc* %16, i8** %12, i8** %17, i32 %18)
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* %14, align 4
  %21 = icmp sle i32 %20, 16
  br i1 %21, label %22, label %25

22:                                               ; preds = %5
  %23 = load i8*, i8** %12, align 8
  %24 = call i32 @free(i8* %23)
  store i32 -1, i32* %6, align 4
  br label %73

25:                                               ; preds = %5
  %26 = load %struct.rpc_reply*, %struct.rpc_reply** %13, align 8
  %27 = getelementptr inbounds %struct.rpc_reply, %struct.rpc_reply* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ntohl(i32 %28)
  store i32 %29, i32* %15, align 4
  %30 = load i32, i32* %15, align 4
  %31 = load i32, i32* @rpc_xid, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = load i8*, i8** %12, align 8
  %35 = call i32 @free(i8* %34)
  store i32 -1, i32* %6, align 4
  br label %73

36:                                               ; preds = %25
  %37 = load %struct.rpc_reply*, %struct.rpc_reply** %13, align 8
  %38 = getelementptr inbounds %struct.rpc_reply, %struct.rpc_reply* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ntohl(i32 %39)
  store i32 %40, i32* %15, align 4
  %41 = load i32, i32* %15, align 4
  %42 = load i32, i32* @RPC_REPLY, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = load i8*, i8** %12, align 8
  %46 = call i32 @free(i8* %45)
  store i32 -1, i32* %6, align 4
  br label %73

47:                                               ; preds = %36
  %48 = load %struct.rpc_reply*, %struct.rpc_reply** %13, align 8
  %49 = getelementptr inbounds %struct.rpc_reply, %struct.rpc_reply* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ntohl(i32 %50)
  store i32 %51, i32* %15, align 4
  %52 = load i32, i32* %15, align 4
  %53 = load i32, i32* @RPC_MSGACCEPTED, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %66

55:                                               ; preds = %47
  %56 = load %struct.rpc_reply*, %struct.rpc_reply** %13, align 8
  %57 = getelementptr inbounds %struct.rpc_reply, %struct.rpc_reply* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @ntohl(i32 %59)
  store i32 %60, i32* @errno, align 4
  %61 = load i32, i32* %15, align 4
  %62 = load i32, i32* @errno, align 4
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %61, i32 %62)
  %64 = load i8*, i8** %12, align 8
  %65 = call i32 @free(i8* %64)
  store i32 -1, i32* %6, align 4
  br label %73

66:                                               ; preds = %47
  %67 = load i8*, i8** %12, align 8
  %68 = load i8**, i8*** %8, align 8
  store i8* %67, i8** %68, align 8
  %69 = load %struct.rpc_reply*, %struct.rpc_reply** %13, align 8
  %70 = bitcast %struct.rpc_reply* %69 to i8*
  %71 = load i8**, i8*** %9, align 8
  store i8* %70, i8** %71, align 8
  %72 = load i32, i32* %14, align 4
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %66, %55, %44, %33, %22
  %74 = load i32, i32* %6, align 4
  ret i32 %74
}

declare dso_local i32 @readudp(%struct.iodesc*, i8**, i8**, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

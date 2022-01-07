; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_svc_generic.c_svc_tp_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_svc_generic.c_svc_tp_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_req = type opaque
%struct.netconfig = type { i32 }
%struct.svc_req.0 = type opaque

@.str = private unnamed_addr constant [63 x i8] c"svc_tp_create: invalid netconfig structure for prog %u vers %u\00", align 1
@RPC_ANYFD = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [56 x i8] c"svc_tp_create: Could not register prog %u vers %u on %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svc_tp_create(void (%struct.svc_req*, i32*)* %0, i64 %1, i64 %2, %struct.netconfig* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca void (%struct.svc_req*, i32*)*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.netconfig*, align 8
  %10 = alloca i32*, align 8
  store void (%struct.svc_req*, i32*)* %0, void (%struct.svc_req*, i32*)** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.netconfig* %3, %struct.netconfig** %9, align 8
  %11 = load %struct.netconfig*, %struct.netconfig** %9, align 8
  %12 = icmp eq %struct.netconfig* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %4
  %14 = load i64, i64* %7, align 8
  %15 = trunc i64 %14 to i32
  %16 = load i64, i64* %8, align 8
  %17 = trunc i64 %16 to i32
  %18 = call i32 (i8*, i32, i32, ...) @warnx(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %17)
  store i32* null, i32** %5, align 8
  br label %53

19:                                               ; preds = %4
  %20 = load i32, i32* @RPC_ANYFD, align 4
  %21 = load %struct.netconfig*, %struct.netconfig** %9, align 8
  %22 = call i32* @svc_tli_create(i32 %20, %struct.netconfig* %21, i32* null, i32 0, i32 0)
  store i32* %22, i32** %10, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32* null, i32** %5, align 8
  br label %53

26:                                               ; preds = %19
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load %struct.netconfig*, %struct.netconfig** %9, align 8
  %30 = call i32 @rpcb_unset(i64 %27, i64 %28, %struct.netconfig* %29)
  %31 = load i32*, i32** %10, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load void (%struct.svc_req*, i32*)*, void (%struct.svc_req*, i32*)** %6, align 8
  %35 = bitcast void (%struct.svc_req*, i32*)* %34 to void (%struct.svc_req.0*, i32*)*
  %36 = load %struct.netconfig*, %struct.netconfig** %9, align 8
  %37 = call i64 @svc_reg(i32* %31, i64 %32, i64 %33, void (%struct.svc_req.0*, i32*)* %35, %struct.netconfig* %36)
  %38 = load i64, i64* @FALSE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %26
  %41 = load i64, i64* %7, align 8
  %42 = trunc i64 %41 to i32
  %43 = load i64, i64* %8, align 8
  %44 = trunc i64 %43 to i32
  %45 = load %struct.netconfig*, %struct.netconfig** %9, align 8
  %46 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i8*, i32, i32, ...) @warnx(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %44, i32 %47)
  %49 = load i32*, i32** %10, align 8
  %50 = call i32 @SVC_DESTROY(i32* %49)
  store i32* null, i32** %5, align 8
  br label %53

51:                                               ; preds = %26
  %52 = load i32*, i32** %10, align 8
  store i32* %52, i32** %5, align 8
  br label %53

53:                                               ; preds = %51, %40, %25, %13
  %54 = load i32*, i32** %5, align 8
  ret i32* %54
}

declare dso_local i32 @warnx(i8*, i32, i32, ...) #1

declare dso_local i32* @svc_tli_create(i32, %struct.netconfig*, i32*, i32, i32) #1

declare dso_local i32 @rpcb_unset(i64, i64, %struct.netconfig*) #1

declare dso_local i64 @svc_reg(i32*, i64, i64, void (%struct.svc_req.0*, i32*)*, %struct.netconfig*) #1

declare dso_local i32 @SVC_DESTROY(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

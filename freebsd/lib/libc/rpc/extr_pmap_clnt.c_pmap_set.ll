; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_pmap_clnt.c_pmap_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_pmap_clnt.c_pmap_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netbuf = type { i32 }
%struct.netconfig = type { i32 }

@IPPROTO_UDP = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"0.0.0.0.%d.%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmap_set(i64 %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.netbuf*, align 8
  %12 = alloca %struct.netconfig*, align 8
  %13 = alloca [32 x i8], align 16
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @IPPROTO_UDP, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @IPPROTO_TCP, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* @FALSE, align 4
  store i32 %22, i32* %5, align 4
  br label %64

23:                                               ; preds = %17, %4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @IPPROTO_UDP, align 4
  %26 = icmp eq i32 %24, %25
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)
  %29 = call %struct.netconfig* @__rpc_getconfip(i8* %28)
  store %struct.netconfig* %29, %struct.netconfig** %12, align 8
  %30 = load %struct.netconfig*, %struct.netconfig** %12, align 8
  %31 = icmp eq %struct.netconfig* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %23
  %33 = load i32, i32* @FALSE, align 4
  store i32 %33, i32* %5, align 4
  br label %64

34:                                               ; preds = %23
  %35 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 0
  %36 = load i32, i32* %9, align 4
  %37 = ashr i32 %36, 8
  %38 = and i32 %37, 255
  %39 = load i32, i32* %9, align 4
  %40 = and i32 %39, 255
  %41 = call i32 @snprintf(i8* %35, i32 32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %38, i32 %40)
  %42 = load %struct.netconfig*, %struct.netconfig** %12, align 8
  %43 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 0
  %44 = call %struct.netbuf* @uaddr2taddr(%struct.netconfig* %42, i8* %43)
  store %struct.netbuf* %44, %struct.netbuf** %11, align 8
  %45 = load %struct.netbuf*, %struct.netbuf** %11, align 8
  %46 = icmp eq %struct.netbuf* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %34
  %48 = load %struct.netconfig*, %struct.netconfig** %12, align 8
  %49 = call i32 @freenetconfigent(%struct.netconfig* %48)
  %50 = load i32, i32* @FALSE, align 4
  store i32 %50, i32* %5, align 4
  br label %64

51:                                               ; preds = %34
  %52 = load i64, i64* %6, align 8
  %53 = trunc i64 %52 to i32
  %54 = load i64, i64* %7, align 8
  %55 = trunc i64 %54 to i32
  %56 = load %struct.netconfig*, %struct.netconfig** %12, align 8
  %57 = load %struct.netbuf*, %struct.netbuf** %11, align 8
  %58 = call i32 @rpcb_set(i32 %53, i32 %55, %struct.netconfig* %56, %struct.netbuf* %57)
  store i32 %58, i32* %10, align 4
  %59 = load %struct.netbuf*, %struct.netbuf** %11, align 8
  %60 = call i32 @free(%struct.netbuf* %59)
  %61 = load %struct.netconfig*, %struct.netconfig** %12, align 8
  %62 = call i32 @freenetconfigent(%struct.netconfig* %61)
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %51, %47, %32, %21
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local %struct.netconfig* @__rpc_getconfip(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #1

declare dso_local %struct.netbuf* @uaddr2taddr(%struct.netconfig*, i8*) #1

declare dso_local i32 @freenetconfigent(%struct.netconfig*) #1

declare dso_local i32 @rpcb_set(i32, i32, %struct.netconfig*, %struct.netbuf*) #1

declare dso_local i32 @free(%struct.netbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

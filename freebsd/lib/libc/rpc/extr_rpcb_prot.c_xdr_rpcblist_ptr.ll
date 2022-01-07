; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_rpcb_prot.c_xdr_rpcblist_ptr.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_rpcb_prot.c_xdr_rpcblist_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_7__* }

@XDR_FREE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@xdr_rpcb = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @xdr_rpcblist_ptr(%struct.TYPE_8__* %0, %struct.TYPE_7__** %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_7__**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_7__** %1, %struct.TYPE_7__*** %5, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @XDR_FREE, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %7, align 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %8, align 8
  br label %16

16:                                               ; preds = %68, %2
  %17 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = icmp ne %struct.TYPE_7__* %18, null
  %20 = zext i1 %19 to i32
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %6, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %23 = call i32 @xdr_bool(%struct.TYPE_8__* %22, i64* %6)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %16
  %26 = load i64, i64* @FALSE, align 8
  store i64 %26, i64* %3, align 8
  br label %69

27:                                               ; preds = %16
  %28 = load i64, i64* %6, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  %31 = load i64, i64* @TRUE, align 8
  store i64 %31, i64* %3, align 8
  br label %69

32:                                               ; preds = %27
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
  %36 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = icmp ne %struct.TYPE_7__* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  store %struct.TYPE_7__* %43, %struct.TYPE_7__** %8, align 8
  br label %44

44:                                               ; preds = %39, %35, %32
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %46 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  %47 = bitcast %struct.TYPE_7__** %46 to i32*
  %48 = load i64, i64* @xdr_rpcb, align 8
  %49 = trunc i64 %48 to i32
  %50 = call i32 @xdr_reference(%struct.TYPE_8__* %45, i32* %47, i32 4, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %44
  %53 = load i64, i64* @FALSE, align 8
  store i64 %53, i64* %3, align 8
  br label %69

54:                                               ; preds = %44
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* %58, %struct.TYPE_7__** %9, align 8
  store %struct.TYPE_7__** %9, %struct.TYPE_7__*** %5, align 8
  br label %68

59:                                               ; preds = %54
  %60 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = icmp ne %struct.TYPE_7__* %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  store %struct.TYPE_7__** %66, %struct.TYPE_7__*** %5, align 8
  br label %67

67:                                               ; preds = %63, %59
  br label %68

68:                                               ; preds = %67, %57
  br label %16

69:                                               ; preds = %52, %30, %25
  %70 = load i64, i64* %3, align 8
  ret i64 %70
}

declare dso_local i32 @xdr_bool(%struct.TYPE_8__*, i64*) #1

declare dso_local i32 @xdr_reference(%struct.TYPE_8__*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

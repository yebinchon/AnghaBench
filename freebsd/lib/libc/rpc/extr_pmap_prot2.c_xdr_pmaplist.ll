; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_pmap_prot2.c_xdr_pmaplist.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_pmap_prot2.c_xdr_pmaplist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.pmaplist = type { %struct.pmaplist* }

@XDR_FREE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@xdr_pmap = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @xdr_pmaplist(%struct.TYPE_5__* %0, %struct.pmaplist** %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.pmaplist**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pmaplist**, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store %struct.pmaplist** %1, %struct.pmaplist*** %5, align 8
  store %struct.pmaplist** null, %struct.pmaplist*** %8, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = icmp ne %struct.TYPE_5__* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load %struct.pmaplist**, %struct.pmaplist*** %5, align 8
  %14 = icmp ne %struct.pmaplist** %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @XDR_FREE, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %65, %2
  %24 = load %struct.pmaplist**, %struct.pmaplist*** %5, align 8
  %25 = load %struct.pmaplist*, %struct.pmaplist** %24, align 8
  %26 = icmp ne %struct.pmaplist* %25, null
  %27 = zext i1 %26 to i32
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %6, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %30 = call i32 @xdr_bool(%struct.TYPE_5__* %29, i64* %6)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %23
  %33 = load i64, i64* @FALSE, align 8
  store i64 %33, i64* %3, align 8
  br label %67

34:                                               ; preds = %23
  %35 = load i64, i64* %6, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  %38 = load i64, i64* @TRUE, align 8
  store i64 %38, i64* %3, align 8
  br label %67

39:                                               ; preds = %34
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load %struct.pmaplist**, %struct.pmaplist*** %5, align 8
  %44 = load %struct.pmaplist*, %struct.pmaplist** %43, align 8
  %45 = getelementptr inbounds %struct.pmaplist, %struct.pmaplist* %44, i32 0, i32 0
  store %struct.pmaplist** %45, %struct.pmaplist*** %8, align 8
  br label %46

46:                                               ; preds = %42, %39
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %48 = load %struct.pmaplist**, %struct.pmaplist*** %5, align 8
  %49 = bitcast %struct.pmaplist** %48 to i32*
  %50 = load i64, i64* @xdr_pmap, align 8
  %51 = trunc i64 %50 to i32
  %52 = call i32 @xdr_reference(%struct.TYPE_5__* %47, i32* %49, i32 8, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %46
  %55 = load i64, i64* @FALSE, align 8
  store i64 %55, i64* %3, align 8
  br label %67

56:                                               ; preds = %46
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = load %struct.pmaplist**, %struct.pmaplist*** %8, align 8
  br label %65

61:                                               ; preds = %56
  %62 = load %struct.pmaplist**, %struct.pmaplist*** %5, align 8
  %63 = load %struct.pmaplist*, %struct.pmaplist** %62, align 8
  %64 = getelementptr inbounds %struct.pmaplist, %struct.pmaplist* %63, i32 0, i32 0
  br label %65

65:                                               ; preds = %61, %59
  %66 = phi %struct.pmaplist** [ %60, %59 ], [ %64, %61 ]
  store %struct.pmaplist** %66, %struct.pmaplist*** %5, align 8
  br label %23

67:                                               ; preds = %54, %37, %32
  %68 = load i64, i64* %3, align 8
  ret i64 %68
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @xdr_bool(%struct.TYPE_5__*, i64*) #1

declare dso_local i32 @xdr_reference(%struct.TYPE_5__*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

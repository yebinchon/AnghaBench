; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_revoke.c_hx509_revoke_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_revoke.c_hx509_revoke_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.TYPE_9__, %struct.TYPE_8__, i32, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i64, %struct.TYPE_10__* }
%struct.TYPE_8__ = type { i64, %struct.TYPE_10__* }

@.str = private unnamed_addr constant [33 x i8] c"revoke ctx refcount == 0 on free\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hx509_revoke_free(%struct.TYPE_10__** %0) #0 {
  %2 = alloca %struct.TYPE_10__**, align 8
  %3 = alloca i64, align 8
  store %struct.TYPE_10__** %0, %struct.TYPE_10__*** %2, align 8
  %4 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %2, align 8
  %5 = icmp eq %struct.TYPE_10__** %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %2, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %9 = icmp eq %struct.TYPE_10__* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %6, %1
  br label %100

11:                                               ; preds = %6
  %12 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %2, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = call i32 @_hx509_abort(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %11
  %20 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %2, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, -1
  store i64 %24, i64* %22, align 8
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %100

27:                                               ; preds = %19
  store i64 0, i64* %3, align 8
  br label %28

28:                                               ; preds = %56, %27
  %29 = load i64, i64* %3, align 8
  %30 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %2, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ult i64 %29, %34
  br i1 %35, label %36, label %59

36:                                               ; preds = %28
  %37 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %2, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %42 = load i64, i64* %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 4
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = call i32 @free(%struct.TYPE_10__* %45)
  %47 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %2, align 8
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %50, align 8
  %52 = load i64, i64* %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 3
  %55 = call i32 @free_CRLCertificateList(i32* %54)
  br label %56

56:                                               ; preds = %36
  %57 = load i64, i64* %3, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %3, align 8
  br label %28

59:                                               ; preds = %28
  store i64 0, i64* %3, align 8
  br label %60

60:                                               ; preds = %77, %59
  %61 = load i64, i64* %3, align 8
  %62 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %2, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ult i64 %61, %66
  br i1 %67, label %68, label %80

68:                                               ; preds = %60
  %69 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %2, align 8
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %72, align 8
  %74 = load i64, i64* %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i64 %74
  %76 = call i32 @free_ocsp(%struct.TYPE_10__* %75)
  br label %77

77:                                               ; preds = %68
  %78 = load i64, i64* %3, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %3, align 8
  br label %60

80:                                               ; preds = %60
  %81 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %2, align 8
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %84, align 8
  %86 = call i32 @free(%struct.TYPE_10__* %85)
  %87 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %2, align 8
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %90, align 8
  %92 = call i32 @free(%struct.TYPE_10__* %91)
  %93 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %2, align 8
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %93, align 8
  %95 = call i32 @memset(%struct.TYPE_10__* %94, i32 0, i32 56)
  %96 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %2, align 8
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %96, align 8
  %98 = call i32 @free(%struct.TYPE_10__* %97)
  %99 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %2, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %99, align 8
  br label %100

100:                                              ; preds = %80, %26, %10
  ret void
}

declare dso_local i32 @_hx509_abort(i8*) #1

declare dso_local i32 @free(%struct.TYPE_10__*) #1

declare dso_local i32 @free_CRLCertificateList(i32*) #1

declare dso_local i32 @free_ocsp(%struct.TYPE_10__*) #1

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

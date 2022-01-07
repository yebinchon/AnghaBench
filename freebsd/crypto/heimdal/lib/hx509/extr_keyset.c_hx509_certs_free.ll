; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_keyset.c_hx509_certs_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_keyset.c_hx509_certs_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_7__*, i32)* }

@.str = private unnamed_addr constant [27 x i8] c"cert refcount == 0 on free\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hx509_certs_free(%struct.TYPE_7__** %0) #0 {
  %2 = alloca %struct.TYPE_7__**, align 8
  store %struct.TYPE_7__** %0, %struct.TYPE_7__*** %2, align 8
  %3 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %2, align 8
  %4 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %5 = icmp ne %struct.TYPE_7__* %4, null
  br i1 %5, label %6, label %40

6:                                                ; preds = %1
  %7 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %2, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %6
  %13 = call i32 @_hx509_abort(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %6
  %15 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %2, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, -1
  store i64 %19, i64* %17, align 8
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  br label %40

22:                                               ; preds = %14
  %23 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %2, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32 (%struct.TYPE_7__*, i32)*, i32 (%struct.TYPE_7__*, i32)** %27, align 8
  %29 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %2, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %2, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 %28(%struct.TYPE_7__* %30, i32 %34)
  %36 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %2, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = call i32 @free(%struct.TYPE_7__* %37)
  %39 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %2, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %39, align 8
  br label %40

40:                                               ; preds = %21, %22, %1
  ret void
}

declare dso_local i32 @_hx509_abort(i8*) #1

declare dso_local i32 @free(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

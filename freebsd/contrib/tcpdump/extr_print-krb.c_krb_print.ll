; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-krb.c_krb_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-krb.c_krb_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }
%struct.krb = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@tstr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c" v%d\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" v5\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @krb_print(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.krb*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = bitcast i32* %6 to %struct.krb*
  store %struct.krb* %7, %struct.krb** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = icmp uge i32* %8, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = load i32, i32* @tstr, align 4
  %16 = sext i32 %15 to i64
  %17 = inttoptr i64 %16 to %struct.TYPE_5__*
  %18 = call i32 @ND_PRINT(%struct.TYPE_5__* %17)
  br label %47

19:                                               ; preds = %2
  %20 = load %struct.krb*, %struct.krb** %5, align 8
  %21 = getelementptr inbounds %struct.krb, %struct.krb* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %46 [
    i32 1, label %23
    i32 2, label %23
    i32 3, label %23
    i32 4, label %31
    i32 106, label %43
    i32 107, label %43
  ]

23:                                               ; preds = %19, %19, %19
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %25 = load %struct.krb*, %struct.krb** %5, align 8
  %26 = getelementptr inbounds %struct.krb, %struct.krb* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to %struct.TYPE_5__*
  %30 = call i32 @ND_PRINT(%struct.TYPE_5__* %29)
  br label %46

31:                                               ; preds = %19
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %33 = load %struct.krb*, %struct.krb** %5, align 8
  %34 = getelementptr inbounds %struct.krb, %struct.krb* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = inttoptr i64 %36 to %struct.TYPE_5__*
  %38 = call i32 @ND_PRINT(%struct.TYPE_5__* %37)
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %40 = load %struct.krb*, %struct.krb** %5, align 8
  %41 = bitcast %struct.krb* %40 to i32*
  %42 = call i32 @krb4_print(%struct.TYPE_5__* %39, i32* %41)
  br label %46

43:                                               ; preds = %19, %19
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %45 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([4 x i8]* @.str.2 to %struct.TYPE_5__*))
  br label %46

46:                                               ; preds = %19, %43, %31, %23
  br label %47

47:                                               ; preds = %46, %13
  ret void
}

declare dso_local i32 @ND_PRINT(%struct.TYPE_5__*) #1

declare dso_local i32 @krb4_print(%struct.TYPE_5__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

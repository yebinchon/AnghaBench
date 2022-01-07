; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_collector.c__hx509_collector_collect_certs.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_collector.c__hx509_collector_collect_certs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hx509_collector = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i32* }

@.str = private unnamed_addr constant [23 x i8] c"MEMORY:collector-store\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_hx509_collector_collect_certs(i32 %0, %struct.hx509_collector* %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.hx509_collector*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store %struct.hx509_collector* %1, %struct.hx509_collector** %6, align 8
  store i32** %2, i32*** %7, align 8
  %11 = load i32**, i32*** %7, align 8
  store i32* null, i32** %11, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @hx509_certs_init(i32 %12, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 0, i32* null, i32** %8)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %9, align 4
  store i32 %17, i32* %4, align 4
  br label %73

18:                                               ; preds = %3
  %19 = load i32, i32* %5, align 4
  %20 = load i32*, i32** %8, align 8
  %21 = load %struct.hx509_collector*, %struct.hx509_collector** %6, align 8
  %22 = getelementptr inbounds %struct.hx509_collector, %struct.hx509_collector* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @hx509_certs_merge(i32 %19, i32* %20, i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %18
  %28 = call i32 @hx509_certs_free(i32** %8)
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %4, align 4
  br label %73

30:                                               ; preds = %18
  store i64 0, i64* %10, align 8
  br label %31

31:                                               ; preds = %67, %30
  %32 = load i64, i64* %10, align 8
  %33 = load %struct.hx509_collector*, %struct.hx509_collector** %6, align 8
  %34 = getelementptr inbounds %struct.hx509_collector, %struct.hx509_collector* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ult i64 %32, %36
  br i1 %37, label %38, label %70

38:                                               ; preds = %31
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.hx509_collector*, %struct.hx509_collector** %6, align 8
  %41 = getelementptr inbounds %struct.hx509_collector, %struct.hx509_collector* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* %10, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @match_localkeyid(i32 %39, i32 %46, i32* %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %38
  br label %67

52:                                               ; preds = %38
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.hx509_collector*, %struct.hx509_collector** %6, align 8
  %55 = getelementptr inbounds %struct.hx509_collector, %struct.hx509_collector* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i64, i64* %10, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %8, align 8
  %62 = call i32 @match_keys(i32 %53, i32 %60, i32* %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %52
  br label %67

66:                                               ; preds = %52
  br label %67

67:                                               ; preds = %66, %65, %51
  %68 = load i64, i64* %10, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %10, align 8
  br label %31

70:                                               ; preds = %31
  %71 = load i32*, i32** %8, align 8
  %72 = load i32**, i32*** %7, align 8
  store i32* %71, i32** %72, align 8
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %70, %27, %16
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @hx509_certs_init(i32, i8*, i32, i32*, i32**) #1

declare dso_local i32 @hx509_certs_merge(i32, i32*, i32) #1

declare dso_local i32 @hx509_certs_free(i32**) #1

declare dso_local i32 @match_localkeyid(i32, i32, i32*) #1

declare dso_local i32 @match_keys(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_peer.c_hx509_peer_info_set_cms_algs.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_peer.c_hx509_peer_info_set_cms_algs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hx509_peer_info_set_cms_algs(i32 %0, %struct.TYPE_4__* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %13 = call i32 @free_cms_alg(%struct.TYPE_4__* %12)
  %14 = load i64, i64* %9, align 8
  %15 = call i32* @calloc(i64 %14, i32 4)
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  store i32* %15, i32** %17, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = call i32 @hx509_set_error_string(i32 %25, i32 0, i32 %26, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @ENOMEM, align 4
  store i32 %28, i32* %5, align 4
  br label %60

29:                                               ; preds = %4
  %30 = load i64, i64* %9, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  store i64 0, i64* %10, align 8
  br label %33

33:                                               ; preds = %56, %29
  %34 = load i64, i64* %10, align 8
  %35 = load i64, i64* %9, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %59

37:                                               ; preds = %33
  %38 = load i32*, i32** %8, align 8
  %39 = load i64, i64* %10, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* %10, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = call i32 @copy_AlgorithmIdentifier(i32* %40, i32* %45)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %37
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @hx509_clear_error_string(i32 %50)
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %53 = call i32 @free_cms_alg(%struct.TYPE_4__* %52)
  %54 = load i32, i32* %11, align 4
  store i32 %54, i32* %5, align 4
  br label %60

55:                                               ; preds = %37
  br label %56

56:                                               ; preds = %55
  %57 = load i64, i64* %10, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %10, align 8
  br label %33

59:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  br label %60

60:                                               ; preds = %59, %49, %22
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i32 @free_cms_alg(%struct.TYPE_4__*) #1

declare dso_local i32* @calloc(i64, i32) #1

declare dso_local i32 @hx509_set_error_string(i32, i32, i32, i8*) #1

declare dso_local i32 @copy_AlgorithmIdentifier(i32*, i32*) #1

declare dso_local i32 @hx509_clear_error_string(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

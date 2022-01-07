; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_audit.c_au_close_token.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_audit.c_au_close_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @au_close_token(%struct.TYPE_4__* %0, i32* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64* %2, i64** %7, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64*, i64** %7, align 8
  %12 = load i64, i64* %11, align 8
  %13 = icmp ugt i64 %10, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %16 = call i32 @au_free_token(%struct.TYPE_4__* %15)
  %17 = load i32, i32* @ENOMEM, align 4
  store i32 %17, i32* @errno, align 4
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %4, align 4
  br label %34

19:                                               ; preds = %3
  %20 = load i32*, i32** %6, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @memcpy(i32* %20, i32 %23, i64 %26)
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64*, i64** %7, align 8
  store i64 %30, i64* %31, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %33 = call i32 @au_free_token(%struct.TYPE_4__* %32)
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %19, %14
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @au_free_token(%struct.TYPE_4__*) #1

declare dso_local i32 @memcpy(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

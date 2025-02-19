; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_umac.c_umac128_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_umac.c_umac128_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.umac_ctx = type { i64 }

@ALLOC_BOUNDARY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @umac_delete(%struct.umac_ctx* %0) #0 {
  %2 = alloca %struct.umac_ctx*, align 8
  store %struct.umac_ctx* %0, %struct.umac_ctx** %2, align 8
  %3 = load %struct.umac_ctx*, %struct.umac_ctx** %2, align 8
  %4 = icmp ne %struct.umac_ctx* %3, null
  br i1 %4, label %5, label %20

5:                                                ; preds = %1
  %6 = load i64, i64* @ALLOC_BOUNDARY, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %5
  %9 = load %struct.umac_ctx*, %struct.umac_ctx** %2, align 8
  %10 = getelementptr inbounds %struct.umac_ctx, %struct.umac_ctx* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.umac_ctx*
  store %struct.umac_ctx* %12, %struct.umac_ctx** %2, align 8
  br label %13

13:                                               ; preds = %8, %5
  %14 = load %struct.umac_ctx*, %struct.umac_ctx** %2, align 8
  %15 = load i64, i64* @ALLOC_BOUNDARY, align 8
  %16 = add i64 8, %15
  %17 = call i32 @explicit_bzero(%struct.umac_ctx* %14, i64 %16)
  %18 = load %struct.umac_ctx*, %struct.umac_ctx** %2, align 8
  %19 = call i32 @free(%struct.umac_ctx* %18)
  br label %20

20:                                               ; preds = %13, %1
  ret i32 1
}

declare dso_local i32 @explicit_bzero(%struct.umac_ctx*, i64) #1

declare dso_local i32 @free(%struct.umac_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

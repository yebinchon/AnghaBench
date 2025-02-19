; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mandoc_xr.c_mandoc_xr_clear.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mandoc_xr.c_mandoc_xr_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mandoc_xr = type { i32 }

@xr_hash = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @mandoc_xr_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mandoc_xr_clear() #0 {
  %1 = alloca %struct.mandoc_xr*, align 8
  %2 = alloca i32, align 4
  %3 = load i32*, i32** @xr_hash, align 8
  %4 = icmp eq i32* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %21

6:                                                ; preds = %0
  %7 = load i32*, i32** @xr_hash, align 8
  %8 = call %struct.mandoc_xr* @ohash_first(i32* %7, i32* %2)
  store %struct.mandoc_xr* %8, %struct.mandoc_xr** %1, align 8
  br label %9

9:                                                ; preds = %15, %6
  %10 = load %struct.mandoc_xr*, %struct.mandoc_xr** %1, align 8
  %11 = icmp ne %struct.mandoc_xr* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %9
  %13 = load %struct.mandoc_xr*, %struct.mandoc_xr** %1, align 8
  %14 = call i32 @free(%struct.mandoc_xr* %13)
  br label %15

15:                                               ; preds = %12
  %16 = load i32*, i32** @xr_hash, align 8
  %17 = call %struct.mandoc_xr* @ohash_next(i32* %16, i32* %2)
  store %struct.mandoc_xr* %17, %struct.mandoc_xr** %1, align 8
  br label %9

18:                                               ; preds = %9
  %19 = load i32*, i32** @xr_hash, align 8
  %20 = call i32 @ohash_delete(i32* %19)
  br label %21

21:                                               ; preds = %18, %5
  ret void
}

declare dso_local %struct.mandoc_xr* @ohash_first(i32*, i32*) #1

declare dso_local i32 @free(%struct.mandoc_xr*) #1

declare dso_local %struct.mandoc_xr* @ohash_next(i32*, i32*) #1

declare dso_local i32 @ohash_delete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

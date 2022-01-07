; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibmad/extr_mad.c_mad_trid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibmad/extr_mad.c_mad_trid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mad_trid.trid = internal global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mad_trid() #0 {
  %1 = alloca i64, align 8
  %2 = load i64, i64* @mad_trid.trid, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %11, label %4

4:                                                ; preds = %0
  %5 = call i64 @time(i32 0)
  %6 = trunc i64 %5 to i32
  %7 = call i32 (...) @getpid()
  %8 = mul nsw i32 %6, %7
  %9 = call i32 @srandom(i32 %8)
  %10 = call i64 (...) @random()
  store i64 %10, i64* @mad_trid.trid, align 8
  br label %11

11:                                               ; preds = %4, %0
  %12 = load i64, i64* @mad_trid.trid, align 8
  %13 = add nsw i64 %12, 1
  store i64 %13, i64* @mad_trid.trid, align 8
  store i64 %13, i64* %1, align 8
  %14 = load i64, i64* %1, align 8
  %15 = call i64 @GET_IB_USERLAND_TID(i64 %14)
  store i64 %15, i64* %1, align 8
  %16 = load i64, i64* %1, align 8
  ret i64 %16
}

declare dso_local i32 @srandom(i32) #1

declare dso_local i64 @time(i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i64 @random(...) #1

declare dso_local i64 @GET_IB_USERLAND_TID(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_bufferlist.c_isc_bufferlist_availablecount.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_bufferlist.c_isc_bufferlist_availablecount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@link = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isc_bufferlist_availablecount(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = icmp ne i32* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @REQUIRE(i32 %7)
  store i32 0, i32* %4, align 4
  %9 = load i32*, i32** %2, align 8
  %10 = load i32, i32* %9, align 4
  %11 = call i32* @ISC_LIST_HEAD(i32 %10)
  store i32* %11, i32** %3, align 8
  br label %12

12:                                               ; preds = %15, %1
  %13 = load i32*, i32** %3, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %28

15:                                               ; preds = %12
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @ISC_BUFFER_VALID(i32* %16)
  %18 = call i32 @REQUIRE(i32 %17)
  %19 = load i32*, i32** %3, align 8
  %20 = call i64 @isc_buffer_availablelength(i32* %19)
  %21 = load i32, i32* %4, align 4
  %22 = zext i32 %21 to i64
  %23 = add nsw i64 %22, %20
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %4, align 4
  %25 = load i32*, i32** %3, align 8
  %26 = load i32, i32* @link, align 4
  %27 = call i32* @ISC_LIST_NEXT(i32* %25, i32 %26)
  store i32* %27, i32** %3, align 8
  br label %12

28:                                               ; preds = %12
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i32* @ISC_LIST_HEAD(i32) #1

declare dso_local i32 @ISC_BUFFER_VALID(i32*) #1

declare dso_local i64 @isc_buffer_availablelength(i32*) #1

declare dso_local i32* @ISC_LIST_NEXT(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

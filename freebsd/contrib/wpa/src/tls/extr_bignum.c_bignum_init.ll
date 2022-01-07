; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_bignum.c_bignum_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_bignum.c_bignum_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bignum = type { i32 }

@MP_OKAY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bignum* @bignum_init() #0 {
  %1 = alloca %struct.bignum*, align 8
  %2 = alloca %struct.bignum*, align 8
  %3 = call %struct.bignum* @os_zalloc(i32 4)
  store %struct.bignum* %3, %struct.bignum** %2, align 8
  %4 = load %struct.bignum*, %struct.bignum** %2, align 8
  %5 = icmp eq %struct.bignum* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store %struct.bignum* null, %struct.bignum** %1, align 8
  br label %18

7:                                                ; preds = %0
  %8 = load %struct.bignum*, %struct.bignum** %2, align 8
  %9 = bitcast %struct.bignum* %8 to i32*
  %10 = call i64 @mp_init(i32* %9)
  %11 = load i64, i64* @MP_OKAY, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %7
  %14 = load %struct.bignum*, %struct.bignum** %2, align 8
  %15 = call i32 @os_free(%struct.bignum* %14)
  store %struct.bignum* null, %struct.bignum** %2, align 8
  br label %16

16:                                               ; preds = %13, %7
  %17 = load %struct.bignum*, %struct.bignum** %2, align 8
  store %struct.bignum* %17, %struct.bignum** %1, align 8
  br label %18

18:                                               ; preds = %16, %6
  %19 = load %struct.bignum*, %struct.bignum** %1, align 8
  ret %struct.bignum* %19
}

declare dso_local %struct.bignum* @os_zalloc(i32) #1

declare dso_local i64 @mp_init(i32*) #1

declare dso_local i32 @os_free(%struct.bignum*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

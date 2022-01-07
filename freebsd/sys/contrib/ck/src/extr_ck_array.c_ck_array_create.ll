; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_array.c_ck_array_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_array.c_ck_array_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._ck_array = type { i32, i64 }
%struct.ck_malloc = type { %struct._ck_array* (i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct._ck_array* (%struct.ck_malloc*, i32)* @ck_array_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct._ck_array* @ck_array_create(%struct.ck_malloc* %0, i32 %1) #0 {
  %3 = alloca %struct._ck_array*, align 8
  %4 = alloca %struct.ck_malloc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct._ck_array*, align 8
  store %struct.ck_malloc* %0, %struct.ck_malloc** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.ck_malloc*, %struct.ck_malloc** %4, align 8
  %8 = getelementptr inbounds %struct.ck_malloc, %struct.ck_malloc* %7, i32 0, i32 0
  %9 = load %struct._ck_array* (i32)*, %struct._ck_array* (i32)** %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = zext i32 %10 to i64
  %12 = mul i64 8, %11
  %13 = add i64 16, %12
  %14 = trunc i64 %13 to i32
  %15 = call %struct._ck_array* %9(i32 %14)
  store %struct._ck_array* %15, %struct._ck_array** %6, align 8
  %16 = load %struct._ck_array*, %struct._ck_array** %6, align 8
  %17 = icmp eq %struct._ck_array* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store %struct._ck_array* null, %struct._ck_array** %3, align 8
  br label %26

19:                                               ; preds = %2
  %20 = load %struct._ck_array*, %struct._ck_array** %6, align 8
  %21 = getelementptr inbounds %struct._ck_array, %struct._ck_array* %20, i32 0, i32 1
  store i64 0, i64* %21, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load %struct._ck_array*, %struct._ck_array** %6, align 8
  %24 = getelementptr inbounds %struct._ck_array, %struct._ck_array* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct._ck_array*, %struct._ck_array** %6, align 8
  store %struct._ck_array* %25, %struct._ck_array** %3, align 8
  br label %26

26:                                               ; preds = %19, %18
  %27 = load %struct._ck_array*, %struct._ck_array** %3, align 8
  ret %struct._ck_array* %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

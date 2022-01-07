; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libprocstat/extr_libprocstat.c_kinfo_vtype2fst.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libprocstat/extr_libprocstat.c_kinfo_vtype2fst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, i32 }

@kinfo_vtype2fst.kfvtypes2fst = internal global [9 x %struct.anon] [%struct.anon { i32 145, i32 136 }, %struct.anon { i32 144, i32 135 }, %struct.anon { i32 143, i32 134 }, %struct.anon { i32 142, i32 133 }, %struct.anon { i32 141, i32 132 }, %struct.anon { i32 140, i32 131 }, %struct.anon { i32 139, i32 130 }, %struct.anon { i32 138, i32 129 }, %struct.anon { i32 137, i32 128 }], align 16
@PS_FST_VTYPE_UNKNOWN = common dso_local global i32 0, align 4
@NKFVTYPES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @kinfo_vtype2fst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kinfo_vtype2fst(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %19, %1
  %6 = load i32, i32* %4, align 4
  %7 = zext i32 %6 to i64
  %8 = icmp ult i64 %7, 9
  br i1 %8, label %9, label %22

9:                                                ; preds = %5
  %10 = load i32, i32* %4, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds [9 x %struct.anon], [9 x %struct.anon]* @kinfo_vtype2fst.kfvtypes2fst, i64 0, i64 %11
  %13 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %9
  br label %22

18:                                               ; preds = %9
  br label %19

19:                                               ; preds = %18
  %20 = load i32, i32* %4, align 4
  %21 = add i32 %20, 1
  store i32 %21, i32* %4, align 4
  br label %5

22:                                               ; preds = %17, %5
  %23 = load i32, i32* %4, align 4
  %24 = zext i32 %23 to i64
  %25 = icmp eq i64 %24, 9
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* @PS_FST_VTYPE_UNKNOWN, align 4
  store i32 %27, i32* %2, align 4
  br label %34

28:                                               ; preds = %22
  %29 = load i32, i32* %4, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds [9 x %struct.anon], [9 x %struct.anon]* @kinfo_vtype2fst.kfvtypes2fst, i64 0, i64 %30
  %32 = getelementptr inbounds %struct.anon, %struct.anon* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %28, %26
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

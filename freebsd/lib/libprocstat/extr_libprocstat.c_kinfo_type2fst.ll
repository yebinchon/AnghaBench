; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libprocstat/extr_libprocstat.c_kinfo_type2fst.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libprocstat/extr_libprocstat.c_kinfo_type2fst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, i32 }

@kinfo_type2fst.kftypes2fst = internal global [14 x %struct.anon] [%struct.anon { i32 148, i32 134 }, %struct.anon { i32 155, i32 141 }, %struct.anon { i32 154, i32 140 }, %struct.anon { i32 153, i32 139 }, %struct.anon { i32 152, i32 138 }, %struct.anon { i32 151, i32 137 }, %struct.anon { i32 150, i32 136 }, %struct.anon { i32 149, i32 135 }, %struct.anon { i32 147, i32 133 }, %struct.anon { i32 146, i32 132 }, %struct.anon { i32 145, i32 131 }, %struct.anon { i32 144, i32 130 }, %struct.anon { i32 142, i32 128 }, %struct.anon { i32 143, i32 129 }], align 16
@NKFTYPES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @kinfo_type2fst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kinfo_type2fst(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %19, %1
  %6 = load i32, i32* %4, align 4
  %7 = zext i32 %6 to i64
  %8 = icmp ult i64 %7, 14
  br i1 %8, label %9, label %22

9:                                                ; preds = %5
  %10 = load i32, i32* %4, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds [14 x %struct.anon], [14 x %struct.anon]* @kinfo_type2fst.kftypes2fst, i64 0, i64 %11
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
  %25 = icmp eq i64 %24, 14
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 129, i32* %2, align 4
  br label %33

27:                                               ; preds = %22
  %28 = load i32, i32* %4, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds [14 x %struct.anon], [14 x %struct.anon]* @kinfo_type2fst.kftypes2fst, i64 0, i64 %29
  %31 = getelementptr inbounds %struct.anon, %struct.anon* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %27, %26
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

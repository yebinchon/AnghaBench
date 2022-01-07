; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_priv.c_priv_lookup_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_priv.c_priv_lookup_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iter_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iter_priv*, i32*, i32*, i64, i32)* @priv_lookup_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @priv_lookup_name(%struct.iter_priv* %0, i32* %1, i32* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iter_priv*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca [256 x i32], align 16
  %14 = alloca i32, align 4
  store %struct.iter_priv* %0, %struct.iter_priv** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load i64, i64* %10, align 8
  %16 = icmp uge i64 %15, 1024
  br i1 %16, label %17, label %18

17:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %39

18:                                               ; preds = %5
  %19 = load i32*, i32** %8, align 8
  %20 = getelementptr inbounds [256 x i32], [256 x i32]* %13, i64 0, i64 0
  %21 = load i32*, i32** %9, align 8
  %22 = call i32 @dname_pkt_copy(i32* %19, i32* %20, i32* %21)
  %23 = getelementptr inbounds [256 x i32], [256 x i32]* %13, i64 0, i64 0
  %24 = call i32 @dname_count_size_labels(i32* %23, i64* %12)
  store i32 %24, i32* %14, align 4
  %25 = load i64, i64* %10, align 8
  %26 = load i64, i64* %12, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @log_assert(i32 %28)
  %30 = load %struct.iter_priv*, %struct.iter_priv** %7, align 8
  %31 = getelementptr inbounds %struct.iter_priv, %struct.iter_priv* %30, i32 0, i32 0
  %32 = getelementptr inbounds [256 x i32], [256 x i32]* %13, i64 0, i64 0
  %33 = load i64, i64* %12, align 8
  %34 = load i32, i32* %14, align 4
  %35 = load i32, i32* %11, align 4
  %36 = call i32* @name_tree_lookup(i32* %31, i32* %32, i64 %33, i32 %34, i32 %35)
  %37 = icmp ne i32* %36, null
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %18, %17
  %40 = load i32, i32* %6, align 4
  ret i32 %40
}

declare dso_local i32 @dname_pkt_copy(i32*, i32*, i32*) #1

declare dso_local i32 @dname_count_size_labels(i32*, i64*) #1

declare dso_local i32 @log_assert(i32) #1

declare dso_local i32* @name_tree_lookup(i32*, i32*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

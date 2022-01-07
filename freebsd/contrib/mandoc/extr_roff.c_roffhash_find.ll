; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_roff.c_roffhash_find.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_roff.c_roffhash_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ohash = type { i32 }
%struct.roffreq = type { i32 }

@TOKEN_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @roffhash_find(%struct.ohash* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.ohash*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.roffreq*, align 8
  %8 = alloca i8*, align 8
  store %struct.ohash* %0, %struct.ohash** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %3
  %12 = load i8*, i8** %5, align 8
  %13 = load i64, i64* %6, align 8
  %14 = getelementptr inbounds i8, i8* %12, i64 %13
  store i8* %14, i8** %8, align 8
  %15 = load %struct.ohash*, %struct.ohash** %4, align 8
  %16 = load %struct.ohash*, %struct.ohash** %4, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @ohash_qlookupi(%struct.ohash* %16, i8* %17, i8** %8)
  %19 = call %struct.roffreq* @ohash_find(%struct.ohash* %15, i32 %18)
  store %struct.roffreq* %19, %struct.roffreq** %7, align 8
  br label %26

20:                                               ; preds = %3
  %21 = load %struct.ohash*, %struct.ohash** %4, align 8
  %22 = load %struct.ohash*, %struct.ohash** %4, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @ohash_qlookup(%struct.ohash* %22, i8* %23)
  %25 = call %struct.roffreq* @ohash_find(%struct.ohash* %21, i32 %24)
  store %struct.roffreq* %25, %struct.roffreq** %7, align 8
  br label %26

26:                                               ; preds = %20, %11
  %27 = load %struct.roffreq*, %struct.roffreq** %7, align 8
  %28 = icmp eq %struct.roffreq* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32, i32* @TOKEN_NONE, align 4
  br label %35

31:                                               ; preds = %26
  %32 = load %struct.roffreq*, %struct.roffreq** %7, align 8
  %33 = getelementptr inbounds %struct.roffreq, %struct.roffreq* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  br label %35

35:                                               ; preds = %31, %29
  %36 = phi i32 [ %30, %29 ], [ %34, %31 ]
  ret i32 %36
}

declare dso_local %struct.roffreq* @ohash_find(%struct.ohash*, i32) #1

declare dso_local i32 @ohash_qlookupi(%struct.ohash*, i8*, i8**) #1

declare dso_local i32 @ohash_qlookup(%struct.ohash*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

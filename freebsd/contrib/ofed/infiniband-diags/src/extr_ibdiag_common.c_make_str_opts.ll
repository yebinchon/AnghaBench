; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibdiag_common.c_make_str_opts.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibdiag_common.c_make_str_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.option*, i8*, i32)* @make_str_opts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @make_str_opts(%struct.option* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.option*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.option* %0, %struct.option** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %51, %3
  %10 = load %struct.option*, %struct.option** %4, align 8
  %11 = getelementptr inbounds %struct.option, %struct.option* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %9
  %15 = load i32, i32* %8, align 4
  %16 = add i32 %15, 2
  %17 = load %struct.option*, %struct.option** %4, align 8
  %18 = getelementptr inbounds %struct.option, %struct.option* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = add i32 %16, %19
  %21 = load i32, i32* %6, align 4
  %22 = icmp ult i32 %20, %21
  br label %23

23:                                               ; preds = %14, %9
  %24 = phi i1 [ false, %9 ], [ %22, %14 ]
  br i1 %24, label %25, label %54

25:                                               ; preds = %23
  %26 = load %struct.option*, %struct.option** %4, align 8
  %27 = getelementptr inbounds %struct.option, %struct.option* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = trunc i64 %28 to i8
  %30 = load i8*, i8** %5, align 8
  %31 = load i32, i32* %8, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %8, align 4
  %33 = zext i32 %31 to i64
  %34 = getelementptr inbounds i8, i8* %30, i64 %33
  store i8 %29, i8* %34, align 1
  store i32 0, i32* %7, align 4
  br label %35

35:                                               ; preds = %47, %25
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.option*, %struct.option** %4, align 8
  %38 = getelementptr inbounds %struct.option, %struct.option* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ult i32 %36, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %35
  %42 = load i8*, i8** %5, align 8
  %43 = load i32, i32* %8, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %8, align 4
  %45 = zext i32 %43 to i64
  %46 = getelementptr inbounds i8, i8* %42, i64 %45
  store i8 58, i8* %46, align 1
  br label %47

47:                                               ; preds = %41
  %48 = load i32, i32* %7, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %35

50:                                               ; preds = %35
  br label %51

51:                                               ; preds = %50
  %52 = load %struct.option*, %struct.option** %4, align 8
  %53 = getelementptr inbounds %struct.option, %struct.option* %52, i32 1
  store %struct.option* %53, %struct.option** %4, align 8
  br label %9

54:                                               ; preds = %23
  %55 = load i8*, i8** %5, align 8
  %56 = load i32, i32* %8, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  store i8 0, i8* %58, align 1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_smpquery.c_vlarb_dump_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_smpquery.c_vlarb_dump_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [36 x i8] c"# %s priority VL Arbitration Table:\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i32, i8*, i32, i32)* @vlarb_dump_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @vlarb_dump_table(i32* %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i8*, i8** %8, align 8
  %13 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %12)
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp slt i32 %17, 32
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i32, i32* %10, align 4
  br label %22

21:                                               ; preds = %5
  br label %22

22:                                               ; preds = %21, %19
  %23 = phi i32 [ %20, %19 ], [ 32, %21 ]
  %24 = call i8* @vlarb_dump_table_entry(i32* %14, i32 %15, i32 %16, i32 %23)
  store i8* %24, i8** %11, align 8
  %25 = load i8*, i8** %11, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %38, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* %10, align 4
  %29 = icmp sgt i32 %28, 32
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %9, align 4
  %34 = add nsw i32 %33, 1
  %35 = load i32, i32* %10, align 4
  %36 = sub nsw i32 %35, 32
  %37 = call i8* @vlarb_dump_table_entry(i32* %31, i32 %32, i32 %34, i32 %36)
  store i8* %37, i8** %11, align 8
  br label %38

38:                                               ; preds = %30, %27, %22
  %39 = load i8*, i8** %11, align 8
  ret i8* %39
}

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @vlarb_dump_table_entry(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

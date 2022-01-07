; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_target.c_debug_to_xfer_partial.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_target.c_debug_to_xfer_partial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (%struct.TYPE_3__*, i32, i8*, i8*, i8*, i32, i32)* }
%struct.target_ops = type { i32 }

@debug_target = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@gdb_stdlog = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"target_xfer_partial (%d, %s, 0x%lx,  0x%lx,  0x%s, %s) = %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.target_ops*, i32, i8*, i8*, i8*, i32, i32)* @debug_to_xfer_partial to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @debug_to_xfer_partial(%struct.target_ops* %0, i32 %1, i8* %2, i8* %3, i8* %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.target_ops*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.target_ops* %0, %struct.target_ops** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %16 = load i32 (%struct.TYPE_3__*, i32, i8*, i8*, i8*, i32, i32)*, i32 (%struct.TYPE_3__*, i32, i8*, i8*, i8*, i32, i32)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @debug_target, i32 0, i32 0), align 8
  %17 = load i32, i32* %9, align 4
  %18 = load i8*, i8** %10, align 8
  %19 = load i8*, i8** %11, align 8
  %20 = load i8*, i8** %12, align 8
  %21 = load i32, i32* %13, align 4
  %22 = load i32, i32* %14, align 4
  %23 = call i32 %16(%struct.TYPE_3__* @debug_target, i32 %17, i8* %18, i8* %19, i8* %20, i32 %21, i32 %22)
  store i32 %23, i32* %15, align 4
  %24 = load i32, i32* @gdb_stdlog, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i8*, i8** %10, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %7
  %29 = load i8*, i8** %10, align 8
  br label %31

30:                                               ; preds = %7
  br label %31

31:                                               ; preds = %30, %28
  %32 = phi i8* [ %29, %28 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %30 ]
  %33 = load i8*, i8** %11, align 8
  %34 = ptrtoint i8* %33 to i64
  %35 = load i8*, i8** %12, align 8
  %36 = ptrtoint i8* %35 to i64
  %37 = load i32, i32* %13, align 4
  %38 = call i32 @paddr_nz(i32 %37)
  %39 = load i32, i32* %14, align 4
  %40 = call i32 @paddr_d(i32 %39)
  %41 = load i32, i32* %15, align 4
  %42 = call i32 @paddr_d(i32 %41)
  %43 = call i32 @fprintf_unfiltered(i32 %24, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %25, i8* %32, i64 %34, i64 %36, i32 %38, i32 %40, i32 %42)
  %44 = load i32, i32* %15, align 4
  ret i32 %44
}

declare dso_local i32 @fprintf_unfiltered(i32, i8*, i32, i8*, i64, i64, i32, i32, i32) #1

declare dso_local i32 @paddr_nz(i32) #1

declare dso_local i32 @paddr_d(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

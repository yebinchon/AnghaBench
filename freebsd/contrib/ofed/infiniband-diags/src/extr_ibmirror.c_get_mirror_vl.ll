; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibmirror.c_get_mirror_vl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibmirror.c_get_mirror_vl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@buf = common dso_local global i64 0, align 8
@IB_ATTR_SLVL_TABLE = common dso_local global i32 0, align 4
@srcport = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"slvl query failed\00", align 1
@mirror_sl = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"mirror_sl %d, mirror_vl %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_mirror_vl(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = or i32 256, %8
  store i32 %9, i32* %6, align 4
  %10 = load i64, i64* @buf, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = load i32, i32* @IB_ATTR_SLVL_TABLE, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @srcport, align 4
  %15 = call i32 @smp_query_via(i64 %10, i32* %11, i32 %12, i32 %13, i32 0, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = call i32 @IBEXIT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %2
  %20 = load i64, i64* @buf, align 8
  %21 = inttoptr i64 %20 to i32*
  store i32* %21, i32** %5, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* @mirror_sl, align 4
  %24 = call i32 @ib_slvl_table_get(i32* %22, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* @mirror_sl, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %25, i32 %26)
  %28 = load i32, i32* %7, align 4
  ret i32 %28
}

declare dso_local i32 @smp_query_via(i64, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @IBEXIT(i8*) #1

declare dso_local i32 @ib_slvl_table_get(i32*, i32) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

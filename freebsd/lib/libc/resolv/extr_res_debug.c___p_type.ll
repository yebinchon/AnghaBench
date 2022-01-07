; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_debug.c___p_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_debug.c___p_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_type.typebuf = internal global [20 x i8] zeroinitializer, align 16
@__p_type_syms = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"BADTYPE\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"TYPE%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @p_type(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @__p_type_syms, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i8* @sym_ntos(i32 %6, i32 %7, i32* %4)
  store i8* %8, i8** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i8*, i8** %5, align 8
  store i8* %12, i8** %2, align 8
  br label %23

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* %3, align 4
  %18 = icmp sgt i32 %17, 65535
  br i1 %18, label %19, label %20

19:                                               ; preds = %16, %13
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %23

20:                                               ; preds = %16
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @sprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @p_type.typebuf, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @p_type.typebuf, i64 0, i64 0), i8** %2, align 8
  br label %23

23:                                               ; preds = %20, %19, %11
  %24 = load i8*, i8** %2, align 8
  ret i8* %24
}

declare dso_local i8* @sym_ntos(i32, i32, i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

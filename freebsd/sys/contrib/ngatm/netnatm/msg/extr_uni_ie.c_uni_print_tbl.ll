; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_ie.c_uni_print_tbl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_ie.c_uni_print_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni_print_tbl = type { i64, i64 }
%struct.unicx = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"ERROR(0x%x)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uni_print_tbl(i8* %0, i64 %1, %struct.uni_print_tbl* %2, %struct.unicx* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.uni_print_tbl*, align 8
  %8 = alloca %struct.unicx*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.uni_print_tbl* %2, %struct.uni_print_tbl** %7, align 8
  store %struct.unicx* %3, %struct.unicx** %8, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %4
  %12 = load i8*, i8** %5, align 8
  %13 = load %struct.unicx*, %struct.unicx** %8, align 8
  %14 = call i32 @uni_entry(i8* %12, %struct.unicx* %13)
  br label %15

15:                                               ; preds = %11, %4
  br label %16

16:                                               ; preds = %33, %15
  %17 = load %struct.uni_print_tbl*, %struct.uni_print_tbl** %7, align 8
  %18 = getelementptr inbounds %struct.uni_print_tbl, %struct.uni_print_tbl* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %16
  %22 = load %struct.uni_print_tbl*, %struct.uni_print_tbl** %7, align 8
  %23 = getelementptr inbounds %struct.uni_print_tbl, %struct.uni_print_tbl* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %6, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load %struct.unicx*, %struct.unicx** %8, align 8
  %29 = load %struct.uni_print_tbl*, %struct.uni_print_tbl** %7, align 8
  %30 = getelementptr inbounds %struct.uni_print_tbl, %struct.uni_print_tbl* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @uni_printf(%struct.unicx* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 %31)
  br label %40

33:                                               ; preds = %21
  %34 = load %struct.uni_print_tbl*, %struct.uni_print_tbl** %7, align 8
  %35 = getelementptr inbounds %struct.uni_print_tbl, %struct.uni_print_tbl* %34, i32 1
  store %struct.uni_print_tbl* %35, %struct.uni_print_tbl** %7, align 8
  br label %16

36:                                               ; preds = %16
  %37 = load %struct.unicx*, %struct.unicx** %8, align 8
  %38 = load i64, i64* %6, align 8
  %39 = call i32 @uni_printf(%struct.unicx* %37, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %38)
  br label %40

40:                                               ; preds = %36, %27
  ret void
}

declare dso_local i32 @uni_entry(i8*, %struct.unicx*) #1

declare dso_local i32 @uni_printf(%struct.unicx*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/bectl/extr_bectl_list.c_print_snapshots.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/bectl/extr_bectl_list.c_print_snapshots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.printc = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"bectl list: failed to allocate snapshot nvlist\0A\00", align 1
@be = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"bectl list: failed to fetch boot ds snapshots\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.printc*)* @print_snapshots to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_snapshots(i8* %0, %struct.printc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.printc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.printc* %1, %struct.printc** %5, align 8
  %9 = call i64 @be_prop_list_alloc(i32** %7)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @stderr, align 4
  %13 = call i32 @fprintf(i32 %12, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %42

14:                                               ; preds = %2
  %15 = load i32, i32* @be, align 4
  %16 = load i8*, i8** %4, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = call i64 @be_get_dataset_snapshots(i32 %15, i8* %16, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i32, i32* @stderr, align 4
  %22 = call i32 @fprintf(i32 %21, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %42

23:                                               ; preds = %14
  %24 = load i32*, i32** %7, align 8
  %25 = call i32* @nvlist_next_nvpair(i32* %24, i32* null)
  store i32* %25, i32** %6, align 8
  br label %26

26:                                               ; preds = %37, %23
  %27 = load i32*, i32** %6, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %41

29:                                               ; preds = %26
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 @nvpair_value_nvlist(i32* %30, i32** %8)
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @nvpair_name(i32* %32)
  %34 = load i32*, i32** %8, align 8
  %35 = load %struct.printc*, %struct.printc** %5, align 8
  %36 = call i32 @print_info(i32 %33, i32* %34, %struct.printc* %35)
  br label %37

37:                                               ; preds = %29
  %38 = load i32*, i32** %7, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = call i32* @nvlist_next_nvpair(i32* %38, i32* %39)
  store i32* %40, i32** %6, align 8
  br label %26

41:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %20, %11
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i64 @be_prop_list_alloc(i32**) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i64 @be_get_dataset_snapshots(i32, i8*, i32*) #1

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #1

declare dso_local i32 @nvpair_value_nvlist(i32*, i32**) #1

declare dso_local i32 @print_info(i32, i32*, %struct.printc*) #1

declare dso_local i32 @nvpair_name(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

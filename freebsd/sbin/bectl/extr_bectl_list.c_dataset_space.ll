; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/bectl/extr_bectl_list.c_dataset_space.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/bectl/extr_bectl_list.c_dataset_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@be = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"used\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*)* @dataset_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dataset_space(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i64 0, i64* %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = call i8* @strdup(i8* %9)
  store i8* %10, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %50

14:                                               ; preds = %1
  %15 = load i8*, i8** %5, align 8
  %16 = call i8* @strchr(i8* %15, i8 signext 64)
  store i8* %16, i8** %7, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i8*, i8** %7, align 8
  store i8 0, i8* %19, align 1
  br label %20

20:                                               ; preds = %18, %14
  %21 = call i64 @be_prop_list_alloc(i32** %8)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @free(i8* %24)
  store i64 0, i64* %2, align 8
  br label %50

26:                                               ; preds = %20
  %27 = load i32, i32* @be, align 4
  %28 = load i8*, i8** %5, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = call i64 @be_get_dataset_props(i32 %27, i8* %28, i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = load i32*, i32** %8, align 8
  %34 = call i32 @nvlist_free(i32* %33)
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 @free(i8* %35)
  store i64 0, i64* %2, align 8
  br label %50

37:                                               ; preds = %26
  %38 = load i32*, i32** %8, align 8
  %39 = call i64 @nvlist_lookup_string(i32* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %6)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i8*, i8** %6, align 8
  %43 = call i64 @strtoull(i8* %42, i32* null, i32 10)
  store i64 %43, i64* %4, align 8
  br label %44

44:                                               ; preds = %41, %37
  %45 = load i32*, i32** %8, align 8
  %46 = call i32 @nvlist_free(i32* %45)
  %47 = load i8*, i8** %5, align 8
  %48 = call i32 @free(i8* %47)
  %49 = load i64, i64* %4, align 8
  store i64 %49, i64* %2, align 8
  br label %50

50:                                               ; preds = %44, %32, %23, %13
  %51 = load i64, i64* %2, align 8
  ret i64 %51
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @be_prop_list_alloc(i32**) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @be_get_dataset_props(i32, i8*, i32*) #1

declare dso_local i32 @nvlist_free(i32*) #1

declare dso_local i64 @nvlist_lookup_string(i32*, i8*, i8**) #1

declare dso_local i64 @strtoull(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

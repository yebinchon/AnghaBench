; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/bectl/extr_bectl_jail.c_bectl_locate_jail.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/bectl/extr_bectl_jail.c_bectl_locate_jail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@be = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"mounted\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @bectl_locate_jail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bectl_locate_jail(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i32 @jail_getid(i8* %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %2, align 4
  br label %43

14:                                               ; preds = %1
  %15 = call i64 @be_prop_list_alloc(i32** %4)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 -1, i32* %2, align 4
  br label %43

18:                                               ; preds = %14
  %19 = load i32, i32* @be, align 4
  %20 = load i32*, i32** %4, align 8
  %21 = call i64 @be_get_bootenv_props(i32 %19, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 -1, i32* %2, align 4
  br label %43

24:                                               ; preds = %18
  %25 = load i32*, i32** %4, align 8
  %26 = load i8*, i8** %3, align 8
  %27 = call i64 @nvlist_lookup_nvlist(i32* %25, i8* %26, i32** %5)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %24
  %30 = load i32*, i32** %5, align 8
  %31 = call i64 @nvlist_lookup_string(i32* %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %6)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @bectl_search_jail_paths(i8* %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @be_prop_list_free(i32* %36)
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %2, align 4
  br label %43

39:                                               ; preds = %29
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @be_prop_list_free(i32* %40)
  br label %42

42:                                               ; preds = %39, %24
  store i32 -1, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %33, %23, %17, %12
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @jail_getid(i8*) #1

declare dso_local i64 @be_prop_list_alloc(i32**) #1

declare dso_local i64 @be_get_bootenv_props(i32, i32*) #1

declare dso_local i64 @nvlist_lookup_nvlist(i32*, i8*, i32**) #1

declare dso_local i64 @nvlist_lookup_string(i32*, i8*, i8**) #1

declare dso_local i32 @bectl_search_jail_paths(i8*) #1

declare dso_local i32 @be_prop_list_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_nat64lsn.c_ipfw_nat64lsn_list_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_nat64lsn.c_ipfw_nat64lsn_list_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nat64lsn_show_cb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"nat64lsn list needs command\00", align 1
@nat64listcmds = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"nat64lsn list command\00", align 1
@nat64lsn_states_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i8**)* @ipfw_nat64lsn_list_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipfw_nat64lsn_list_handler(i8* %0, i32 %1, i32 %2, i8** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8** %3, i8*** %8, align 8
  %10 = load i32, i32* %7, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %4
  %13 = load i32, i32* @nat64lsn_show_cb, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @nat64lsn_foreach(i32 %13, i8* %14, i32 %15, i32 1)
  br label %34

17:                                               ; preds = %4
  %18 = call i32 @NEED1(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @nat64listcmds, align 4
  %20 = load i8**, i8*** %8, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @get_token(i32 %19, i8* %21, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  switch i32 %23, label %34 [
    i32 128, label %24
    i32 129, label %29
  ]

24:                                               ; preds = %17
  %25 = load i32, i32* @nat64lsn_states_cb, align 4
  %26 = load i8*, i8** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @nat64lsn_foreach(i32 %25, i8* %26, i32 %27, i32 1)
  br label %34

29:                                               ; preds = %17
  %30 = load i32, i32* @nat64lsn_show_cb, align 4
  %31 = load i8*, i8** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @nat64lsn_foreach(i32 %30, i8* %31, i32 %32, i32 1)
  br label %34

34:                                               ; preds = %12, %29, %17, %24
  ret void
}

declare dso_local i32 @nat64lsn_foreach(i32, i8*, i32, i32) #1

declare dso_local i32 @NEED1(i8*) #1

declare dso_local i32 @get_token(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

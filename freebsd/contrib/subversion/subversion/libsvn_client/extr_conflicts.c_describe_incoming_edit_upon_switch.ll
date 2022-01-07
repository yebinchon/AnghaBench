; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_describe_incoming_edit_upon_switch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_describe_incoming_edit_upon_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@svn_node_dir = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [98 x i8] c"Changes destined for a directory arrived via the following revisions during switch to\0A'^/%s@r%ld'\00", align 1
@svn_node_file = common dso_local global i64 0, align 8
@svn_node_symlink = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [74 x i8] c"Changes from the following revisions arrived during switch to\0A'^/%s@r%ld'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32, i64, i32*)* @describe_incoming_edit_upon_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @describe_incoming_edit_upon_switch(i8* %0, i32 %1, i64 %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load i64, i64* %8, align 8
  %11 = load i64, i64* @svn_node_dir, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %4
  %14 = load i32*, i32** %9, align 8
  %15 = call i32 @_(i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str, i64 0, i64 0))
  %16 = load i8*, i8** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i8* @apr_psprintf(i32* %14, i32 %15, i8* %16, i32 %17)
  store i8* %18, i8** %5, align 8
  br label %39

19:                                               ; preds = %4
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* @svn_node_file, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* @svn_node_symlink, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %23, %19
  %28 = load i32*, i32** %9, align 8
  %29 = call i32 @_(i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str, i64 0, i64 0))
  %30 = load i8*, i8** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i8* @apr_psprintf(i32* %28, i32 %29, i8* %30, i32 %31)
  store i8* %32, i8** %5, align 8
  br label %39

33:                                               ; preds = %23
  %34 = load i32*, i32** %9, align 8
  %35 = call i32 @_(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i8*, i8** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i8* @apr_psprintf(i32* %34, i32 %35, i8* %36, i32 %37)
  store i8* %38, i8** %5, align 8
  br label %39

39:                                               ; preds = %33, %27, %13
  %40 = load i8*, i8** %5, align 8
  ret i8* %40
}

declare dso_local i8* @apr_psprintf(i32*, i32, i8*, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

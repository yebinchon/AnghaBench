; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_describe_incoming_edit_upon_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_describe_incoming_edit_upon_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@svn_node_dir = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [102 x i8] c"Changes destined for a directory arrived via the following revisions during update from r%ld to r%ld.\00", align 1
@svn_node_file = common dso_local global i64 0, align 8
@svn_node_symlink = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [96 x i8] c"Changes destined for a file arrived via the following revisions during update from r%ld to r%ld\00", align 1
@.str.2 = private unnamed_addr constant [77 x i8] c"Changes from the following revisions arrived during update from r%ld to r%ld\00", align 1
@.str.3 = private unnamed_addr constant [111 x i8] c"Changes destined for a directory arrived via the following revisions during backwards update from r%ld to r%ld\00", align 1
@.str.4 = private unnamed_addr constant [106 x i8] c"Changes destined for a file arrived via the following revisions during backwards update from r%ld to r%ld\00", align 1
@.str.5 = private unnamed_addr constant [87 x i8] c"Changes from the following revisions arrived during backwards update from r%ld to r%ld\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64, i64, i64, i64, i32*)* @describe_incoming_edit_upon_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @describe_incoming_edit_upon_update(i64 %0, i64 %1, i64 %2, i64 %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* %8, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %45

15:                                               ; preds = %5
  %16 = load i64, i64* %10, align 8
  %17 = load i64, i64* @svn_node_dir, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = load i32*, i32** %11, align 8
  %21 = call i32 @_(i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str, i64 0, i64 0))
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* %8, align 8
  %24 = call i8* @apr_psprintf(i32* %20, i32 %21, i64 %22, i64 %23)
  store i8* %24, i8** %6, align 8
  br label %75

25:                                               ; preds = %15
  %26 = load i64, i64* %10, align 8
  %27 = load i64, i64* @svn_node_file, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load i64, i64* %10, align 8
  %31 = load i64, i64* @svn_node_symlink, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %29, %25
  %34 = load i32*, i32** %11, align 8
  %35 = call i32 @_(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* %8, align 8
  %38 = call i8* @apr_psprintf(i32* %34, i32 %35, i64 %36, i64 %37)
  store i8* %38, i8** %6, align 8
  br label %75

39:                                               ; preds = %29
  %40 = load i32*, i32** %11, align 8
  %41 = call i32 @_(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* %8, align 8
  %44 = call i8* @apr_psprintf(i32* %40, i32 %41, i64 %42, i64 %43)
  store i8* %44, i8** %6, align 8
  br label %75

45:                                               ; preds = %5
  %46 = load i64, i64* %10, align 8
  %47 = load i64, i64* @svn_node_dir, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = load i32*, i32** %11, align 8
  %51 = call i32 @_(i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.3, i64 0, i64 0))
  %52 = load i64, i64* %7, align 8
  %53 = load i64, i64* %8, align 8
  %54 = call i8* @apr_psprintf(i32* %50, i32 %51, i64 %52, i64 %53)
  store i8* %54, i8** %6, align 8
  br label %75

55:                                               ; preds = %45
  %56 = load i64, i64* %10, align 8
  %57 = load i64, i64* @svn_node_file, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = load i64, i64* %10, align 8
  %61 = load i64, i64* @svn_node_symlink, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %59, %55
  %64 = load i32*, i32** %11, align 8
  %65 = call i32 @_(i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.4, i64 0, i64 0))
  %66 = load i64, i64* %7, align 8
  %67 = load i64, i64* %8, align 8
  %68 = call i8* @apr_psprintf(i32* %64, i32 %65, i64 %66, i64 %67)
  store i8* %68, i8** %6, align 8
  br label %75

69:                                               ; preds = %59
  %70 = load i32*, i32** %11, align 8
  %71 = call i32 @_(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.5, i64 0, i64 0))
  %72 = load i64, i64* %7, align 8
  %73 = load i64, i64* %8, align 8
  %74 = call i8* @apr_psprintf(i32* %70, i32 %71, i64 %72, i64 %73)
  store i8* %74, i8** %6, align 8
  br label %75

75:                                               ; preds = %69, %63, %49, %39, %33, %19
  %76 = load i8*, i8** %6, align 8
  ret i8* %76
}

declare dso_local i8* @apr_psprintf(i32*, i32, i64, i64) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

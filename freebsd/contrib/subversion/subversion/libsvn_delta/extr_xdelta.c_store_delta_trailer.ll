; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_xdelta.c_store_delta_trailer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_xdelta.c_store_delta_trailer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@svn_txdelta_new = common dso_local global i32 0, align 4
@svn_txdelta_source = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i64, i8*, i64, i64, i32*)* @store_delta_trailer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @store_delta_trailer(i32* %0, i8* %1, i64 %2, i8* %3, i64 %4, i64 %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store i32* %6, i32** %14, align 8
  %17 = load i64, i64* %10, align 8
  %18 = load i64, i64* %12, align 8
  %19 = load i64, i64* %13, align 8
  %20 = sub nsw i64 %18, %19
  %21 = icmp sgt i64 %17, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %7
  %23 = load i64, i64* %12, align 8
  %24 = load i64, i64* %13, align 8
  %25 = sub nsw i64 %23, %24
  br label %28

26:                                               ; preds = %7
  %27 = load i64, i64* %10, align 8
  br label %28

28:                                               ; preds = %26, %22
  %29 = phi i64 [ %25, %22 ], [ %27, %26 ]
  store i64 %29, i64* %16, align 8
  %30 = load i64, i64* %16, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %77

33:                                               ; preds = %28
  %34 = load i8*, i8** %9, align 8
  %35 = load i64, i64* %10, align 8
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  %37 = load i8*, i8** %11, align 8
  %38 = load i64, i64* %12, align 8
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  %40 = load i64, i64* %16, align 8
  %41 = call i64 @svn_cstring__reverse_match_length(i8* %36, i8* %39, i64 %40)
  store i64 %41, i64* %15, align 8
  %42 = load i64, i64* %15, align 8
  %43 = icmp sle i64 %42, 4
  br i1 %43, label %44, label %45

44:                                               ; preds = %33
  store i64 0, i64* %15, align 8
  br label %45

45:                                               ; preds = %44, %33
  %46 = load i64, i64* %12, align 8
  %47 = load i64, i64* %13, align 8
  %48 = sub nsw i64 %46, %47
  %49 = load i64, i64* %15, align 8
  %50 = icmp sgt i64 %48, %49
  br i1 %50, label %51, label %65

51:                                               ; preds = %45
  %52 = load i32*, i32** %8, align 8
  %53 = load i32, i32* @svn_txdelta_new, align 4
  %54 = load i64, i64* %13, align 8
  %55 = load i64, i64* %12, align 8
  %56 = load i64, i64* %13, align 8
  %57 = sub nsw i64 %55, %56
  %58 = load i64, i64* %15, align 8
  %59 = sub nsw i64 %57, %58
  %60 = load i8*, i8** %11, align 8
  %61 = load i64, i64* %13, align 8
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  %63 = load i32*, i32** %14, align 8
  %64 = call i32 @svn_txdelta__insert_op(i32* %52, i32 %53, i64 %54, i64 %59, i8* %62, i32* %63)
  br label %65

65:                                               ; preds = %51, %45
  %66 = load i64, i64* %15, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %65
  %69 = load i32*, i32** %8, align 8
  %70 = load i32, i32* @svn_txdelta_source, align 4
  %71 = load i64, i64* %10, align 8
  %72 = load i64, i64* %15, align 8
  %73 = sub nsw i64 %71, %72
  %74 = load i64, i64* %15, align 8
  %75 = load i32*, i32** %14, align 8
  %76 = call i32 @svn_txdelta__insert_op(i32* %69, i32 %70, i64 %73, i64 %74, i8* null, i32* %75)
  br label %77

77:                                               ; preds = %32, %68, %65
  ret void
}

declare dso_local i64 @svn_cstring__reverse_match_length(i8*, i8*, i64) #1

declare dso_local i32 @svn_txdelta__insert_op(i32*, i32, i64, i64, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

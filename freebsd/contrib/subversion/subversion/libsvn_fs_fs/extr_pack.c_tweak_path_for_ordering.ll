; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_pack.c_tweak_path_for_ordering.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_pack.c_tweak_path_for_ordering.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tweak_path_for_ordering.special = internal global [2 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [6 x i8] c"trunk\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"branch\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32*)* @tweak_path_for_ordering to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @tweak_path_for_ordering(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = call i8* @apr_pstrdup(i32* %8, i8* %9)
  store i8* %10, i8** %6, align 8
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %38, %2
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 2
  br i1 %13, label %14, label %41

14:                                               ; preds = %11
  %15 = load i8*, i8** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [2 x i8*], [2 x i8*]* @tweak_path_for_ordering.special, i64 0, i64 %17
  %19 = load i8*, i8** %18, align 8
  %20 = call i8* @strstr(i8* %15, i8* %19)
  store i8* %20, i8** %5, align 8
  br label %21

21:                                               ; preds = %29, %14
  %22 = load i8*, i8** %5, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %37

24:                                               ; preds = %21
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %25, 1
  %27 = trunc i32 %26 to i8
  %28 = load i8*, i8** %5, align 8
  store i8 %27, i8* %28, align 1
  br label %29

29:                                               ; preds = %24
  %30 = load i8*, i8** %5, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [2 x i8*], [2 x i8*]* @tweak_path_for_ordering.special, i64 0, i64 %33
  %35 = load i8*, i8** %34, align 8
  %36 = call i8* @strstr(i8* %31, i8* %35)
  store i8* %36, i8** %5, align 8
  br label %21

37:                                               ; preds = %21
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  br label %11

41:                                               ; preds = %11
  %42 = load i8*, i8** %6, align 8
  ret i8* %42
}

declare dso_local i8* @apr_pstrdup(i32*, i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

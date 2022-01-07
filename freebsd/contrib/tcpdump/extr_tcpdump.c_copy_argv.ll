; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_tcpdump.c_copy_argv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_tcpdump.c_copy_argv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"copy_argv: malloc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8**)* @copy_argv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @copy_argv(i8** %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8**, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8** %0, i8*** %3, align 8
  store i32 0, i32* %5, align 4
  %9 = load i8**, i8*** %3, align 8
  store i8** %9, i8*** %4, align 8
  %10 = load i8**, i8*** %4, align 8
  %11 = load i8*, i8** %10, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %63

14:                                               ; preds = %1
  br label %15

15:                                               ; preds = %19, %14
  %16 = load i8**, i8*** %4, align 8
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %30

19:                                               ; preds = %15
  %20 = load i8**, i8*** %4, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i32 1
  store i8** %21, i8*** %4, align 8
  %22 = load i8*, i8** %20, align 8
  %23 = ptrtoint i8* %22 to i32
  %24 = call i64 @strlen(i32 %23)
  %25 = add nsw i64 %24, 1
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %27, %25
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %5, align 4
  br label %15

30:                                               ; preds = %15
  %31 = load i32, i32* %5, align 4
  %32 = call i64 @malloc(i32 %31)
  %33 = inttoptr i64 %32 to i8*
  store i8* %33, i8** %6, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = call i32 @error(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %30
  %39 = load i8**, i8*** %3, align 8
  store i8** %39, i8*** %4, align 8
  %40 = load i8*, i8** %6, align 8
  store i8* %40, i8** %8, align 8
  br label %41

41:                                               ; preds = %56, %38
  %42 = load i8**, i8*** %4, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i32 1
  store i8** %43, i8*** %4, align 8
  %44 = load i8*, i8** %42, align 8
  store i8* %44, i8** %7, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %59

46:                                               ; preds = %41
  br label %47

47:                                               ; preds = %55, %46
  %48 = load i8*, i8** %7, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %7, align 8
  %50 = load i8, i8* %48, align 1
  %51 = load i8*, i8** %8, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %8, align 8
  store i8 %50, i8* %51, align 1
  %53 = sext i8 %50 to i32
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  br label %47

56:                                               ; preds = %47
  %57 = load i8*, i8** %8, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 -1
  store i8 32, i8* %58, align 1
  br label %41

59:                                               ; preds = %41
  %60 = load i8*, i8** %8, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 -1
  store i8 0, i8* %61, align 1
  %62 = load i8*, i8** %6, align 8
  store i8* %62, i8** %2, align 8
  br label %63

63:                                               ; preds = %59, %13
  %64 = load i8*, i8** %2, align 8
  ret i8* %64
}

declare dso_local i64 @strlen(i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

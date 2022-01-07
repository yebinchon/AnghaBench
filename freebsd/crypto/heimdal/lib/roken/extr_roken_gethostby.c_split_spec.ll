; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_roken_gethostby.c_split_spec.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_roken_gethostby.c_split_spec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8**, i32*, i8**, i32)* @split_spec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @split_spec(i8* %0, i8** %1, i32* %2, i8** %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8** %3, i8*** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = call i8* @strdup(i8* %12)
  %14 = load i8**, i8*** %7, align 8
  store i8* %13, i8** %14, align 8
  %15 = load i8**, i8*** %7, align 8
  %16 = load i8*, i8** %15, align 8
  %17 = call i8* @strchr(i8* %16, i8 signext 58)
  store i8* %17, i8** %11, align 8
  %18 = load i8*, i8** %11, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %31

20:                                               ; preds = %5
  %21 = load i8*, i8** %11, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %11, align 8
  store i8 0, i8* %21, align 1
  %23 = load i8*, i8** %11, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = call i32 @sscanf(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %24)
  %26 = icmp ne i32 %25, 1
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load i32, i32* %10, align 4
  %29 = load i32*, i32** %8, align 8
  store i32 %28, i32* %29, align 4
  br label %30

30:                                               ; preds = %27, %20
  br label %34

31:                                               ; preds = %5
  %32 = load i32, i32* %10, align 4
  %33 = load i32*, i32** %8, align 8
  store i32 %32, i32* %33, align 4
  br label %34

34:                                               ; preds = %31, %30
  %35 = load i8*, i8** %11, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i8*, i8** %11, align 8
  br label %42

39:                                               ; preds = %34
  %40 = load i8**, i8*** %7, align 8
  %41 = load i8*, i8** %40, align 8
  br label %42

42:                                               ; preds = %39, %37
  %43 = phi i8* [ %38, %37 ], [ %41, %39 ]
  %44 = call i8* @strchr(i8* %43, i8 signext 47)
  store i8* %44, i8** %11, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %56

47:                                               ; preds = %42
  %48 = load i8**, i8*** %9, align 8
  %49 = icmp ne i8** %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i8*, i8** %11, align 8
  %52 = call i8* @strdup(i8* %51)
  %53 = load i8**, i8*** %9, align 8
  store i8* %52, i8** %53, align 8
  br label %54

54:                                               ; preds = %50, %47
  %55 = load i8*, i8** %11, align 8
  store i8 0, i8* %55, align 1
  br label %62

56:                                               ; preds = %42
  %57 = load i8**, i8*** %9, align 8
  %58 = icmp ne i8** %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = load i8**, i8*** %9, align 8
  store i8* null, i8** %60, align 8
  br label %61

61:                                               ; preds = %59, %56
  br label %62

62:                                               ; preds = %61, %54
  ret void
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

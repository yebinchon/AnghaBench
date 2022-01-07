; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/mount/extr_vfslist.c_makevfslist.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/mount/extr_vfslist.c_makevfslist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@skipvfs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8** @makevfslist(i8* %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i8** null, i8*** %2, align 8
  br label %80

10:                                               ; preds = %1
  %11 = load i8*, i8** %3, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 110
  br i1 %15, label %16, label %25

16:                                               ; preds = %10
  %17 = load i8*, i8** %3, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 1
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 111
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i8*, i8** %3, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 2
  store i8* %24, i8** %3, align 8
  store i32 1, i32* @skipvfs, align 4
  br label %25

25:                                               ; preds = %22, %16, %10
  store i32 0, i32* %5, align 4
  %26 = load i8*, i8** %3, align 8
  store i8* %26, i8** %6, align 8
  br label %27

27:                                               ; preds = %40, %25
  %28 = load i8*, i8** %6, align 8
  %29 = load i8, i8* %28, align 1
  %30 = icmp ne i8 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %27
  %32 = load i8*, i8** %6, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 44
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %36, %31
  br label %40

40:                                               ; preds = %39
  %41 = load i8*, i8** %6, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %6, align 8
  br label %27

43:                                               ; preds = %27
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 2
  %46 = sext i32 %45 to i64
  %47 = mul i64 %46, 8
  %48 = call i8** @malloc(i64 %47)
  store i8** %48, i8*** %4, align 8
  %49 = icmp eq i8** %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = call i32 @warnx(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i8** null, i8*** %2, align 8
  br label %80

52:                                               ; preds = %43
  %53 = load i8*, i8** %3, align 8
  store i8* %53, i8** %6, align 8
  store i32 0, i32* %5, align 4
  %54 = load i8*, i8** %6, align 8
  %55 = load i8**, i8*** %4, align 8
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %5, align 4
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i8*, i8** %55, i64 %58
  store i8* %54, i8** %59, align 8
  br label %60

60:                                               ; preds = %64, %52
  %61 = load i8*, i8** %6, align 8
  %62 = call i8* @strchr(i8* %61, i8 signext 44)
  store i8* %62, i8** %6, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %73

64:                                               ; preds = %60
  %65 = load i8*, i8** %6, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %6, align 8
  store i8 0, i8* %65, align 1
  %67 = load i8*, i8** %6, align 8
  %68 = load i8**, i8*** %4, align 8
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %5, align 4
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i8*, i8** %68, i64 %71
  store i8* %67, i8** %72, align 8
  br label %60

73:                                               ; preds = %60
  %74 = load i8**, i8*** %4, align 8
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %5, align 4
  %77 = sext i32 %75 to i64
  %78 = getelementptr inbounds i8*, i8** %74, i64 %77
  store i8* null, i8** %78, align 8
  %79 = load i8**, i8*** %4, align 8
  store i8** %79, i8*** %2, align 8
  br label %80

80:                                               ; preds = %73, %50, %9
  %81 = load i8**, i8*** %2, align 8
  ret i8** %81
}

declare dso_local i8** @malloc(i64) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

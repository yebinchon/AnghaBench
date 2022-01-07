; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/mount/extr_mount.c_catopt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/mount/extr_mount.c_catopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"%s,%s\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"asprintf failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @catopt(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = load i8*, i8** %5, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %9, %2
  %15 = load i8*, i8** %4, align 8
  store i8* %15, i8** %3, align 8
  br label %43

16:                                               ; preds = %9
  %17 = load i8*, i8** %4, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %32

19:                                               ; preds = %16
  %20 = load i8*, i8** %4, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load i8*, i8** %4, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @asprintf(i8** %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %25, i8* %26)
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = call i32 @errx(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %24
  br label %35

32:                                               ; preds = %19, %16
  %33 = load i8*, i8** %5, align 8
  %34 = call i8* @strdup(i8* %33)
  store i8* %34, i8** %6, align 8
  br label %35

35:                                               ; preds = %32, %31
  %36 = load i8*, i8** %4, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i8*, i8** %4, align 8
  %40 = call i32 @free(i8* %39)
  br label %41

41:                                               ; preds = %38, %35
  %42 = load i8*, i8** %6, align 8
  store i8* %42, i8** %3, align 8
  br label %43

43:                                               ; preds = %41, %14
  %44 = load i8*, i8** %3, align 8
  ret i8* %44
}

declare dso_local i32 @asprintf(i8**, i8*, i8*, i8*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

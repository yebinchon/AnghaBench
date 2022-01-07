; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/devfs/extr_devfs.c_efgetln.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/devfs/extr_devfs.c_efgetln.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"cannot allocate memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @efgetln(i32* %0, i8** %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8** %1, i8*** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i8* @fgetln(i32* %8, i64* %6)
  store i8* %9, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i8**, i8*** %5, align 8
  store i8* null, i8** %13, align 8
  %14 = load i64, i64* %6, align 8
  store i64 %14, i64* %3, align 8
  br label %68

15:                                               ; preds = %2
  %16 = load i8*, i8** %7, align 8
  %17 = load i64, i64* %6, align 8
  %18 = sub i64 %17, 1
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 10
  br i1 %22, label %23, label %39

23:                                               ; preds = %15
  %24 = load i8*, i8** %7, align 8
  %25 = load i64, i64* %6, align 8
  %26 = sub i64 %25, 1
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  store i8 0, i8* %27, align 1
  %28 = load i8*, i8** %7, align 8
  %29 = call i8* @strdup(i8* %28)
  %30 = load i8**, i8*** %5, align 8
  store i8* %29, i8** %30, align 8
  %31 = load i8**, i8*** %5, align 8
  %32 = load i8*, i8** %31, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %23
  %35 = call i32 @errx(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %23
  %37 = load i64, i64* %6, align 8
  %38 = add i64 %37, -1
  store i64 %38, i64* %6, align 8
  br label %59

39:                                               ; preds = %15
  %40 = load i64, i64* %6, align 8
  %41 = add i64 %40, 1
  %42 = call i8* @malloc(i64 %41)
  %43 = load i8**, i8*** %5, align 8
  store i8* %42, i8** %43, align 8
  %44 = load i8**, i8*** %5, align 8
  %45 = load i8*, i8** %44, align 8
  %46 = icmp eq i8* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = call i32 @errx(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %39
  %50 = load i8**, i8*** %5, align 8
  %51 = load i8*, i8** %50, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = load i64, i64* %6, align 8
  %54 = call i32 @memcpy(i8* %51, i8* %52, i64 %53)
  %55 = load i8**, i8*** %5, align 8
  %56 = load i8*, i8** %55, align 8
  %57 = load i64, i64* %6, align 8
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  store i8 0, i8* %58, align 1
  br label %59

59:                                               ; preds = %49, %36
  %60 = load i64, i64* %6, align 8
  %61 = load i8**, i8*** %5, align 8
  %62 = load i8*, i8** %61, align 8
  %63 = call i64 @strlen(i8* %62)
  %64 = icmp eq i64 %60, %63
  %65 = zext i1 %64 to i32
  %66 = call i32 @assert(i32 %65)
  %67 = load i64, i64* %6, align 8
  store i64 %67, i64* %3, align 8
  br label %68

68:                                               ; preds = %59, %12
  %69 = load i64, i64* %3, align 8
  ret i64 %69
}

declare dso_local i8* @fgetln(i32*, i64*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

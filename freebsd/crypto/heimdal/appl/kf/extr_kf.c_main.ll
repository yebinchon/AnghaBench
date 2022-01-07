; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/kf/extr_kf.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/kf/extr_kf.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@context = common dso_local global i32 0, align 4
@remote_name = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"who are you?\00", align 1
@service = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"%s: ok\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"%s: failed: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [128 x i8], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %9, align 4
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %6, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = call i32 @client_setup(i32* @context, i32* %6, i8** %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32*, i32** @remote_name, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = call i32* (...) @get_default_username()
  store i32* %17, i32** @remote_name, align 8
  %18 = load i32*, i32** @remote_name, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = call i32 @errx(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %16
  br label %23

23:                                               ; preds = %22, %2
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %8, align 4
  br label %25

25:                                               ; preds = %57, %23
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %60

29:                                               ; preds = %25
  %30 = load i8**, i8*** %5, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %30, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @service, align 4
  %37 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %38 = call i32 @doit(i8* %34, i32 %35, i32 %36, i8* %37, i32 128)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %29
  %42 = load i8**, i8*** %5, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %42, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %46)
  br label %56

48:                                               ; preds = %29
  %49 = load i8**, i8*** %5, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %49, i64 %51
  %53 = load i8*, i8** %52, align 8
  %54 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %55 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %53, i8* %54)
  br label %56

56:                                               ; preds = %48, %41
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %8, align 4
  br label %25

60:                                               ; preds = %25
  %61 = load i32, i32* %9, align 4
  ret i32 %61
}

declare dso_local i32 @client_setup(i32*, i32*, i8**) #1

declare dso_local i32* @get_default_username(...) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @doit(i8*, i32, i32, i8*, i32) #1

declare dso_local i32 @warnx(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

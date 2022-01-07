; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/kernel/extr_h_ps_strings1.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/kernel/extr_h_ps_strings1.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8**, i8**, i32 }

@__ps_strings = common dso_local global %struct.TYPE_2__* null, align 8
@main.nargv_err = internal constant [25 x i8] c"Wrong argc in ps_strings\00", align 16
@STDOUT_FILENO = common dso_local global i32 0, align 4
@main.argv_err = internal constant [25 x i8] c"Wrong argv in ps_strings\00", align 16
@main.env_err = internal constant [24 x i8] c"Wrong env in ps_strings\00", align 16
@main.nenv_err = internal constant [25 x i8] c"Wrong nenv in ps_strings\00", align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %4, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__ps_strings, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @STDOUT_FILENO, align 4
  %17 = call i32 @write(i32 %16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @main.nargv_err, i64 0, i64 0), i32 25)
  store i32 1, i32* %8, align 4
  br label %18

18:                                               ; preds = %15, %3
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__ps_strings, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i8**, i8*** %20, align 8
  %22 = load i8**, i8*** %6, align 8
  %23 = icmp ne i8** %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i32, i32* @STDOUT_FILENO, align 4
  %26 = call i32 @write(i32 %25, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @main.argv_err, i64 0, i64 0), i32 25)
  store i32 1, i32* %8, align 4
  br label %27

27:                                               ; preds = %24, %18
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__ps_strings, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load i8**, i8*** %29, align 8
  %31 = load i8**, i8*** %7, align 8
  %32 = icmp ne i8** %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* @STDOUT_FILENO, align 4
  %35 = call i32 @write(i32 %34, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @main.env_err, i64 0, i64 0), i32 24)
  store i32 1, i32* %8, align 4
  br label %36

36:                                               ; preds = %33, %27
  store i32 0, i32* %9, align 4
  br label %37

37:                                               ; preds = %44, %36
  %38 = load i8**, i8*** %7, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %38, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %9, align 4
  br label %37

47:                                               ; preds = %37
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__ps_strings, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i32, i32* @STDOUT_FILENO, align 4
  %55 = call i32 @write(i32 %54, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @main.nenv_err, i64 0, i64 0), i32 25)
  store i32 1, i32* %8, align 4
  br label %56

56:                                               ; preds = %53, %47
  %57 = load i32, i32* %8, align 4
  ret i32 %57
}

declare dso_local i32 @write(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

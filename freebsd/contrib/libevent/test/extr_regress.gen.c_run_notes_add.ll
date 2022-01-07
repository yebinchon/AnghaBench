; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress.gen.c_run_notes_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress.gen.c_run_notes_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.run = type { i64, i64, i8**, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8** @run_notes_add(%struct.run* %0, i8* %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca %struct.run*, align 8
  %5 = alloca i8*, align 8
  store %struct.run* %0, %struct.run** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load %struct.run*, %struct.run** %4, align 8
  %7 = getelementptr inbounds %struct.run, %struct.run* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = add nsw i64 %8, 1
  store i64 %9, i64* %7, align 8
  %10 = load %struct.run*, %struct.run** %4, align 8
  %11 = getelementptr inbounds %struct.run, %struct.run* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp sge i64 %9, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load %struct.run*, %struct.run** %4, align 8
  %16 = call i64 @run_notes_expand_to_hold_more(%struct.run* %15)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %66

19:                                               ; preds = %14
  br label %20

20:                                               ; preds = %19, %2
  %21 = load i8*, i8** %5, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %46

23:                                               ; preds = %20
  %24 = load i8*, i8** %5, align 8
  %25 = call i8* @strdup(i8* %24)
  %26 = load %struct.run*, %struct.run** %4, align 8
  %27 = getelementptr inbounds %struct.run, %struct.run* %26, i32 0, i32 2
  %28 = load i8**, i8*** %27, align 8
  %29 = load %struct.run*, %struct.run** %4, align 8
  %30 = getelementptr inbounds %struct.run, %struct.run* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = sub nsw i64 %31, 1
  %33 = getelementptr inbounds i8*, i8** %28, i64 %32
  store i8* %25, i8** %33, align 8
  %34 = load %struct.run*, %struct.run** %4, align 8
  %35 = getelementptr inbounds %struct.run, %struct.run* %34, i32 0, i32 2
  %36 = load i8**, i8*** %35, align 8
  %37 = load %struct.run*, %struct.run** %4, align 8
  %38 = getelementptr inbounds %struct.run, %struct.run* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = sub nsw i64 %39, 1
  %41 = getelementptr inbounds i8*, i8** %36, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %23
  br label %66

45:                                               ; preds = %23
  br label %55

46:                                               ; preds = %20
  %47 = load %struct.run*, %struct.run** %4, align 8
  %48 = getelementptr inbounds %struct.run, %struct.run* %47, i32 0, i32 2
  %49 = load i8**, i8*** %48, align 8
  %50 = load %struct.run*, %struct.run** %4, align 8
  %51 = getelementptr inbounds %struct.run, %struct.run* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = sub nsw i64 %52, 1
  %54 = getelementptr inbounds i8*, i8** %49, i64 %53
  store i8* null, i8** %54, align 8
  br label %55

55:                                               ; preds = %46, %45
  %56 = load %struct.run*, %struct.run** %4, align 8
  %57 = getelementptr inbounds %struct.run, %struct.run* %56, i32 0, i32 3
  store i32 1, i32* %57, align 8
  %58 = load %struct.run*, %struct.run** %4, align 8
  %59 = getelementptr inbounds %struct.run, %struct.run* %58, i32 0, i32 2
  %60 = load i8**, i8*** %59, align 8
  %61 = load %struct.run*, %struct.run** %4, align 8
  %62 = getelementptr inbounds %struct.run, %struct.run* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = sub nsw i64 %63, 1
  %65 = getelementptr inbounds i8*, i8** %60, i64 %64
  store i8** %65, i8*** %3, align 8
  br label %71

66:                                               ; preds = %44, %18
  %67 = load %struct.run*, %struct.run** %4, align 8
  %68 = getelementptr inbounds %struct.run, %struct.run* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, -1
  store i64 %70, i64* %68, align 8
  store i8** null, i8*** %3, align 8
  br label %71

71:                                               ; preds = %66, %55
  %72 = load i8**, i8*** %3, align 8
  ret i8** %72
}

declare dso_local i64 @run_notes_expand_to_hold_more(%struct.run*) #1

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mandocd.c_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mandocd.c_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mparse = type { i32 }
%struct.roff_meta = type { i64 }

@STDIN_FILENO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"<unixfd>\00", align 1
@MACROSET_MDOC = common dso_local global i64 0, align 8
@MACROSET_MAN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mparse*, i32, i8*)* @process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process(%struct.mparse* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.mparse*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.roff_meta*, align 8
  store %struct.mparse* %0, %struct.mparse** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load %struct.mparse*, %struct.mparse** %4, align 8
  %9 = load i32, i32* @STDIN_FILENO, align 4
  %10 = call i32 @mparse_readfd(%struct.mparse* %8, i32 %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.mparse*, %struct.mparse** %4, align 8
  %12 = call %struct.roff_meta* @mparse_result(%struct.mparse* %11)
  store %struct.roff_meta* %12, %struct.roff_meta** %7, align 8
  %13 = load %struct.roff_meta*, %struct.roff_meta** %7, align 8
  %14 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @MACROSET_MDOC, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %3
  %19 = load i32, i32* %5, align 4
  switch i32 %19, label %28 [
    i32 130, label %20
    i32 128, label %20
    i32 129, label %24
  ]

20:                                               ; preds = %18, %18
  %21 = load i8*, i8** %6, align 8
  %22 = load %struct.roff_meta*, %struct.roff_meta** %7, align 8
  %23 = call i32 @terminal_mdoc(i8* %21, %struct.roff_meta* %22)
  br label %28

24:                                               ; preds = %18
  %25 = load i8*, i8** %6, align 8
  %26 = load %struct.roff_meta*, %struct.roff_meta** %7, align 8
  %27 = call i32 @html_mdoc(i8* %25, %struct.roff_meta* %26)
  br label %28

28:                                               ; preds = %18, %24, %20
  br label %29

29:                                               ; preds = %28, %3
  %30 = load %struct.roff_meta*, %struct.roff_meta** %7, align 8
  %31 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @MACROSET_MAN, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %46

35:                                               ; preds = %29
  %36 = load i32, i32* %5, align 4
  switch i32 %36, label %45 [
    i32 130, label %37
    i32 128, label %37
    i32 129, label %41
  ]

37:                                               ; preds = %35, %35
  %38 = load i8*, i8** %6, align 8
  %39 = load %struct.roff_meta*, %struct.roff_meta** %7, align 8
  %40 = call i32 @terminal_man(i8* %38, %struct.roff_meta* %39)
  br label %45

41:                                               ; preds = %35
  %42 = load i8*, i8** %6, align 8
  %43 = load %struct.roff_meta*, %struct.roff_meta** %7, align 8
  %44 = call i32 @html_man(i8* %42, %struct.roff_meta* %43)
  br label %45

45:                                               ; preds = %35, %41, %37
  br label %46

46:                                               ; preds = %45, %29
  ret void
}

declare dso_local i32 @mparse_readfd(%struct.mparse*, i32, i8*) #1

declare dso_local %struct.roff_meta* @mparse_result(%struct.mparse*) #1

declare dso_local i32 @terminal_mdoc(i8*, %struct.roff_meta*) #1

declare dso_local i32 @html_mdoc(i8*, %struct.roff_meta*) #1

declare dso_local i32 @terminal_man(i8*, %struct.roff_meta*) #1

declare dso_local i32 @html_man(i8*, %struct.roff_meta*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

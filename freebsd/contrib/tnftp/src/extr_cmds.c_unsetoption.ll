; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_cmds.c_unsetoption.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_cmds.c_unsetoption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i8*, i32 }

@code = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"usage: %s option\0A\00", align 1
@ttyout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"No such option `%s'.\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Unsetting `%s'.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unsetoption(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.option*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 -1, i32* @code, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4
  %10 = icmp ne i32 %9, 2
  br i1 %10, label %11, label %16

11:                                               ; preds = %8, %2
  %12 = load i8**, i8*** %4, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 0
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @UPRINTF(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %14)
  br label %39

16:                                               ; preds = %8
  %17 = load i8**, i8*** %4, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 1
  %19 = load i8*, i8** %18, align 8
  %20 = call %struct.option* @getoption(i8* %19)
  store %struct.option* %20, %struct.option** %5, align 8
  %21 = load %struct.option*, %struct.option** %5, align 8
  %22 = icmp eq %struct.option* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %16
  %24 = load i32, i32* @ttyout, align 4
  %25 = load i8**, i8*** %4, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 1
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @fprintf(i32 %24, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %27)
  br label %39

29:                                               ; preds = %16
  %30 = load %struct.option*, %struct.option** %5, align 8
  %31 = getelementptr inbounds %struct.option, %struct.option* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @FREEPTR(i32 %32)
  %34 = load i32, i32* @ttyout, align 4
  %35 = load %struct.option*, %struct.option** %5, align 8
  %36 = getelementptr inbounds %struct.option, %struct.option* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @fprintf(i32 %34, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %37)
  store i32 0, i32* @code, align 4
  br label %39

39:                                               ; preds = %29, %23, %11
  ret void
}

declare dso_local i32 @UPRINTF(i8*, i8*) #1

declare dso_local %struct.option* @getoption(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @FREEPTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

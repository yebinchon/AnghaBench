; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_cmds.c_set_option.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_cmds.c_set_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i8*, i8* }

@ttyout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"No such option `%s'.\0A\00", align 1
@verbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"Setting `%s' to `%s'.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_option(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.option*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = call %struct.option* @getoption(i8* %8)
  store %struct.option* %9, %struct.option** %7, align 8
  %10 = load %struct.option*, %struct.option** %7, align 8
  %11 = icmp eq %struct.option* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load i32, i32* @ttyout, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %13, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %14)
  br label %39

16:                                               ; preds = %3
  %17 = load %struct.option*, %struct.option** %7, align 8
  %18 = getelementptr inbounds %struct.option, %struct.option* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @FREEPTR(i8* %19)
  %21 = load i8*, i8** %5, align 8
  %22 = call i8* @ftp_strdup(i8* %21)
  %23 = load %struct.option*, %struct.option** %7, align 8
  %24 = getelementptr inbounds %struct.option, %struct.option* %23, i32 0, i32 0
  store i8* %22, i8** %24, align 8
  %25 = load i64, i64* @verbose, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %16
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %27
  %31 = load i32, i32* @ttyout, align 4
  %32 = load %struct.option*, %struct.option** %7, align 8
  %33 = getelementptr inbounds %struct.option, %struct.option* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = load %struct.option*, %struct.option** %7, align 8
  %36 = getelementptr inbounds %struct.option, %struct.option* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %31, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %34, i8* %37)
  br label %39

39:                                               ; preds = %12, %30, %27, %16
  ret void
}

declare dso_local %struct.option* @getoption(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i32 @FREEPTR(i8*) #1

declare dso_local i8* @ftp_strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

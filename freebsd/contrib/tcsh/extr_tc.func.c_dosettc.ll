; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tc.func.c_dosettc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tc.func.c_dosettc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.command = type { i32 }

@GotTermCaps = common dso_local global i32 0, align 4
@xfree = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dosettc(i32** %0, %struct.command* %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca %struct.command*, align 8
  %5 = alloca [2 x i8*], align 16
  store i32** %0, i32*** %3, align 8
  store %struct.command* %1, %struct.command** %4, align 8
  %6 = load %struct.command*, %struct.command** %4, align 8
  %7 = call i32 @USE(%struct.command* %6)
  %8 = load i32, i32* @GotTermCaps, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = call i32 (...) @GetTermCaps()
  br label %12

12:                                               ; preds = %10, %2
  %13 = load i32**, i32*** %3, align 8
  %14 = getelementptr inbounds i32*, i32** %13, i64 1
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @short2str(i32* %15)
  %17 = call i8* @strsave(i32 %16)
  %18 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  store i8* %17, i8** %18, align 16
  %19 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  %20 = load i8*, i8** %19, align 16
  %21 = load i32, i32* @xfree, align 4
  %22 = call i32 @cleanup_push(i8* %20, i32 %21)
  %23 = load i32**, i32*** %3, align 8
  %24 = getelementptr inbounds i32*, i32** %23, i64 2
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @short2str(i32* %25)
  %27 = call i8* @strsave(i32 %26)
  %28 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 1
  store i8* %27, i8** %28, align 8
  %29 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 1
  %30 = load i8*, i8** %29, align 8
  %31 = load i32, i32* @xfree, align 4
  %32 = call i32 @cleanup_push(i8* %30, i32 %31)
  %33 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  %34 = load i8*, i8** %33, align 16
  %35 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 1
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @SetTC(i8* %34, i8* %36)
  %38 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  %39 = load i8*, i8** %38, align 16
  %40 = call i32 @cleanup_until(i8* %39)
  ret void
}

declare dso_local i32 @USE(%struct.command*) #1

declare dso_local i32 @GetTermCaps(...) #1

declare dso_local i8* @strsave(i32) #1

declare dso_local i32 @short2str(i32*) #1

declare dso_local i32 @cleanup_push(i8*, i32) #1

declare dso_local i32 @SetTC(i8*, i8*) #1

declare dso_local i32 @cleanup_until(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

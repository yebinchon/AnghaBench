; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.func.c_doswitch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.func.c_doswitch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.command = type { i32 }

@ERR_SYNTAX = common dso_local global i32 0, align 4
@STRNULL = common dso_local global i8* null, align 8
@G_ERROR = common dso_local global i32 0, align 4
@xfree = common dso_local global i32 0, align 4
@noexec = common dso_local global i32 0, align 4
@TC_SWITCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @doswitch(i8** %0, %struct.command* %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca %struct.command*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8** %0, i8*** %3, align 8
  store %struct.command* %1, %struct.command** %4, align 8
  %7 = load %struct.command*, %struct.command** %4, align 8
  %8 = call i32 @USE(%struct.command* %7)
  %9 = load i8**, i8*** %3, align 8
  %10 = getelementptr inbounds i8*, i8** %9, i32 1
  store i8** %10, i8*** %3, align 8
  %11 = load i8**, i8*** %3, align 8
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load i8**, i8*** %3, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i32 1
  store i8** %16, i8*** %3, align 8
  %17 = load i8*, i8** %15, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 40
  br i1 %20, label %21, label %24

21:                                               ; preds = %14, %2
  %22 = load i32, i32* @ERR_SYNTAX, align 4
  %23 = call i32 @stderror(i32 %22)
  br label %24

24:                                               ; preds = %21, %14
  %25 = load i8**, i8*** %3, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 41
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i8*, i8** @STRNULL, align 8
  br label %36

32:                                               ; preds = %24
  %33 = load i8**, i8*** %3, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i32 1
  store i8** %34, i8*** %3, align 8
  %35 = load i8*, i8** %33, align 8
  br label %36

36:                                               ; preds = %32, %30
  %37 = phi i8* [ %31, %30 ], [ %35, %32 ]
  store i8* %37, i8** %5, align 8
  %38 = load i8**, i8*** %3, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i32 1
  store i8** %39, i8*** %3, align 8
  %40 = load i8*, i8** %38, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 41
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = load i8**, i8*** %3, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i32 -1
  store i8** %46, i8*** %3, align 8
  br label %47

47:                                               ; preds = %44, %36
  %48 = load i8**, i8*** %3, align 8
  %49 = load i8*, i8** %48, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i32, i32* @ERR_SYNTAX, align 4
  %53 = call i32 @stderror(i32 %52)
  br label %54

54:                                               ; preds = %51, %47
  %55 = load i8*, i8** %5, align 8
  %56 = load i32, i32* @G_ERROR, align 4
  %57 = call i8* @globone(i8* %55, i32 %56)
  store i8* %57, i8** %6, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = load i32, i32* @xfree, align 4
  %60 = call i32 @cleanup_push(i8* %58, i32 %59)
  %61 = load i32, i32* @noexec, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %54
  %64 = load i32, i32* @TC_SWITCH, align 4
  %65 = load i8*, i8** %6, align 8
  %66 = call i32 @search(i32 %64, i32 0, i8* %65)
  br label %67

67:                                               ; preds = %63, %54
  %68 = load i8*, i8** %6, align 8
  %69 = call i32 @cleanup_until(i8* %68)
  ret void
}

declare dso_local i32 @USE(%struct.command*) #1

declare dso_local i32 @stderror(i32) #1

declare dso_local i8* @globone(i8*, i32) #1

declare dso_local i32 @cleanup_push(i8*, i32) #1

declare dso_local i32 @search(i32, i32, i8*) #1

declare dso_local i32 @cleanup_until(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_top.c_gdb_readline.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_top.c_gdb_readline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gdb_stdout = common dso_local global i32 0, align 4
@instream = common dso_local global i64 0, align 8
@stdin = common dso_local global i64 0, align 8
@EOF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @gdb_readline(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %6, align 4
  store i32 80, i32* %7, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load i8*, i8** %3, align 8
  %12 = load i32, i32* @gdb_stdout, align 4
  %13 = call i32 @fputs_unfiltered(i8* %11, i32 %12)
  %14 = load i32, i32* @gdb_stdout, align 4
  %15 = call i32 @gdb_flush(i32 %14)
  br label %16

16:                                               ; preds = %10, %1
  %17 = load i32, i32* %7, align 4
  %18 = call i64 @xmalloc(i32 %17)
  %19 = inttoptr i64 %18 to i8*
  store i8* %19, i8** %5, align 8
  br label %20

20:                                               ; preds = %16, %63
  %21 = load i64, i64* @instream, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i64, i64* @instream, align 8
  br label %27

25:                                               ; preds = %20
  %26 = load i64, i64* @stdin, align 8
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i64 [ %24, %23 ], [ %26, %25 ]
  %29 = call i32 @fgetc(i64 %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @EOF, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load i32, i32* %6, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %64

37:                                               ; preds = %33
  %38 = load i8*, i8** %5, align 8
  %39 = call i32 @xfree(i8* %38)
  store i8* null, i8** %2, align 8
  br label %71

40:                                               ; preds = %27
  %41 = load i32, i32* %4, align 4
  %42 = icmp eq i32 %41, 10
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  br label %64

44:                                               ; preds = %40
  %45 = load i32, i32* %4, align 4
  %46 = trunc i32 %45 to i8
  %47 = load i8*, i8** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i8, i8* %47, i64 %50
  store i8 %46, i8* %51, align 1
  br label %52

52:                                               ; preds = %56, %44
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp sge i32 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %52
  %57 = load i32, i32* %7, align 4
  %58 = mul nsw i32 %57, 2
  store i32 %58, i32* %7, align 4
  %59 = load i8*, i8** %5, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i64 @xrealloc(i8* %59, i32 %60)
  %62 = inttoptr i64 %61 to i8*
  store i8* %62, i8** %5, align 8
  br label %52

63:                                               ; preds = %52
  br label %20

64:                                               ; preds = %43, %36
  %65 = load i8*, i8** %5, align 8
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %6, align 4
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i8, i8* %65, i64 %68
  store i8 0, i8* %69, align 1
  %70 = load i8*, i8** %5, align 8
  store i8* %70, i8** %2, align 8
  br label %71

71:                                               ; preds = %64, %37
  %72 = load i8*, i8** %2, align 8
  ret i8* %72
}

declare dso_local i32 @fputs_unfiltered(i8*, i32) #1

declare dso_local i32 @gdb_flush(i32) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @fgetc(i64) #1

declare dso_local i32 @xfree(i8*) #1

declare dso_local i64 @xrealloc(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

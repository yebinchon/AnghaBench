; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symtab.c_filename_seen.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symtab.c_filename_seen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@filename_seen.tab = internal global i8** null, align 8
@filename_seen.tab_alloc_size = internal global i32 29, align 4
@filename_seen.tab_cur_size = internal global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32*)* @filename_seen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filename_seen(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8**, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load i32*, i32** %7, align 8
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %3
  %13 = load i8**, i8*** @filename_seen.tab, align 8
  %14 = icmp eq i8** %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %12
  %16 = load i32, i32* @filename_seen.tab_alloc_size, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 8
  %19 = trunc i64 %18 to i32
  %20 = call i64 @xmalloc(i32 %19)
  %21 = inttoptr i64 %20 to i8**
  store i8** %21, i8*** @filename_seen.tab, align 8
  br label %22

22:                                               ; preds = %15, %12
  store i32 0, i32* @filename_seen.tab_cur_size, align 4
  br label %23

23:                                               ; preds = %22, %3
  %24 = load i8**, i8*** @filename_seen.tab, align 8
  store i8** %24, i8*** %8, align 8
  br label %25

25:                                               ; preds = %40, %23
  %26 = load i8**, i8*** %8, align 8
  %27 = load i8**, i8*** @filename_seen.tab, align 8
  %28 = load i32, i32* @filename_seen.tab_cur_size, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8*, i8** %27, i64 %29
  %31 = icmp ult i8** %26, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %25
  %33 = load i8**, i8*** %8, align 8
  %34 = load i8*, i8** %33, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = call i64 @strcmp(i8* %34, i8* %35)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i32 1, i32* %4, align 4
  br label %69

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %39
  %41 = load i8**, i8*** %8, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i32 1
  store i8** %42, i8*** %8, align 8
  br label %25

43:                                               ; preds = %25
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %68

46:                                               ; preds = %43
  %47 = load i32, i32* @filename_seen.tab_cur_size, align 4
  %48 = load i32, i32* @filename_seen.tab_alloc_size, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %46
  %51 = load i32, i32* @filename_seen.tab_alloc_size, align 4
  %52 = mul nsw i32 %51, 2
  store i32 %52, i32* @filename_seen.tab_alloc_size, align 4
  %53 = load i8**, i8*** @filename_seen.tab, align 8
  %54 = bitcast i8** %53 to i8*
  %55 = load i32, i32* @filename_seen.tab_alloc_size, align 4
  %56 = sext i32 %55 to i64
  %57 = mul i64 %56, 8
  %58 = trunc i64 %57 to i32
  %59 = call i64 @xrealloc(i8* %54, i32 %58)
  %60 = inttoptr i64 %59 to i8**
  store i8** %60, i8*** @filename_seen.tab, align 8
  br label %61

61:                                               ; preds = %50, %46
  %62 = load i8*, i8** %5, align 8
  %63 = load i8**, i8*** @filename_seen.tab, align 8
  %64 = load i32, i32* @filename_seen.tab_cur_size, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* @filename_seen.tab_cur_size, align 4
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds i8*, i8** %63, i64 %66
  store i8* %62, i8** %67, align 8
  br label %68

68:                                               ; preds = %61, %43
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %68, %38
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @xrealloc(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

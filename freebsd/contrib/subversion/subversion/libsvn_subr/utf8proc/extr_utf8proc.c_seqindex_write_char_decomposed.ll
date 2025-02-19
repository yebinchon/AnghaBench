; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/utf8proc/extr_utf8proc.c_seqindex_write_char_decomposed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/utf8proc/extr_utf8proc.c_seqindex_write_char_decomposed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@utf8proc_sequences = common dso_local global i32* null, align 8
@UTF8PROC_ERROR_OVERFLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32, i32, i32*)* @seqindex_write_char_decomposed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seqindex_write_char_decomposed(i32 %0, i32* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %12, align 4
  %16 = load i32*, i32** @utf8proc_sequences, align 8
  %17 = load i32, i32* %7, align 4
  %18 = and i32 %17, 8191
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %16, i64 %19
  store i32* %20, i32** %13, align 8
  %21 = load i32, i32* %7, align 4
  %22 = ashr i32 %21, 13
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %14, align 4
  %24 = icmp sge i32 %23, 7
  br i1 %24, label %25, label %30

25:                                               ; preds = %5
  %26 = load i32*, i32** %13, align 8
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %14, align 4
  %28 = load i32*, i32** %13, align 8
  %29 = getelementptr inbounds i32, i32* %28, i32 1
  store i32* %29, i32** %13, align 8
  br label %30

30:                                               ; preds = %25, %5
  br label %31

31:                                               ; preds = %61, %30
  %32 = load i32, i32* %14, align 4
  %33 = icmp sge i32 %32, 0
  br i1 %33, label %34, label %66

34:                                               ; preds = %31
  %35 = call i32 @seqindex_decode_entry(i32** %13)
  store i32 %35, i32* %15, align 4
  %36 = load i32, i32* %15, align 4
  %37 = load i32*, i32** %8, align 8
  %38 = load i32, i32* %12, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %34
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %12, align 4
  %47 = sub nsw i32 %45, %46
  br label %49

48:                                               ; preds = %34
  br label %49

49:                                               ; preds = %48, %44
  %50 = phi i32 [ %47, %44 ], [ 0, %48 ]
  %51 = load i32, i32* %10, align 4
  %52 = load i32*, i32** %11, align 8
  %53 = call i32 @utf8proc_decompose_char(i32 %36, i32* %40, i32 %50, i32 %51, i32* %52)
  %54 = load i32, i32* %12, align 4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %49
  %59 = load i32, i32* @UTF8PROC_ERROR_OVERFLOW, align 4
  store i32 %59, i32* %6, align 4
  br label %68

60:                                               ; preds = %49
  br label %61

61:                                               ; preds = %60
  %62 = load i32*, i32** %13, align 8
  %63 = getelementptr inbounds i32, i32* %62, i32 1
  store i32* %63, i32** %13, align 8
  %64 = load i32, i32* %14, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %14, align 4
  br label %31

66:                                               ; preds = %31
  %67 = load i32, i32* %12, align 4
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %66, %58
  %69 = load i32, i32* %6, align 4
  ret i32 %69
}

declare dso_local i32 @seqindex_decode_entry(i32**) #1

declare dso_local i32 @utf8proc_decompose_char(i32, i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

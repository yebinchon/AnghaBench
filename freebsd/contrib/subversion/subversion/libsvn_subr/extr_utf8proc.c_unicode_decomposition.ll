; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_utf8proc.c_unicode_decomposition.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_utf8proc.c_unicode_decomposition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32* }

@SVN_UTF__UNKNOWN_LENGTH = common dso_local global i64 0, align 8
@UTF8PROC_NULLTERM = common dso_local global i32 0, align 4
@UTF8PROC_DECOMPOSE = common dso_local global i32 0, align 4
@UTF8PROC_STABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i64, %struct.TYPE_4__*)* @unicode_decomposition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unicode_decomposition(i32 %0, i8* %1, i64 %2, %struct.TYPE_4__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %8, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @SVN_UTF__UNKNOWN_LENGTH, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* @UTF8PROC_NULLTERM, align 4
  br label %19

18:                                               ; preds = %4
  br label %19

19:                                               ; preds = %18, %16
  %20 = phi i32 [ %17, %16 ], [ 0, %18 ]
  store i32 %20, i32* %9, align 4
  br label %21

21:                                               ; preds = %51, %19
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %10, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = udiv i64 %28, 4
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %11, align 4
  %31 = load i8*, i8** %6, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* @UTF8PROC_DECOMPOSE, align 4
  %36 = load i32, i32* @UTF8PROC_STABLE, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* %5, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* %9, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @utf8proc_decompose(i8* %31, i64 %32, i32* %33, i32 %34, i32 %41)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %21
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp sle i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %45, %21
  %50 = load i32, i32* %12, align 4
  ret i32 %50

51:                                               ; preds = %45
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = mul i64 %54, 4
  %56 = trunc i64 %55 to i32
  %57 = call i32 @svn_membuf__ensure(%struct.TYPE_4__* %52, i32 %56)
  br label %21
}

declare dso_local i32 @utf8proc_decompose(i8*, i64, i32*, i32, i32) #1

declare dso_local i32 @svn_membuf__ensure(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

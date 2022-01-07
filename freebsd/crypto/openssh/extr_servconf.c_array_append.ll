; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_servconf.c_array_append.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_servconf.c_array_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"%s line %d: Too many %s entries\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8*, i8***, i32*, i8*)* @array_append to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @array_append(i8* %0, i32 %1, i8* %2, i8*** %3, i32* %4, i8* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8***, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8*** %3, i8**** %10, align 8
  store i32* %4, i32** %11, align 8
  store i8* %5, i8** %12, align 8
  %13 = load i32*, i32** %11, align 8
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @INT_MAX, align 4
  %16 = icmp sge i32 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %6
  %18 = load i8*, i8** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load i8*, i8** %9, align 8
  %21 = call i32 @fatal(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %18, i32 %19, i8* %20)
  br label %22

22:                                               ; preds = %17, %6
  %23 = load i8***, i8**** %10, align 8
  %24 = load i8**, i8*** %23, align 8
  %25 = load i32*, i32** %11, align 8
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %11, align 8
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  %30 = call i8** @xrecallocarray(i8** %24, i32 %26, i32 %29, i32 8)
  %31 = load i8***, i8**** %10, align 8
  store i8** %30, i8*** %31, align 8
  %32 = load i8*, i8** %12, align 8
  %33 = call i8* @xstrdup(i8* %32)
  %34 = load i8***, i8**** %10, align 8
  %35 = load i8**, i8*** %34, align 8
  %36 = load i32*, i32** %11, align 8
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %35, i64 %38
  store i8* %33, i8** %39, align 8
  %40 = load i32*, i32** %11, align 8
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  ret void
}

declare dso_local i32 @fatal(i8*, i8*, i32, i8*) #1

declare dso_local i8** @xrecallocarray(i8**, i32, i32, i32) #1

declare dso_local i8* @xstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

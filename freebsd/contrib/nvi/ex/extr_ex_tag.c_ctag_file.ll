; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_tag.c_ctag_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_tag.c_ctag_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }
%struct.stat = type { i32 }

@M_SYSERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_3__*, i8*, i8**, i64*)* @ctag_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctag_file(i32* %0, %struct.TYPE_3__* %1, i8* %2, i8** %3, i64* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.stat, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  store i64* %4, i64** %10, align 8
  %14 = load i64*, i64** %10, align 8
  store i64 0, i64* %14, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 47
  br i1 %19, label %20, label %59

20:                                               ; preds = %5
  %21 = load i8*, i8** %8, align 8
  %22 = call i64 @stat(i8* %21, %struct.stat* %11)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %59

24:                                               ; preds = %20
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i8* @strrchr(i8* %27, i8 signext 47)
  store i8* %28, i8** %12, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %59

30:                                               ; preds = %24
  %31 = load i8*, i8** %12, align 8
  store i8 0, i8* %31, align 1
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = call i8* @join(i8* %34, i8* %35)
  store i8* %36, i8** %13, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %30
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* @M_SYSERR, align 4
  %41 = call i32 @msgq(i32* %39, i32 %40, i32* null)
  br label %59

42:                                               ; preds = %30
  %43 = load i8*, i8** %13, align 8
  %44 = call i64 @stat(i8* %43, %struct.stat* %11)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %42
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = load i8**, i8*** %9, align 8
  store i8* %49, i8** %50, align 8
  %51 = load i8**, i8*** %9, align 8
  %52 = load i8*, i8** %51, align 8
  %53 = call i64 @strlen(i8* %52)
  %54 = load i64*, i64** %10, align 8
  store i64 %53, i64* %54, align 8
  br label %55

55:                                               ; preds = %46, %42
  %56 = load i8*, i8** %13, align 8
  %57 = call i32 @free(i8* %56)
  %58 = load i8*, i8** %12, align 8
  store i8 47, i8* %58, align 1
  br label %59

59:                                               ; preds = %38, %55, %24, %20, %5
  ret void
}

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i8* @join(i8*, i8*) #1

declare dso_local i32 @msgq(i32*, i32, i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

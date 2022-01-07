; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.dir.c_dgoto.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.dir.c_dgoto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@dcwd = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @dgoto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @dgoto(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = call i64 @ABSOLUTEP(i8* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %59, label %11

11:                                               ; preds = %1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dcwd, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = call i64 @Strlen(i8* %14)
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp eq i64 %16, 1
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  store i64 0, i64* %7, align 8
  br label %19

19:                                               ; preds = %18, %11
  %20 = load i64, i64* %7, align 8
  %21 = load i8*, i8** %2, align 8
  %22 = call i64 @Strlen(i8* %21)
  %23 = add i64 %20, %22
  %24 = add i64 %23, 2
  %25 = mul i64 %24, 1
  %26 = call i8* @xmalloc(i64 %25)
  store i8* %26, i8** %3, align 8
  %27 = load i8*, i8** %3, align 8
  store i8* %27, i8** %5, align 8
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dcwd, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %6, align 8
  br label %31

31:                                               ; preds = %39, %19
  %32 = load i8*, i8** %6, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %6, align 8
  %34 = load i8, i8* %32, align 1
  %35 = load i8*, i8** %5, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %5, align 8
  store i8 %34, i8* %35, align 1
  %37 = sext i8 %34 to i32
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %31

40:                                               ; preds = %31
  %41 = load i64, i64* %7, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i8*, i8** %5, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 -1
  store i8 47, i8* %45, align 1
  br label %49

46:                                               ; preds = %40
  %47 = load i8*, i8** %5, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 -1
  store i8* %48, i8** %5, align 8
  br label %49

49:                                               ; preds = %46, %43
  %50 = load i8*, i8** %5, align 8
  %51 = load i8*, i8** %2, align 8
  %52 = call i32 @Strcpy(i8* %50, i8* %51)
  %53 = load i8*, i8** %2, align 8
  %54 = call i32 @xfree(i8* %53)
  %55 = load i8*, i8** %3, align 8
  store i8* %55, i8** %2, align 8
  %56 = load i64, i64* %7, align 8
  %57 = load i8*, i8** %3, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 %56
  store i8* %58, i8** %3, align 8
  br label %61

59:                                               ; preds = %1
  %60 = load i8*, i8** %2, align 8
  store i8* %60, i8** %3, align 8
  br label %61

61:                                               ; preds = %59, %49
  %62 = load i8*, i8** %2, align 8
  %63 = call i32 @cleanup_push(i8* %62, i32 (i8*)* @xfree)
  %64 = load i8*, i8** %2, align 8
  %65 = load i8*, i8** %3, align 8
  %66 = call i8* @dcanon(i8* %64, i8* %65)
  store i8* %66, i8** %4, align 8
  %67 = load i8*, i8** %2, align 8
  %68 = call i32 @cleanup_ignore(i8* %67)
  %69 = load i8*, i8** %2, align 8
  %70 = call i32 @cleanup_until(i8* %69)
  %71 = load i8*, i8** %4, align 8
  ret i8* %71
}

declare dso_local i64 @ABSOLUTEP(i8*) #1

declare dso_local i64 @Strlen(i8*) #1

declare dso_local i8* @xmalloc(i64) #1

declare dso_local i32 @Strcpy(i8*, i8*) #1

declare dso_local i32 @xfree(i8*) #1

declare dso_local i32 @cleanup_push(i8*, i32 (i8*)*) #1

declare dso_local i8* @dcanon(i8*, i8*) #1

declare dso_local i32 @cleanup_ignore(i8*) #1

declare dso_local i32 @cleanup_until(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

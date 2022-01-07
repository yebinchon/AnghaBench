; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/compat/extr_ctime_r.c_ctime_r.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/compat/extr_ctime_r.c_ctime_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ctime_r_init = common dso_local global i32 0, align 4
@ctime_lock = common dso_local global i32 0, align 4
@ctime_r_cleanup = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ctime_r(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i32, i32* @ctime_r_init, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  store i32 1, i32* @ctime_r_init, align 4
  %9 = call i32 @lock_basic_init(i32* @ctime_lock)
  %10 = call i32 @atexit(i32* @ctime_r_cleanup)
  br label %11

11:                                               ; preds = %8, %2
  %12 = call i32 @lock_basic_lock(i32* @ctime_lock)
  %13 = load i32*, i32** %3, align 8
  %14 = call i8* @ctime(i32* %13)
  store i8* %14, i8** %5, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %43

17:                                               ; preds = %11
  %18 = load i8*, i8** %5, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %43

20:                                               ; preds = %17
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @strlen(i8* %21)
  %23 = icmp sgt i32 %22, 10
  br i1 %23, label %24, label %39

24:                                               ; preds = %20
  %25 = load i8*, i8** %5, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 7
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 32
  br i1 %29, label %30, label %39

30:                                               ; preds = %24
  %31 = load i8*, i8** %5, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 48
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i8*, i8** %5, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 8
  store i8 32, i8* %38, align 1
  br label %39

39:                                               ; preds = %36, %30, %24, %20
  %40 = load i8*, i8** %4, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = call i32 @strcpy(i8* %40, i8* %41)
  br label %43

43:                                               ; preds = %39, %17, %11
  %44 = call i32 @lock_basic_unlock(i32* @ctime_lock)
  %45 = load i8*, i8** %5, align 8
  ret i8* %45
}

declare dso_local i32 @lock_basic_init(i32*) #1

declare dso_local i32 @atexit(i32*) #1

declare dso_local i32 @lock_basic_lock(i32*) #1

declare dso_local i8* @ctime(i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @lock_basic_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

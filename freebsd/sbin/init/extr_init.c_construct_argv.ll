; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/init/extr_init.c_construct_argv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/init/extr_init.c_construct_argv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** (i8*)* @construct_argv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8** @construct_argv(i8* %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = call i32 @strlen(i8* %6)
  %8 = add nsw i32 %7, 1
  %9 = sdiv i32 %8, 2
  %10 = add nsw i32 %9, 1
  %11 = sext i32 %10 to i64
  %12 = mul i64 %11, 8
  %13 = trunc i64 %12 to i32
  %14 = call i64 @malloc(i32 %13)
  %15 = inttoptr i64 %14 to i8**
  store i8** %15, i8*** %5, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = call i8* @strk(i8* %16)
  %18 = load i8**, i8*** %5, align 8
  %19 = load i32, i32* %4, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %4, align 4
  %21 = sext i32 %19 to i64
  %22 = getelementptr inbounds i8*, i8** %18, i64 %21
  store i8* %17, i8** %22, align 8
  %23 = icmp eq i8* %17, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load i8**, i8*** %5, align 8
  %26 = call i32 @free(i8** %25)
  store i8** null, i8*** %2, align 8
  br label %39

27:                                               ; preds = %1
  br label %28

28:                                               ; preds = %36, %27
  %29 = call i8* @strk(i8* null)
  %30 = load i8**, i8*** %5, align 8
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds i8*, i8** %30, i64 %33
  store i8* %29, i8** %34, align 8
  %35 = icmp ne i8* %29, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %28

37:                                               ; preds = %28
  %38 = load i8**, i8*** %5, align 8
  store i8** %38, i8*** %2, align 8
  br label %39

39:                                               ; preds = %37, %24
  %40 = load i8**, i8*** %2, align 8
  ret i8** %40
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strk(i8*) #1

declare dso_local i32 @free(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libjail/extr_jail.c_jailparam_import_enum.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libjail/extr_jail.c_jailparam_import_enum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32, i8*, i64, i32*)* @jailparam_import_enum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jailparam_import_enum(i8** %0, i32 %1, i8* %2, i64 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i8** %0, i8*** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %13, align 4
  br label %14

14:                                               ; preds = %41, %5
  %15 = load i32, i32* %13, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %44

18:                                               ; preds = %14
  %19 = load i64, i64* %10, align 8
  %20 = load i8**, i8*** %7, align 8
  %21 = load i32, i32* %13, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8*, i8** %20, i64 %22
  %24 = load i8*, i8** %23, align 8
  %25 = call i64 @strlen(i8* %24)
  %26 = icmp eq i64 %19, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %18
  %28 = load i8*, i8** %9, align 8
  %29 = load i8**, i8*** %7, align 8
  %30 = load i32, i32* %13, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8*, i8** %29, i64 %31
  %33 = load i8*, i8** %32, align 8
  %34 = load i64, i64* %10, align 8
  %35 = call i32 @strncasecmp(i8* %28, i8* %33, i64 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %27
  %38 = load i32, i32* %13, align 4
  %39 = load i32*, i32** %11, align 8
  store i32 %38, i32* %39, align 4
  store i32 1, i32* %6, align 4
  br label %54

40:                                               ; preds = %27, %18
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %13, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %13, align 4
  br label %14

44:                                               ; preds = %14
  %45 = load i8*, i8** %9, align 8
  %46 = call i32 @strtol(i8* %45, i8** %12, i32 10)
  %47 = load i32*, i32** %11, align 8
  store i32 %46, i32* %47, align 4
  %48 = load i8*, i8** %12, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = load i64, i64* %10, align 8
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  %52 = icmp eq i8* %48, %51
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %44, %37
  %55 = load i32, i32* %6, align 4
  ret i32 %55
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strncasecmp(i8*, i8*, i64) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_load.c_add_env_val.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_load.c_add_env_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUL = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*)* @add_env_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_env_val(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %5, align 8
  store i8* %10, i8** %8, align 8
  br label %11

11:                                               ; preds = %20, %3
  %12 = load i8*, i8** %7, align 8
  %13 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %13, i8** %7, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = call i32 @IS_VALUE_NAME_CHAR(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %11
  br label %25

20:                                               ; preds = %11
  %21 = load i32, i32* %9, align 4
  %22 = trunc i32 %21 to i8
  %23 = load i8*, i8** %8, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %8, align 8
  store i8 %22, i8* %23, align 1
  br label %11

25:                                               ; preds = %19
  %26 = load i8*, i8** %8, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = icmp eq i8* %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %53

30:                                               ; preds = %25
  %31 = load i8, i8* @NUL, align 1
  %32 = load i8*, i8** %8, align 8
  store i8 %31, i8* %32, align 1
  %33 = load i8*, i8** %5, align 8
  %34 = call i8* @getenv(i8* %33)
  store i8* %34, i8** %8, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %53

38:                                               ; preds = %30
  %39 = load i8*, i8** %8, align 8
  %40 = call i32 @strlen(i8* %39)
  %41 = add i32 %40, 1
  %42 = load i8*, i8** %7, align 8
  %43 = call i32 @strlen(i8* %42)
  %44 = add i32 %41, %43
  %45 = load i32, i32* %6, align 4
  %46 = icmp uge i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %53

48:                                               ; preds = %38
  %49 = load i8*, i8** %5, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @sprintf(i8* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %50, i8* %51)
  store i32 1, i32* %4, align 4
  br label %53

53:                                               ; preds = %48, %47, %37, %29
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @IS_VALUE_NAME_CHAR(i32) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

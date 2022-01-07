; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_props.c_force_prop_option_message.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_props.c_force_prop_option_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [40 x i8] c"Use '--force' to set the '%s' property.\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Use '--force' to edit the '%s' property.\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Use '--force' to use the '%s' property'.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i8*, i32*)* @force_prop_option_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @force_prop_option_message(i32 %0, i8* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %20 [
    i32 129, label %9
    i32 130, label %14
    i32 128, label %19
  ]

9:                                                ; preds = %3
  %10 = load i32*, i32** %7, align 8
  %11 = call i32 @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %12 = load i8*, i8** %6, align 8
  %13 = call i8* @apr_psprintf(i32* %10, i32 %11, i8* %12)
  store i8* %13, i8** %4, align 8
  br label %25

14:                                               ; preds = %3
  %15 = load i32*, i32** %7, align 8
  %16 = call i32 @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i8*, i8** %6, align 8
  %18 = call i8* @apr_psprintf(i32* %15, i32 %16, i8* %17)
  store i8* %18, i8** %4, align 8
  br label %25

19:                                               ; preds = %3
  br label %20

20:                                               ; preds = %3, %19
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %23 = load i8*, i8** %6, align 8
  %24 = call i8* @apr_psprintf(i32* %21, i32 %22, i8* %23)
  store i8* %24, i8** %4, align 8
  br label %25

25:                                               ; preds = %20, %14, %9
  %26 = load i8*, i8** %4, align 8
  ret i8* %26
}

declare dso_local i8* @apr_psprintf(i32*, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

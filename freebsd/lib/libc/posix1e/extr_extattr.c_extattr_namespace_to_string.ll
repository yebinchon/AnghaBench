; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/posix1e/extr_extattr.c_extattr_namespace_to_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/posix1e/extr_extattr.c_extattr_namespace_to_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXTATTR_NAMESPACE_USER_STRING = common dso_local global i32 0, align 4
@EXTATTR_NAMESPACE_SYSTEM_STRING = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @extattr_namespace_to_string(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %23 [
    i32 128, label %7
    i32 129, label %15
  ]

7:                                                ; preds = %2
  %8 = load i8**, i8*** %5, align 8
  %9 = icmp ne i8** %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = load i32, i32* @EXTATTR_NAMESPACE_USER_STRING, align 4
  %12 = call i8* @strdup(i32 %11)
  %13 = load i8**, i8*** %5, align 8
  store i8* %12, i8** %13, align 8
  br label %14

14:                                               ; preds = %10, %7
  store i32 0, i32* %3, align 4
  br label %25

15:                                               ; preds = %2
  %16 = load i8**, i8*** %5, align 8
  %17 = icmp ne i8** %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load i32, i32* @EXTATTR_NAMESPACE_SYSTEM_STRING, align 4
  %20 = call i8* @strdup(i32 %19)
  %21 = load i8**, i8*** %5, align 8
  store i8* %20, i8** %21, align 8
  br label %22

22:                                               ; preds = %18, %15
  store i32 0, i32* %3, align 4
  br label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %25

25:                                               ; preds = %23, %22, %14
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i8* @strdup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/yp/extr_yplib.c__yp_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/yp/extr_yplib.c__yp_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_yp_domain = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_yp_check(i8** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  store i8** %0, i8*** %3, align 8
  %5 = call i32 (...) @YPLOCK()
  %6 = load i8*, i8** @_yp_domain, align 8
  %7 = getelementptr inbounds i8, i8* %6, i64 0
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = call i64 @yp_get_default_domain_locked(i8** %4)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = call i32 (...) @YPUNLOCK()
  store i32 0, i32* %2, align 4
  br label %33

16:                                               ; preds = %11
  br label %17

17:                                               ; preds = %16, %1
  %18 = load i8**, i8*** %3, align 8
  %19 = icmp ne i8** %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i8*, i8** @_yp_domain, align 8
  %22 = load i8**, i8*** %3, align 8
  store i8* %21, i8** %22, align 8
  br label %23

23:                                               ; preds = %20, %17
  %24 = load i8*, i8** @_yp_domain, align 8
  %25 = call i64 @yp_bind_locked(i8* %24)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i8*, i8** @_yp_domain, align 8
  %29 = call i32 @yp_unbind_locked(i8* %28)
  %30 = call i32 (...) @YPUNLOCK()
  store i32 1, i32* %2, align 4
  br label %33

31:                                               ; preds = %23
  %32 = call i32 (...) @YPUNLOCK()
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %31, %27, %14
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @YPLOCK(...) #1

declare dso_local i64 @yp_get_default_domain_locked(i8**) #1

declare dso_local i32 @YPUNLOCK(...) #1

declare dso_local i64 @yp_bind_locked(i8*) #1

declare dso_local i32 @yp_unbind_locked(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

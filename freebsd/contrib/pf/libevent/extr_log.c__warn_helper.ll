; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/pf/libevent/extr_log.c__warn_helper.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/pf/libevent/extr_log.c__warn_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*, i32)* @_warn_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_warn_helper(i32 %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [1024 x i8], align 16
  %10 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i8*, i8** %7, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %4
  %14 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %15 = load i8*, i8** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @event_vsnprintf(i8* %14, i32 1024, i8* %15, i32 %16)
  br label %20

18:                                               ; preds = %4
  %19 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  store i8 0, i8* %19, align 16
  br label %20

20:                                               ; preds = %18, %13
  %21 = load i32, i32* %6, align 4
  %22 = icmp sge i32 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %20
  %24 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %25 = call i64 @strlen(i8* %24)
  store i64 %25, i64* %10, align 8
  %26 = load i64, i64* %10, align 8
  %27 = icmp ult i64 %26, 1021
  br i1 %27, label %28, label %38

28:                                               ; preds = %23
  %29 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %30 = load i64, i64* %10, align 8
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  %32 = load i64, i64* %10, align 8
  %33 = sub i64 1024, %32
  %34 = trunc i64 %33 to i32
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @strerror(i32 %35)
  %37 = call i32 @event_snprintf(i8* %31, i32 %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %28, %23
  br label %39

39:                                               ; preds = %38, %20
  %40 = load i32, i32* %5, align 4
  %41 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %42 = call i32 @event_log(i32 %40, i8* %41)
  ret void
}

declare dso_local i32 @event_vsnprintf(i8*, i32, i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @event_snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @event_log(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

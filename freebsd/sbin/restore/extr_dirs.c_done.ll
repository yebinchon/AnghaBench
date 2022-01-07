; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/restore/extr_dirs.c_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/restore/extr_dirs.c_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@modefile = common dso_local global i8* null, align 8
@dirfile = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @done(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = call i32 (...) @closemt()
  %4 = load i8*, i8** @modefile, align 8
  %5 = getelementptr inbounds i8, i8* %4, i64 0
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp ne i32 %7, 35
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load i8*, i8** @modefile, align 8
  %11 = call i32 @truncate(i8* %10, i32 0)
  %12 = load i8*, i8** @modefile, align 8
  %13 = call i32 @unlink(i8* %12)
  br label %14

14:                                               ; preds = %9, %1
  %15 = load i8*, i8** @dirfile, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 35
  br i1 %19, label %20, label %25

20:                                               ; preds = %14
  %21 = load i8*, i8** @dirfile, align 8
  %22 = call i32 @truncate(i8* %21, i32 0)
  %23 = load i8*, i8** @dirfile, align 8
  %24 = call i32 @unlink(i8* %23)
  br label %25

25:                                               ; preds = %20, %14
  %26 = load i32, i32* %2, align 4
  %27 = call i32 @exit(i32 %26) #3
  unreachable
}

declare dso_local i32 @closemt(...) #1

declare dso_local i32 @truncate(i8*, i32) #1

declare dso_local i32 @unlink(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

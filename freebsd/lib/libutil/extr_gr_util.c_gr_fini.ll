; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libutil/extr_gr_util.c_gr_fini.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libutil/extr_gr_util.c_gr_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@initialized = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4
@tempname = common dso_local global i8* null, align 8
@lockfd = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gr_fini() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @initialized, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  br label %23

5:                                                ; preds = %0
  store i64 0, i64* @initialized, align 8
  %6 = load i32, i32* @errno, align 4
  store i32 %6, i32* %1, align 4
  %7 = load i8*, i8** @tempname, align 8
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %5
  %12 = load i8*, i8** @tempname, align 8
  %13 = call i32 @unlink(i8* %12)
  %14 = load i8*, i8** @tempname, align 8
  store i8 0, i8* %14, align 1
  br label %15

15:                                               ; preds = %11, %5
  %16 = load i32, i32* @lockfd, align 4
  %17 = icmp ne i32 %16, -1
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32, i32* @lockfd, align 4
  %20 = call i32 @close(i32 %19)
  br label %21

21:                                               ; preds = %18, %15
  %22 = load i32, i32* %1, align 4
  store i32 %22, i32* @errno, align 4
  br label %23

23:                                               ; preds = %21, %4
  ret void
}

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

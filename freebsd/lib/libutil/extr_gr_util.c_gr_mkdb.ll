; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libutil/extr_gr_util.c_gr_mkdb.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libutil/extr_gr_util.c_gr_mkdb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tempname = common dso_local global i32 0, align 4
@group_file = common dso_local global i32 0, align 4
@group_dir = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@O_DIRECTORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gr_mkdb() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @tempname, align 4
  %4 = call i64 @chmod(i32 %3, i32 420)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %31

7:                                                ; preds = %0
  %8 = load i32, i32* @tempname, align 4
  %9 = load i32, i32* @group_file, align 4
  %10 = call i64 @rename(i32 %8, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  store i32 -1, i32* %1, align 4
  br label %31

13:                                               ; preds = %7
  %14 = load i32, i32* @group_dir, align 4
  %15 = load i32, i32* @O_RDONLY, align 4
  %16 = load i32, i32* @O_DIRECTORY, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @open(i32 %14, i32 %17)
  store i32 %18, i32* %2, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  store i32 -1, i32* %1, align 4
  br label %31

21:                                               ; preds = %13
  %22 = load i32, i32* %2, align 4
  %23 = call i64 @fsync(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* %2, align 4
  %27 = call i32 @close(i32 %26)
  store i32 -1, i32* %1, align 4
  br label %31

28:                                               ; preds = %21
  %29 = load i32, i32* %2, align 4
  %30 = call i32 @close(i32 %29)
  store i32 0, i32* %1, align 4
  br label %31

31:                                               ; preds = %28, %25, %20, %12, %6
  %32 = load i32, i32* %1, align 4
  ret i32 %32
}

declare dso_local i64 @chmod(i32, i32) #1

declare dso_local i64 @rename(i32, i32) #1

declare dso_local i32 @open(i32, i32) #1

declare dso_local i64 @fsync(i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

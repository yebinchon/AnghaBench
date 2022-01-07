; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsdb/extr_fsdbutil.c_checkactivedir.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsdb/extr_fsdbutil.c_checkactivedir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@curinode = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"no current inode\0A\00", align 1
@di_mode = common dso_local global i32 0, align 4
@IFMT = common dso_local global i32 0, align 4
@IFDIR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"inode %ju not a directory\00", align 1
@curinum = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @checkactivedir() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @curinode, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %0
  %5 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %19

6:                                                ; preds = %0
  %7 = load i32, i32* @curinode, align 4
  %8 = load i32, i32* @di_mode, align 4
  %9 = call i32 @DIP(i32 %7, i32 %8)
  %10 = load i32, i32* @IFMT, align 4
  %11 = and i32 %9, %10
  %12 = load i32, i32* @IFDIR, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %6
  %15 = load i64, i64* @curinum, align 8
  %16 = trunc i64 %15 to i32
  %17 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  store i32 0, i32* %1, align 4
  br label %19

18:                                               ; preds = %6
  store i32 1, i32* %1, align 4
  br label %19

19:                                               ; preds = %18, %14, %4
  %20 = load i32, i32* %1, align 4
  ret i32 %20
}

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i32 @DIP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

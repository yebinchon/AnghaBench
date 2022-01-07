; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_fsutil.c_ftypeok.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_fsutil.c_ftypeok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.dinode = type { i32 }

@di_mode = common dso_local global i32 0, align 4
@IFMT = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"bad file type 0%o\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ftypeok(%union.dinode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.dinode*, align 8
  store %union.dinode* %0, %union.dinode** %3, align 8
  %4 = load %union.dinode*, %union.dinode** %3, align 8
  %5 = load i32, i32* @di_mode, align 4
  %6 = call i32 @DIP(%union.dinode* %4, i32 %5)
  %7 = load i32, i32* @IFMT, align 4
  %8 = and i32 %6, %7
  switch i32 %8, label %10 [
    i32 132, label %9
    i32 129, label %9
    i32 134, label %9
    i32 133, label %9
    i32 130, label %9
    i32 128, label %9
    i32 131, label %9
  ]

9:                                                ; preds = %1, %1, %1, %1, %1, %1, %1
  store i32 1, i32* %2, align 4
  br label %19

10:                                               ; preds = %1
  %11 = load i32, i32* @debug, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = load %union.dinode*, %union.dinode** %3, align 8
  %15 = load i32, i32* @di_mode, align 4
  %16 = call i32 @DIP(%union.dinode* %14, i32 %15)
  %17 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %18

18:                                               ; preds = %13, %10
  store i32 0, i32* %2, align 4
  br label %19

19:                                               ; preds = %18, %9
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local i32 @DIP(%union.dinode*, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

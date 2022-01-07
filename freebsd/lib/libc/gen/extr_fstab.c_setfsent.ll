; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_fstab.c_setfsent.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_fstab.c_setfsent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_fs_fp = common dso_local global i32* null, align 8
@LineNo = common dso_local global i64 0, align 8
@fsp_set = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"PATH_FSTAB\00", align 1
@path_fstab = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"re\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setfsent() #0 {
  %1 = alloca i32, align 4
  %2 = load i32*, i32** @_fs_fp, align 8
  %3 = icmp ne i32* %2, null
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = load i32*, i32** @_fs_fp, align 8
  %6 = call i32 @rewind(i32* %5)
  store i64 0, i64* @LineNo, align 8
  store i32 1, i32* %1, align 4
  br label %27

7:                                                ; preds = %0
  %8 = load i64, i64* @fsp_set, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %7
  %11 = call i64 (...) @issetugid()
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = call i32 @setfstab(i32* null)
  br label %18

15:                                               ; preds = %10
  %16 = call i32* @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %17 = call i32 @setfstab(i32* %16)
  br label %18

18:                                               ; preds = %15, %13
  br label %19

19:                                               ; preds = %18, %7
  %20 = load i32, i32* @path_fstab, align 4
  %21 = call i32* @fopen(i32 %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %21, i32** @_fs_fp, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i64 0, i64* @LineNo, align 8
  store i32 1, i32* %1, align 4
  br label %27

24:                                               ; preds = %19
  %25 = load i32, i32* @errno, align 4
  %26 = call i32 @error(i32 %25)
  store i32 0, i32* %1, align 4
  br label %27

27:                                               ; preds = %24, %23, %4
  %28 = load i32, i32* %1, align 4
  ret i32 %28
}

declare dso_local i32 @rewind(i32*) #1

declare dso_local i64 @issetugid(...) #1

declare dso_local i32 @setfstab(i32*) #1

declare dso_local i32* @getenv(i8*) #1

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mtree/extr_getid.c_grstart.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mtree/extr_getid.c_grstart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_gr_filesdone = common dso_local global i64 0, align 8
@_gr_fp = common dso_local global i32* null, align 8
@grfile = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Can't open `%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @grstart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grstart() #0 {
  %1 = alloca i32, align 4
  store i64 0, i64* @_gr_filesdone, align 8
  %2 = load i32*, i32** @_gr_fp, align 8
  %3 = icmp ne i32* %2, null
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = load i32*, i32** @_gr_fp, align 8
  %6 = call i32 @rewind(i32* %5)
  store i32 1, i32* %1, align 4
  br label %23

7:                                                ; preds = %0
  %8 = load i8*, i8** @grfile, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 0
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  store i32 0, i32* %1, align 4
  br label %23

14:                                               ; preds = %7
  %15 = load i8*, i8** @grfile, align 8
  %16 = call i32* @fopen(i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %16, i32** @_gr_fp, align 8
  %17 = load i32*, i32** @_gr_fp, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i32 1, i32* %1, align 4
  br label %23

20:                                               ; preds = %14
  %21 = load i8*, i8** @grfile, align 8
  %22 = call i32 @warn(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %21)
  store i32 0, i32* %1, align 4
  br label %23

23:                                               ; preds = %20, %19, %13, %4
  %24 = load i32, i32* %1, align 4
  ret i32 %24
}

declare dso_local i32 @rewind(i32*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @warn(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

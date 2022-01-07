; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_edit.c_edit_redraw.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_edit.c_edit_redraw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cmdbuf = common dso_local global i8* null, align 8
@cmdbuf_len = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"\0D%s> %s\00", align 1
@ps2 = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@cmdbuf_pos = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @edit_redraw() #0 {
  %1 = alloca i8, align 1
  %2 = load i8*, i8** @cmdbuf, align 8
  %3 = load i64, i64* @cmdbuf_len, align 8
  %4 = getelementptr inbounds i8, i8* %2, i64 %3
  store i8 0, i8* %4, align 1
  %5 = load i8*, i8** @ps2, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = load i8*, i8** @ps2, align 8
  br label %10

9:                                                ; preds = %0
  br label %10

10:                                               ; preds = %9, %7
  %11 = phi i8* [ %8, %7 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %9 ]
  %12 = load i8*, i8** @cmdbuf, align 8
  %13 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %11, i8* %12)
  %14 = load i64, i64* @cmdbuf_pos, align 8
  %15 = load i64, i64* @cmdbuf_len, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %38

17:                                               ; preds = %10
  %18 = load i8*, i8** @cmdbuf, align 8
  %19 = load i64, i64* @cmdbuf_pos, align 8
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  %21 = load i8, i8* %20, align 1
  store i8 %21, i8* %1, align 1
  %22 = load i8*, i8** @cmdbuf, align 8
  %23 = load i64, i64* @cmdbuf_pos, align 8
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  store i8 0, i8* %24, align 1
  %25 = load i8*, i8** @ps2, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %17
  %28 = load i8*, i8** @ps2, align 8
  br label %30

29:                                               ; preds = %17
  br label %30

30:                                               ; preds = %29, %27
  %31 = phi i8* [ %28, %27 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %29 ]
  %32 = load i8*, i8** @cmdbuf, align 8
  %33 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %31, i8* %32)
  %34 = load i8, i8* %1, align 1
  %35 = load i8*, i8** @cmdbuf, align 8
  %36 = load i64, i64* @cmdbuf_pos, align 8
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  store i8 %34, i8* %37, align 1
  br label %38

38:                                               ; preds = %30, %10
  %39 = load i32, i32* @stdout, align 4
  %40 = call i32 @fflush(i32 %39)
  ret void
}

declare dso_local i32 @printf(i8*, i8*, i8*) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

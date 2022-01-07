; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.refresh.c_Vdraw.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.refresh.c_Vdraw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vcursor_h = common dso_local global i32 0, align 4
@TermH = common dso_local global i32 0, align 4
@Vdisplay = common dso_local global i8** null, align 8
@vcursor_v = common dso_local global i64 0, align 8
@CHAR_DBWIDTH = common dso_local global i8 0, align 1
@ASCII = common dso_local global i8 0, align 1
@TermV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8, i32)* @Vdraw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Vdraw(i8 signext %0, i32 %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, i8* %3, align 1
  store i32 %1, i32* %4, align 4
  br label %5

5:                                                ; preds = %11, %2
  %6 = load i32, i32* @vcursor_h, align 4
  %7 = load i32, i32* %4, align 4
  %8 = add nsw i32 %6, %7
  %9 = load i32, i32* @TermH, align 4
  %10 = icmp sgt i32 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %5
  call void @Vdraw(i8 signext 32, i32 1)
  br label %5

12:                                               ; preds = %5
  %13 = load i8, i8* %3, align 1
  %14 = load i8**, i8*** @Vdisplay, align 8
  %15 = load i64, i64* @vcursor_v, align 8
  %16 = getelementptr inbounds i8*, i8** %14, i64 %15
  %17 = load i8*, i8** %16, align 8
  %18 = load i32, i32* @vcursor_h, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  store i8 %13, i8* %20, align 1
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %12
  %24 = load i32, i32* @vcursor_h, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* @vcursor_h, align 4
  br label %26

26:                                               ; preds = %23, %12
  br label %27

27:                                               ; preds = %31, %26
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %4, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %27
  %32 = load i8, i8* @CHAR_DBWIDTH, align 1
  %33 = load i8**, i8*** @Vdisplay, align 8
  %34 = load i64, i64* @vcursor_v, align 8
  %35 = getelementptr inbounds i8*, i8** %33, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = load i32, i32* @vcursor_h, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* @vcursor_h, align 4
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds i8, i8* %36, i64 %39
  store i8 %32, i8* %40, align 1
  br label %27

41:                                               ; preds = %27
  %42 = load i32, i32* @vcursor_h, align 4
  %43 = load i32, i32* @TermH, align 4
  %44 = icmp sge i32 %42, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %41
  %46 = load i8**, i8*** @Vdisplay, align 8
  %47 = load i64, i64* @vcursor_v, align 8
  %48 = getelementptr inbounds i8*, i8** %46, i64 %47
  %49 = load i8*, i8** %48, align 8
  %50 = load i32, i32* @TermH, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  store i8 0, i8* %52, align 1
  store i32 0, i32* @vcursor_h, align 4
  %53 = load i64, i64* @vcursor_v, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* @vcursor_v, align 8
  br label %55

55:                                               ; preds = %45, %41
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

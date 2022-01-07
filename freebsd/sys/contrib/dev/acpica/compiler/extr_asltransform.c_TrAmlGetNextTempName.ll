; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_asltransform.c_TrAmlGetNextTempName.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_asltransform.c_TrAmlGetNextTempName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ASL_ERROR = common dso_local global i32 0, align 4
@ASL_MSG_TOO_MANY_TEMPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i32*)* @TrAmlGetNextTempName to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @TrAmlGetNextTempName(i32* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = load i32, i32* %7, align 4
  %9 = icmp sge i32 %8, 36
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load i32, i32* @ASL_ERROR, align 4
  %12 = load i32, i32* @ASL_MSG_TOO_MANY_TEMPS, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @AslError(i32 %11, i32 %12, i32* %13, i32* null)
  store i8* null, i8** %3, align 8
  br label %45

15:                                               ; preds = %2
  %16 = call i8* @UtLocalCalloc(i32 5)
  store i8* %16, i8** %6, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %18, 10
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 48
  %24 = trunc i32 %23 to i8
  %25 = load i8*, i8** %6, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 3
  store i8 %24, i8* %26, align 1
  br label %34

27:                                               ; preds = %15
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 55
  %31 = trunc i32 %30 to i8
  %32 = load i8*, i8** %6, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 3
  store i8 %31, i8* %33, align 1
  br label %34

34:                                               ; preds = %27, %20
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  %38 = load i8*, i8** %6, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  store i8 95, i8* %39, align 1
  %40 = load i8*, i8** %6, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  store i8 84, i8* %41, align 1
  %42 = load i8*, i8** %6, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 2
  store i8 95, i8* %43, align 1
  %44 = load i8*, i8** %6, align 8
  store i8* %44, i8** %3, align 8
  br label %45

45:                                               ; preds = %34, %10
  %46 = load i8*, i8** %3, align 8
  ret i8* %46
}

declare dso_local i32 @AslError(i32, i32, i32*, i32*) #1

declare dso_local i8* @UtLocalCalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

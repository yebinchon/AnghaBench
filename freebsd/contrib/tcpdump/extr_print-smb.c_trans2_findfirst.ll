; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-smb.c_trans2_findfirst.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-smb.c_trans2_findfirst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@request = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [62 x i8] c"Attribute=[A]\0ASearchCount=[d]\0AFlags=[w]\0ALevel=[dP4]\0AFile=[S]\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"Handle=[w]\0ACount=[d]\0AEOS=[w]\0AEoffset=[d]\0ALastNameOfs=[w]\0A\00", align 1
@unicodestr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"data:\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32, i32)* @trans2_findfirst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trans2_findfirst(i32* %0, i32* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i64, i64* @request, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %5
  store i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  br label %16

15:                                               ; preds = %5
  store i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 8
  br label %16

16:                                               ; preds = %15, %14
  %17 = load i32*, i32** %6, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = load i8*, i8** %11, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* @unicodestr, align 4
  %25 = call i32 @smb_fdata(i32* %17, i32* %18, i8* %19, i32* %23, i32 %24)
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %16
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @ND_PRINT(i32* bitcast ([7 x i8]* @.str.2 to i32*))
  %31 = load i32*, i32** %6, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @smb_print_data(i32* %31, i32* %32, i32 %33)
  br label %35

35:                                               ; preds = %28, %16
  ret void
}

declare dso_local i32 @smb_fdata(i32*, i32*, i8*, i32*, i32) #1

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @smb_print_data(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

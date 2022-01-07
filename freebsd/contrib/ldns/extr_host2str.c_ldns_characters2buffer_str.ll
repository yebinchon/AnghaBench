; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_host2str.c_ldns_characters2buffer_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_host2str.c_ldns_characters2buffer_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"\\%c\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"\\%03u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i8*)* @ldns_characters2buffer_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ldns_characters2buffer_str(i32* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  br label %8

8:                                                ; preds = %47, %3
  %9 = load i64, i64* %5, align 8
  %10 = icmp ugt i64 %9, 0
  br i1 %10, label %11, label %50

11:                                               ; preds = %8
  %12 = load i8*, i8** %6, align 8
  %13 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %13, i8** %6, align 8
  %14 = load i8, i8* %12, align 1
  store i8 %14, i8* %7, align 1
  %15 = load i8, i8* %7, align 1
  %16 = sext i8 %15 to i32
  %17 = call i64 @isprint(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %11
  %20 = load i8, i8* %7, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 9
  br i1 %22, label %23, label %42

23:                                               ; preds = %19, %11
  %24 = load i8, i8* %7, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 34
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i8, i8* %7, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 92
  br i1 %30, label %31, label %36

31:                                               ; preds = %27, %23
  %32 = load i32*, i32** %4, align 8
  %33 = load i8, i8* %7, align 1
  %34 = sext i8 %33 to i32
  %35 = call i32 @ldns_buffer_printf(i32* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %41

36:                                               ; preds = %27
  %37 = load i32*, i32** %4, align 8
  %38 = load i8, i8* %7, align 1
  %39 = sext i8 %38 to i32
  %40 = call i32 @ldns_buffer_printf(i32* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %36, %31
  br label %47

42:                                               ; preds = %19
  %43 = load i32*, i32** %4, align 8
  %44 = load i8, i8* %7, align 1
  %45 = sext i8 %44 to i32
  %46 = call i32 @ldns_buffer_printf(i32* %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %42, %41
  %48 = load i64, i64* %5, align 8
  %49 = add i64 %48, -1
  store i64 %49, i64* %5, align 8
  br label %8

50:                                               ; preds = %8
  ret void
}

declare dso_local i64 @isprint(i32) #1

declare dso_local i32 @ldns_buffer_printf(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

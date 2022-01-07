; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/drill/extr_drill_util.c_print_rr_list_abbr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/drill/extr_drill_util.c_print_rr_list_abbr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_rr_list_abbr(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  store i64 0, i64* %7, align 8
  br label %9

9:                                                ; preds = %56, %3
  %10 = load i64, i64* %7, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = call i64 @ldns_rr_list_rr_count(i32* %11)
  %13 = icmp ult i64 %10, %12
  br i1 %13, label %14, label %59

14:                                               ; preds = %9
  %15 = load i32*, i32** %5, align 8
  %16 = load i64, i64* %7, align 8
  %17 = call i32 @ldns_rr_list_rr(i32* %15, i64 %16)
  %18 = call i32 @ldns_rr_get_type(i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i64, i64* %7, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %14
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 128
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  %25 = load i8*, i8** %6, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i32*, i32** %4, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @fprintf(i32* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %29)
  br label %31

31:                                               ; preds = %27, %24
  br label %32

32:                                               ; preds = %31, %21, %14
  %33 = load i32, i32* %8, align 4
  switch i32 %33, label %52 [
    i32 130, label %34
    i32 128, label %40
    i32 129, label %46
  ]

34:                                               ; preds = %32
  %35 = load i32*, i32** %4, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @ldns_rr_list_rr(i32* %36, i64 %37)
  %39 = call i32 @print_dnskey_abbr(i32* %35, i32 %38)
  br label %53

40:                                               ; preds = %32
  %41 = load i32*, i32** %4, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = load i64, i64* %7, align 8
  %44 = call i32 @ldns_rr_list_rr(i32* %42, i64 %43)
  %45 = call i32 @print_rrsig_abbr(i32* %41, i32 %44)
  br label %53

46:                                               ; preds = %32
  %47 = load i32*, i32** %4, align 8
  %48 = load i32*, i32** %5, align 8
  %49 = load i64, i64* %7, align 8
  %50 = call i32 @ldns_rr_list_rr(i32* %48, i64 %49)
  %51 = call i32 @print_ds_abbr(i32* %47, i32 %50)
  br label %53

52:                                               ; preds = %32
  br label %53

53:                                               ; preds = %52, %46, %40, %34
  %54 = load i32*, i32** %4, align 8
  %55 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32* %54)
  br label %56

56:                                               ; preds = %53
  %57 = load i64, i64* %7, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %7, align 8
  br label %9

59:                                               ; preds = %9
  ret void
}

declare dso_local i64 @ldns_rr_list_rr_count(i32*) #1

declare dso_local i32 @ldns_rr_get_type(i32) #1

declare dso_local i32 @ldns_rr_list_rr(i32*, i64) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*) #1

declare dso_local i32 @print_dnskey_abbr(i32*, i32) #1

declare dso_local i32 @print_rrsig_abbr(i32*, i32) #1

declare dso_local i32 @print_ds_abbr(i32*, i32) #1

declare dso_local i32 @fputs(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_wire2str.c_dname_char_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_wire2str.c_dname_char_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"\\%c\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"\\%03u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i64*, i8)* @dname_char_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dname_char_print(i8** %0, i64* %1, i8 signext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i8, align 1
  store i8** %0, i8*** %5, align 8
  store i64* %1, i64** %6, align 8
  store i8 %2, i8* %7, align 1
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp eq i32 %9, 46
  br i1 %10, label %27, label %11

11:                                               ; preds = %3
  %12 = load i8, i8* %7, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 59
  br i1 %14, label %27, label %15

15:                                               ; preds = %11
  %16 = load i8, i8* %7, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 40
  br i1 %18, label %27, label %19

19:                                               ; preds = %15
  %20 = load i8, i8* %7, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 41
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load i8, i8* %7, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 92
  br i1 %26, label %27, label %33

27:                                               ; preds = %23, %19, %15, %11, %3
  %28 = load i8**, i8*** %5, align 8
  %29 = load i64*, i64** %6, align 8
  %30 = load i8, i8* %7, align 1
  %31 = sext i8 %30 to i32
  %32 = call i32 @sldns_str_print(i8** %28, i64* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %31)
  store i32 %32, i32* %4, align 4
  br label %63

33:                                               ; preds = %23
  %34 = load i8, i8* %7, align 1
  %35 = call i64 @isascii(i8 zeroext %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i8, i8* %7, align 1
  %39 = call i64 @isgraph(i8 zeroext %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %37, %33
  %42 = load i8**, i8*** %5, align 8
  %43 = load i64*, i64** %6, align 8
  %44 = load i8, i8* %7, align 1
  %45 = sext i8 %44 to i32
  %46 = call i32 @sldns_str_print(i8** %42, i64* %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  store i32 %46, i32* %4, align 4
  br label %63

47:                                               ; preds = %37
  br label %48

48:                                               ; preds = %47
  %49 = load i64*, i64** %6, align 8
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %48
  %53 = load i8, i8* %7, align 1
  %54 = load i8**, i8*** %5, align 8
  %55 = load i8*, i8** %54, align 8
  store i8 %53, i8* %55, align 1
  %56 = load i8**, i8*** %5, align 8
  %57 = load i8*, i8** %56, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %56, align 8
  %59 = load i64*, i64** %6, align 8
  %60 = load i64, i64* %59, align 8
  %61 = add i64 %60, -1
  store i64 %61, i64* %59, align 8
  br label %62

62:                                               ; preds = %52, %48
  store i32 1, i32* %4, align 4
  br label %63

63:                                               ; preds = %62, %41, %27
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @sldns_str_print(i8**, i64*, i8*, i32) #1

declare dso_local i64 @isascii(i8 zeroext) #1

declare dso_local i64 @isgraph(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_wire2str.c_rr_comment_nsec3.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_wire2str.c_rr_comment_nsec3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_NSEC3_VARS_OPTOUT_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c" ;{flags: optout}\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i64*, i32*, i64, i64)* @rr_comment_nsec3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rr_comment_nsec3(i8** %0, i64* %1, i32* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i8** %0, i8*** %7, align 8
  store i64* %1, i64** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 0, i32* %14, align 4
  %15 = load i64, i64* %10, align 8
  %16 = load i64, i64* %11, align 8
  %17 = add i64 %16, 10
  %18 = icmp ult i64 %15, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %58

20:                                               ; preds = %5
  %21 = load i32*, i32** %9, align 8
  %22 = load i64, i64* %11, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = getelementptr inbounds i32, i32* %23, i64 8
  %25 = call i64 @sldns_read_uint16(i32* %24)
  store i64 %25, i64* %12, align 8
  %26 = load i64, i64* %10, align 8
  %27 = load i64, i64* %11, align 8
  %28 = add i64 %27, 10
  %29 = load i64, i64* %12, align 8
  %30 = add i64 %28, %29
  %31 = icmp ult i64 %26, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %20
  store i32 0, i32* %6, align 4
  br label %58

33:                                               ; preds = %20
  %34 = load i32*, i32** %9, align 8
  %35 = load i64, i64* %11, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = getelementptr inbounds i32, i32* %36, i64 10
  store i32* %37, i32** %13, align 8
  %38 = load i64, i64* %12, align 8
  %39 = icmp ult i64 %38, 2
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  store i32 0, i32* %6, align 4
  br label %58

41:                                               ; preds = %33
  %42 = load i32*, i32** %13, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @LDNS_NSEC3_VARS_OPTOUT_MASK, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %41
  %49 = load i8**, i8*** %7, align 8
  %50 = load i64*, i64** %8, align 8
  %51 = call i64 @sldns_str_print(i8** %49, i64* %50, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* %14, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %53, %51
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %14, align 4
  br label %56

56:                                               ; preds = %48, %41
  %57 = load i32, i32* %14, align 4
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %56, %40, %32, %19
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local i64 @sldns_read_uint16(i32*) #1

declare dso_local i64 @sldns_str_print(i8**, i64*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

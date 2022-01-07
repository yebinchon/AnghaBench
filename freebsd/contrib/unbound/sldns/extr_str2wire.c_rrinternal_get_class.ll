; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_str2wire.c_rrinternal_get_class.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_str2wire.c_rrinternal_get_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"\09\0A \00", align 1
@LDNS_WIREPARSE_ERR_SYNTAX_CLASS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"CLASS0\00", align 1
@LDNS_RR_CLASS_IN = common dso_local global i64 0, align 8
@LDNS_WIREPARSE_ERR_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i64, i32*, i64*)* @rrinternal_get_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rrinternal_get_class(i32* %0, i8* %1, i64 %2, i32* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i64* %4, i64** %11, align 8
  %12 = load i32*, i32** %10, align 8
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %5
  %16 = load i32*, i32** %7, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = load i64, i64* %9, align 8
  %19 = call i32 @sldns_bget_token(i32* %16, i8* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %18)
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load i32, i32* @LDNS_WIREPARSE_ERR_SYNTAX_CLASS, align 4
  %23 = load i32*, i32** %7, align 8
  %24 = call i32 @sldns_buffer_position(i32* %23)
  %25 = call i32 @RET_ERR(i32 %22, i32 %24)
  store i32 %25, i32* %6, align 4
  br label %46

26:                                               ; preds = %15
  br label %29

27:                                               ; preds = %5
  %28 = load i32*, i32** %10, align 8
  store i32 0, i32* %28, align 4
  br label %29

29:                                               ; preds = %27, %26
  %30 = load i8*, i8** %8, align 8
  %31 = call i64 @sldns_get_rr_class_by_name(i8* %30)
  %32 = load i64*, i64** %11, align 8
  store i64 %31, i64* %32, align 8
  %33 = load i64*, i64** %11, align 8
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %29
  %37 = load i8*, i8** %8, align 8
  %38 = call i64 @strcmp(i8* %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load i32*, i32** %10, align 8
  store i32 1, i32* %41, align 4
  %42 = load i64, i64* @LDNS_RR_CLASS_IN, align 8
  %43 = load i64*, i64** %11, align 8
  store i64 %42, i64* %43, align 8
  br label %44

44:                                               ; preds = %40, %36, %29
  %45 = load i32, i32* @LDNS_WIREPARSE_ERR_OK, align 4
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %44, %21
  %47 = load i32, i32* %6, align 4
  ret i32 %47
}

declare dso_local i32 @sldns_bget_token(i32*, i8*, i8*, i64) #1

declare dso_local i32 @RET_ERR(i32, i32) #1

declare dso_local i32 @sldns_buffer_position(i32*) #1

declare dso_local i64 @sldns_get_rr_class_by_name(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

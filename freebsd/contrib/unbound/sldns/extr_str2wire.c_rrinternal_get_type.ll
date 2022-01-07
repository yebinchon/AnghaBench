; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_str2wire.c_rrinternal_get_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_str2wire.c_rrinternal_get_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"\09\0A \00", align 1
@LDNS_WIREPARSE_ERR_SYNTAX_TYPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"TYPE0\00", align 1
@LDNS_WIREPARSE_ERR_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i64, i32*, i64*)* @rrinternal_get_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rrinternal_get_type(i32* %0, i8* %1, i64 %2, i32* %3, i64* %4) #0 {
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
  %22 = load i32, i32* @LDNS_WIREPARSE_ERR_SYNTAX_TYPE, align 4
  %23 = load i32*, i32** %7, align 8
  %24 = call i32 @sldns_buffer_position(i32* %23)
  %25 = call i32 @RET_ERR(i32 %22, i32 %24)
  store i32 %25, i32* %6, align 4
  br label %45

26:                                               ; preds = %15
  br label %27

27:                                               ; preds = %26, %5
  %28 = load i8*, i8** %8, align 8
  %29 = call i64 @sldns_get_rr_type_by_name(i8* %28)
  %30 = load i64*, i64** %11, align 8
  store i64 %29, i64* %30, align 8
  %31 = load i64*, i64** %11, align 8
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %27
  %35 = load i8*, i8** %8, align 8
  %36 = call i64 @strcmp(i8* %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load i32, i32* @LDNS_WIREPARSE_ERR_SYNTAX_TYPE, align 4
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @sldns_buffer_position(i32* %40)
  %42 = call i32 @RET_ERR(i32 %39, i32 %41)
  store i32 %42, i32* %6, align 4
  br label %45

43:                                               ; preds = %34, %27
  %44 = load i32, i32* @LDNS_WIREPARSE_ERR_OK, align 4
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %43, %38, %21
  %46 = load i32, i32* %6, align 4
  ret i32 %46
}

declare dso_local i32 @sldns_bget_token(i32*, i8*, i8*, i64) #1

declare dso_local i32 @RET_ERR(i32, i32) #1

declare dso_local i32 @sldns_buffer_position(i32*) #1

declare dso_local i64 @sldns_get_rr_type_by_name(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

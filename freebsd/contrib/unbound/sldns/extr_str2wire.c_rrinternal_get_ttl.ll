; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_str2wire.c_rrinternal_get_ttl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_str2wire.c_rrinternal_get_ttl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"\09\0A \00", align 1
@LDNS_WIREPARSE_ERR_SYNTAX_TTL = common dso_local global i32 0, align 4
@LDNS_DEFAULT_TTL = common dso_local global i64 0, align 8
@LDNS_WIREPARSE_ERR_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i64, i32*, i64*, i64)* @rrinternal_get_ttl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rrinternal_get_ttl(i32* %0, i8* %1, i64 %2, i32* %3, i64* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32* %3, i32** %11, align 8
  store i64* %4, i64** %12, align 8
  store i64 %5, i64* %13, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = load i64, i64* %10, align 8
  %18 = call i32 @sldns_bget_token(i32* %15, i8* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %17)
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %25

20:                                               ; preds = %6
  %21 = load i32, i32* @LDNS_WIREPARSE_ERR_SYNTAX_TTL, align 4
  %22 = load i32*, i32** %8, align 8
  %23 = call i32 @sldns_buffer_position(i32* %22)
  %24 = call i32 @RET_ERR(i32 %21, i32 %23)
  store i32 %24, i32* %7, align 4
  br label %51

25:                                               ; preds = %6
  %26 = load i8*, i8** %9, align 8
  %27 = call i64 @sldns_str2period(i8* %26, i8** %14)
  %28 = load i64*, i64** %12, align 8
  store i64 %27, i64* %28, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = call i64 @strlen(i8* %29)
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %25
  %33 = load i8*, i8** %9, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = call i32 @isdigit(i8 zeroext %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %49, label %38

38:                                               ; preds = %32
  %39 = load i32*, i32** %11, align 8
  store i32 1, i32* %39, align 4
  %40 = load i64, i64* %13, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i64, i64* @LDNS_DEFAULT_TTL, align 8
  %44 = load i64*, i64** %12, align 8
  store i64 %43, i64* %44, align 8
  br label %48

45:                                               ; preds = %38
  %46 = load i64, i64* %13, align 8
  %47 = load i64*, i64** %12, align 8
  store i64 %46, i64* %47, align 8
  br label %48

48:                                               ; preds = %45, %42
  br label %49

49:                                               ; preds = %48, %32, %25
  %50 = load i32, i32* @LDNS_WIREPARSE_ERR_OK, align 4
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %49, %20
  %52 = load i32, i32* %7, align 4
  ret i32 %52
}

declare dso_local i32 @sldns_bget_token(i32*, i8*, i8*, i64) #1

declare dso_local i32 @RET_ERR(i32, i32) #1

declare dso_local i32 @sldns_buffer_position(i32*) #1

declare dso_local i64 @sldns_str2period(i8*, i8**) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @isdigit(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

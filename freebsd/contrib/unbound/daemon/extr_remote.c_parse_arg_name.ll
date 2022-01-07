; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_parse_arg_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_parse_arg_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_MAX_DOMAINLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"error cannot parse name %s at %d: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"error out of memory\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32**, i64*, i32*)* @parse_arg_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_arg_name(i32* %0, i8* %1, i32** %2, i64* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32** %2, i32*** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load i32, i32* @LDNS_MAX_DOMAINLEN, align 4
  %18 = add nsw i32 %17, 1
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %12, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %13, align 8
  %22 = mul nuw i64 4, %19
  store i64 %22, i64* %14, align 8
  %23 = load i32**, i32*** %9, align 8
  store i32* null, i32** %23, align 8
  %24 = load i64*, i64** %10, align 8
  store i64 0, i64* %24, align 8
  %25 = load i32*, i32** %11, align 8
  store i32 0, i32* %25, align 4
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 @sldns_str2wire_dname_buf(i8* %26, i32* %21, i64* %14)
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* %15, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %5
  %31 = load i32*, i32** %7, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = load i32, i32* %15, align 4
  %34 = call i32 @LDNS_WIREPARSE_OFFSET(i32 %33)
  %35 = load i32, i32* %15, align 4
  %36 = call i32 @sldns_get_errorstr_parse(i32 %35)
  %37 = call i32 (i32*, i8*, ...) @ssl_printf(i32* %31, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %32, i32 %34, i32 %36)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %54

38:                                               ; preds = %5
  %39 = load i64, i64* %14, align 8
  %40 = call i32* @memdup(i32* %21, i64 %39)
  %41 = load i32**, i32*** %9, align 8
  store i32* %40, i32** %41, align 8
  %42 = load i32**, i32*** %9, align 8
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %38
  %46 = load i32*, i32** %7, align 8
  %47 = call i32 (i32*, i8*, ...) @ssl_printf(i32* %46, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %54

48:                                               ; preds = %38
  %49 = load i32**, i32*** %9, align 8
  %50 = load i32*, i32** %49, align 8
  %51 = load i64*, i64** %10, align 8
  %52 = call i32 @dname_count_size_labels(i32* %50, i64* %51)
  %53 = load i32*, i32** %11, align 8
  store i32 %52, i32* %53, align 4
  store i32 1, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %54

54:                                               ; preds = %48, %45, %30
  %55 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %55)
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sldns_str2wire_dname_buf(i8*, i32*, i64*) #2

declare dso_local i32 @ssl_printf(i32*, i8*, ...) #2

declare dso_local i32 @LDNS_WIREPARSE_OFFSET(i32) #2

declare dso_local i32 @sldns_get_errorstr_parse(i32) #2

declare dso_local i32* @memdup(i32*, i64) #2

declare dso_local i32 @dname_count_size_labels(i32*, i64*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

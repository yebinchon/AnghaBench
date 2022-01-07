; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_nested.c_find_end_xml.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_nested.c_find_end_xml.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUL = common dso_local global i8 0, align 1
@option_load_mode = common dso_local global i64 0, align 8
@OPTION_LOAD_KEEP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64, i8*, i64*)* @find_end_xml to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @find_end_xml(i8* %0, i64 %1, i8* %2, i64* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca [72 x i8], align 16
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i64* %3, i64** %8, align 8
  %13 = bitcast [72 x i8]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 72, i1 false)
  %14 = bitcast i8* %13 to [72 x i8]*
  %15 = getelementptr inbounds [72 x i8], [72 x i8]* %14, i32 0, i32 0
  store i8 60, i8* %15, align 16
  %16 = getelementptr inbounds [72 x i8], [72 x i8]* %14, i32 0, i32 1
  store i8 47, i8* %16, align 1
  %17 = getelementptr inbounds [72 x i8], [72 x i8]* %9, i64 0, i64 0
  %18 = getelementptr inbounds i8, i8* %17, i64 2
  store i8* %18, i8** %10, align 8
  br label %19

19:                                               ; preds = %25, %4
  %20 = load i8*, i8** %5, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %5, align 8
  %22 = load i8, i8* %20, align 1
  %23 = load i8*, i8** %10, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %10, align 8
  store i8 %22, i8* %23, align 1
  br label %25

25:                                               ; preds = %19
  %26 = load i64, i64* %6, align 8
  %27 = add i64 %26, -1
  store i64 %27, i64* %6, align 8
  %28 = icmp ugt i64 %27, 0
  br i1 %28, label %19, label %29

29:                                               ; preds = %25
  %30 = load i8*, i8** %10, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %10, align 8
  store i8 62, i8* %30, align 1
  %32 = load i8, i8* @NUL, align 1
  %33 = load i8*, i8** %10, align 8
  store i8 %32, i8* %33, align 1
  %34 = load i8*, i8** %7, align 8
  %35 = getelementptr inbounds [72 x i8], [72 x i8]* %9, i64 0, i64 0
  %36 = call i8* @strstr(i8* %34, i8* %35)
  store i8* %36, i8** %11, align 8
  %37 = load i8*, i8** %11, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %65

39:                                               ; preds = %29
  %40 = load i64, i64* @option_load_mode, align 8
  %41 = load i64, i64* @OPTION_LOAD_KEEP, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i8*, i8** %7, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = call i8* @SPN_WHITESPACE_BACK(i8* %44, i8* %45)
  br label %49

47:                                               ; preds = %39
  %48 = load i8*, i8** %11, align 8
  br label %49

49:                                               ; preds = %47, %43
  %50 = phi i8* [ %46, %43 ], [ %48, %47 ]
  store i8* %50, i8** %12, align 8
  %51 = load i8*, i8** %12, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = ptrtoint i8* %51 to i64
  %54 = ptrtoint i8* %52 to i64
  %55 = sub i64 %53, %54
  %56 = load i64*, i64** %8, align 8
  store i64 %55, i64* %56, align 8
  %57 = load i8*, i8** %11, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = getelementptr inbounds [72 x i8], [72 x i8]* %9, i64 0, i64 0
  %60 = ptrtoint i8* %58 to i64
  %61 = ptrtoint i8* %59 to i64
  %62 = sub i64 %60, %61
  %63 = getelementptr inbounds i8, i8* %57, i64 %62
  %64 = call i8* @SPN_WHITESPACE_CHARS(i8* %63)
  store i8* %64, i8** %11, align 8
  br label %65

65:                                               ; preds = %49, %29
  %66 = load i8*, i8** %11, align 8
  ret i8* %66
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @strstr(i8*, i8*) #2

declare dso_local i8* @SPN_WHITESPACE_BACK(i8*, i8*) #2

declare dso_local i8* @SPN_WHITESPACE_CHARS(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_wire2str.c_sldns_wire2str_rrquestion_scan.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_wire2str.c_sldns_wire2str_rrquestion_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Error malformed\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Error malformed 0x\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sldns_wire2str_rrquestion_scan(i32** %0, i64* %1, i8** %2, i64* %3, i32* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32** %0, i32*** %8, align 8
  store i64* %1, i64** %9, align 8
  store i8** %2, i8*** %10, align 8
  store i64* %3, i64** %11, align 8
  store i32* %4, i32** %12, align 8
  store i64 %5, i64* %13, align 8
  store i32 0, i32* %14, align 4
  %17 = load i32**, i32*** %8, align 8
  %18 = load i64*, i64** %9, align 8
  %19 = load i8**, i8*** %10, align 8
  %20 = load i64*, i64** %11, align 8
  %21 = load i32*, i32** %12, align 8
  %22 = load i64, i64* %13, align 8
  %23 = call i64 @sldns_wire2str_dname_scan(i32** %17, i64* %18, i8** %19, i64* %20, i32* %21, i64 %22)
  %24 = load i32, i32* %14, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %25, %23
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %14, align 4
  %28 = load i8**, i8*** %10, align 8
  %29 = load i64*, i64** %11, align 8
  %30 = call i32 @sldns_str_print(i8** %28, i64* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* %14, align 4
  %32 = add nsw i32 %31, %30
  store i32 %32, i32* %14, align 4
  %33 = load i64*, i64** %9, align 8
  %34 = load i64, i64* %33, align 8
  %35 = icmp ult i64 %34, 4
  br i1 %35, label %36, label %61

36:                                               ; preds = %6
  %37 = load i64*, i64** %9, align 8
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %36
  %41 = load i32, i32* %14, align 4
  %42 = load i8**, i8*** %10, align 8
  %43 = load i64*, i64** %11, align 8
  %44 = call i32 @sldns_str_print(i8** %42, i64* %43, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %45 = add nsw i32 %41, %44
  store i32 %45, i32* %7, align 4
  br label %102

46:                                               ; preds = %36
  %47 = load i32**, i32*** %8, align 8
  %48 = load i64*, i64** %9, align 8
  %49 = load i8**, i8*** %10, align 8
  %50 = load i64*, i64** %11, align 8
  %51 = call i64 @print_remainder_hex(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32** %47, i64* %48, i8** %49, i64* %50)
  %52 = load i32, i32* %14, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %53, %51
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %14, align 4
  %57 = load i8**, i8*** %10, align 8
  %58 = load i64*, i64** %11, align 8
  %59 = call i32 @sldns_str_print(i8** %57, i64* %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %60 = add nsw i32 %56, %59
  store i32 %60, i32* %7, align 4
  br label %102

61:                                               ; preds = %6
  %62 = load i32**, i32*** %8, align 8
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @sldns_read_uint16(i32* %63)
  store i32 %64, i32* %15, align 4
  %65 = load i32**, i32*** %8, align 8
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 2
  %68 = call i32 @sldns_read_uint16(i32* %67)
  store i32 %68, i32* %16, align 4
  %69 = load i32**, i32*** %8, align 8
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 4
  store i32* %71, i32** %69, align 8
  %72 = load i64*, i64** %9, align 8
  %73 = load i64, i64* %72, align 8
  %74 = sub i64 %73, 4
  store i64 %74, i64* %72, align 8
  %75 = load i8**, i8*** %10, align 8
  %76 = load i64*, i64** %11, align 8
  %77 = load i32, i32* %16, align 4
  %78 = call i64 @sldns_wire2str_class_print(i8** %75, i64* %76, i32 %77)
  %79 = load i32, i32* %14, align 4
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %80, %78
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %14, align 4
  %83 = load i8**, i8*** %10, align 8
  %84 = load i64*, i64** %11, align 8
  %85 = call i32 @sldns_str_print(i8** %83, i64* %84, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %86 = load i32, i32* %14, align 4
  %87 = add nsw i32 %86, %85
  store i32 %87, i32* %14, align 4
  %88 = load i8**, i8*** %10, align 8
  %89 = load i64*, i64** %11, align 8
  %90 = load i32, i32* %15, align 4
  %91 = call i64 @sldns_wire2str_type_print(i8** %88, i64* %89, i32 %90)
  %92 = load i32, i32* %14, align 4
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %93, %91
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %14, align 4
  %96 = load i8**, i8*** %10, align 8
  %97 = load i64*, i64** %11, align 8
  %98 = call i32 @sldns_str_print(i8** %96, i64* %97, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %99 = load i32, i32* %14, align 4
  %100 = add nsw i32 %99, %98
  store i32 %100, i32* %14, align 4
  %101 = load i32, i32* %14, align 4
  store i32 %101, i32* %7, align 4
  br label %102

102:                                              ; preds = %61, %46, %40
  %103 = load i32, i32* %7, align 4
  ret i32 %103
}

declare dso_local i64 @sldns_wire2str_dname_scan(i32**, i64*, i8**, i64*, i32*, i64) #1

declare dso_local i32 @sldns_str_print(i8**, i64*, i8*) #1

declare dso_local i64 @print_remainder_hex(i8*, i32**, i64*, i8**, i64*) #1

declare dso_local i32 @sldns_read_uint16(i32*) #1

declare dso_local i64 @sldns_wire2str_class_print(i8**, i64*, i32) #1

declare dso_local i64 @sldns_wire2str_type_print(i8**, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

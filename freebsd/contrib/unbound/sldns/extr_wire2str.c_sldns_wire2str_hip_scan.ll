; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_wire2str.c_sldns_wire2str_hip_scan.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_wire2str.c_sldns_wire2str_hip_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%u \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sldns_wire2str_hip_scan(i64** %0, i64* %1, i8** %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i64** %0, i64*** %6, align 8
  store i64* %1, i64** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i64* %3, i64** %9, align 8
  %14 = load i64*, i64** %7, align 8
  %15 = load i64, i64* %14, align 8
  %16 = icmp ult i64 %15, 4
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %82

18:                                               ; preds = %4
  %19 = load i64**, i64*** %6, align 8
  %20 = load i64*, i64** %19, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %12, align 8
  %23 = load i64**, i64*** %6, align 8
  %24 = load i64*, i64** %23, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 1
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %11, align 8
  %27 = load i64**, i64*** %6, align 8
  %28 = load i64*, i64** %27, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 2
  %30 = call i64 @sldns_read_uint16(i64* %29)
  store i64 %30, i64* %13, align 8
  %31 = load i64*, i64** %7, align 8
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %12, align 8
  %34 = add i64 4, %33
  %35 = load i64, i64* %13, align 8
  %36 = add i64 %34, %35
  %37 = icmp ult i64 %32, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %18
  store i32 -1, i32* %5, align 4
  br label %82

39:                                               ; preds = %18
  %40 = load i8**, i8*** %8, align 8
  %41 = load i64*, i64** %9, align 8
  %42 = load i64, i64* %11, align 8
  %43 = trunc i64 %42 to i32
  %44 = call i32 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %40, i64* %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load i8**, i8*** %8, align 8
  %46 = load i64*, i64** %9, align 8
  %47 = load i64**, i64*** %6, align 8
  %48 = load i64*, i64** %47, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 4
  %50 = load i64, i64* %12, align 8
  %51 = call i64 @print_hex_buf(i8** %45, i64* %46, i64* %49, i64 %50)
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %53, %51
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %10, align 4
  %56 = load i8**, i8*** %8, align 8
  %57 = load i64*, i64** %9, align 8
  %58 = call i32 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %56, i64* %57, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %59, %58
  store i32 %60, i32* %10, align 4
  %61 = load i64, i64* %12, align 8
  %62 = add nsw i64 4, %61
  %63 = load i64**, i64*** %6, align 8
  %64 = load i64*, i64** %63, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 %62
  store i64* %65, i64** %63, align 8
  %66 = load i64, i64* %12, align 8
  %67 = add nsw i64 4, %66
  %68 = load i64*, i64** %7, align 8
  %69 = load i64, i64* %68, align 8
  %70 = sub i64 %69, %67
  store i64 %70, i64* %68, align 8
  %71 = load i64**, i64*** %6, align 8
  %72 = load i64*, i64** %7, align 8
  %73 = load i8**, i8*** %8, align 8
  %74 = load i64*, i64** %9, align 8
  %75 = load i64, i64* %13, align 8
  %76 = call i64 @sldns_wire2str_b64_scan_num(i64** %71, i64* %72, i8** %73, i64* %74, i64 %75)
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %78, %76
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %39, %38, %17
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i64 @sldns_read_uint16(i64*) #1

declare dso_local i32 @sldns_str_print(i8**, i64*, i8*, ...) #1

declare dso_local i64 @print_hex_buf(i8**, i64*, i64*, i64) #1

declare dso_local i64 @sldns_wire2str_b64_scan_num(i64**, i64*, i8**, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

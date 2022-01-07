; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_wire2str.c_sldns_wire2str_time_scan.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_wire2str.c_sldns_wire2str_time_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"%Y%m%d%H%M%S\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sldns_wire2str_time_scan(i32** %0, i64* %1, i8** %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.tm, align 4
  %11 = alloca [16 x i8], align 16
  %12 = alloca i32, align 4
  store i32** %0, i32*** %6, align 8
  store i64* %1, i64** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i64* %3, i64** %9, align 8
  %13 = call i32 @memset(%struct.tm* %10, i32 0, i32 4)
  %14 = load i64*, i64** %7, align 8
  %15 = load i64, i64* %14, align 8
  %16 = icmp ult i64 %15, 4
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %43

18:                                               ; preds = %4
  %19 = load i32**, i32*** %6, align 8
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @sldns_read_uint32(i32* %20)
  store i32 %21, i32* %12, align 4
  %22 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 15
  store i8 0, i8* %22, align 1
  %23 = load i32, i32* %12, align 4
  %24 = call i32 @time(i32* null)
  %25 = call i64 @sldns_serial_arithmetics_gmtime_r(i32 %23, i32 %24, %struct.tm* %10)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %42

27:                                               ; preds = %18
  %28 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %29 = call i64 @strftime(i8* %28, i32 15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.tm* %10)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %27
  %32 = load i32**, i32*** %6, align 8
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 4
  store i32* %34, i32** %32, align 8
  %35 = load i64*, i64** %7, align 8
  %36 = load i64, i64* %35, align 8
  %37 = sub i64 %36, 4
  store i64 %37, i64* %35, align 8
  %38 = load i8**, i8*** %8, align 8
  %39 = load i64*, i64** %9, align 8
  %40 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %41 = call i32 @sldns_str_print(i8** %38, i64* %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %40)
  store i32 %41, i32* %5, align 4
  br label %43

42:                                               ; preds = %27, %18
  store i32 -1, i32* %5, align 4
  br label %43

43:                                               ; preds = %42, %31, %17
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i32 @memset(%struct.tm*, i32, i32) #1

declare dso_local i32 @sldns_read_uint32(i32*) #1

declare dso_local i64 @sldns_serial_arithmetics_gmtime_r(i32, i32, %struct.tm*) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i64 @strftime(i8*, i32, i8*, %struct.tm*) #1

declare dso_local i32 @sldns_str_print(i8**, i64*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

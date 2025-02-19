; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_wire2str.c_sldns_wire2str_cert_alg_scan.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_wire2str.c_sldns_wire2str_cert_alg_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@sldns_cert_algorithms = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sldns_wire2str_cert_alg_scan(i32** %0, i64* %1, i8** %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32** %0, i32*** %6, align 8
  store i64* %1, i64** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i64* %3, i64** %9, align 8
  %13 = load i64*, i64** %7, align 8
  %14 = load i64, i64* %13, align 8
  %15 = icmp ult i64 %14, 2
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %52

17:                                               ; preds = %4
  %18 = load i32**, i32*** %6, align 8
  %19 = load i32*, i32** %18, align 8
  %20 = call i64 @sldns_read_uint16(i32* %19)
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* @sldns_cert_algorithms, align 4
  %23 = load i32, i32* %11, align 4
  %24 = call %struct.TYPE_3__* @sldns_lookup_by_id(i32 %22, i32 %23)
  store %struct.TYPE_3__* %24, %struct.TYPE_3__** %10, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %26 = icmp ne %struct.TYPE_3__* %25, null
  br i1 %26, label %27, label %39

27:                                               ; preds = %17
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load i8**, i8*** %8, align 8
  %34 = load i64*, i64** %9, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @sldns_str_print(i8** %33, i64* %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %37)
  store i32 %38, i32* %12, align 4
  br label %44

39:                                               ; preds = %27, %17
  %40 = load i8**, i8*** %8, align 8
  %41 = load i64*, i64** %9, align 8
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @sldns_str_print(i8** %40, i64* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  store i32 %43, i32* %12, align 4
  br label %44

44:                                               ; preds = %39, %32
  %45 = load i64*, i64** %7, align 8
  %46 = load i64, i64* %45, align 8
  %47 = sub i64 %46, 2
  store i64 %47, i64* %45, align 8
  %48 = load i32**, i32*** %6, align 8
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 2
  store i32* %50, i32** %48, align 8
  %51 = load i32, i32* %12, align 4
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %44, %16
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i64 @sldns_read_uint16(i32*) #1

declare dso_local %struct.TYPE_3__* @sldns_lookup_by_id(i32, i32) #1

declare dso_local i32 @sldns_str_print(i8**, i64*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

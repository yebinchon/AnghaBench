; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgparse.c_parse_edns_options.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgparse.c_parse_edns_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edns_data = type { i32 }
%struct.regional = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, %struct.edns_data*, %struct.regional*)* @parse_edns_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_edns_options(i32* %0, i64 %1, %struct.edns_data* %2, %struct.regional* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.edns_data*, align 8
  %9 = alloca %struct.regional*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.edns_data* %2, %struct.edns_data** %8, align 8
  store %struct.regional* %3, %struct.regional** %9, align 8
  br label %12

12:                                               ; preds = %39, %4
  %13 = load i64, i64* %7, align 8
  %14 = icmp uge i64 %13, 4
  br i1 %14, label %15, label %46

15:                                               ; preds = %12
  %16 = load i32*, i32** %6, align 8
  %17 = call i64 @sldns_read_uint16(i32* %16)
  store i64 %17, i64* %10, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 2
  %20 = call i64 @sldns_read_uint16(i32* %19)
  store i64 %20, i64* %11, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 4
  store i32* %22, i32** %6, align 8
  %23 = load i64, i64* %7, align 8
  %24 = sub i64 %23, 4
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %11, align 8
  %26 = load i64, i64* %7, align 8
  %27 = icmp ugt i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %15
  br label %46

29:                                               ; preds = %15
  %30 = load %struct.edns_data*, %struct.edns_data** %8, align 8
  %31 = load %struct.regional*, %struct.regional** %9, align 8
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* %11, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @edns_opt_append(%struct.edns_data* %30, %struct.regional* %31, i64 %32, i64 %33, i32* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %29
  %38 = call i32 @log_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %47

39:                                               ; preds = %29
  %40 = load i64, i64* %11, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 %40
  store i32* %42, i32** %6, align 8
  %43 = load i64, i64* %11, align 8
  %44 = load i64, i64* %7, align 8
  %45 = sub i64 %44, %43
  store i64 %45, i64* %7, align 8
  br label %12

46:                                               ; preds = %28, %12
  store i32 1, i32* %5, align 4
  br label %47

47:                                               ; preds = %46, %37
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i64 @sldns_read_uint16(i32*) #1

declare dso_local i32 @edns_opt_append(%struct.edns_data*, %struct.regional*, i64, i64, i32*) #1

declare dso_local i32 @log_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

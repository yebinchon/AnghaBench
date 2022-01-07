; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_wire2str.c_sldns_wire2str_rcode_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_wire2str.c_sldns_wire2str_rcode_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@sldns_rcodes = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"RCODE%u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sldns_wire2str_rcode_print(i8** %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  store i8** %0, i8*** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @sldns_rcodes, align 4
  %10 = load i32, i32* %7, align 4
  %11 = call %struct.TYPE_3__* @sldns_lookup_by_id(i32 %9, i32 %10)
  store %struct.TYPE_3__* %11, %struct.TYPE_3__** %8, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %13 = icmp ne %struct.TYPE_3__* %12, null
  br i1 %13, label %14, label %26

14:                                               ; preds = %3
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = load i8**, i8*** %5, align 8
  %21 = load i64*, i64** %6, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @sldns_str_print(i8** %20, i64* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %24)
  store i32 %25, i32* %4, align 4
  br label %31

26:                                               ; preds = %14, %3
  %27 = load i8**, i8*** %5, align 8
  %28 = load i64*, i64** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @sldns_str_print(i8** %27, i64* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %26, %19
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local %struct.TYPE_3__* @sldns_lookup_by_id(i32, i32) #1

declare dso_local i32 @sldns_str_print(i8**, i64*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

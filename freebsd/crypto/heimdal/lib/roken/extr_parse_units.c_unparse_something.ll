; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_parse_units.c_unparse_something.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_parse_units.c_unparse_something.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.units = type { i8*, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.units*, i8*, i64, i32 (i8*, i64, i32, i8*, i32)*, i32 (i32, i32)*, i8*)* @unparse_something to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unparse_something(i32 %0, %struct.units* %1, i8* %2, i64 %3, i32 (i8*, i64, i32, i8*, i32)* %4, i32 (i32, i32)* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.units*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32 (i8*, i64, i32, i8*, i32)*, align 8
  %14 = alloca i32 (i32, i32)*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.units*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store %struct.units* %1, %struct.units** %10, align 8
  store i8* %2, i8** %11, align 8
  store i64 %3, i64* %12, align 8
  store i32 (i8*, i64, i32, i8*, i32)* %4, i32 (i8*, i64, i32, i8*, i32)** %13, align 8
  store i32 (i32, i32)* %5, i32 (i32, i32)** %14, align 8
  store i8* %6, i8** %15, align 8
  store i32 0, i32* %17, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %7
  %23 = load i8*, i8** %11, align 8
  %24 = load i64, i64* %12, align 8
  %25 = load i8*, i8** %15, align 8
  %26 = call i32 @snprintf(i8* %23, i64 %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %25)
  store i32 %26, i32* %8, align 4
  br label %92

27:                                               ; preds = %7
  %28 = load %struct.units*, %struct.units** %10, align 8
  store %struct.units* %28, %struct.units** %16, align 8
  br label %29

29:                                               ; preds = %87, %27
  %30 = load i32, i32* %9, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load %struct.units*, %struct.units** %16, align 8
  %34 = getelementptr inbounds %struct.units, %struct.units* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br label %37

37:                                               ; preds = %32, %29
  %38 = phi i1 [ false, %29 ], [ %36, %32 ]
  br i1 %38, label %39, label %90

39:                                               ; preds = %37
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.units*, %struct.units** %16, align 8
  %42 = getelementptr inbounds %struct.units, %struct.units* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = sdiv i32 %40, %43
  store i32 %44, i32* %19, align 4
  %45 = load i32, i32* %19, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %86

47:                                               ; preds = %39
  %48 = load i32 (i32, i32)*, i32 (i32, i32)** %14, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.units*, %struct.units** %16, align 8
  %51 = getelementptr inbounds %struct.units, %struct.units* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 %48(i32 %49, i32 %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32 (i8*, i64, i32, i8*, i32)*, i32 (i8*, i64, i32, i8*, i32)** %13, align 8
  %55 = load i8*, i8** %11, align 8
  %56 = load i64, i64* %12, align 8
  %57 = load i32, i32* %19, align 4
  %58 = load %struct.units*, %struct.units** %16, align 8
  %59 = getelementptr inbounds %struct.units, %struct.units* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = call i32 %54(i8* %55, i64 %56, i32 %57, i8* %60, i32 %61)
  store i32 %62, i32* %18, align 4
  %63 = load i32, i32* %18, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %47
  %66 = load i32, i32* %18, align 4
  store i32 %66, i32* %8, align 4
  br label %92

67:                                               ; preds = %47
  %68 = load i32, i32* %18, align 4
  %69 = load i64, i64* %12, align 8
  %70 = trunc i64 %69 to i32
  %71 = icmp sgt i32 %68, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  store i64 0, i64* %12, align 8
  store i8* null, i8** %11, align 8
  br label %82

73:                                               ; preds = %67
  %74 = load i32, i32* %18, align 4
  %75 = sext i32 %74 to i64
  %76 = load i64, i64* %12, align 8
  %77 = sub i64 %76, %75
  store i64 %77, i64* %12, align 8
  %78 = load i32, i32* %18, align 4
  %79 = load i8*, i8** %11, align 8
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds i8, i8* %79, i64 %80
  store i8* %81, i8** %11, align 8
  br label %82

82:                                               ; preds = %73, %72
  %83 = load i32, i32* %18, align 4
  %84 = load i32, i32* %17, align 4
  %85 = add nsw i32 %84, %83
  store i32 %85, i32* %17, align 4
  br label %86

86:                                               ; preds = %82, %39
  br label %87

87:                                               ; preds = %86
  %88 = load %struct.units*, %struct.units** %16, align 8
  %89 = getelementptr inbounds %struct.units, %struct.units* %88, i32 1
  store %struct.units* %89, %struct.units** %16, align 8
  br label %29

90:                                               ; preds = %37
  %91 = load i32, i32* %17, align 4
  store i32 %91, i32* %8, align 4
  br label %92

92:                                               ; preds = %90, %65, %22
  %93 = load i32, i32* %8, align 4
  ret i32 %93
}

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

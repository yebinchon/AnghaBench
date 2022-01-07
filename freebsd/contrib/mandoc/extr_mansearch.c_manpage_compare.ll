; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mansearch.c_manpage_compare.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mansearch.c_manpage_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.manpage = type { i32, i32, i64 }

@.str = private unnamed_addr constant [2 x i8] c"(\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @manpage_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @manpage_compare(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.manpage*, align 8
  %7 = alloca %struct.manpage*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.manpage*
  store %struct.manpage* %14, %struct.manpage** %6, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.manpage*
  store %struct.manpage* %16, %struct.manpage** %7, align 8
  %17 = load %struct.manpage*, %struct.manpage** %7, align 8
  %18 = getelementptr inbounds %struct.manpage, %struct.manpage* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.manpage*, %struct.manpage** %6, align 8
  %21 = getelementptr inbounds %struct.manpage, %struct.manpage* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sub nsw i32 %19, %22
  store i32 %23, i32* %12, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %2
  %26 = load %struct.manpage*, %struct.manpage** %6, align 8
  %27 = getelementptr inbounds %struct.manpage, %struct.manpage* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.manpage*, %struct.manpage** %7, align 8
  %30 = getelementptr inbounds %struct.manpage, %struct.manpage* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %28, %31
  store i32 %32, i32* %12, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %25, %2
  %35 = load i32, i32* %12, align 4
  store i32 %35, i32* %3, align 4
  br label %97

36:                                               ; preds = %25
  %37 = load %struct.manpage*, %struct.manpage** %6, align 8
  %38 = getelementptr inbounds %struct.manpage, %struct.manpage* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = call i64 @strcspn(i64 %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i64 %40, i64* %10, align 8
  %41 = load %struct.manpage*, %struct.manpage** %7, align 8
  %42 = getelementptr inbounds %struct.manpage, %struct.manpage* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = call i64 @strcspn(i64 %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i64 %44, i64* %11, align 8
  %45 = load i64, i64* %10, align 8
  %46 = load i64, i64* %11, align 8
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %36
  %49 = load i64, i64* %11, align 8
  store i64 %49, i64* %10, align 8
  br label %50

50:                                               ; preds = %48, %36
  %51 = load %struct.manpage*, %struct.manpage** %6, align 8
  %52 = getelementptr inbounds %struct.manpage, %struct.manpage* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.manpage*, %struct.manpage** %7, align 8
  %55 = getelementptr inbounds %struct.manpage, %struct.manpage* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %10, align 8
  %58 = call i32 @strncasecmp(i64 %53, i64 %56, i64 %57)
  store i32 %58, i32* %12, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %50
  %61 = load i32, i32* %12, align 4
  store i32 %61, i32* %3, align 4
  br label %97

62:                                               ; preds = %50
  %63 = load %struct.manpage*, %struct.manpage** %6, align 8
  %64 = getelementptr inbounds %struct.manpage, %struct.manpage* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %10, align 8
  %67 = add i64 %65, %66
  %68 = call i8* @strchr(i64 %67, i8 signext 47)
  store i8* %68, i8** %8, align 8
  %69 = load %struct.manpage*, %struct.manpage** %7, align 8
  %70 = getelementptr inbounds %struct.manpage, %struct.manpage* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %11, align 8
  %73 = add i64 %71, %72
  %74 = call i8* @strchr(i64 %73, i8 signext 47)
  store i8* %74, i8** %9, align 8
  %75 = load i8*, i8** %8, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %84

77:                                               ; preds = %62
  %78 = load i8*, i8** %9, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = load i8*, i8** %8, align 8
  %82 = load i8*, i8** %9, align 8
  %83 = call i32 @strcasecmp(i8* %81, i8* %82)
  br label %95

84:                                               ; preds = %77, %62
  %85 = load i8*, i8** %8, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  br label %93

88:                                               ; preds = %84
  %89 = load i8*, i8** %9, align 8
  %90 = icmp ne i8* %89, null
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i32 1, i32 0
  br label %93

93:                                               ; preds = %88, %87
  %94 = phi i32 [ -1, %87 ], [ %92, %88 ]
  br label %95

95:                                               ; preds = %93, %80
  %96 = phi i32 [ %83, %80 ], [ %94, %93 ]
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %95, %60, %34
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i64 @strcspn(i64, i8*) #1

declare dso_local i32 @strncasecmp(i64, i64, i64) #1

declare dso_local i8* @strchr(i64, i8 signext) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libutil/extr_gr_util.c_grmemlen.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libutil/extr_gr_util.c_grmemlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.group = type { i8*, i8*, i8** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.group*, i8*, i32*)* @grmemlen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @grmemlen(%struct.group* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.group*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.group* %0, %struct.group** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.group*, %struct.group** %5, align 8
  %11 = icmp eq %struct.group* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %95

13:                                               ; preds = %3
  store i64 24, i64* %8, align 8
  %14 = load %struct.group*, %struct.group** %5, align 8
  %15 = getelementptr inbounds %struct.group, %struct.group* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %13
  %19 = load %struct.group*, %struct.group** %5, align 8
  %20 = getelementptr inbounds %struct.group, %struct.group* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i64 @strlen(i8* %21)
  %23 = add nsw i64 %22, 1
  %24 = load i64, i64* %8, align 8
  %25 = add i64 %24, %23
  store i64 %25, i64* %8, align 8
  br label %26

26:                                               ; preds = %18, %13
  %27 = load %struct.group*, %struct.group** %5, align 8
  %28 = getelementptr inbounds %struct.group, %struct.group* %27, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = load %struct.group*, %struct.group** %5, align 8
  %33 = getelementptr inbounds %struct.group, %struct.group* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = call i64 @strlen(i8* %34)
  %36 = add nsw i64 %35, 1
  %37 = load i64, i64* %8, align 8
  %38 = add i64 %37, %36
  store i64 %38, i64* %8, align 8
  br label %39

39:                                               ; preds = %31, %26
  store i32 0, i32* %9, align 4
  %40 = load %struct.group*, %struct.group** %5, align 8
  %41 = getelementptr inbounds %struct.group, %struct.group* %40, i32 0, i32 2
  %42 = load i8**, i8*** %41, align 8
  %43 = icmp ne i8** %42, null
  br i1 %43, label %44, label %72

44:                                               ; preds = %39
  br label %45

45:                                               ; preds = %68, %44
  %46 = load %struct.group*, %struct.group** %5, align 8
  %47 = getelementptr inbounds %struct.group, %struct.group* %46, i32 0, i32 2
  %48 = load i8**, i8*** %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8*, i8** %48, i64 %50
  %52 = load i8*, i8** %51, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %71

54:                                               ; preds = %45
  %55 = load %struct.group*, %struct.group** %5, align 8
  %56 = getelementptr inbounds %struct.group, %struct.group* %55, i32 0, i32 2
  %57 = load i8**, i8*** %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8*, i8** %57, i64 %59
  %61 = load i8*, i8** %60, align 8
  %62 = call i64 @strlen(i8* %61)
  %63 = add nsw i64 %62, 1
  %64 = load i64, i64* %8, align 8
  %65 = add i64 %64, %63
  store i64 %65, i64* %8, align 8
  %66 = load i64, i64* %8, align 8
  %67 = add i64 %66, 8
  store i64 %67, i64* %8, align 8
  br label %68

68:                                               ; preds = %54
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %9, align 4
  br label %45

71:                                               ; preds = %45
  br label %72

72:                                               ; preds = %71, %39
  %73 = load i8*, i8** %6, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %85

75:                                               ; preds = %72
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %9, align 4
  %78 = load i8*, i8** %6, align 8
  %79 = call i64 @strlen(i8* %78)
  %80 = add nsw i64 %79, 1
  %81 = load i64, i64* %8, align 8
  %82 = add i64 %81, %80
  store i64 %82, i64* %8, align 8
  %83 = load i64, i64* %8, align 8
  %84 = add i64 %83, 8
  store i64 %84, i64* %8, align 8
  br label %85

85:                                               ; preds = %75, %72
  %86 = load i32, i32* %9, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load i64, i64* %8, align 8
  %90 = add i64 %89, 8
  store i64 %90, i64* %8, align 8
  br label %91

91:                                               ; preds = %88, %85
  %92 = load i32, i32* %9, align 4
  %93 = load i32*, i32** %7, align 8
  store i32 %92, i32* %93, align 4
  %94 = load i64, i64* %8, align 8
  store i64 %94, i64* %4, align 8
  br label %95

95:                                               ; preds = %91, %12
  %96 = load i64, i64* %4, align 8
  ret i64 %96
}

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

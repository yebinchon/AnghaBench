; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/tests/nss/extr_getgr_test.c_compare_group.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/tests/nss/extr_getgr_test.c_compare_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.group = type { i8*, i8*, i64, i8** }

@.str = private unnamed_addr constant [37 x i8] c"following structures are not equal:\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.group*, %struct.group*, i8*)* @compare_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_group(%struct.group* %0, %struct.group* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.group*, align 8
  %6 = alloca %struct.group*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  store %struct.group* %0, %struct.group** %5, align 8
  store %struct.group* %1, %struct.group** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.group*, %struct.group** %5, align 8
  %11 = load %struct.group*, %struct.group** %6, align 8
  %12 = icmp eq %struct.group* %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %110

14:                                               ; preds = %3
  %15 = load %struct.group*, %struct.group** %5, align 8
  %16 = icmp eq %struct.group* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load %struct.group*, %struct.group** %6, align 8
  %19 = icmp eq %struct.group* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %14
  br label %100

21:                                               ; preds = %17
  %22 = load %struct.group*, %struct.group** %5, align 8
  %23 = getelementptr inbounds %struct.group, %struct.group* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = load %struct.group*, %struct.group** %6, align 8
  %26 = getelementptr inbounds %struct.group, %struct.group* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i64 @strcmp(i8* %24, i8* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %47, label %30

30:                                               ; preds = %21
  %31 = load %struct.group*, %struct.group** %5, align 8
  %32 = getelementptr inbounds %struct.group, %struct.group* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = load %struct.group*, %struct.group** %6, align 8
  %35 = getelementptr inbounds %struct.group, %struct.group* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = call i64 @strcmp(i8* %33, i8* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %30
  %40 = load %struct.group*, %struct.group** %5, align 8
  %41 = getelementptr inbounds %struct.group, %struct.group* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.group*, %struct.group** %6, align 8
  %44 = getelementptr inbounds %struct.group, %struct.group* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %42, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %39, %30, %21
  br label %100

48:                                               ; preds = %39
  %49 = load %struct.group*, %struct.group** %5, align 8
  %50 = getelementptr inbounds %struct.group, %struct.group* %49, i32 0, i32 3
  %51 = load i8**, i8*** %50, align 8
  store i8** %51, i8*** %8, align 8
  %52 = load %struct.group*, %struct.group** %6, align 8
  %53 = getelementptr inbounds %struct.group, %struct.group* %52, i32 0, i32 3
  %54 = load i8**, i8*** %53, align 8
  store i8** %54, i8*** %9, align 8
  %55 = load %struct.group*, %struct.group** %5, align 8
  %56 = getelementptr inbounds %struct.group, %struct.group* %55, i32 0, i32 3
  %57 = load i8**, i8*** %56, align 8
  %58 = icmp eq i8** %57, null
  br i1 %58, label %64, label %59

59:                                               ; preds = %48
  %60 = load %struct.group*, %struct.group** %6, align 8
  %61 = getelementptr inbounds %struct.group, %struct.group* %60, i32 0, i32 3
  %62 = load i8**, i8*** %61, align 8
  %63 = icmp eq i8** %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %59, %48
  br label %100

65:                                               ; preds = %59
  br label %66

66:                                               ; preds = %85, %65
  %67 = load i8**, i8*** %8, align 8
  %68 = load i8*, i8** %67, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = load i8**, i8*** %9, align 8
  %72 = load i8*, i8** %71, align 8
  %73 = icmp ne i8* %72, null
  br label %74

74:                                               ; preds = %70, %66
  %75 = phi i1 [ false, %66 ], [ %73, %70 ]
  br i1 %75, label %76, label %90

76:                                               ; preds = %74
  %77 = load i8**, i8*** %8, align 8
  %78 = load i8*, i8** %77, align 8
  %79 = load i8**, i8*** %9, align 8
  %80 = load i8*, i8** %79, align 8
  %81 = call i64 @strcmp(i8* %78, i8* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  br label %100

84:                                               ; preds = %76
  br label %85

85:                                               ; preds = %84
  %86 = load i8**, i8*** %8, align 8
  %87 = getelementptr inbounds i8*, i8** %86, i32 1
  store i8** %87, i8*** %8, align 8
  %88 = load i8**, i8*** %9, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i32 1
  store i8** %89, i8*** %9, align 8
  br label %66

90:                                               ; preds = %74
  %91 = load i8**, i8*** %8, align 8
  %92 = load i8*, i8** %91, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %98, label %94

94:                                               ; preds = %90
  %95 = load i8**, i8*** %9, align 8
  %96 = load i8*, i8** %95, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %99

98:                                               ; preds = %94, %90
  br label %100

99:                                               ; preds = %94
  store i32 0, i32* %4, align 4
  br label %110

100:                                              ; preds = %98, %83, %64, %47, %20
  %101 = load i8*, i8** %7, align 8
  %102 = icmp eq i8* %101, null
  br i1 %102, label %103, label %109

103:                                              ; preds = %100
  %104 = call i32 @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %105 = load %struct.group*, %struct.group** %5, align 8
  %106 = call i32 @dump_group(%struct.group* %105)
  %107 = load %struct.group*, %struct.group** %6, align 8
  %108 = call i32 @dump_group(%struct.group* %107)
  br label %109

109:                                              ; preds = %103, %100
  store i32 -1, i32* %4, align 4
  br label %110

110:                                              ; preds = %109, %99, %13
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @dump_group(%struct.group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

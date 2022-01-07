; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/tests/nss/extr_getrpc_test.c_compare_rpcent.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/tests/nss/extr_getrpc_test.c_compare_rpcent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpcent = type { i8*, i64, i8** }

@.str = private unnamed_addr constant [37 x i8] c"following structures are not equal:\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpcent*, %struct.rpcent*, i8*)* @compare_rpcent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_rpcent(%struct.rpcent* %0, %struct.rpcent* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rpcent*, align 8
  %6 = alloca %struct.rpcent*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  store %struct.rpcent* %0, %struct.rpcent** %5, align 8
  store %struct.rpcent* %1, %struct.rpcent** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.rpcent*, %struct.rpcent** %5, align 8
  %11 = load %struct.rpcent*, %struct.rpcent** %6, align 8
  %12 = icmp eq %struct.rpcent* %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %101

14:                                               ; preds = %3
  %15 = load %struct.rpcent*, %struct.rpcent** %5, align 8
  %16 = icmp eq %struct.rpcent* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load %struct.rpcent*, %struct.rpcent** %6, align 8
  %19 = icmp eq %struct.rpcent* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %14
  br label %91

21:                                               ; preds = %17
  %22 = load %struct.rpcent*, %struct.rpcent** %5, align 8
  %23 = getelementptr inbounds %struct.rpcent, %struct.rpcent* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = load %struct.rpcent*, %struct.rpcent** %6, align 8
  %26 = getelementptr inbounds %struct.rpcent, %struct.rpcent* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i64 @strcmp(i8* %24, i8* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %21
  %31 = load %struct.rpcent*, %struct.rpcent** %5, align 8
  %32 = getelementptr inbounds %struct.rpcent, %struct.rpcent* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.rpcent*, %struct.rpcent** %6, align 8
  %35 = getelementptr inbounds %struct.rpcent, %struct.rpcent* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %33, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %30, %21
  br label %91

39:                                               ; preds = %30
  %40 = load %struct.rpcent*, %struct.rpcent** %5, align 8
  %41 = getelementptr inbounds %struct.rpcent, %struct.rpcent* %40, i32 0, i32 2
  %42 = load i8**, i8*** %41, align 8
  store i8** %42, i8*** %8, align 8
  %43 = load %struct.rpcent*, %struct.rpcent** %6, align 8
  %44 = getelementptr inbounds %struct.rpcent, %struct.rpcent* %43, i32 0, i32 2
  %45 = load i8**, i8*** %44, align 8
  store i8** %45, i8*** %9, align 8
  %46 = load %struct.rpcent*, %struct.rpcent** %5, align 8
  %47 = getelementptr inbounds %struct.rpcent, %struct.rpcent* %46, i32 0, i32 2
  %48 = load i8**, i8*** %47, align 8
  %49 = icmp eq i8** %48, null
  br i1 %49, label %55, label %50

50:                                               ; preds = %39
  %51 = load %struct.rpcent*, %struct.rpcent** %6, align 8
  %52 = getelementptr inbounds %struct.rpcent, %struct.rpcent* %51, i32 0, i32 2
  %53 = load i8**, i8*** %52, align 8
  %54 = icmp eq i8** %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %50, %39
  br label %91

56:                                               ; preds = %50
  br label %57

57:                                               ; preds = %76, %56
  %58 = load i8**, i8*** %8, align 8
  %59 = load i8*, i8** %58, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = load i8**, i8*** %9, align 8
  %63 = load i8*, i8** %62, align 8
  %64 = icmp ne i8* %63, null
  br label %65

65:                                               ; preds = %61, %57
  %66 = phi i1 [ false, %57 ], [ %64, %61 ]
  br i1 %66, label %67, label %81

67:                                               ; preds = %65
  %68 = load i8**, i8*** %8, align 8
  %69 = load i8*, i8** %68, align 8
  %70 = load i8**, i8*** %9, align 8
  %71 = load i8*, i8** %70, align 8
  %72 = call i64 @strcmp(i8* %69, i8* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  br label %91

75:                                               ; preds = %67
  br label %76

76:                                               ; preds = %75
  %77 = load i8**, i8*** %8, align 8
  %78 = getelementptr inbounds i8*, i8** %77, i32 1
  store i8** %78, i8*** %8, align 8
  %79 = load i8**, i8*** %9, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i32 1
  store i8** %80, i8*** %9, align 8
  br label %57

81:                                               ; preds = %65
  %82 = load i8**, i8*** %8, align 8
  %83 = load i8*, i8** %82, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %89, label %85

85:                                               ; preds = %81
  %86 = load i8**, i8*** %9, align 8
  %87 = load i8*, i8** %86, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %90

89:                                               ; preds = %85, %81
  br label %91

90:                                               ; preds = %85
  store i32 0, i32* %4, align 4
  br label %101

91:                                               ; preds = %89, %74, %55, %38, %20
  %92 = load i8*, i8** %7, align 8
  %93 = icmp eq i8* %92, null
  br i1 %93, label %94, label %100

94:                                               ; preds = %91
  %95 = call i32 @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %96 = load %struct.rpcent*, %struct.rpcent** %5, align 8
  %97 = call i32 @dump_rpcent(%struct.rpcent* %96)
  %98 = load %struct.rpcent*, %struct.rpcent** %6, align 8
  %99 = call i32 @dump_rpcent(%struct.rpcent* %98)
  br label %100

100:                                              ; preds = %94, %91
  store i32 -1, i32* %4, align 4
  br label %101

101:                                              ; preds = %100, %90, %13
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @dump_rpcent(%struct.rpcent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
